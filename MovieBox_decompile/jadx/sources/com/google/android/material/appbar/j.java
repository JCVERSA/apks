package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

class j {

    private final View f27447a;

    private int f27448b;

    private int f27449c;

    private int f27450d;

    private int f27451e;

    private boolean f27452f = true;

    private boolean f27453g = true;

    public j(View view) {
        this.f27447a = view;
    }

    void a() {
        View view = this.f27447a;
        ViewCompat.offsetTopAndBottom(view, this.f27450d - (view.getTop() - this.f27448b));
        View view2 = this.f27447a;
        ViewCompat.offsetLeftAndRight(view2, this.f27451e - (view2.getLeft() - this.f27449c));
    }

    public int b() {
        return this.f27448b;
    }

    public int c() {
        return this.f27450d;
    }

    void d() {
        this.f27448b = this.f27447a.getTop();
        this.f27449c = this.f27447a.getLeft();
    }

    public boolean e(int i10) {
        if (!this.f27453g || this.f27451e == i10) {
            return false;
        }
        this.f27451e = i10;
        a();
        return true;
    }

    public boolean f(int i10) {
        if (!this.f27452f || this.f27450d == i10) {
            return false;
        }
        this.f27450d = i10;
        a();
        return true;
    }
}
