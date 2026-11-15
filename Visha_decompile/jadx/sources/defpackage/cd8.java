package defpackage;

public class cd8 extends bd8 {
    public final Object c;

    public cd8(int i) {
        super(i);
        this.c = new Object();
    }

    @Override
    public Object acquire() {
        Object objAcquire;
        synchronized (this.c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override
    public boolean release(Object obj) {
        boolean zRelease;
        synchronized (this.c) {
            zRelease = super.release(obj);
        }
        return zRelease;
    }
}
