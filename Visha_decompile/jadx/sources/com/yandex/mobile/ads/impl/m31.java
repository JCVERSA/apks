package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.y45;

public final class m31 {
    private final sj0 a;
    private final o8<?> b;

    public static final class a implements View.OnClickListener {
        @Override
        public final void onClick(View view) {
            ViewParent parent = view != null ? view.getParent() : null;
            ViewParent parent2 = parent != null ? parent.getParent() : null;
            ViewPager2 viewPager2 = parent2 instanceof ViewPager2 ? (ViewPager2) parent2 : null;
            if (viewPager2 != null) {
                viewPager2.callOnClick();
            }
        }
    }

    public m31(sj0 sj0Var, o8<?> o8Var) {
        y45.j(sj0Var, "imageProvider");
        y45.j(o8Var, "adResponse");
        this.a = sj0Var;
        this.b = o8Var;
    }

    public final l31 a(ViewGroup viewGroup) {
        y45.j(viewGroup, "parent");
        Context context = viewGroup.getContext();
        y45.g(context);
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setOnClickListener(new a());
        return new l31(imageView, new fk0(imageView, this.a, this.b));
    }
}
