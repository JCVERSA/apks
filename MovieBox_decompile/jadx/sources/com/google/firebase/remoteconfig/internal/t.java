package com.google.firebase.remoteconfig.internal;

public class t implements ad.k {

    private final String f31746a;

    private final int f31747b;

    t(String str, int i10) {
        this.f31746a = str;
        this.f31747b = i10;
    }

    private String f() {
        return b().trim();
    }

    private void g() {
        if (this.f31746a == null) {
            throw new IllegalArgumentException("Value is null, and cannot be converted to the desired type.");
        }
    }

    @Override
    public int a() {
        return this.f31747b;
    }

    @Override
    public String b() {
        if (this.f31747b == 0) {
            return "";
        }
        g();
        return this.f31746a;
    }

    @Override
    public long c() {
        if (this.f31747b == 0) {
            return 0L;
        }
        String strF = f();
        try {
            return Long.valueOf(strF).longValue();
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "long"), e10);
        }
    }

    @Override
    public double d() {
        if (this.f31747b == 0) {
            return 0.0d;
        }
        String strF = f();
        try {
            return Double.valueOf(strF).doubleValue();
        } catch (NumberFormatException e10) {
            throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "double"), e10);
        }
    }

    @Override
    public boolean e() {
        if (this.f31747b == 0) {
            return false;
        }
        String strF = f();
        if (m.f31706f.matcher(strF).matches()) {
            return true;
        }
        if (m.f31707g.matcher(strF).matches()) {
            return false;
        }
        throw new IllegalArgumentException(String.format("[Value: %s] cannot be converted to a %s.", strF, "boolean"));
    }
}
