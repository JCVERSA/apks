package defpackage;

import com.google.android.gms.internal.ads.m9;
import com.google.android.gms.internal.ads.n9;
import com.google.android.gms.internal.ads.o9;
import com.google.android.gms.internal.ads.p9;
import com.google.android.gms.internal.ads.zzgsn;
import com.google.android.gms.internal.ads.zzgtt;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class l9i implements ohi {
    public final n9 a;
    public final List b;
    public final xhi c;

    public l9i(n9 n9Var, List list, xhi xhiVar, k9i k9iVar) {
        this.a = n9Var;
        this.b = list;
        this.c = xhiVar;
    }

    public static final l9i a(n9 n9Var) throws GeneralSecurityException {
        h(n9Var);
        return new l9i(n9Var, g(n9Var));
    }

    public static final l9i b(p9i p9iVar) {
        i9i i9iVar = new i9i();
        g9i g9iVar = new g9i(p9iVar, null);
        g9iVar.d();
        g9iVar.c();
        i9iVar.a(g9iVar);
        return i9iVar.b();
    }

    public static List g(n9 n9Var) {
        d9i d9iVar;
        ArrayList arrayList = new ArrayList(n9Var.b0());
        for (m9 m9Var : n9Var.h0()) {
            int iB0 = m9Var.b0();
            try {
                uji ujiVarA = uji.a(m9Var.c0().g0(), m9Var.c0().f0(), m9Var.c0().c0(), m9Var.f0(), m9Var.f0() == zzgtt.RAW ? null : Integer.valueOf(m9Var.b0()));
                qii qiiVarC = qii.c();
                t9i t9iVarA = t9i.a();
                b9i thiVar = !qiiVarC.j(ujiVarA) ? new thi(ujiVarA, t9iVarA) : qiiVarC.a(ujiVarA, t9iVarA);
                int iK0 = m9Var.k0() - 2;
                if (iK0 == 1) {
                    d9iVar = d9i.b;
                } else if (iK0 == 2) {
                    d9iVar = d9i.c;
                } else {
                    if (iK0 != 3) {
                        throw new GeneralSecurityException("Unknown key status");
                    }
                    d9iVar = d9i.d;
                }
                arrayList.add(new j9i(thiVar, d9iVar, iB0, iB0 == n9Var.c0(), null));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void h(n9 n9Var) throws GeneralSecurityException {
        if (n9Var == null || n9Var.b0() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    public final n9 c() {
        return this.a;
    }

    @Override
    public final nhi d(int i) {
        throw null;
    }

    public final Object e(w8i w8iVar, Class cls) throws GeneralSecurityException {
        if (!(w8iVar instanceof bhi)) {
            throw new GeneralSecurityException("Currently only subclasses of InternalConfiguration are accepted");
        }
        bhi bhiVar = (bhi) w8iVar;
        Class clsA = bhiVar.a(cls);
        n9 n9Var = this.a;
        int i = y9i.a;
        int iC0 = n9Var.c0();
        int i2 = 0;
        boolean z = true;
        int i3 = 0;
        boolean z2 = false;
        for (m9 m9Var : n9Var.h0()) {
            if (m9Var.k0() == 3) {
                if (!m9Var.j0()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(m9Var.b0())));
                }
                if (m9Var.f0() == zzgtt.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(m9Var.b0())));
                }
                if (m9Var.k0() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(m9Var.b0())));
                }
                if (m9Var.b0() == iC0) {
                    if (z2) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z2 = true;
                }
                z &= m9Var.c0().c0() == zzgsn.ASYMMETRIC_PUBLIC;
                i3++;
            }
        }
        if (i3 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z2 && !z) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        oji ojiVarB = sji.b(clsA);
        while (true) {
            List list = this.b;
            if (i2 >= list.size()) {
                return bhiVar.c(ojiVarB.c(), this.c, new f9i(bhiVar, clsA), cls);
            }
            m9 m9VarE0 = n9Var.e0(i2);
            if (m9VarE0.k0() == 3) {
                j9i j9iVar = (j9i) list.get(i2);
                if (j9iVar == null) {
                    throw new GeneralSecurityException("Key parsing of key with index " + i2 + " and type_url " + m9VarE0.c0().g0() + " failed, unable to get primitive");
                }
                b9i b9iVarZzb = j9iVar.zzb();
                if (m9VarE0.b0() == n9Var.c0()) {
                    ojiVarB.b(b9iVarZzb, m9VarE0);
                } else {
                    ojiVarB.a(b9iVarZzb, m9VarE0);
                }
            }
            i2++;
        }
    }

    public final String toString() {
        int i = y9i.a;
        xoi xoiVarB0 = p9.b0();
        n9 n9Var = this.a;
        xoiVarB0.w(n9Var.c0());
        for (m9 m9Var : n9Var.h0()) {
            yoi yoiVarB0 = o9.b0();
            yoiVarB0.x(m9Var.c0().g0());
            yoiVarB0.y(m9Var.k0());
            yoiVarB0.w(m9Var.f0());
            yoiVarB0.v(m9Var.b0());
            xoiVarB0.v((o9) yoiVarB0.q());
        }
        return ((p9) xoiVarB0.q()).toString();
    }

    @Override
    public final int zza() {
        throw null;
    }

    @Override
    public final nhi zze() {
        throw null;
    }

    public l9i(n9 n9Var, List list) {
        this.a = n9Var;
        this.b = list;
        this.c = xhi.b;
    }
}
