package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

final class b extends d {

    final SideSheetBehavior f28839a;

    b(SideSheetBehavior sideSheetBehavior) {
        this.f28839a = sideSheetBehavior;
    }

    @Override
    int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override
    float b(int i10) {
        float fE = e();
        return (fE - i10) / (fE - d());
    }

    @Override
    int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override
    int d() {
        return Math.max(0, (e() - this.f28839a.Z()) - this.f28839a.g0());
    }

    @Override
    int e() {
        return this.f28839a.j0();
    }

    @Override
    int f() {
        return this.f28839a.j0();
    }

    @Override
    int g() {
        return d();
    }

    @Override
    int h(View view) {
        return view.getLeft() - this.f28839a.g0();
    }

    @Override
    public int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override
    int j() {
        return 0;
    }

    @Override
    boolean k(float f10) {
        return f10 < 0.0f;
    }

    @Override
    boolean l(View view) {
        return view.getLeft() > (e() + d()) / 2;
    }

    @Override
    boolean m(float f10, float f11) {
        return e.a(f10, f11) && Math.abs(f10) > ((float) this.f28839a.k0());
    }

    @Override
    boolean n(View view, float f10) {
        return Math.abs(((float) view.getRight()) + (f10 * this.f28839a.e0())) > this.f28839a.f0();
    }

    @Override
    void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        marginLayoutParams.rightMargin = i10;
    }

    @Override
    void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        int iJ0 = this.f28839a.j0();
        if (i10 <= iJ0) {
            marginLayoutParams.rightMargin = iJ0 - i10;
        }
    }
}
