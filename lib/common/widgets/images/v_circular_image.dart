import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_web_admin_panel/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_web_admin_panel/common/styles/shimmer.dart';

import '../../../utils/constants/sizes.dart';

class VCircularImage extends StatelessWidget {
  const VCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    this.image,
    this.memoryImage,
    this.overlayColor,
    this.backgroundColor,
    this.width = 55,
    this.height = 55,
    this.padding = VSizes.sm,
    this.imageType = ImageType.asset,
    this.file,
  });

  final BoxFit? fit;
  final String? image;
  final Uint8List? memoryImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  final File? file;
  final ImageType imageType;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ??
              (Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white),
          borderRadius: BorderRadius.circular(width >= height ? width : height),
        ),
        child: _buildImageWidget());
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
      borderRadius: BorderRadius.circular(width >= height ? width : height),
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
    if (memoryImage != null) {
      return Image(
          fit: fit, image: MemoryImage(memoryImage!), color: overlayColor);
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
