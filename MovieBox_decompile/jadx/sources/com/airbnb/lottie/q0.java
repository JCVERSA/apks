package com.airbnb.lottie;

import java.util.Arrays;

public final class q0 {

    private final Object f17336a;

    private final Throwable f17337b;

    public q0(Object obj) {
        this.f17336a = obj;
        this.f17337b = null;
    }

    public Throwable a() {
        return this.f17337b;
    }

    public Object b() {
        return this.f17336a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q0)) {
            return false;
        }
        q0 q0Var = (q0) obj;
        if (b() != null && b().equals(q0Var.b())) {
            return true;
        }
        if (a() == null || q0Var.a() == null) {
            return false;
        }
        return a().toString().equals(a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{b(), a()});
    }

    public q0(Throwable th2) {
        this.f17337b = th2;
        this.f17336a = null;
    }
}
