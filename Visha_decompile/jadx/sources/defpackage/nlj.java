package defpackage;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

public final class nlj implements llj {
    public final int a;
    public MediaCodecInfo[] b;

    public nlj(boolean z, boolean z2, boolean z3) {
        int i = 1;
        if (!z && !z2 && !z3) {
            i = 0;
        }
        this.a = i;
    }

    @Override
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override
    public final boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    public final void c() {
        if (this.b == null) {
            this.b = new MediaCodecList(this.a).getCodecInfos();
        }
    }

    @Override
    public final int zza() {
        c();
        return this.b.length;
    }

    @Override
    public final MediaCodecInfo zzb(int i) {
        c();
        return this.b[i];
    }

    @Override
    public final boolean zze() {
        return true;
    }
}
