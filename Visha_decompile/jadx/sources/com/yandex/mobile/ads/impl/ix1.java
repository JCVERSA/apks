package com.yandex.mobile.ads.impl;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

final class ix1 {
    private static final y12 d = y12.a(':');
    private static final y12 e = y12.a('*');
    private final ArrayList a = new ArrayList();
    private int b = 0;
    private int c;

    public static final class a {
        public final long a;
        public final int b;

        public a(int i, long j) {
            this.a = j;
            this.b = i;
        }
    }

    public final void a(a80 a80Var, pj1 pj1Var, ArrayList arrayList) throws IOException {
        char c;
        int i = 4;
        int i2 = 8;
        int i3 = this.b;
        if (i3 == 0) {
            long jB = a80Var.b();
            pj1Var.a = (jB == -1 || jB < 8) ? 0L : jB - 8;
            this.b = 1;
            return;
        }
        if (i3 == 1) {
            ag1 ag1Var = new ag1(8);
            a80Var.b(ag1Var.c(), 0, 8);
            this.c = ag1Var.k() + 8;
            if (ag1Var.h() != 1397048916) {
                pj1Var.a = 0L;
                return;
            } else {
                pj1Var.a = a80Var.a() - ((long) (this.c - 12));
                this.b = 2;
                return;
            }
        }
        short s = 2817;
        if (i3 == 2) {
            long jB2 = a80Var.b();
            int i4 = this.c - 20;
            ag1 ag1Var2 = new ag1(i4);
            a80Var.b(ag1Var2.c(), 0, i4);
            int i5 = 0;
            while (i5 < i4 / 12) {
                ag1Var2.f(2);
                short sM = ag1Var2.m();
                if (sM == 2192 || sM == 2816 || sM == s || sM == 2819 || sM == 2820) {
                    this.a.add(new a(ag1Var2.k(), (jB2 - ((long) this.c)) - ((long) ag1Var2.k())));
                } else {
                    ag1Var2.f(8);
                }
                i5++;
                s = 2817;
            }
            if (this.a.isEmpty()) {
                pj1Var.a = 0L;
                return;
            } else {
                this.b = 3;
                pj1Var.a = ((a) this.a.get(0)).a;
                return;
            }
        }
        if (i3 != 3) {
            throw new IllegalStateException();
        }
        long jA = a80Var.a();
        int iB = (int) ((a80Var.b() - a80Var.a()) - ((long) this.c));
        ag1 ag1Var3 = new ag1(iB);
        a80Var.b(ag1Var3.c(), 0, iB);
        int i6 = 0;
        while (i6 < this.a.size()) {
            a aVar = (a) this.a.get(i6);
            ag1Var3.e((int) (aVar.a - jA));
            ag1Var3.f(i);
            int iK = ag1Var3.k();
            Charset charset = lo.c;
            String strA = ag1Var3.a(iK, charset);
            strA.hashCode();
            switch (strA) {
                case "SlowMotion_Data":
                    c = 2192;
                    break;
                case "Super_SlowMotion_Edit_Data":
                    c = 2819;
                    break;
                case "Super_SlowMotion_Data":
                    c = 2816;
                    break;
                case "Super_SlowMotion_Deflickering_On":
                    c = 2820;
                    break;
                case "Super_SlowMotion_BGM":
                    c = 2817;
                    break;
                default:
                    throw eg1.a("Invalid SEF name", (Exception) null);
            }
            int i7 = aVar.b - (iK + i2);
            if (c == 2192) {
                ArrayList arrayList2 = new ArrayList();
                List<String> listA = e.a(ag1Var3.a(i7, charset));
                for (int i8 = 0; i8 < listA.size(); i8++) {
                    List<String> listA2 = d.a(listA.get(i8));
                    if (listA2.size() != 3) {
                        throw eg1.a((String) null, (Exception) null);
                    }
                    try {
                        arrayList2.add(new i02.b(1 << (Integer.parseInt(listA2.get(2)) - 1), Long.parseLong(listA2.get(0)), Long.parseLong(listA2.get(1))));
                    } catch (NumberFormatException e2) {
                        throw eg1.a((String) null, (Exception) e2);
                    }
                }
                arrayList.add(new i02(arrayList2));
            } else if (c != 2816 && c != 2817 && c != 2819 && c != 2820) {
                throw new IllegalStateException();
            }
            i6++;
            i = 4;
            i2 = 8;
        }
        pj1Var.a = 0L;
    }

    public final void a() {
        this.a.clear();
        this.b = 0;
    }
}
