package defpackage;

import com.google.android.gms.internal.ads.j9;
import com.google.android.gms.internal.ads.m9;
import com.google.android.gms.internal.ads.n9;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class i9i {
    public final List a = new ArrayList();
    public final xhi b = xhi.b;
    public boolean c = false;

    public final i9i a(g9i g9iVar) {
        if (g9iVar.f != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        if (g9iVar.a) {
            d();
        }
        g9iVar.f = this;
        this.a.add(g9iVar);
        return this;
    }

    public final l9i b() throws GeneralSecurityException {
        int i;
        int i2;
        char c = 1;
        if (this.c) {
            throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
        }
        this.c = true;
        List<g9i> list = this.a;
        roi roiVarD0 = n9.d0();
        ArrayList arrayList = new ArrayList(list.size());
        int i3 = 0;
        int i4 = 0;
        while (i4 < list.size() - 1) {
            int i5 = i4 + 1;
            if (((g9i) list.get(i4)).e == h9i.a && ((g9i) list.get(i5)).e != h9i.a) {
                throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
            }
            i4 = i5;
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (g9i g9iVar : list) {
            d9i unused = g9iVar.b;
            if (g9iVar.e == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            if (g9iVar.e == h9i.a) {
                i = i3;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    int i6 = fki.a;
                    i = i3;
                    while (i == 0) {
                        byte[] bArrB = xji.b(4);
                        i = (bArrB[3] & 255) | ((bArrB[i3] & 255) << 24) | ((bArrB[c] & 255) << 16) | ((bArrB[2] & 255) << 8);
                    }
                }
            } else {
                h9i unused2 = g9iVar.e;
                i = i3;
            }
            Integer numValueOf = Integer.valueOf(i);
            if (hashSet.contains(numValueOf)) {
                throw new GeneralSecurityException("Id " + i + " is used twice in the keyset");
            }
            hashSet.add(numValueOf);
            g9i.a(g9iVar);
            b9i b9iVarA = fii.b().a(g9iVar.d, c != g9iVar.d.a() ? null : numValueOf);
            j9i j9iVar = new j9i(b9iVarA, g9iVar.b, i, g9iVar.a, null);
            d9i d9iVar = g9iVar.b;
            uji ujiVar = (uji) qii.c().d(b9iVarA, uji.class, t9i.a());
            Integer numE = ujiVar.e();
            if (numE != null && numE.intValue() != i) {
                throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
            }
            d9i d9iVar2 = d9i.b;
            if (d9iVar2.equals(d9iVar)) {
                i2 = 3;
            } else if (d9i.c.equals(d9iVar)) {
                i2 = 4;
            } else {
                if (!d9i.d.equals(d9iVar)) {
                    throw new IllegalStateException("Unknown key status");
                }
                i2 = 5;
            }
            soi soiVarD0 = m9.d0();
            koi koiVarB0 = j9.b0();
            koiVarB0.w(ujiVar.f());
            koiVarB0.x(ujiVar.d());
            koiVarB0.v(ujiVar.b());
            soiVarD0.v(koiVarB0);
            soiVarD0.y(i2);
            soiVarD0.w(i);
            soiVarD0.x(ujiVar.c());
            roiVarD0.v((m9) soiVarD0.q());
            if (g9iVar.a) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                if (g9iVar.b != d9iVar2) {
                    throw new GeneralSecurityException("Primary key is not enabled");
                }
                num = numValueOf;
            }
            arrayList.add(j9iVar);
            c = 1;
            i3 = 0;
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        roiVarD0.w(num.intValue());
        n9 n9Var = (n9) roiVarD0.q();
        l9i.h(n9Var);
        return new l9i(n9Var, arrayList, this.b, null);
    }

    public final void d() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((g9i) it.next()).a = false;
        }
    }
}
