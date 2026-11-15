package androidx.media3.exoplayer.rtsp.reader;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import org.mozilla.classfile.ByteCode;

@UnstableApi
public final class DefaultRtpPayloadReaderFactory implements RtpPayloadReader.Factory {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override
    @Nullable
    public RtpPayloadReader createPayloadReader(RtpPayloadFormat rtpPayloadFormat) {
        String str = (String) Assertions.checkNotNull(rtpPayloadFormat.format.sampleMimeType);
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    b = 0;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    b = 1;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    b = 2;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b = 3;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    b = 4;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    b = 5;
                }
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    b = 6;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    b = 7;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    b = 8;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b = 9;
                }
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    b = 10;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    b = ByteCode.T_LONG;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    b = 12;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    b = 13;
                }
                break;
        }
        switch (b) {
            case 0:
                return new RtpH263Reader(rtpPayloadFormat);
            case 1:
                return new RtpH265Reader(rtpPayloadFormat);
            case 2:
            case 8:
                return new RtpAmrReader(rtpPayloadFormat);
            case 3:
                return rtpPayloadFormat.mediaEncoding.equals(RtpPayloadFormat.RTP_MEDIA_MPEG4_LATM_AUDIO) ? new RtpMp4aReader(rtpPayloadFormat) : new RtpAacReader(rtpPayloadFormat);
            case 4:
                return new RtpAc3Reader(rtpPayloadFormat);
            case 5:
            case 12:
            case 13:
                return new RtpPcmReader(rtpPayloadFormat);
            case 6:
                return new RtpMpeg4Reader(rtpPayloadFormat);
            case 7:
                return new RtpH264Reader(rtpPayloadFormat);
            case 9:
                return new RtpOpusReader(rtpPayloadFormat);
            case 10:
                return new RtpVp8Reader(rtpPayloadFormat);
            case 11:
                return new RtpVp9Reader(rtpPayloadFormat);
            default:
                return null;
        }
    }
}
