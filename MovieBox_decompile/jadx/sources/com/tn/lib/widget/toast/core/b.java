package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class b implements gh.a {

    private ToastImpl f40466a;

    private View f40467b;

    private TextView f40468c;

    private int f40469d;

    private int f40470e;

    private int f40471f;

    private int f40472g;

    private float f40473h;

    private float f40474i;

    public b(Activity activity) {
        this.f40466a = new ToastImpl(activity, this);
    }

    @Override
    public boolean a() {
        return this.f40468c == null;
    }

    @Override
    public void b(View view) {
        this.f40467b = view;
        if (view == null) {
            this.f40468c = null;
        } else {
            Intrinsics.e(view);
            this.f40468c = d(view);
        }
    }

    @Override
    public View c() {
        return this.f40467b;
    }

    @Override
    public void cancel() {
        ToastImpl toastImpl = this.f40466a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    public TextView d(View view) {
        return gh.a.C0739a.a(this, view);
    }

    public final void e(View view) {
        Intrinsics.h(view, "view");
        this.f40467b = view;
    }

    @Override
    public int getDuration() {
        return this.f40470e;
    }

    @Override
    public int getGravity() {
        return this.f40469d;
    }

    @Override
    public float getHorizontalMargin() {
        return this.f40473h;
    }

    @Override
    public float getVerticalMargin() {
        return this.f40474i;
    }

    @Override
    public int getXOffset() {
        return this.f40471f;
    }

    @Override
    public int getYOffset() {
        return this.f40472g;
    }

    @Override
    public void setDuration(int i10) {
        this.f40470e = i10;
    }

    @Override
    public void setGravity(int i10, int i11, int i12) {
        this.f40469d = i10;
        this.f40471f = i11;
        this.f40472g = i12;
    }

    @Override
    public void setMargin(float f10, float f11) {
        this.f40473h = f10;
        this.f40474i = f11;
    }

    @Override
    public void setText(CharSequence charSequence) {
        TextView textView = this.f40468c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override
    public void show() {
        ToastImpl toastImpl = this.f40466a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
