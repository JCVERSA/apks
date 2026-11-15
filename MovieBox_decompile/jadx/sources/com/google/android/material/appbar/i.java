package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

class i extends CoordinatorLayout.c {

    private j f27444a;

    private int f27445b;

    private int f27446c;

    public i() {
        this.f27445b = 0;
        this.f27446c = 0;
    }

    public int E() {
        j jVar = this.f27444a;
        if (jVar != null) {
            return jVar.c();
        }
        return 0;
    }

    protected void F(CoordinatorLayout coordinatorLayout, View view, int i10) {
        coordinatorLayout.onLayoutChild(view, i10);
    }

    public boolean G(int i10) {
        j jVar = this.f27444a;
        if (jVar != null) {
            return jVar.f(i10);
        }
        this.f27445b = i10;
        return false;
    }

    @Override
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        F(coordinatorLayout, view, i10);
        if (this.f27444a == null) {
            this.f27444a = new j(view);
        }
        this.f27444a.d();
        this.f27444a.a();
        int i11 = this.f27445b;
        if (i11 != 0) {
            this.f27444a.f(i11);
            this.f27445b = 0;
        }
        int i12 = this.f27446c;
        if (i12 == 0) {
            return true;
        }
        this.f27444a.e(i12);
        this.f27446c = 0;
        return true;
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27445b = 0;
        this.f27446c = 0;
    }
}
