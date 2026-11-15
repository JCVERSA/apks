package com.bytedance.sdk.component.sP.Sj.sP;

import android.support.v4.media.session.PlaybackStateCompat;

final class vS {
    static HiB Sj;
    static long sP;

    private vS() {
    }

    static HiB Sj() {
        synchronized (vS.class) {
            HiB hiB = Sj;
            if (hiB == null) {
                return new HiB();
            }
            Sj = hiB.vS;
            hiB.vS = null;
            sP -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return hiB;
        }
    }

    static void Sj(HiB hiB) {
        if (hiB.vS == null && hiB.Jcg == null) {
            if (hiB.EjP) {
                return;
            }
            synchronized (vS.class) {
                try {
                    long j10 = sP;
                    if (j10 + PlaybackStateCompat.ACTION_PLAY_FROM_URI > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        return;
                    }
                    sP = j10 + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    hiB.vS = Sj;
                    hiB.TKC = 0;
                    hiB.sP = 0;
                    Sj = hiB;
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
