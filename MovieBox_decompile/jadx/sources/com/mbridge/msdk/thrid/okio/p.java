package com.mbridge.msdk.thrid.okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;

final class p {

    @Nullable
    static o f37639a;

    static long f37640b;

    private p() {
    }

    static o a() {
        synchronized (p.class) {
            try {
                o oVar = f37639a;
                if (oVar == null) {
                    return new o();
                }
                f37639a = oVar.f37637f;
                oVar.f37637f = null;
                f37640b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                return oVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static void a(o oVar) {
        if (oVar.f37637f == null && oVar.f37638g == null) {
            if (oVar.f37635d) {
                return;
            }
            synchronized (p.class) {
                try {
                    long j10 = f37640b + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                    if (j10 > PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                        return;
                    }
                    f37640b = j10;
                    oVar.f37637f = f37639a;
                    oVar.f37634c = 0;
                    oVar.f37633b = 0;
                    f37639a = oVar;
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
