package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import java.util.Arrays;

public interface ld {

    public static final class a {
        public final long a;
        public final i52 b;
        public final int c;

        @Nullable
        public final vw0.b d;
        public final long e;
        public final i52 f;
        public final int g;

        @Nullable
        public final vw0.b h;
        public final long i;
        public final long j;

        public a(long j, i52 i52Var, int i, @Nullable vw0.b bVar, long j2, i52 i52Var2, int i2, @Nullable vw0.b bVar2, long j3, long j4) {
            this.a = j;
            this.b = i52Var;
            this.c = i;
            this.d = bVar;
            this.e = j2;
            this.f = i52Var2;
            this.g = i2;
            this.h = bVar2;
            this.i = j3;
            this.j = j4;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.c == aVar.c && this.e == aVar.e && this.g == aVar.g && this.i == aVar.i && this.j == aVar.j && zd1.a(this.b, aVar.b) && zd1.a(this.d, aVar.d) && zd1.a(this.f, aVar.f) && zd1.a(this.h, aVar.h);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Long.valueOf(this.a), this.b, Integer.valueOf(this.c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j)});
        }
    }

    public static final class b {
        private final bc0 a;
        private final SparseArray<a> b;

        public b(bc0 bc0Var, SparseArray<a> sparseArray) {
            this.a = bc0Var;
            SparseArray<a> sparseArray2 = new SparseArray<>(bc0Var.a());
            for (int i = 0; i < bc0Var.a(); i++) {
                int iB = bc0Var.b(i);
                sparseArray2.append(iB, (a) hg.a(sparseArray.get(iB)));
            }
            this.b = sparseArray2;
        }

        public final boolean a(int i) {
            return this.a.a(i);
        }

        public final int b(int i) {
            return this.a.b(i);
        }

        public final a c(int i) {
            a aVar = this.b.get(i);
            aVar.getClass();
            return aVar;
        }

        public final int a() {
            return this.a.a();
        }
    }
}
