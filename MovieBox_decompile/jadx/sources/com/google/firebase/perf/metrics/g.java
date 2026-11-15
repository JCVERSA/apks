package com.google.firebase.perf.metrics;

import android.util.SparseIntArray;

public class g {

    public static class a {

        int f31467a;

        int f31468b;

        int f31469c;

        public a(int i10, int i11, int i12) {
            this.f31467a = i10;
            this.f31468b = i11;
            this.f31469c = i12;
        }

        public a a(a aVar) {
            return new a(this.f31467a - aVar.d(), this.f31468b - aVar.c(), this.f31469c - aVar.b());
        }

        public int b() {
            return this.f31469c;
        }

        public int c() {
            return this.f31468b;
        }

        public int d() {
            return this.f31467a;
        }
    }

    public static a a(SparseIntArray[] sparseIntArrayArr) {
        int i10;
        int i11;
        SparseIntArray sparseIntArray;
        int i12 = 0;
        if (sparseIntArrayArr == null || (sparseIntArray = sparseIntArrayArr[0]) == null) {
            i10 = 0;
            i11 = 0;
        } else {
            int i13 = 0;
            i10 = 0;
            i11 = 0;
            while (i12 < sparseIntArray.size()) {
                int iKeyAt = sparseIntArray.keyAt(i12);
                int iValueAt = sparseIntArray.valueAt(i12);
                i13 += iValueAt;
                if (iKeyAt > 700) {
                    i11 += iValueAt;
                }
                if (iKeyAt > 16) {
                    i10 += iValueAt;
                }
                i12++;
            }
            i12 = i13;
        }
        return new a(i12, i10, i11);
    }
}
