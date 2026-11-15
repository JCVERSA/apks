package com.transsion.vishaplayer.covercoder;

final class VideoCoverDecoder$VideoDecoderException extends RuntimeException {
    private static final long serialVersionUID = -2556382523004027815L;

    public VideoCoverDecoder$VideoDecoderException() {
        super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
    }
}
