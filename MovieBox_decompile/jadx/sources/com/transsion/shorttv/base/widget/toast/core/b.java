package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class b implements kr.a {

    private ToastImpl f50963a;

    private View f50964b;

    private TextView f50965c;

    private int f50966d;

    private int f50967e;

    private int f50968f;

    private int f50969g;

    private float f50970h;

    private float f50971i;

    public b(Activity activity) {
        this.f50963a = new ToastImpl(activity, this);
    }

    @Override
    public boolean a() {
        return this.f50965c == null;
    }

    public TextView b(View view) {
        return kr.a.C0803a.a(this, view);
    }

    @Override
    public void cancel() {
        ToastImpl toastImpl = this.f50963a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    @Override
    public int getDuration() {
        return this.f50967e;
    }

    @Override
    public int getGravity() {
        return this.f50966d;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f50970h;
    }

    @Override
    public float getVerticalMargin() {
        return this.f50971i;
    }

    @Override
    public View getView() {
        return this.f50964b;
    }

    @Override
    public int getXOffset() {
        return this.f50968f;
    }

    @Override
    public int getYOffset() {
        return this.f50969g;
    }

    @Override
    public void setDuration(int i10) {
        this.f50967e = i10;
    }

    @Override
    public void setGravity(int i10, int i11, int i12) {
        this.f50966d = i10;
        this.f50968f = i11;
        this.f50969g = i12;
    }

    @Override
    public void setMargin(float f10, float f11) {
        this.f50970h = f10;
        this.f50971i = f11;
    }

    @Override
    public void setText(CharSequence charSequence) {
        TextView textView = this.f50965c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override
    public void setView(View view) {
        this.f50964b = view;
        if (view == null) {
            this.f50965c = null;
        } else {
            Intrinsics.e(view);
            this.f50965c = b(view);
        }
    }

    @Override
    public void show() {
        ToastImpl toastImpl = this.f50963a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
