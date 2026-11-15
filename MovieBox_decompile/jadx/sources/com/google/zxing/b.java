package com.google.zxing;

public final class b {

    private final a f32025a;

    private kd.b f32026b;

    public b(a aVar) {
        if (aVar == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f32025a = aVar;
    }

    public kd.b a() {
        if (this.f32026b == null) {
            this.f32026b = this.f32025a.b();
        }
        return this.f32026b;
    }

    public kd.a b(int i10, kd.a aVar) {
        return this.f32025a.c(i10, aVar);
    }

    public int c() {
        return this.f32025a.d();
    }

    public int d() {
        return this.f32025a.f();
    }

    public boolean e() {
        return this.f32025a.e().f();
    }

    public b f() {
        return new b(this.f32025a.a(this.f32025a.e().g()));
    }

    public String toString() {
        try {
            return a().toString();
        } catch (NotFoundException unused) {
            return "";
        }
    }
}
