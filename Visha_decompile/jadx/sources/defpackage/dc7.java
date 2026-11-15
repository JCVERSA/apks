package defpackage;

public class dc7 extends cc7 {
    public final Object b = new Object();

    @Override
    public Object a() {
        Object objA;
        synchronized (this.b) {
            objA = super.a();
        }
        return objA;
    }

    @Override
    public void b() {
        synchronized (this.b) {
            super.b();
        }
    }

    @Override
    public boolean d(Object obj) {
        boolean zD;
        synchronized (this.b) {
            zD = super.d(obj);
        }
        return zD;
    }
}
