import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_web_admin_panel/common/styles/shimmer.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class VRoundedImage extends StatelessWidget {
  const VRoundedImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.image,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding = VSizes.sm,
    this.overlayColor,
    this.margin,
    this.borderRadius = VSizes.md,
    this.file,
    required this.imageType,
    this.memoryimage,
  });

  final double width, height;
  final String? image;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final double padding;
  final Color? overlayColor;
  final double? margin;
  final double borderRadius;
  final File? file;
  final ImageType imageType;
  final Uint8List? memoryimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin != null ? EdgeInsets.all(margin!) : null,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: _buildImageWidget(),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;

    switch (imageType) {
      case ImageType.network:
        imageWidget = _buildNetworkImage();
        break;
      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;
      case ImageType.file:
        imageWidget = _buildFileImage();
        break;
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
    }

    return ClipRRect(
      borderRadius: applyImageRadius
          ? BorderRadius.circular(borderRadius)
          : BorderRadius.zero,
      child: imageWidget,
    );
  }

  Widget _buildNetworkImage() {
    if (image != null) {
      // Use CachedNetworkImage for efficient loading of network image
      return CachedNetworkImage(
        fit: fit,
        color: overlayColor,
        imageUrl: image!,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            VShimmerEffect(width: width, height: height),
      );
    } else {
      return Container();
    }
  }

  Widget _buildMemoryImage() {
    if (memoryimage != null) {
      return Image(
          fit: fit, image: MemoryImage(memoryimage!), color: overlayColor);
    } else {
      return Container();
    }
  }

  Widget _buildFileImage() {
    if (file != null) {
      return Image(image: FileImage(file!), fit: fit, color: overlayColor);
    } else {
      return Container();
    }
  }

  Widget _buildAssetImage() {
    if (image != null) {
      return Image(image: AssetImage(image!), fit: fit, color: overlayColor);
    } else {
      return Container();
    }
  }
}
