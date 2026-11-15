package androidx.appcompat.widget;

class d0 {

    private int f1665a = 0;

    private int f1666b = 0;

    private int f1667c = Integer.MIN_VALUE;

    private int f1668d = Integer.MIN_VALUE;

    private int f1669e = 0;

    private int f1670f = 0;

    private boolean f1671g = false;

    private boolean f1672h = false;

    d0() {
    }

    public int a() {
        return this.f1671g ? this.f1665a : this.f1666b;
    }

    public int b() {
        return this.f1665a;
    }

    public int c() {
        return this.f1666b;
    }

    public int d() {
        return this.f1671g ? this.f1666b : this.f1665a;
    }

    public void e(int i10, int i11) {
        this.f1672h = false;
        if (i10 != Integer.MIN_VALUE) {
            this.f1669e = i10;
            this.f1665a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1670f = i11;
            this.f1666b = i11;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f1671g) {
            return;
        }
        this.f1671g = z10;
        if (!this.f1672h) {
            this.f1665a = this.f1669e;
            this.f1666b = this.f1670f;
            return;
        }
        if (z10) {
            int i10 = this.f1668d;
            if (i10 == Integer.MIN_VALUE) {
                i10 = this.f1669e;
            }
            this.f1665a = i10;
            int i11 = this.f1667c;
            if (i11 == Integer.MIN_VALUE) {
                i11 = this.f1670f;
            }
            this.f1666b = i11;
            return;
        }
        int i12 = this.f1667c;
        if (i12 == Integer.MIN_VALUE) {
            i12 = this.f1669e;
        }
        this.f1665a = i12;
        int i13 = this.f1668d;
        if (i13 == Integer.MIN_VALUE) {
            i13 = this.f1670f;
        }
        this.f1666b = i13;
    }

    public void g(int i10, int i11) {
        this.f1667c = i10;
        this.f1668d = i11;
        this.f1672h = true;
        if (this.f1671g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f1665a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f1666b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f1665a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1666b = i11;
        }
    }
}
