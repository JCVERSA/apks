package androidx.media3.transformer;

import android.media.MediaCodecInfo;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.transformer.EncoderSelector;
import com.google.common.collect.ImmutableList;
import defpackage.he8;
import defpackage.v55;

@UnstableApi
public interface EncoderSelector {
    public static final EncoderSelector DEFAULT = new EncoderSelector() {
        @Override
        public final ImmutableList selectEncoderInfos(String str) {
            return EncoderSelector.lambda$static$1(str);
        }
    };

    static boolean lambda$static$0(String str, MediaCodecInfo mediaCodecInfo) {
        return EncoderUtil.isHardwareAccelerated(mediaCodecInfo, str);
    }

    static ImmutableList lambda$static$1(final String str) {
        ImmutableList<MediaCodecInfo> supportedEncoders = EncoderUtil.getSupportedEncoders(str);
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(v55.e(supportedEncoders, new he8() {
            @Override
            public final boolean apply(Object obj) {
                return EncoderSelector.lambda$static$0(str, (MediaCodecInfo) obj);
            }
        }));
        return immutableListCopyOf.isEmpty() ? supportedEncoders : immutableListCopyOf;
    }

    ImmutableList<MediaCodecInfo> selectEncoderInfos(String str);
}
