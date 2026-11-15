package com.cloud.tmc.miniapp.utils.toast;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.miniapp.utils.toast.config.IToast;
import kotlin.jvm.internal.Intrinsics;

public abstract class CustomToast implements IToast {
    private int mAnimationId;
    private int mDuration;
    private int mGravity;
    private float mHorizontalMargin;
    private TextView mMessageView;
    private ToastParams mToastParams;
    private float mVerticalMargin;
    private View mView;
    private int mXOffset;
    private int mYOffset;
    private long mShortDuration = 2000;
    private long mLongDuration = ToastStrategy.LONG_DURATION_TIMEOUT;

    @Override
    public ImageView findIconView(View view) {
        return IToast.DefaultImpls.findIconView(this, view);
    }

    @Override
    public TextView findMessageView(View view) {
        return IToast.DefaultImpls.findMessageView(this, view);
    }

    public final int getAnimationId() {
        return this.mAnimationId;
    }

    @Override
    public int getDuration() {
        return this.mDuration;
    }

    @Override
    public int getGravity() {
        return this.mGravity;
    }

    @Override
    public float getHorizontalMargin() {
        return this.mHorizontalMargin;
    }

    public final long getLongDuration() {
        return this.mLongDuration;
    }

    public final long getShortDuration() {
        return this.mShortDuration;
    }

    public final ToastParams getToastParams() {
        return this.mToastParams;
    }

    @Override
    public float getVerticalMargin() {
        return this.mVerticalMargin;
    }

    @Override
    public View getView() {
        return this.mView;
    }

    @Override
    public int getXOffset() {
        return this.mXOffset;
    }

    @Override
    public int getYOffset() {
        return this.mYOffset;
    }

    public abstract boolean isShow();

    public final void setAnimationId(int i10) {
        this.mAnimationId = i10;
    }

    @Override
    public void setDuration(int i10) {
        this.mDuration = i10;
    }

    @Override
    public void setGravity(int i10, int i11, int i12) {
        this.mGravity = i10;
        this.mXOffset = i11;
        this.mYOffset = i12;
    }

    public final void setLongDuration(long j10) {
        this.mLongDuration = j10;
    }

    @Override
    public void setMargin(float f10, float f11) {
        this.mHorizontalMargin = f10;
        this.mVerticalMargin = f11;
    }

    public final void setShortDuration(long j10) {
        this.mShortDuration = j10;
    }

    @Override
    public void setText(int i10) {
        View view = this.mView;
        if (view != null) {
            setText(view.getResources().getText(i10));
        }
    }

    public final void setToastParams(ToastParams params) {
        Intrinsics.h(params, "params");
        this.mToastParams = params;
    }

    @Override
    public void setView(View view) {
        this.mView = view;
        if (view == null) {
            this.mMessageView = null;
        } else {
            this.mMessageView = findMessageView(view);
        }
    }

    @Override
    public void setText(CharSequence charSequence) {
        TextView textView = this.mMessageView;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }
}
