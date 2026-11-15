package com.google.android.exoplayer2.upstream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class h0 {

    private static final Comparator f26639h = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return h0.g((h0.b) obj, (h0.b) obj2);
        }
    };

    private static final Comparator f26640i = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return h0.h((h0.b) obj, (h0.b) obj2);
        }
    };

    private final int f26641a;

    private int f26645e;

    private int f26646f;

    private int f26647g;

    private final b[] f26643c = new b[5];

    private final ArrayList f26642b = new ArrayList();

    private int f26644d = -1;

    static class b {

        public int f26648a;

        public int f26649b;

        public float f26650c;

        private b() {
        }
    }

    public h0(int i10) {
        this.f26641a = i10;
    }

    private void d() {
        if (this.f26644d != 1) {
            Collections.sort(this.f26642b, f26639h);
            this.f26644d = 1;
        }
    }

    private void e() {
        if (this.f26644d != 0) {
            Collections.sort(this.f26642b, f26640i);
            this.f26644d = 0;
        }
    }

    public static int g(b bVar, b bVar2) {
        return bVar.f26648a - bVar2.f26648a;
    }

    public static int h(b bVar, b bVar2) {
        return Float.compare(bVar.f26650c, bVar2.f26650c);
    }

    public void c(int i10, float f10) {
        b bVar;
        d();
        int i11 = this.f26647g;
        if (i11 > 0) {
            b[] bVarArr = this.f26643c;
            int i12 = i11 - 1;
            this.f26647g = i12;
            bVar = bVarArr[i12];
        } else {
            bVar = new b();
        }
        int i13 = this.f26645e;
        this.f26645e = i13 + 1;
        bVar.f26648a = i13;
        bVar.f26649b = i10;
        bVar.f26650c = f10;
        this.f26642b.add(bVar);
        this.f26646f += i10;
        while (true) {
            int i14 = this.f26646f;
            int i15 = this.f26641a;
            if (i14 <= i15) {
                return;
            }
            int i16 = i14 - i15;
            b bVar2 = (b) this.f26642b.get(0);
            int i17 = bVar2.f26649b;
            if (i17 <= i16) {
                this.f26646f -= i17;
                this.f26642b.remove(0);
                int i18 = this.f26647g;
                if (i18 < 5) {
                    b[] bVarArr2 = this.f26643c;
                    this.f26647g = i18 + 1;
                    bVarArr2[i18] = bVar2;
                }
            } else {
                bVar2.f26649b = i17 - i16;
                this.f26646f -= i16;
            }
        }
    }

    public float f(float f10) {
        e();
        float f11 = f10 * this.f26646f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f26642b.size(); i11++) {
            b bVar = (b) this.f26642b.get(i11);
            i10 += bVar.f26649b;
            if (i10 >= f11) {
                return bVar.f26650c;
            }
        }
        if (this.f26642b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList arrayList = this.f26642b;
        return ((b) arrayList.get(arrayList.size() - 1)).f26650c;
    }

    public void i() {
        this.f26642b.clear();
        this.f26644d = -1;
        this.f26645e = 0;
        this.f26646f = 0;
    }
}
