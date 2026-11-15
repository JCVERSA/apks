package com.transsion.home.adapter;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.i;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.home.R$string;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.MagicIndicator;
import qk.h;

public final class d extends xy.a {

    private final h f43085b;

    public static final class a extends com.transsion.baseui.util.f {

        final int f43087f;

        a(int i10) {
            this.f43087f = i10;
        }

        @Override
        public void c(View view) {
        }

        @Override
        public void d(View view) {
            MagicIndicator magicIndicator;
            ViewPager2 viewPager2;
            h hVar = d.this.f43085b;
            if (hVar != null && (viewPager2 = hVar.f69755k) != null) {
                viewPager2.setCurrentItem(this.f43087f, true);
            }
            h hVar2 = d.this.f43085b;
            if (hVar2 == null || (magicIndicator = hVar2.f69752h) == null) {
                return;
            }
            magicIndicator.onPageScrolled(this.f43087f, 0.0f, 0);
        }
    }

    public d(h hVar) {
        this.f43085b = hVar;
    }

    @Override
    public int a() {
        return 2;
    }

    @Override
    public xy.c b(Context context) {
        Intrinsics.h(context, "context");
        GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context);
        gradientLinePagerIndicator.setMode(2);
        gradientLinePagerIndicator.setLineHeight(i.e(3.0f));
        gradientLinePagerIndicator.setLineWidth(i.e(24.0f));
        gradientLinePagerIndicator.setRoundRadius(i.e(1.5f));
        gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
        gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
        int color = androidx.core.content.b.getColor(context, R$color.transparent);
        gradientLinePagerIndicator.setColors(color, color, color);
        return gradientLinePagerIndicator;
    }

    @Override
    public xy.d c(Context context, int i10) {
        String string;
        Intrinsics.h(context, "context");
        CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context, 17, a0.a(10.0f));
        if (i10 != 0) {
            string = i10 != 1 ? "default" : context.getResources().getString(R$string.music_tab_liked_music);
        } else {
            string = context.getResources().getString(R$string.music_tab_discover);
        }
        customPagerTitleView.setText(string);
        customPagerTitleView.setTextSize(18.0f);
        customPagerTitleView.setOnClickListener(new a(i10));
        return customPagerTitleView;
    }
}
