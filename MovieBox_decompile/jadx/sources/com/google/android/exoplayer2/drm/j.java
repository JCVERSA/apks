package com.google.android.exoplayer2.drm;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Map;

public final class j implements x {

    private final Object f24352a = new Object();

    private w1.f f24353b;

    private u f24354c;

    private com.google.android.exoplayer2.upstream.k.a f24355d;

    private String f24356e;

    private u b(w1.f fVar) {
        com.google.android.exoplayer2.upstream.k.a aVarB = this.f24355d;
        if (aVarB == null) {
            aVarB = new com.google.android.exoplayer2.upstream.s.b().b(this.f24356e);
        }
        Uri uri = fVar.f27183c;
        i0 i0Var = new i0(uri == null ? null : uri.toString(), fVar.f27188h, aVarB);
        r4 it = fVar.f27185e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            i0Var.e((String) entry.getKey(), (String) entry.getValue());
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = new DefaultDrmSessionManager.b().e(fVar.f27181a, h0.f24343d).b(fVar.f27186f).c(fVar.f27187g).d(Ints.o(fVar.f27190j)).a(i0Var);
        defaultDrmSessionManagerA.E(0, fVar.c());
        return defaultDrmSessionManagerA;
    }

    @Override
    public u a(w1 w1Var) {
        u uVar;
        com.google.android.exoplayer2.util.a.e(w1Var.f27149b);
        w1.f fVar = w1Var.f27149b.f27214c;
        if (fVar == null || p0.f26854a < 18) {
            return u.f24376a;
        }
        synchronized (this.f24352a) {
            try {
                if (!p0.c(fVar, this.f24353b)) {
                    this.f24353b = fVar;
                    this.f24354c = b(fVar);
                }
                uVar = (u) com.google.android.exoplayer2.util.a.e(this.f24354c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uVar;
    }
}
