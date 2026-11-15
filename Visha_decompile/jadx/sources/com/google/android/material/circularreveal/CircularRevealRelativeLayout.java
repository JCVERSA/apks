package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class CircularRevealRelativeLayout extends RelativeLayout implements CircularRevealWidget {

    @NonNull
    private final CircularRevealHelper helper;

    public CircularRevealRelativeLayout(Context context) {
        this(context, null);
    }

    @Override
    public void actualDraw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override
    public boolean actualIsOpaque() {
        return super.isOpaque();
    }

    @Override
    public void buildCircularRevealCache() {
        this.helper.buildCircularRevealCache();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.helper.destroyCircularRevealCache();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        CircularRevealHelper circularRevealHelper = this.helper;
        if (circularRevealHelper != null) {
            circularRevealHelper.draw(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.helper.getCircularRevealOverlayDrawable();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.helper.getCircularRevealScrimColor();
    }

    @Override
    @Nullable
    public CircularRevealWidget.RevealInfo getRevealInfo() {
        return this.helper.getRevealInfo();
    }

    @Override
    public boolean isOpaque() {
        CircularRevealHelper circularRevealHelper = this.helper;
        return circularRevealHelper != null ? circularRevealHelper.isOpaque() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.helper.setCircularRevealOverlayDrawable(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.helper.setCircularRevealScrimColor(i);
    }

    @Override
    public void setRevealInfo(@Nullable CircularRevealWidget.RevealInfo revealInfo) {
        this.helper.setRevealInfo(revealInfo);
    }

    public CircularRevealRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.helper = new CircularRevealHelper(this);
    }
}
