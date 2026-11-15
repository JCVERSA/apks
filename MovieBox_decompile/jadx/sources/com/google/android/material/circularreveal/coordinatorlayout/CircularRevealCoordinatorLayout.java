package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements c {

    private final b f27935z;

    public CircularRevealCoordinatorLayout(@NonNull Context context) {
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
        this.f27935z.a();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.f27935z.b();
    }

    @Override
    public void draw(Canvas canvas) {
        b bVar = this.f27935z;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f27935z.e();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f27935z.f();
    }

    @Override
    @Nullable
    public c.e getRevealInfo() {
        return this.f27935z.h();
    }

    @Override
    public boolean isOpaque() {
        b bVar = this.f27935z;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f27935z.k(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(int i10) {
        this.f27935z.l(i10);
    }

    @Override
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f27935z.m(eVar);
    }

    public CircularRevealCoordinatorLayout(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27935z = new b(this);
    }
}
