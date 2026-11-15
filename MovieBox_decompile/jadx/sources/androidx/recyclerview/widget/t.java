package androidx.recyclerview.widget;

import android.view.View;

class t {

    final b f14110a;

    a f14111b = new a();

    static class a {

        int f14112a = 0;

        int f14113b;

        int f14114c;

        int f14115d;

        int f14116e;

        a() {
        }

        void a(int i10) {
            this.f14112a = i10 | this.f14112a;
        }

        boolean b() {
            int i10 = this.f14112a;
            if ((i10 & 7) != 0 && (i10 & c(this.f14115d, this.f14113b)) == 0) {
                return false;
            }
            int i11 = this.f14112a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f14115d, this.f14114c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f14112a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f14116e, this.f14113b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f14112a;
            return (i13 & 28672) == 0 || (i13 & (c(this.f14116e, this.f14114c) << 12)) != 0;
        }

        int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        void d() {
            this.f14112a = 0;
        }

        void e(int i10, int i11, int i12, int i13) {
            this.f14113b = i10;
            this.f14114c = i11;
            this.f14115d = i12;
            this.f14116e = i13;
        }
    }

    interface b {
        int a(View view);

        int b();

        int c();

        int d(View view);

        View getChildAt(int i10);
    }

    t(b bVar) {
        this.f14110a = bVar;
    }

    View a(int i10, int i11, int i12, int i13) {
        int iB = this.f14110a.b();
        int iC = this.f14110a.c();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View childAt = this.f14110a.getChildAt(i10);
            this.f14111b.e(iB, iC, this.f14110a.a(childAt), this.f14110a.d(childAt));
            if (i12 != 0) {
                this.f14111b.d();
                this.f14111b.a(i12);
                if (this.f14111b.b()) {
                    return childAt;
                }
            }
            if (i13 != 0) {
                this.f14111b.d();
                this.f14111b.a(i13);
                if (this.f14111b.b()) {
                    view = childAt;
                }
            }
            i10 += i14;
        }
        return view;
    }

    boolean b(View view, int i10) {
        this.f14111b.e(this.f14110a.b(), this.f14110a.c(), this.f14110a.a(view), this.f14110a.d(view));
        if (i10 == 0) {
            return false;
        }
        this.f14111b.d();
        this.f14111b.a(i10);
        return this.f14111b.b();
    }
}
