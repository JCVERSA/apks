package com.google.firebase.crashlytics.internal.settings;

public class c {

    public final b f30912a;

    public final a f30913b;

    public final long f30914c;

    public final int f30915d;

    public final int f30916e;

    public final double f30917f;

    public final double f30918g;

    public final int f30919h;

    public static class a {

        public final boolean f30920a;

        public final boolean f30921b;

        public final boolean f30922c;

        public a(boolean z10, boolean z11, boolean z12) {
            this.f30920a = z10;
            this.f30921b = z11;
            this.f30922c = z12;
        }
    }

    public static class b {

        public final int f30923a;

        public final int f30924b;

        public b(int i10, int i11) {
            this.f30923a = i10;
            this.f30924b = i11;
        }
    }

    public c(long j10, b bVar, a aVar, int i10, int i11, double d10, double d11, int i12) {
        this.f30914c = j10;
        this.f30912a = bVar;
        this.f30913b = aVar;
        this.f30915d = i10;
        this.f30916e = i11;
        this.f30917f = d10;
        this.f30918g = d11;
        this.f30919h = i12;
    }

    public boolean a(long j10) {
        return this.f30914c < j10;
    }
}
