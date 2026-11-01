package a0;

import android.graphics.Point;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.archiver.C2JBridge;

public final class j0 extends w0.c {

    public final p f52e;

    public final ru.zdevs.zarchiver.b f53f;

    public int f54g;

    public final Point f55h;

    public final String f56i;

    public final d0.b f57j;

    public j0(ru.zdevs.zarchiver.b bVar, h0.h hVar, boolean z2, String str, int i2, int i3, Point point, d0.b bVar2) {
        this.f52e = new p(bVar.f1652b, hVar, z2, i2);
        this.f53f = bVar;
        this.f54g = i3;
        this.f56i = str;
        this.f55h = point;
        this.f57j = bVar2;
    }

    @Override
    public final void e() {
        p pVar = this.f52e;
        if (pVar.f80b.g()) {
            String str = pVar.f80b.f1108c;
            f0.d dVar = C2JBridge.f1615e;
            if (dVar != null && (str == null || dVar.m(str))) {
                if (C2JBridge.f1613c) {
                    C2JBridge.cSetStatus(0, 15);
                }
                C2JBridge.f1615e = null;
            }
        }
        super.e();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0067  */
    /* JADX WARN: Code duplicated, block: B:192:0x03af  */
    @Override
    public final w0.a.b f() {
        int iF;
        h0.b bVar;
        d0.b bVar2;
        int size;
        int i2;
        d0.a aVar;
        ArrayList arrayList;
        long j2;
        ArrayList arrayList2;
        String str;
        int iM;
        x0.d.a aVarK;
        boolean z2;
        Thread threadCurrentThread = Thread.currentThread();
        int priority = threadCurrentThread.getPriority();
        threadCurrentThread.setPriority(10);
        if (c.f16h == null) {
            c.Q();
        }
        w0.a.b bVar3 = null;
        if (Build.VERSION.SDK_INT >= 19 && this.f52e.f80b.o() && (aVarK = x0.d.k(this.f52e.f80b.f1108c)) != null && !aVarK.f()) {
            String string = PreferenceManager.getDefaultSharedPreferences(ZApp.f1434c).getString("sNonRequestPermission", null);
            if (string != null) {
                if (string.contains("~!@" + aVarK.a() + "~!@")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (!z2) {
                p pVar = this.f52e;
                pVar.f85g = aVarK;
                if (pVar.f80b.m()) {
                    this.f54g |= 2;
                }
            }
        }
        this.f52e.f86h = new d0.b(0);
        p pVar2 = this.f52e;
        h0.h hVar = pVar2.f80b;
        d0.b bVar4 = pVar2.f86h;
        int i3 = this.f54g;
        if (t0.b.g(1)) {
            i3 |= 4;
        }
        h0.b[] bVarArrB = h0.e.b();
        int length = bVarArrB.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                iF = 0;
                break;
            }
            h0.b bVar5 = bVarArrB[i4];
            if (bVar5.g(hVar, bVar4, i3)) {
                iF = bVar5.f();
                break;
            }
            i4++;
        }
        pVar2.f84f = iF;
        if (this.f52e.f86h.size() > 1) {
            h0.e.i(this.f53f.f1658h, this.f52e.f86h);
        }
        p pVar3 = this.f52e;
        pVar3.f88j = x0.g.d(pVar3.f80b, false);
        if (this.f56i != null) {
            int size2 = this.f52e.f86h.size();
            int i5 = 0;
            while (i5 < size2 && !this.f56i.equals(this.f52e.f86h.b(i5).f539a)) {
                i5++;
            }
            if (c.K(this.f54g, 8)) {
                this.f52e.f82d = i5;
            } else if (this.f55h != null) {
                this.f52e.f82d = 0;
                if (i5 < size2 && i5 > (iM = m() / 2)) {
                    p pVar4 = this.f52e;
                    int i6 = i5 - iM;
                    pVar4.f82d = i6;
                    Point point = this.f55h;
                    int i7 = (point != null && this.f53f.f1657g == R.layout.item_file_grid) ? point.x / (((int) (t0.b.f2090k * 1.6f)) + 10) : 1;
                    if (i7 > 1) {
                        pVar4.f82d = (i6 % i7) + i6;
                    } else {
                        pVar4.f82d = i6 + 1;
                    }
                }
            }
        }
        h0.h hVar2 = this.f52e.f80b;
        DateFormat dateFormat = d0.d.f537i;
        boolean z3 = hVar2.j() && !hVar2.l();
        boolean z4 = this.f53f.f1657g == R.layout.item_file_detail && c.K(h0.e.c(this.f52e.f80b), 16);
        if (z3 || z4) {
            String str2 = this.f52e.f80b.f1108c + "/";
            h0.h hVar3 = this.f52e.f80b;
            h0.b[] bVarArrB2 = h0.e.b();
            int length2 = bVarArrB2.length;
            int i8 = 0;
            while (true) {
                if (i8 >= length2) {
                    bVar = null;
                    break;
                }
                bVar = bVarArrB2[i8];
                if (bVar.d(hVar3)) {
                    break;
                }
                i8++;
            }
            if (bVar == null) {
                z4 = false;
            }
            int iMax = Math.max(this.f52e.f82d, 0);
            int iMin = Math.min(m() + iMax, this.f52e.f86h.size());
            int i9 = iMax;
            while (i9 < iMin) {
                if (isCancelled()) {
                    threadCurrentThread.setPriority(priority);
                    return bVar3;
                }
                d0.d dVarB = this.f52e.f86h.b(i9);
                if (z4 && dVarB.f() && !dVarB.g()) {
                    int iC = bVar.c(dVarB.f539a, this.f52e.f80b);
                    if (iC >= 0) {
                        dVarB.f546h = new q0.h(iC);
                    }
                } else if (z3) {
                    dVarB.a(str2);
                }
                i9++;
                bVar3 = null;
            }
            if (iMax != 0 || iMin != this.f52e.f86h.size()) {
                if (z3) {
                    this.f54g |= 256;
                }
                if (z4) {
                    this.f54g |= 512;
                }
            }
        }
        if (c.K(this.f54g, 64) && this.f52e.f86h.size() < 30000) {
            int i10 = this.f53f.f1658h;
            if (i10 == 0) {
                p pVar5 = this.f52e;
                d0.b bVar6 = pVar5.f86h;
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                int size3 = bVar6.size();
                char c2 = 0;
                boolean z5 = false;
                for (int i11 = 0; i11 < size3; i11++) {
                    d0.d dVarB2 = bVar6.b(i11);
                    if (dVarB2.g()) {
                        z5 = true;
                    } else {
                        String str3 = dVarB2.f539a;
                        if (!TextUtils.isEmpty(str3)) {
                            char cCharAt = str3.charAt(0);
                            char upperCase = dVarB2.f() ? Character.toUpperCase(cCharAt) : Character.toLowerCase(cCharAt);
                            if (upperCase != c2) {
                                arrayList3.add(str3.substring(0, 1).toUpperCase());
                                arrayList4.add(Integer.valueOf(z5 ? i11 - 1 : i11));
                                c2 = upperCase;
                                z5 = false;
                            }
                        }
                    }
                }
                if (Build.VERSION.SDK_INT >= 26 && (size = arrayList4.size()) > 1 && (i2 = size3 / size) > 2) {
                    int i12 = i2 * 2;
                    int i13 = i2 / 2;
                    int i14 = 0;
                    while (i14 < size) {
                        int iIntValue = ((Integer) arrayList4.get(i14)).intValue();
                        int i15 = i14 + 1;
                        int iIntValue2 = (i15 < size ? ((Integer) arrayList4.get(i15)).intValue() : size3) - iIntValue;
                        if (iIntValue2 > i12) {
                            int i16 = (iIntValue2 / i2) * 2;
                            String str4 = (String) arrayList3.get(i14);
                            int i17 = iIntValue2;
                            int i18 = 0;
                            while (i18 < i16) {
                                int i19 = i18 + 1;
                                int i20 = ((iIntValue2 / (i16 + 1)) * i19) + iIntValue;
                                if (Math.abs(i20 - i17) >= i13) {
                                    i14++;
                                    if (i14 < size) {
                                        arrayList4.add(i14, Integer.valueOf(i20));
                                        arrayList3.add(i14, str4);
                                    } else {
                                        arrayList4.add(Integer.valueOf(i20));
                                        arrayList3.add(str4);
                                    }
                                    size++;
                                    i17 = i20;
                                }
                                i18 = i19;
                            }
                        }
                        i14++;
                        size3 = size3;
                    }
                }
                d0.a aVar2 = new d0.a((ArrayList<Integer>) arrayList4, (ArrayList<String>) arrayList3);
                pVar5.f87i = aVar2;
            } else if (i10 != 16) {
                if (i10 == 32 && Build.VERSION.SDK_INT >= 21) {
                    p pVar6 = this.f52e;
                    d0.b bVar7 = pVar6.f86h;
                    int size4 = bVar7.size();
                    if (size4 < 2) {
                        aVar = null;
                    } else {
                        ArrayList arrayList5 = new ArrayList();
                        ArrayList arrayList6 = new ArrayList();
                        long j3 = -1;
                        int i21 = 0;
                        while (i21 < size4) {
                            d0.d dVarB3 = bVar7.b(i21);
                            if (dVarB3.f()) {
                                arrayList = arrayList6;
                                j2 = 0;
                            } else {
                                arrayList = arrayList6;
                                long j4 = dVarB3.f542d;
                                if (j4 < 1024) {
                                    j2 = 1024;
                                } else if (j4 < 10240) {
                                    j2 = 10240;
                                } else if (j4 < 102400) {
                                    j2 = 102400;
                                } else if (j4 < 1048576) {
                                    j2 = 1048576;
                                } else if (j4 < 10485760) {
                                    j2 = 10485760;
                                } else if (j4 < 104857600) {
                                    j2 = 104857600;
                                } else if (j4 < 1073741824) {
                                    j2 = 1073741824;
                                } else {
                                    j2 = j4 < 10737418240L ? 10737418240L : 107374182400L;
                                }
                            }
                            if (j2 != j3) {
                                if (dVarB3.f()) {
                                    str = "DIR";
                                } else {
                                    long j5 = dVarB3.f542d;
                                    if (j5 < 1024) {
                                        str = "1" + v0.h.f2192d;
                                    } else if (j5 < 10240) {
                                        str = "1" + v0.h.f2191c;
                                    } else if (j5 < 102400) {
                                        str = "10" + v0.h.f2191c;
                                    } else if (j5 < 1048576) {
                                        str = "100" + v0.h.f2191c;
                                    } else if (j5 < 10485760) {
                                        str = "1" + v0.h.f2190b;
                                    } else if (j5 < 104857600) {
                                        str = "10" + v0.h.f2190b;
                                    } else if (j5 < 1073741824) {
                                        str = "100" + v0.h.f2190b;
                                    } else if (j5 < 10737418240L) {
                                        str = "1" + v0.h.f2189a;
                                    } else {
                                        str = "10" + v0.h.f2189a;
                                    }
                                }
                                arrayList5.add(str);
                                arrayList2 = arrayList;
                                arrayList2.add(Integer.valueOf(i21));
                                j3 = j2;
                            } else {
                                arrayList2 = arrayList;
                            }
                            i21++;
                            arrayList6 = arrayList2;
                        }
                        ArrayList arrayList7 = arrayList6;
                        if (arrayList7.size() < 3) {
                            aVar = null;
                        } else {
                            aVar = new d0.a((Integer[]) arrayList7.toArray(new Integer[0]), (String[]) arrayList5.toArray(new String[0]));
                        }
                    }
                    pVar6.f87i = aVar;
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                p pVar7 = this.f52e;
                d0.b bVar8 = pVar7.f86h;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                int size5 = bVar8.size();
                boolean z6 = false;
                for (int i22 = 0; i22 < size5; i22++) {
                    d0.d dVarB4 = bVar8.b(i22);
                    if (dVarB4.g()) {
                        z6 = true;
                    } else {
                        String str5 = dVarB4.f539a;
                        if (!TextUtils.isEmpty(str5) && !dVarB4.g()) {
                            String upperCase2 = dVarB4.f() ? "DIR" : c.s(str5).toUpperCase();
                            if (!linkedHashMap.containsKey(upperCase2)) {
                                linkedHashMap.put(upperCase2, Integer.valueOf(z6 ? i22 - 1 : i22));
                                z6 = false;
                            }
                        }
                    }
                }
                pVar7.f87i = new d0.a((Integer[]) linkedHashMap.values().toArray(new Integer[0]), (String[]) linkedHashMap.keySet().toArray(new String[0]));
            }
        }
        if (c.K(this.f54g, 16) && (bVar2 = this.f57j) != null && bVar2.f521a > 0) {
            int size6 = this.f52e.f86h.size();
            int size7 = this.f57j.size();
            int i23 = 0;
            for (int i24 = 0; i24 < size7; i24++) {
                d0.d dVarB5 = this.f57j.b(i24);
                if (dVarB5.f545g) {
                    int i25 = i23;
                    while (i25 < size6) {
                        if (dVarB5.f539a.equals(this.f52e.f86h.b(i25).f539a)) {
                            this.f52e.f86h.g(i25);
                            i25++;
                            break;
                        }
                        i25++;
                    }
                    if (i25 >= size6) {
                        i25 = 0;
                        while (i25 < i23) {
                            if (dVarB5.f539a.equals(this.f52e.f86h.b(i25).f539a)) {
                                this.f52e.f86h.g(i25);
                                i25++;
                                break;
                            }
                            i25++;
                        }
                    }
                    if (isCancelled()) {
                        threadCurrentThread.setPriority(priority);
                        return null;
                    }
                    i23 = i25;
                }
            }
        }
        if (n0.e.f1243a == null) {
            n0.e.h();
            if (Build.VERSION.SDK_INT < 31) {
                try {
                    new File(n0.e.f1243a, ".nomedia").createNewFile();
                } catch (Exception unused) {
                }
            }
        }
        threadCurrentThread.setPriority(priority);
        p pVar8 = this.f52e;
        pVar8.f81c = this.f54g;
        return pVar8;
    }

    @Override
    public final int i() {
        return this.f52e.f79a;
    }

    @Override
    public final int j() {
        return 1;
    }

    @Override
    public final void k() {
        p pVar;
        w0.a aVar = this.f2213a;
        if (aVar == null || (pVar = this.f52e) == null) {
            return;
        }
        aVar.b(pVar, false);
    }

    public final int m() {
        Point point = this.f55h;
        if (point == null) {
            return 10;
        }
        if (this.f53f.f1657g != R.layout.item_file_grid) {
            return point.y / t0.b.f2090k;
        }
        int i2 = ((int) (t0.b.f2090k * 1.6f)) + 10;
        return (point.x / i2) * (point.y / ((t0.b.f2091l * 3) + i2));
    }
}
