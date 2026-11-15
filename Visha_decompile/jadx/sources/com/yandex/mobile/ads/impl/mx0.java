package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.viewpager2.widget.ViewPager2;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.monetization.ads.nativeads.view.pager.MultiBannerControlsContainer;
import defpackage.y45;
import java.util.List;

public final class mx0 {
    private final q31 a = new q31();
    private final j31 b = new j31();
    private final i31 c = new i31();

    public final bw1 a(o8 o8Var, o3 o3Var, CustomizableMediaView customizableMediaView, sj0 sj0Var, List list, ox0 ox0Var, yx1 yx1Var) {
        g31 g31Var;
        Long lB;
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(customizableMediaView, "mediaView");
        y45.j(sj0Var, "imageProvider");
        y45.j(list, "imageValues");
        y45.j(ox0Var, "mediaViewRenderController");
        Context context = customizableMediaView.getContext();
        ViewPager2 viewPager2 = new ViewPager2(context);
        y45.g(context);
        k31 k31Var = new k31(context, o8Var, o3Var);
        r31 r31Var = new r31(viewPager2);
        long jLongValue = (yx1Var == null || (lB = yx1Var.b()) == null) ? 0L : lB.longValue();
        if (jLongValue > 0) {
            g31Var = new g31(viewPager2, r31Var, k31Var, new kt0());
            viewPager2.addOnAttachStateChangeListener(new n31(g31Var, jLongValue));
        } else {
            g31Var = null;
        }
        viewPager2.registerOnPageChangeCallback(new xf1(k31Var, g31Var));
        MultiBannerControlsContainer multiBannerControlsContainerA = this.b.a(context);
        if (multiBannerControlsContainerA != null) {
            multiBannerControlsContainerA.a(viewPager2);
            multiBannerControlsContainerA.setOnClickLeftButtonListener(new ls.a(r31Var, k31Var, g31Var));
            multiBannerControlsContainerA.setOnClickRightButtonListener(new ls.b(r31Var, k31Var, g31Var));
        }
        ExtendedViewContainer extendedViewContainerA = this.c.a(context, list);
        this.a.getClass();
        y45.j(customizableMediaView, "mediaView");
        y45.j(extendedViewContainerA, TtmlNode.RUBY_CONTAINER);
        y45.j(viewPager2, "viewPager");
        Context context2 = customizableMediaView.getContext();
        y45.i(context2, "getContext(...)");
        if (!x80.a(context2, w80.e)) {
            customizableMediaView.removeAllViews();
        }
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        extendedViewContainerA.addView(viewPager2, layoutParams);
        if (multiBannerControlsContainerA != null) {
            extendedViewContainerA.addView(multiBannerControlsContainerA, layoutParams);
        }
        customizableMediaView.addView(extendedViewContainerA, layoutParams);
        s31 s31Var = new s31(viewPager2, sj0Var, o3Var.q().c(), o8Var);
        return new bw1(customizableMediaView, s31Var, ox0Var, new wg2(s31Var));
    }
}
