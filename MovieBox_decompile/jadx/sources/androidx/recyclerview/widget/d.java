package androidx.recyclerview.widget;

public class d implements j {

    final j f14045a;

    int f14046b = 0;

    int f14047c = -1;

    int f14048d = -1;

    Object f14049e = null;

    public d(j jVar) {
        this.f14045a = jVar;
    }

    public void a() {
        int i10 = this.f14046b;
        if (i10 == 0) {
            return;
        }
        if (i10 == 1) {
            this.f14045a.onInserted(this.f14047c, this.f14048d);
        } else if (i10 == 2) {
            this.f14045a.onRemoved(this.f14047c, this.f14048d);
        } else if (i10 == 3) {
            this.f14045a.onChanged(this.f14047c, this.f14048d, this.f14049e);
        }
        this.f14049e = null;
        this.f14046b = 0;
    }

    @Override
    public void onChanged(int i10, int i11, Object obj) {
        int i12;
        if (this.f14046b == 3) {
            int i13 = this.f14047c;
            int i14 = this.f14048d;
            if (i10 <= i13 + i14 && (i12 = i10 + i11) >= i13 && this.f14049e == obj) {
                this.f14047c = Math.min(i10, i13);
                this.f14048d = Math.max(i14 + i13, i12) - this.f14047c;
                return;
            }
        }
        a();
        this.f14047c = i10;
        this.f14048d = i11;
        this.f14049e = obj;
        this.f14046b = 3;
    }

    @Override
    public void onInserted(int i10, int i11) {
        int i12;
        if (this.f14046b == 1 && i10 >= (i12 = this.f14047c)) {
            int i13 = this.f14048d;
            if (i10 <= i12 + i13) {
                this.f14048d = i13 + i11;
                this.f14047c = Math.min(i10, i12);
                return;
            }
        }
        a();
        this.f14047c = i10;
        this.f14048d = i11;
        this.f14046b = 1;
    }

    @Override
    public void onMoved(int i10, int i11) {
        a();
        this.f14045a.onMoved(i10, i11);
    }

    @Override
    public void onRemoved(int i10, int i11) {
        int i12;
        if (this.f14046b == 2 && (i12 = this.f14047c) >= i10 && i12 <= i10 + i11) {
            this.f14048d += i11;
            this.f14047c = i10;
        } else {
            a();
            this.f14047c = i10;
            this.f14048d = i11;
            this.f14046b = 2;
        }
    }
}
