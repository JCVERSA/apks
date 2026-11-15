package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

final class a extends d {

    final SideSheetBehavior f28838a;

    a(SideSheetBehavior sideSheetBehavior) {
        this.f28838a = sideSheetBehavior;
    }

    @Override
    int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override
    float b(int i10) {
        float fE = e();
        return (i10 - fE) / (d() - fE);
    }

    @Override
    int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override
    int d() {
        return Math.max(0, this.f28838a.i0() + this.f28838a.g0());
    }

    @Override
    int e() {
        return (-this.f28838a.Z()) - this.f28838a.g0();
    }

    @Override
    int f() {
        return this.f28838a.g0();
    }

    @Override
    int g() {
        return -this.f28838a.Z();
    }

    @Override
    int h(View view) {
        return view.getRight() + this.f28838a.g0();
    }

    @Override
    public int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override
    int j() {
        return 1;
    }

    @Override
    boolean k(float f10) {
        return f10 > 0.0f;
    }

    @Override
    boolean l(View view) {
        return view.getRight() < (d() - e()) / 2;
    }

    @Override
    boolean m(float f10, float f11) {
        return e.a(f10, f11) && Math.abs(f10) > ((float) this.f28838a.k0());
    }

    @Override
    boolean n(View view, float f10) {
        return Math.abs(((float) view.getLeft()) + (f10 * this.f28838a.e0())) > this.f28838a.f0();
    }

    @Override
    void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        marginLayoutParams.leftMargin = i10;
    }

    @Override
    void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        if (i10 <= this.f28838a.j0()) {
            marginLayoutParams.leftMargin = i11;
        }
    }
}
