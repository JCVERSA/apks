package kl;

public abstract class g implements f {

    private final Object[] f64047a;

    private int f64048b;

    public g(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f64047a = new Object[i10];
    }

    private boolean a(Object obj) {
        for (int i10 = 0; i10 < this.f64048b; i10++) {
            if (this.f64047a[i10] == obj) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Object acquire() {
        int i10 = this.f64048b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f64047a;
        Object obj = objArr[i11];
        objArr[i11] = null;
        this.f64048b = i11;
        return obj;
    }

    @Override
    public boolean release(Object obj) {
        if (a(obj)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i10 = this.f64048b;
        Object[] objArr = this.f64047a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = obj;
        this.f64048b = i10 + 1;
        return true;
    }
}
