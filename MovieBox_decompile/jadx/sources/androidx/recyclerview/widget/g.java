package androidx.recyclerview.widget;

import android.view.View;

class g {

    int f14067b;

    int f14068c;

    int f14069d;

    int f14070e;

    boolean f14073h;

    boolean f14074i;

    boolean f14066a = true;

    int f14071f = 0;

    int f14072g = 0;

    g() {
    }

    boolean a(RecyclerView.x xVar) {
        int i10 = this.f14068c;
        return i10 >= 0 && i10 < xVar.b();
    }

    View b(RecyclerView.t tVar) {
        View viewO = tVar.o(this.f14068c);
        this.f14068c += this.f14069d;
        return viewO;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f14067b + ", mCurrentPosition=" + this.f14068c + ", mItemDirection=" + this.f14069d + ", mLayoutDirection=" + this.f14070e + ", mStartLine=" + this.f14071f + ", mEndLine=" + this.f14072g + '}';
    }
}
