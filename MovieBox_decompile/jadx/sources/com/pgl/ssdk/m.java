package com.pgl.ssdk;

public final class m<A, B> {

    private final A f39350a;

    private final B f39351b;

    public m(A a10, B b10) {
        this.f39350a = a10;
        this.f39351b = b10;
    }

    public static <A, B> m<A, B> a(A a10, B b10) {
        return new m<>(a10, b10);
    }

    public B b() {
        return this.f39351b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        A a10 = this.f39350a;
        if (a10 == null) {
            if (mVar.f39350a != null) {
                return false;
            }
        } else if (!a10.equals(mVar.f39350a)) {
            return false;
        }
        B b10 = this.f39351b;
        if (b10 == null) {
            if (mVar.f39351b != null) {
                return false;
            }
        } else if (!b10.equals(mVar.f39351b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a10 = this.f39350a;
        int iHashCode = ((a10 == null ? 0 : a10.hashCode()) + 31) * 31;
        B b10 = this.f39351b;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public A a() {
        return this.f39350a;
    }
}
