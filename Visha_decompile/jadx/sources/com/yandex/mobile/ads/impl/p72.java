package com.yandex.mobile.ads.impl;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface p72 {

    public static final class a {
        public final String a;
        public final byte[] b;

        public a(String str, byte[] bArr) {
            this.a = str;
            this.b = bArr;
        }
    }

    public static final class b {

        @Nullable
        public final String a;
        public final List<a> b;
        public final byte[] c;

        public b(int i, @Nullable String str, @Nullable ArrayList arrayList, byte[] bArr) {
            this.a = str;
            this.b = arrayList == null ? Collections.emptyList() : Collections.unmodifiableList(arrayList);
            this.c = bArr;
        }
    }

    public interface c {
        SparseArray<p72> a();

        @Nullable
        p72 a(int i, b bVar);
    }

    public static final class d {
        private final String a;
        private final int b;
        private final int c;
        private int d;
        private String e;

        public d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.a = str;
            this.b = i2;
            this.c = i3;
            this.d = Integer.MIN_VALUE;
            this.e = "";
        }

        public final void a() {
            int i = this.d;
            this.d = i == Integer.MIN_VALUE ? this.b : i + this.c;
            this.e = this.a + this.d;
        }

        public final String b() {
            if (this.d != Integer.MIN_VALUE) {
                return this.e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public final int c() {
            int i = this.d;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    void a();

    void a(int i, ag1 ag1Var) throws eg1;

    void a(p52 p52Var, b80 b80Var, d dVar);
}
