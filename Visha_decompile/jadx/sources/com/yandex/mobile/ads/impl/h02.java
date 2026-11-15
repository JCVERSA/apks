package com.yandex.mobile.ads.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public final class h02 {
    private static final Comparator<a> h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return h02.a((h02.a) obj, (h02.a) obj2);
        }
    };
    private static final Comparator<a> i = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return h02.b((h02.a) obj, (h02.a) obj2);
        }
    };
    private final int a;
    private int e;
    private int f;
    private int g;
    private final a[] c = new a[5];
    private final ArrayList<a> b = new ArrayList<>();
    private int d = -1;

    public static class a {
        public int a;
        public int b;
        public float c;

        private a() {
        }
    }

    public h02(int i2) {
        this.a = i2;
    }

    public static int b(a aVar, a aVar2) {
        return Float.compare(aVar.c, aVar2.c);
    }

    public final void a(int i2, float f) {
        a aVar;
        if (this.d != 1) {
            Collections.sort(this.b, h);
            this.d = 1;
        }
        int i3 = this.g;
        if (i3 > 0) {
            a[] aVarArr = this.c;
            int i4 = i3 - 1;
            this.g = i4;
            aVar = aVarArr[i4];
        } else {
            aVar = new a();
        }
        int i5 = this.e;
        this.e = i5 + 1;
        aVar.a = i5;
        aVar.b = i2;
        aVar.c = f;
        this.b.add(aVar);
        this.f += i2;
        while (true) {
            int i6 = this.f;
            int i7 = this.a;
            if (i6 <= i7) {
                return;
            }
            int i8 = i6 - i7;
            a aVar2 = this.b.get(0);
            int i9 = aVar2.b;
            if (i9 <= i8) {
                this.f -= i9;
                this.b.remove(0);
                int i10 = this.g;
                if (i10 < 5) {
                    a[] aVarArr2 = this.c;
                    this.g = i10 + 1;
                    aVarArr2[i10] = aVar2;
                }
            } else {
                aVar2.b = i9 - i8;
                this.f -= i8;
            }
        }
    }

    public final void b() {
        this.b.clear();
        this.d = -1;
        this.e = 0;
        this.f = 0;
    }

    public final float a() {
        if (this.d != 0) {
            Collections.sort(this.b, i);
            this.d = 0;
        }
        float f = 0.5f * this.f;
        int i2 = 0;
        for (int i3 = 0; i3 < this.b.size(); i3++) {
            a aVar = this.b.get(i3);
            i2 += aVar.b;
            if (i2 >= f) {
                return aVar.c;
            }
        }
        if (this.b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<a> arrayList = this.b;
        return arrayList.get(arrayList.size() - 1).c;
    }

    public static int a(a aVar, a aVar2) {
        return aVar.a - aVar2.a;
    }
}
