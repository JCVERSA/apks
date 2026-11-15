package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.circularreveal.b;
import com.google.android.material.circularreveal.c;

public class CircularRevealCardView extends MaterialCardView implements c {

    private final b f27934r;

    public CircularRevealCardView(Context context) {
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
        this.f27934r.a();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.f27934r.b();
    }

    @Override
    public void draw(Canvas canvas) {
        b bVar = this.f27934r;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f27934r.e();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f27934r.f();
    }

    @Override
    @Nullable
    public c.e getRevealInfo() {
        return this.f27934r.h();
    }

    @Override
    public boolean isOpaque() {
        b bVar = this.f27934r;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f27934r.k(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(int i10) {
        this.f27934r.l(i10);
    }

    @Override
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f27934r.m(eVar);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27934r = new b(this);
    }
}
