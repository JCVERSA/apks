package ru.zdevs.zarchiver;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import d0.i;
import h0.h;
import java.util.ArrayList;
import ru.zdevs.zarchiver.io.SAF;
import x0.g;

public final class b {

    public final Object f1651a = new Object();

    public final int f1652b;

    public h f1653c;

    public byte f1654d;

    public int f1655e;

    public int f1656f;

    public int f1657g;

    public int f1658h;

    public boolean f1659i;

    public long f1660j;

    public long f1661k;

    public long f1662l;

    public int f1663m;

    public int f1664n;

    public String f1665o;

    public String[] f1666p;

    public d0.b f1667q;

    public i f1668r;

    public d0.a f1669s;

    public final ArrayList<a> f1670t;

    public static class a implements Comparable<a> {

        public final h f1671a;

        public final char f1672b;

        public final int f1673c;

        public final boolean f1674d;

        public a(h hVar, char c2, int i2, boolean z2) {
            this.f1671a = hVar;
            this.f1672b = c2;
            this.f1673c = i2;
            this.f1674d = z2;
        }

        @Override
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            if (aVar2 == null) {
                return 1;
            }
            boolean z2 = aVar2.f1674d;
            boolean z3 = this.f1674d;
            if (z3 != z2) {
                return z3 ? 1 : -1;
            }
            return this.f1671a.b(aVar2.f1671a);
        }

        public final String toString() {
            return "Path: " + this.f1671a + " Pos: " + this.f1673c + " Action: " + String.format("0x%x", Integer.valueOf(this.f1672b));
        }
    }

    public b(int i2) {
        this.f1652b = i2;
        String str = t0.b.f2081b[i2];
        if (str == null) {
            this.f1653c = new h("/sdcard");
        } else {
            this.f1653c = new h(str);
        }
        this.f1654d = (byte) 0;
        this.f1655e = 0;
        n();
        this.f1660j = -2L;
        this.f1662l = -1L;
        this.f1661k = -1L;
        this.f1664n = 0;
        this.f1663m = 0;
        this.f1667q = new d0.b(0);
        this.f1669s = null;
        this.f1656f = 0;
        this.f1665o = null;
        this.f1666p = null;
        this.f1668r = null;
        this.f1670t = new ArrayList<>();
    }

    public final a0.a a(int[] iArr) {
        String[] strArrA;
        synchronized (this.f1651a) {
            if (i()) {
                return new a0.a(iArr, this.f1668r);
            }
            h hVarM = (Build.VERSION.SDK_INT >= 33 && this.f1653c.j() && f() == 2 && (strArrA = g.a(this.f1653c.f1108c)) != null && strArrA[1].equals(strArrA[2])) ? SAF.m(strArrA[0], strArrA[1], true, true) : this.f1653c;
            return new a0.a(this.f1667q, hVarM, iArr);
        }
    }

    public final d0.h b(Context context, d0.h hVar) {
        byte b2 = 0;
        if (i()) {
            if (hVar != null && hVar.c() == R.layout.item_file_search) {
                b2 = 1;
            }
            d0.e eVar = b2 != 0 ? (d0.e) hVar : new d0.e(context, this);
            eVar.l(this.f1668r, this.f1653c, true);
            return eVar;
        }
        d0.c cVar = hVar == null || hVar.c() != this.f1657g ? new d0.c(context, this, hVar) : (d0.c) hVar;
        d0.b bVar = this.f1667q;
        h hVar2 = this.f1653c;
        d0.a aVar = this.f1669s;
        cVar.l(bVar, hVar2, cVar.f525o != R.layout.item_file_grid);
        if (cVar.f565m != null && !cVar.f528r.equals(hVar2)) {
            cVar.f565m.f1395c = hVar2.g() ? (byte) 3 : (byte) 0;
        }
        cVar.f528r = hVar2;
        cVar.f529s = aVar;
        return cVar;
    }

    public final int c() {
        if (this.f1655e == 0) {
            h hVar = this.f1653c;
            if (hVar == null) {
                this.f1655e = 32768;
            } else {
                if (hVar.l()) {
                    this.f1655e = 2;
                    if (g.e(this.f1653c.f1108c)) {
                        this.f1655e |= 128;
                    }
                } else if (this.f1653c.j()) {
                    this.f1655e = 1;
                } else if (this.f1653c.g()) {
                    this.f1655e = 4;
                } else if (this.f1653c.m()) {
                    this.f1655e = 16;
                } else if (this.f1653c.k()) {
                    this.f1655e = 64;
                } else {
                    this.f1655e = 32768;
                }
                if (this.f1653c.i()) {
                    this.f1655e |= 32;
                }
            }
        }
        return this.f1655e;
    }

    public final a d() {
        ArrayList<a> arrayList = this.f1670t;
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList.remove(arrayList.size() - 1);
    }

    public final int e() {
        return i() ? this.f1664n : this.f1663m;
    }

    public final byte f() {
        if (this.f1654d == 0) {
            this.f1654d = g.d(this.f1653c, false);
        }
        return this.f1654d;
    }

    public final boolean g(int i2) {
        return a0.c.L(c(), i2);
    }

    public final boolean h() {
        if (t0.b.l(8192)) {
            return this.f1670t.isEmpty();
        }
        if (g(32772)) {
            return false;
        }
        String str = this.f1653c.f1108c;
        return ((str.isEmpty() || str.equals("/")) && g(1)) || str.equals(t0.b.f2081b[this.f1652b]) || x0.d.k(str) != null;
    }

    public final boolean i() {
        return a0.c.K(this.f1656f, 1) && this.f1668r != null;
    }

    public final void j(Bundle bundle, String str) {
        bundle.putParcelable(str.concat("path"), this.f1653c);
        bundle.putInt(str.concat("flag"), this.f1656f);
        bundle.putString(str.concat("find"), this.f1665o);
    }

    public final void k(Bundle bundle, String str) {
        h hVar = (h) bundle.getParcelable(str.concat("path"));
        if (hVar == null) {
            return;
        }
        this.f1656f = bundle.getInt(str.concat("flag"));
        this.f1653c = hVar;
        this.f1665o = bundle.getString(str.concat("find"));
    }

    public final void l(h hVar, byte b2, int i2) {
        this.f1653c = hVar;
        this.f1654d = b2;
        this.f1655e = 0;
        this.f1663m = i2;
        this.f1660j = -2L;
        this.f1662l = -1L;
        this.f1661k = -1L;
    }

    public final void m(char c2, int i2) {
        boolean zL = t0.b.l(8192);
        ArrayList<a> arrayList = this.f1670t;
        if (zL || !arrayList.isEmpty()) {
            h hVar = this.f1653c;
            boolean zI = i();
            a aVar = new a(hVar, c2, i2, zI);
            a aVar2 = arrayList.isEmpty() ? null : arrayList.get(arrayList.size() - 1);
            int iB = 1;
            if (aVar2 != null) {
                iB = zI != aVar2.f1674d ? zI ? 1 : -1 : hVar.b(aVar2.f1671a);
            }
            if (iB != 0) {
                arrayList.add(aVar);
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    a0.b.c(arrayList.get(i3).f1671a);
                }
            }
        }
    }

    public final void n() {
        int i2;
        int i3 = t0.b.f2089j;
        int i4 = i3 & 3840;
        if (i4 != 512) {
            i2 = i4 != 768 ? R.layout.item_file_detail : R.layout.item_file_grid;
        } else {
            i2 = R.layout.item_file_compact;
        }
        this.f1657g = i2;
        this.f1658h = i3 & 248;
        this.f1659i = t0.b.g(4);
    }
}
