package com.google.android.exoplayer2.drm;

import android.net.Uri;
import com.google.android.exoplayer2.n;
import com.google.common.primitives.Ints;
import defpackage.blb;
import defpackage.dgb;
import defpackage.j33;
import defpackage.zi;
import java.util.Map;

public final class a implements j33 {
    public final Object a = new Object();
    public n.f b;
    public c c;
    public com.google.android.exoplayer2.upstream.a.InterfaceC0084a d;
    public String e;

    @Override
    public c a(n nVar) {
        c cVar;
        zi.e(nVar.c);
        n.f fVar = nVar.c.c;
        if (fVar == null || blb.a < 18) {
            return c.a;
        }
        synchronized (this.a) {
            try {
                if (!blb.c(fVar, this.b)) {
                    this.b = fVar;
                    this.c = b(fVar);
                }
                cVar = (c) zi.e(this.c);
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public final c b(n.f fVar) {
        com.google.android.exoplayer2.upstream.a.InterfaceC0084a interfaceC0084aB = this.d;
        if (interfaceC0084aB == null) {
            interfaceC0084aB = new com.google.android.exoplayer2.upstream.d.b().b(this.e);
        }
        Uri uri = fVar.c;
        i iVar = new i(uri == null ? null : uri.toString(), fVar.h, interfaceC0084aB);
        dgb it = fVar.e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iVar.e((String) entry.getKey(), (String) entry.getValue());
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = new DefaultDrmSessionManager.b().e(fVar.a, h.d).b(fVar.f).c(fVar.g).d(Ints.o(fVar.j)).a(iVar);
        defaultDrmSessionManagerA.E(0, fVar.c());
        return defaultDrmSessionManagerA;
    }
}
