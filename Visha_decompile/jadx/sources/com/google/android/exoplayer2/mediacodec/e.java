package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.util.List;

public interface e {
    public static final e a = new e() {
        @Override
        public final List getDecoderInfos(String str, boolean z, boolean z2) {
            return MediaCodecUtil.s(str, z, z2);
        }
    };

    List getDecoderInfos(String str, boolean z, boolean z2);
}
