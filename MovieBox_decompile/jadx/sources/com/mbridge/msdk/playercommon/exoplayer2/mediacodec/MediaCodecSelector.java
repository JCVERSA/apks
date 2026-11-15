package com.mbridge.msdk.playercommon.exoplayer2.mediacodec;

public interface MediaCodecSelector {
    public static final MediaCodecSelector DEFAULT = new MediaCodecSelector() {
        @Override
        public MediaCodecInfo getDecoderInfo(String str, boolean z10) throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.getDecoderInfo(str, z10);
        }

        @Override
        public MediaCodecInfo getPassthroughDecoderInfo() throws MediaCodecUtil.DecoderQueryException {
            return MediaCodecUtil.getPassthroughDecoderInfo();
        }
    };

    MediaCodecInfo getDecoderInfo(String str, boolean z10) throws MediaCodecUtil.DecoderQueryException;

    MediaCodecInfo getPassthroughDecoderInfo() throws MediaCodecUtil.DecoderQueryException;
}
