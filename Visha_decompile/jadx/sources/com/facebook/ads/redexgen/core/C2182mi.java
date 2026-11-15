package com.facebook.ads.redexgen.core;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

public final class C2182mi implements InterfaceC0789Aw {
    public MediaCodecInfo[] A00;
    public final int A01;

    public C2182mi(boolean z, boolean z2) {
        int i;
        if (z || z2) {
            i = 1;
        } else {
            i = 0;
        }
        this.A01 = i;
    }

    @EnsuresNonNull({"mediaCodecInfos"})
    private void A00() {
        if (this.A00 == null) {
            this.A00 = new MediaCodecList(this.A01).getCodecInfos();
        }
    }

    @Override
    public final int A7H() {
        A00();
        return this.A00.length;
    }

    @Override
    public final MediaCodecInfo A7I(int i) {
        A00();
        return this.A00[i];
    }

    @Override
    public final boolean AAI(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override
    public final boolean AAJ(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override
    public final boolean AIK() {
        return true;
    }
}
