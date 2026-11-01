package f0;

import h0.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import v0.h;

public final class c implements d {

    public String f767a;

    public long f768b;

    public b f769c = new b(null, 1);

    public long f770d;

    public int f771e;

    public String f772f;

    public String f773g;

    public String f774h;

    public int f775i;

    public b f776j;

    public String f777k;

    public int f778l;

    public c() {
        clear();
    }

    public static void A(b bVar, e.b bVar2, v0.d dVar) {
        for (b bVar3 : bVar.f765e) {
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
            if (bVar3.b()) {
                A(bVar3, bVar2, dVar);
            } else {
                bVar2.f1090c += bVar3.f762b;
                bVar2.f1091d++;
            }
        }
    }

    public static void x(Pattern pattern, b bVar, ArrayList arrayList, boolean z2, v0.d dVar) {
        String lowerCase;
        for (b bVar2 : bVar.f765e) {
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
            try {
                lowerCase = bVar2.f761a.toLowerCase(Locale.getDefault());
            } catch (Exception unused) {
                lowerCase = bVar2.f761a;
            }
            if (pattern.matcher(lowerCase).matches()) {
                arrayList.add(bVar2);
            }
            if (bVar2.b() && z2) {
                x(pattern, bVar2, arrayList, true, dVar);
            }
        }
    }

    @Override
    public final void a(long j2, String str) {
        clear();
        this.f767a = str;
        this.f768b = j2;
    }

    @Override
    public final float b() {
        if (h.e(this.f767a)) {
            return -1.0f;
        }
        long j2 = this.f770d;
        if (j2 == 0) {
            return 1.0f;
        }
        return this.f768b / j2;
    }

    @Override
    public final synchronized void c(String str, long j2, int i2, int i3) {
        b bVarZ = z(i3, str);
        if (bVarZ == null) {
            return;
        }
        bVarZ.f763c = i2;
        if (j2 == -1) {
            j2 = this.f768b;
        }
        bVarZ.f762b = j2;
        if (bVarZ.b()) {
            this.f770d += bVarZ.f762b;
            this.f771e++;
        }
    }

    @Override
    public final void clear() {
        this.f767a = null;
        this.f768b = 0L;
        this.f769c = new b(null, 1);
        this.f770d = 0L;
        this.f771e = 0;
        this.f772f = null;
        this.f773g = null;
        this.f775i = 0;
        this.f776j = null;
        this.f777k = null;
        this.f778l = 0;
    }

    @Override
    public final List<b> d(String str, Pattern pattern, boolean z2, v0.d dVar) {
        b bVarY = y(str);
        if (bVarY == null || !bVarY.b()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        x(pattern, bVarY, arrayList, z2, dVar);
        return arrayList;
    }

    @Override
    public final int e() {
        return this.f771e;
    }

    @Override
    public final long f() {
        return this.f770d;
    }

    @Override
    public final int g() {
        return this.f775i;
    }

    @Override
    public final int h() {
        return 16777216;
    }

    @Override
    public final void i() {
    }

    @Override
    public final int j(String str) {
        return -1;
    }

    @Override
    public final e.b k(ArrayList arrayList, v0.d dVar) {
        e.b bVar = new e.b();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (dVar != null && dVar.isCancelled()) {
                return null;
            }
            e.b bVarO = o(str, dVar);
            if (bVarO != null) {
                bVar.f1090c += bVarO.f1090c;
                bVar.f1091d += bVarO.f1091d;
            }
        }
        return bVar;
    }

    @Override
    public final String l() {
        return this.f767a;
    }

    @Override
    public final boolean m(String str) {
        String str2 = this.f767a;
        if (str2 == null || str == null) {
            return false;
        }
        return str2.endsWith(str);
    }

    @Override
    public final void n(int i2) {
        if (this.f775i != 13) {
            this.f775i = i2;
        }
    }

