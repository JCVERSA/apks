package com.bykv.vk.openvk.preload.b;

public abstract class k<IN, OUT> extends d<IN, OUT> {

    private IN f19945d;

    @Override
    public final Object a(b<OUT> bVar, IN in2) throws Throwable {
        this.f19945d = in2;
        try {
            return bVar.a(a());
        } catch (i.a e10) {
            return a((b) bVar, e10.getCause());
        } catch (Throwable th2) {
            return a((b) bVar, th2);
        }
    }

    protected abstract boolean a(Throwable th2);

    protected final IN g() {
        return this.f19945d;
    }

    private Object a(b<OUT> bVar, Throwable th2) throws Throwable {
        while (a(th2)) {
            try {
                return bVar.a(a());
            } catch (i.a e10) {
                th2 = e10.getCause();
            }
        }
        throw th2;
    }

    protected OUT a() {
        return this.f19945d;
    }
}
