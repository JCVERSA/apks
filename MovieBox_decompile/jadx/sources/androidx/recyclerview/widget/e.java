package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class e {

    final b f14050a;

    final a f14051b = new a();

    final List f14052c = new ArrayList();

    static class a {

        long f14053a = 0;

        a f14054b;

        a() {
        }

        private void c() {
            if (this.f14054b == null) {
                this.f14054b = new a();
            }
        }

        void a(int i10) {
            if (i10 < 64) {
                this.f14053a &= ~(1 << i10);
                return;
            }
            a aVar = this.f14054b;
            if (aVar != null) {
                aVar.a(i10 - 64);
            }
        }

        int b(int i10) {
            a aVar = this.f14054b;
            if (aVar == null) {
                return i10 >= 64 ? Long.bitCount(this.f14053a) : Long.bitCount(this.f14053a & ((1 << i10) - 1));
            }
            return i10 < 64 ? Long.bitCount(this.f14053a & ((1 << i10) - 1)) : aVar.b(i10 - 64) + Long.bitCount(this.f14053a);
        }

        boolean d(int i10) {
            if (i10 < 64) {
                return (this.f14053a & (1 << i10)) != 0;
            }
            c();
            return this.f14054b.d(i10 - 64);
        }

        void e(int i10, boolean z10) {
            if (i10 >= 64) {
                c();
                this.f14054b.e(i10 - 64, z10);
                return;
            }
            long j10 = this.f14053a;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f14053a = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                h(i10);
            } else {
                a(i10);
            }
            if (z11 || this.f14054b != null) {
                c();
                this.f14054b.e(0, z11);
            }
        }

        boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.f14054b.f(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f14053a;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.f14053a = j12;
            long j13 = j10 - 1;
            this.f14053a = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            a aVar = this.f14054b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f14054b.f(0);
            }
            return z10;
        }

        void g() {
            this.f14053a = 0L;
            a aVar = this.f14054b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i10) {
            if (i10 < 64) {
                this.f14053a |= 1 << i10;
            } else {
                c();
                this.f14054b.h(i10 - 64);
            }
        }

        public String toString() {
            if (this.f14054b == null) {
                return Long.toBinaryString(this.f14053a);
            }
            return this.f14054b.toString() + "xx" + Long.toBinaryString(this.f14053a);
        }
    }

    interface b {
        void a(View view);

        RecyclerView.a0 b(View view);

        void c(int i10);

        void d(View view, int i10);

        void e();

        int f(View view);

        void g(View view);

        View getChildAt(int i10);

        int getChildCount();

        void h(int i10);

        void i(View view, int i10, ViewGroup.LayoutParams layoutParams);
    }

    e(b bVar) {
        this.f14050a = bVar;
    }

    private int h(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int childCount = this.f14050a.getChildCount();
        int i11 = i10;
        while (i11 < childCount) {
            int iB = i10 - (i11 - this.f14051b.b(i11));
            if (iB == 0) {
                while (this.f14051b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.f14052c.add(view);
        this.f14050a.a(view);
    }

    private boolean t(View view) {
        if (!this.f14052c.remove(view)) {
            return false;
        }
        this.f14050a.g(view);
        return true;
    }

    void a(View view, int i10, boolean z10) {
        int childCount = i10 < 0 ? this.f14050a.getChildCount() : h(i10);
        this.f14051b.e(childCount, z10);
        if (z10) {
            l(view);
        }
        this.f14050a.d(view, childCount);
    }

    void b(View view, boolean z10) {
        a(view, -1, z10);
    }

    void c(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int childCount = i10 < 0 ? this.f14050a.getChildCount() : h(i10);
        this.f14051b.e(childCount, z10);
        if (z10) {
            l(view);
        }
        this.f14050a.i(view, childCount, layoutParams);
    }

    void d(int i10) {
        int iH = h(i10);
        this.f14051b.f(iH);
        this.f14050a.c(iH);
    }

    View e(int i10) {
        int size = this.f14052c.size();
        for (int i11 = 0; i11 < size; i11++) {
            View view = (View) this.f14052c.get(i11);
            RecyclerView.a0 a0VarB = this.f14050a.b(view);
            if (a0VarB.getLayoutPosition() == i10 && !a0VarB.isInvalid() && !a0VarB.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    View f(int i10) {
        return this.f14050a.getChildAt(h(i10));
    }

    int g() {
        return this.f14050a.getChildCount() - this.f14052c.size();
    }

    View i(int i10) {
        return this.f14050a.getChildAt(i10);
    }

    int j() {
        return this.f14050a.getChildCount();
    }

    void k(View view) {
        int iF = this.f14050a.f(view);
        if (iF >= 0) {
            this.f14051b.h(iF);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iF = this.f14050a.f(view);
        if (iF == -1 || this.f14051b.d(iF)) {
            return -1;
        }
        return iF - this.f14051b.b(iF);
    }

    boolean n(View view) {
        return this.f14052c.contains(view);
    }

    void o() {
        this.f14051b.g();
        for (int size = this.f14052c.size() - 1; size >= 0; size--) {
            this.f14050a.g((View) this.f14052c.get(size));
            this.f14052c.remove(size);
        }
        this.f14050a.e();
    }

    void p(View view) {
        int iF = this.f14050a.f(view);
        if (iF < 0) {
            return;
        }
        if (this.f14051b.f(iF)) {
            t(view);
        }
        this.f14050a.h(iF);
    }

    void q(int i10) {
        int iH = h(i10);
        View childAt = this.f14050a.getChildAt(iH);
        if (childAt == null) {
            return;
        }
        if (this.f14051b.f(iH)) {
            t(childAt);
        }
        this.f14050a.h(iH);
    }

    boolean r(View view) {
        int iF = this.f14050a.f(view);
        if (iF == -1) {
            t(view);
            return true;
        }
        if (!this.f14051b.d(iF)) {
            return false;
        }
        this.f14051b.f(iF);
        t(view);
        this.f14050a.h(iF);
        return true;
    }

    void s(View view) {
        int iF = this.f14050a.f(view);
        if (iF < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f14051b.d(iF)) {
            this.f14051b.a(iF);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f14051b.toString() + ", hidden list:" + this.f14052c.size();
    }
}
