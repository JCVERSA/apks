package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R;
import defpackage.au7;
import defpackage.pl1;

public class UCropView extends FrameLayout {
    public GestureCropImageView b;
    public final OverlayView c;

    public class a implements pl1 {
        public a() {
        }

        @Override
        public void a(float f) {
            UCropView.this.c.setTargetAspectRatio(f);
        }
    }

    public class b implements au7 {
        public b() {
        }

        @Override
        public void a(RectF rectF) {
            UCropView.this.b.setCropRect(rectF);
        }
    }

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void c() {
        this.b.setCropBoundsChangeListener(new a());
        this.c.setOverlayViewChangeListener(new b());
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.b;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.c;
    }

    public void resetCropImageView() {
        removeView(this.b);
        this.b = new GestureCropImageView(getContext());
        c();
        this.b.setCropRect(getOverlayView().getCropViewRect());
        addView(this.b, 0);
    }

    @Override
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public UCropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        this.b = (GestureCropImageView) findViewById(R.id.image_view_crop);
        OverlayView overlayView = (OverlayView) findViewById(R.id.view_overlay);
        this.c = overlayView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_UCropView);
        overlayView.g(typedArrayObtainStyledAttributes);
        this.b.m(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        c();
    }
}
