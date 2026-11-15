package com.transsion.json;

public class g {

    private final Class f44701a;

    private Object f44702b;

    public g(Class cls) {
        this.f44701a = cls;
    }

    public synchronized Object a() {
        try {
            if (this.f44702b == null) {
                this.f44702b = this.f44701a.newInstance();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f44702b;
    }
}
