package androidx.media3.common.util;

import android.os.Looper;

public final class g {

    private final p f10069a;

    private final p f10070b;

    private final a f10071c;

    private Object f10072d;

    private Object f10073e;

    private int f10074f;

    public interface a {
        void a(Object obj, Object obj2);
    }

    public g(Object obj, Looper looper, Looper looper2, i iVar, a aVar) {
        this.f10069a = iVar.createHandler(looper, null);
        this.f10070b = iVar.createHandler(looper2, null);
        this.f10072d = obj;
        this.f10073e = obj;
        this.f10071c = aVar;
    }

    public void e(Object obj) {
        if (this.f10074f == 0) {
            k(obj);
        }
    }

    public void f(Object obj) {
        int i10 = this.f10074f - 1;
        this.f10074f = i10;
        if (i10 == 0) {
            k(obj);
        }
    }

    public void g(com.google.common.base.f fVar) {
        final Object objApply = fVar.apply(this.f10073e);
        this.f10073e = objApply;
        this.f10070b.post(new Runnable() {
            @Override
            public final void run() {
                this.f10067a.f(objApply);
            }
        });
    }

    private void k(Object obj) {
        Object obj2 = this.f10072d;
        this.f10072d = obj;
        if (obj2.equals(obj)) {
            return;
        }
        this.f10071c.a(obj2, obj);
    }

    public Object d() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == this.f10070b.getLooper()) {
            return this.f10072d;
        }
        androidx.media3.common.util.a.g(looperMyLooper == this.f10069a.getLooper());
        return this.f10073e;
    }

    public void h(Runnable runnable) {
        this.f10069a.post(runnable);
    }

    public void i(final Object obj) {
        this.f10073e = obj;
        this.f10070b.post(new Runnable() {
            @Override
            public final void run() {
                this.f10060a.e(obj);
            }
        });
    }

    public void j(com.google.common.base.f fVar, final com.google.common.base.f fVar2) {
        androidx.media3.common.util.a.g(Looper.myLooper() == this.f10070b.getLooper());
        this.f10074f++;
        this.f10069a.post(new Runnable() {
            @Override
            public final void run() {
                this.f10063a.g(fVar2);
            }
        });
        k(fVar.apply(this.f10072d));
    }
}
