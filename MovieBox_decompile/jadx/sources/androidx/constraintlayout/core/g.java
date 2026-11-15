package androidx.constraintlayout.core;

class g implements f {

    private final Object[] f6390a;

    private int f6391b;

    g(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f6390a = new Object[i10];
    }

    @Override
    public void a(Object[] objArr, int i10) {
        if (i10 > objArr.length) {
            i10 = objArr.length;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = objArr[i11];
            int i12 = this.f6391b;
            Object[] objArr2 = this.f6390a;
            if (i12 < objArr2.length) {
                objArr2[i12] = obj;
                this.f6391b = i12 + 1;
            }
        }
    }

    @Override
    public Object acquire() {
        int i10 = this.f6391b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f6390a;
        Object obj = objArr[i11];
        objArr[i11] = null;
        this.f6391b = i10 - 1;
        return obj;
    }

    @Override
    public boolean release(Object obj) {
        int i10 = this.f6391b;
        Object[] objArr = this.f6390a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = obj;
        this.f6391b = i10 + 1;
        return true;
    }
}
