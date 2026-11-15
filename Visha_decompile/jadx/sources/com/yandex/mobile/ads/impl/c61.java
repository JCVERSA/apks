package com.yandex.mobile.ads.impl;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import defpackage.y45;

public final class c61 {
    private static final int b = Color.parseColor("#eaeaea");
    private final ImageView[] a;

    public c61(ImageView... imageViewArr) {
        y45.j(imageViewArr, "imageViews");
        this.a = imageViewArr;
        b();
    }

    public final void a() {
        for (ImageView imageView : this.a) {
            Drawable background = imageView.getBackground();
            y45.h(background, "null cannot be cast to non-null type android.graphics.drawable.ColorDrawable");
            ColorDrawable colorDrawable = (ColorDrawable) background;
            Drawable drawable = imageView.getDrawable();
            if (drawable != null && colorDrawable.getAlpha() == 255) {
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(colorDrawable, PropertyValuesHolder.ofInt("alpha", 255, 0));
                y45.i(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(...)");
                objectAnimatorOfPropertyValuesHolder.setTarget(colorDrawable);
                objectAnimatorOfPropertyValuesHolder.setDuration(500L);
                objectAnimatorOfPropertyValuesHolder.start();
                ObjectAnimator objectAnimatorOfPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(drawable, PropertyValuesHolder.ofInt("alpha", 0, 255));
                y45.i(objectAnimatorOfPropertyValuesHolder2, "ofPropertyValuesHolder(...)");
                objectAnimatorOfPropertyValuesHolder2.setTarget(drawable);
                objectAnimatorOfPropertyValuesHolder2.setDuration(500L);
                objectAnimatorOfPropertyValuesHolder2.start();
            }
        }
    }

    public final void b() {
        for (ImageView imageView : this.a) {
            if (imageView != null) {
                if (imageView.getDrawable() != null) {
                    imageView.setBackgroundColor(0);
                } else {
                    imageView.setBackgroundColor(b);
                }
            }
        }
    }
}
