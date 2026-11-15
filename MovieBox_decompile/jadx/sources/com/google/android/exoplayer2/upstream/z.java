package com.google.android.exoplayer2.upstream;

import java.io.IOException;

public interface z {

    public static final class a {

        public final int f26764a;

        public final int f26765b;

        public final int f26766c;

        public final int f26767d;

        public a(int i10, int i11, int i12, int i13) {
            this.f26764a = i10;
            this.f26765b = i11;
            this.f26766c = i12;
            this.f26767d = i13;
        }

        public boolean a(int i10) {
            if (i10 == 1) {
                if (this.f26764a - this.f26765b <= 1) {
                    return false;
                }
            } else if (this.f26766c - this.f26767d <= 1) {
                return false;
            }
            return true;
        }
    }

    public static final class b {

        public final int f26768a;

        public final long f26769b;

        public b(int i10, long j10) {
            com.google.android.exoplayer2.util.a.a(j10 >= 0);
            this.f26768a = i10;
            this.f26769b = j10;
        }
    }

    public static final class c {

        public final v9.h f26770a;

        public final v9.i f26771b;

        public final IOException f26772c;

        public final int f26773d;

        public c(v9.h hVar, v9.i iVar, IOException iOException, int i10) {
            this.f26770a = hVar;
            this.f26771b = iVar;
            this.f26772c = iOException;
            this.f26773d = i10;
        }
    }

    int a(int i10);

    void b(long j10);

    long c(c cVar);

    b d(a aVar, c cVar);
}
