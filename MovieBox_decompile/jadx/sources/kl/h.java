package kl;

public class h extends g {

    private final Object f64049c;

    public h(int i10) {
        super(i10);
        this.f64049c = new Object();
    }

    @Override
    public Object acquire() {
        Object objAcquire;
        synchronized (this.f64049c) {
            objAcquire = super.acquire();
        }
        return objAcquire;
    }

    @Override
    public boolean release(Object obj) {
        boolean zRelease;
        synchronized (this.f64049c) {
            zRelease = super.release(obj);
        }
        return zRelease;
    }
}
