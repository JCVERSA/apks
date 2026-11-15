package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class ra0 {
    private static final int d = Color.parseColor("#66000000");
    private static final int e = Color.parseColor("#00000000");
    private static final int f = Color.parseColor("#7f7f7f");
    private final Context a;
    private final rt b;
    private final sa0 c;

    public ra0(Context context, rt rtVar, sa0 sa0Var) {
        y45.j(context, "context");
        y45.j(rtVar, "nativeAdAssets");
        y45.j(sa0Var, "feedbackAppearanceResolver");
        this.a = context;
        this.b = rtVar;
        this.c = sa0Var;
    }

    public final void a(ImageView imageView, FrameLayout frameLayout, int i) {
        y45.j(imageView, "feedbackView");
        y45.j(frameLayout, "feedbackContainer");
        if (!this.c.a()) {
            int i2 = f;
            Drawable drawable = ContextCompat.getDrawable(this.a, R.drawable.monetization_ads_internal_ic_close_gray);
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
            if (drawable != null) {
                drawable.setColorFilter(porterDuffColorFilter);
            }
            imageView.setImageDrawable(drawable);
            frameLayout.setPadding(0, 0, 0, 0);
            frameLayout.setBackground(null);
            frameLayout.setVisibility(0);
            return;
        }
        if (this.b.i() != null) {
            int i3 = f;
            Drawable drawable2 = ContextCompat.getDrawable(this.a, R.drawable.monetization_ads_internal_ic_close_gray);
            PorterDuffColorFilter porterDuffColorFilter2 = new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
            if (drawable2 != null) {
                drawable2.setColorFilter(porterDuffColorFilter2);
            }
            imageView.setImageDrawable(drawable2);
            frameLayout.setPadding(0, 0, 0, 0);
            frameLayout.setBackground(null);
            frameLayout.setVisibility(8);
            return;
        }
        if (this.b.h() != null) {
            Drawable drawable3 = ContextCompat.getDrawable(this.a, R.drawable.monetization_ads_internal_ic_close_gray);
            PorterDuffColorFilter porterDuffColorFilter3 = new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
            if (drawable3 != null) {
                drawable3.setColorFilter(porterDuffColorFilter3);
            }
            imageView.setImageDrawable(drawable3);
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{d, e});
            frameLayout.setPadding(0, 0, 0, i);
            frameLayout.setBackground(gradientDrawable);
            frameLayout.setVisibility(0);
        }
    }
}
