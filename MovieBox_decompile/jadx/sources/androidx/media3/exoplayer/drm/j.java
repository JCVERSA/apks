package androidx.media3.exoplayer.drm;

import android.net.Uri;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Map;

public final class j implements w {

    private final Object f11267a = new Object();

    private androidx.media3.common.t.f f11268b;

    private t f11269c;

    private androidx.media3.datasource.a.InterfaceC0085a f11270d;

    private String f11271e;

    private androidx.media3.exoplayer.upstream.m f11272f;

    private t b(androidx.media3.common.t.f fVar) {
        androidx.media3.datasource.a.InterfaceC0085a interfaceC0085aC = this.f11270d;
        if (interfaceC0085aC == null) {
            interfaceC0085aC = new androidx.media3.datasource.c.b().c(this.f11271e);
        }
        Uri uri = fVar.f9950c;
        l0 l0Var = new l0(uri == null ? null : uri.toString(), fVar.f9955h, interfaceC0085aC);
        r4 it = fVar.f9952e.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            l0Var.c((String) entry.getKey(), (String) entry.getValue());
        }
        DefaultDrmSessionManager.b bVarE = new DefaultDrmSessionManager.b().f(fVar.f9948a, k0.f11273d).c(fVar.f9953f).d(fVar.f9954g).e(Ints.o(fVar.f9957j));
        androidx.media3.exoplayer.upstream.m mVar = this.f11272f;
        if (mVar != null) {
            bVarE.b(mVar);
        }
        DefaultDrmSessionManager defaultDrmSessionManagerA = bVarE.a(l0Var);
        defaultDrmSessionManagerA.E(0, fVar.c());
        return defaultDrmSessionManagerA;
    }

    @Override
    public t a(androidx.media3.common.t tVar) {
        t tVar2;
        androidx.media3.common.util.a.e(tVar.f9899b);
        androidx.media3.common.t.f fVar = tVar.f9899b.f9993c;
        if (fVar == null) {
            return t.f11300a;
        }
        synchronized (this.f11267a) {
            try {
                if (!fVar.equals(this.f11268b)) {
                    this.f11268b = fVar;
                    this.f11269c = b(fVar);
                }
                tVar2 = (t) androidx.media3.common.util.a.e(this.f11269c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return tVar2;
    }
}
