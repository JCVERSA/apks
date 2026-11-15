package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzxe;
import java.io.EOFException;
import java.util.Iterator;
import java.util.Map;

public final class dmj implements znj {
    public final h9e a;
    public c9e b;
    public d9e c;

    public dmj(h9e h9eVar) {
        this.a = h9eVar;
    }

    @Override
    public final int a(y9e y9eVar) {
        c9e c9eVar = this.b;
        c9eVar.getClass();
        d9e d9eVar = this.c;
        d9eVar.getClass();
        return c9eVar.d(d9eVar, y9eVar);
    }

    @Override
    public final void b(long j, long j2) {
        c9e c9eVar = this.b;
        c9eVar.getClass();
        c9eVar.b(j, j2);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override
    public final void c(k8j k8jVar, Uri uri, Map map, long j, long j2, f9e f9eVar) throws zzxe {
        m8e m8eVar = new m8e(k8jVar, j, j2);
        this.c = m8eVar;
        if (this.b != null) {
            return;
        }
        c9e[] c9eVarArrA = this.a.a(uri, map);
        int length = c9eVarArrA.length;
        l4i l4iVarZzi = zzfww.zzi(length);
        if (length == 1) {
            this.b = c9eVarArrA[0];
        } else {
            for (c9e c9eVar : c9eVarArrA) {
                try {
                    if (c9eVar.e(m8eVar)) {
                        this.b = c9eVar;
                        n7g.f(true);
                        m8eVar.zzj();
                        break;
                    } else {
                        l4iVarZzi.i(c9eVar.zzd());
                        boolean z = this.b != null || m8eVar.zzf() == j;
                        n7g.f(z);
                        m8eVar.zzj();
                    }
                } catch (EOFException unused) {
                    if (this.b != null || m8eVar.zzf() == j) {
                    }
                } catch (Throwable th) {
                    n7g.f(this.b != null || m8eVar.zzf() == j);
                    m8eVar.zzj();
                    throw th;
                }
                n7g.f(z);
                m8eVar.zzj();
            }
            if (this.b == null) {
                Iterator it = p7.b(zzfww.zzm(c9eVarArrA), new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        c9e c9eVar2 = (c9e) obj;
                        c9eVar2.zzc();
                        return c9eVar2.getClass().getSimpleName();
                    }
                }).iterator();
                StringBuilder sb = new StringBuilder();
                o2i.c(sb, it, ", ");
                throw new zzxe("None of the available extractors (" + sb.toString() + ") could read the stream.", uri, l4iVarZzi.j());
            }
        }
        this.b.f(f9eVar);
    }

    @Override
    public final long zzb() {
        d9e d9eVar = this.c;
        if (d9eVar != null) {
            return d9eVar.zzf();
        }
        return -1L;
    }

    @Override
    public final void zzc() {
        c9e c9eVar = this.b;
        if (c9eVar != null && (c9eVar instanceof cee)) {
            ((cee) c9eVar).a();
        }
    }

    @Override
    public final void zze() {
        if (this.b != null) {
            this.b = null;
        }
        this.c = null;
    }
}