    @Override
    public final e.b o(String str, v0.d dVar) {
        b bVarY = y(str);
        if (bVarY == null) {
            return null;
        }
        e.b bVar = new e.b();
        bVar.f1088a = !bVarY.b();
        bVar.f1089b = bVarY.f763c;
        if (bVarY.b()) {
            bVar.f1090c = 0L;
            for (b bVar2 : bVarY.f765e) {
                if (dVar != null && dVar.isCancelled()) {
                    return bVar;
                }
                if (bVar2.b()) {
                    A(bVar2, bVar, dVar);
                } else {
                    bVar.f1090c += bVar2.f762b;
                    bVar.f1091d++;
                }
            }
        } else {
            bVar.f1090c = bVarY.f762b;
            bVar.f1091d = 1;
        }
        return bVar;
    }

    @Override
    public final String p() {
        return this.f773g;
    }

    @Override
    public final boolean q() {
        return !h.e(this.f772f);
    }

    @Override
    public final void r(String str, ArrayList<d0.d> arrayList) {
        b bVarY = y(str);
        if (bVarY == null || !bVarY.b()) {
            return;
        }
        ArrayList<b> arrayList2 = bVarY.f765e;
        arrayList.ensureCapacity(arrayList2.size());
        for (b bVar : arrayList2) {
            String str2 = bVar.f761a;
            byte b2 = bVar.b() ? (byte) 4 : (byte) -1;
            int i2 = bVar.f764d;
            d0.d dVar = new d0.d(str2, b2, (i2 & 2) != 0 ? (byte) 28 : (byte) 0, bVar.f763c, (i2 & 4) != 0 ? -2L : bVar.f762b);
            ArrayList<b> arrayList3 = bVar.f765e;
            dVar.f546h = arrayList3 == null ? null : new q0.h(arrayList3.size());
            arrayList.add(dVar);
        }
    }

    @Override
    public final void s(String str, String str2, int i2, long j2, int i3) {
        this.f773g = str;
        this.f774h = str2;
        this.f770d = j2;
        this.f771e = i2;
    }

    @Override
    public final String t() {
        String str = this.f772f;
        return str == null ? "" : str;
    }

    @Override
    public final String u() {
        return this.f774h;
    }

    @Override
    public final long v() {
        return this.f768b;
    }

    @Override
    public final void w(String str) {
        this.f772f = str;
    }

    public final b y(String str) {
        b bVarA;
        if (str == null) {
            return null;
        }
        String[] strArrH = h.h(str, '/');
        int i2 = 0;
        if (strArrH.length > 0 && strArrH[0].isEmpty()) {
            i2 = 1;
        }
        b bVar = this.f769c;
        while (i2 < strArrH.length && (bVarA = bVar.a(strArrH[i2])) != null) {
            i2++;
            bVar = bVarA;
        }
        if (i2 != strArrH.length) {
            return null;
        }
        return bVar;
    }

    public final b z(int i2, String str) {
        b bVar;
        String strSubstring;
        int i3;
        b bVar2;
        b bVarA;
        String str2 = this.f777k;
        boolean z2 = str2 != null && str.startsWith(str2);
        if (z2) {
            bVar = this.f776j;
            strSubstring = str.substring(this.f777k.length());
            i3 = this.f778l;
        } else {
            bVar = this.f769c;
            strSubstring = str;
            i3 = 0;
        }
        String[] strArrH = h.h(strSubstring, '/');
        int i4 = (strArrH.length <= 0 || !strArrH[0].isEmpty()) ? 0 : 1;
        while (i4 < strArrH.length && (bVarA = bVar.a(strArrH[i4])) != null) {
            i4++;
            bVar = bVarA;
        }
        if (i4 != strArrH.length) {
            while (i4 < strArrH.length) {
                int i5 = i4 + 1;
                if (i5 != strArrH.length) {
                    bVar2 = new b(strArrH[i4], 1);
                } else {
                    if (!z2 || this.f778l != i3 + i4) {
                        try {
                            this.f776j = bVar;
                            this.f778l = i3 + i4;
                            this.f777k = str.substring(0, str.lastIndexOf(47) + 1);
                        } catch (Exception unused) {
                            this.f777k = null;
                        }
                    }
                    bVar2 = new b(strArrH[i4], i2);
                }
                ArrayList<b> arrayList = bVar.f765e;
                if (arrayList != null) {
                    bVar2.f766f = bVar;
                    arrayList.add(bVar2);
                }
                i4 = i5;
                bVar = bVar2;
            }
        }
        return bVar;
    }
}
