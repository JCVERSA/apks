package com.yandex.mobile.ads.impl;

public final class ln0 {
    private final boolean a;
    private final float b;
    private final boolean c;
    private final float d;

    public static final class a {
        private boolean a;
        private float b;
        private boolean c;
        private float d;

        public final a a(float f) {
            this.b = f;
            return this;
        }

        public final float b() {
            return this.b;
        }

        public final float c() {
            return this.d;
        }

        public final boolean d() {
            return this.c;
        }

        public final boolean e() {
            return this.a;
        }

        public final void a(boolean z) {
            this.c = z;
        }

        public final void b(float f) {
            this.d = f;
        }

        public final ln0 a() {
            return new ln0(this);
        }

        public final a b(boolean z) {
            this.a = z;
            return this;
        }
    }

    public ln0(a aVar) {
        this(aVar.e(), aVar.b(), aVar.d(), aVar.c());
    }

    public final float a() {
        return this.b;
    }

    public final float b() {
        return this.d;
    }

    public final boolean c() {
        return this.c;
    }

    public final boolean d() {
        return this.a;
    }

    private ln0(boolean z, float f, boolean z2, float f2) {
        this.a = z;
        this.b = f;
        this.c = z2;
        this.d = f2;
    }
}
