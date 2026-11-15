package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;

public interface a62 {

    public static final class a {
        public final int a;
        public final byte[] b;
        public final int c;
        public final int d;

        public a(int i, int i2, int i3, byte[] bArr) {
            this.a = i;
            this.b = bArr;
            this.c = i2;
            this.d = i3;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.c == aVar.c && this.d == aVar.d && Arrays.equals(this.b, aVar.b);
        }

        public final int hashCode() {
            return ((((Arrays.hashCode(this.b) + (this.a * 31)) * 31) + this.c) * 31) + this.d;
        }
    }

    int a(qv qvVar, int i, boolean z) throws IOException;

    default void a(int i, ag1 ag1Var) {
        b(i, ag1Var);
    }

    void a(long j, int i, int i2, int i3, @Nullable a aVar);

    void a(jc0 jc0Var);

    default int b(qv qvVar, int i, boolean z) throws IOException {
        return a(qvVar, i, z);
    }

    void b(int i, ag1 ag1Var);
}
