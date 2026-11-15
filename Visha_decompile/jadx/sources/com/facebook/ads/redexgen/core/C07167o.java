package com.facebook.ads.redexgen.core;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import androidx.media3.extractor.OpusUtil;

public final class C07167o {
    public static final AudioAttributes A00 = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    public static int A00(int i, int i2) {
        for (int i3 = 8; i3 > 0; i3--) {
            AudioFormat.Builder sampleRate = new AudioFormat.Builder().setEncoding(i).setSampleRate(i2);
            int channelCount = AbstractC06244a.A01(i3);
            AudioFormat audioFormat = sampleRate.setChannelMask(channelCount).build();
            if (AudioTrack.isDirectPlaybackSupported(audioFormat, A00)) {
                return i3;
            }
        }
        return 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<java.lang.Integer> */
    /* JADX WARN: Multi-variable type inference failed */
    public static int[] A01() {
        C05551h c05551hA01 = AbstractC0779Am.A01();
        AbstractC2346pg it = C07177p.A06.keySet().iterator();
        while (it.hasNext()) {
            int encoding = ((Integer) it.next()).intValue();
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(encoding).setSampleRate(OpusUtil.SAMPLE_RATE).build(), A00)) {
                c05551hA01.A04(Integer.valueOf(encoding));
            }
        }
        c05551hA01.A04(2);
        return AD.A0C(c05551hA01.A05());
    }
}
