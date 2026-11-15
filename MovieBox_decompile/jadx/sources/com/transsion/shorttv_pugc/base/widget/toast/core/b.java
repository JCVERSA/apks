package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class b implements os.a {

    private ToastImpl f51943a;

    private View f51944b;

    private TextView f51945c;

    private int f51946d;

    private int f51947e;

    private int f51948f;

    private int f51949g;

    private float f51950h;

    private float f51951i;

    public b(Activity activity) {
        this.f51943a = new ToastImpl(activity, this);
    }

    @Override
    public boolean a() {
        return this.f51945c == null;
    }

    public TextView b(View view) {
        return os.a.C0845a.a(this, view);
    }

    @Override
    public void cancel() {
        ToastImpl toastImpl = this.f51943a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    @Override
    public int getDuration() {
        return this.f51947e;
    }

    @Override
    public int getGravity() {
        return this.f51946d;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f51950h;
    }

    @Override
    public float getVerticalMargin() {
        return this.f51951i;
    }

    @Override
    public View getView() {
        return this.f51944b;
    }

    @Override
    public int getXOffset() {
        return this.f51948f;
    }

    @Override
    public int getYOffset() {
        return this.f51949g;
    }

    @Override
    public void setDuration(int i10) {
        this.f51947e = i10;
    }

    @Override
    public void setGravity(int i10, int i11, int i12) {
        this.f51946d = i10;
        this.f51948f = i11;
        this.f51949g = i12;
    }

    @Override
    public void setMargin(float f10, float f11) {
        this.f51950h = f10;
        this.f51951i = f11;
    }

    @Override
    public void setText(CharSequence charSequence) {
        TextView textView = this.f51945c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override
    public void setView(View view) {
        this.f51944b = view;
        if (view == null) {
            this.f51945c = null;
        } else {
            Intrinsics.e(view);
            this.f51945c = b(view);
        }
    }

    @Override
    public void show() {
        ToastImpl toastImpl = this.f51943a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
