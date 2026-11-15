package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewGroup;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.transsion.playercommon.data.SheetDialogParamsConstant;
import defpackage.abb;
import defpackage.y45;

public final class rh2 {
    public static final nh2 a(CustomizableMediaView customizableMediaView, String str) {
        vu0 vu0Var;
        vu0 vu0Var2;
        y45.j(customizableMediaView, "<this>");
        y45.j(str, "mediaType");
        ViewGroup.LayoutParams layoutParams = customizableMediaView.getLayoutParams();
        Integer numValueOf = layoutParams != null ? Integer.valueOf(e82.a(layoutParams.width)) : null;
        ViewGroup.LayoutParams layoutParams2 = customizableMediaView.getLayoutParams();
        Integer numValueOf2 = layoutParams2 != null ? Integer.valueOf(e82.a(layoutParams2.height)) : null;
        int iA = e82.a(View.MeasureSpec.getSize(customizableMediaView.getWidthMeasureSpec()));
        int iA2 = e82.a(View.MeasureSpec.getSize(customizableMediaView.getHeightMeasureSpec()));
        int mode = View.MeasureSpec.getMode(customizableMediaView.getWidthMeasureSpec());
        if (mode != Integer.MIN_VALUE) {
            vu0Var = (mode == 0 || mode != 1073741824) ? vu0.d : vu0.b;
        } else {
            vu0Var = vu0.c;
        }
        int mode2 = View.MeasureSpec.getMode(customizableMediaView.getHeightMeasureSpec());
        if (mode2 != Integer.MIN_VALUE) {
            vu0Var2 = (mode2 == 0 || mode2 != 1073741824) ? vu0.d : vu0.b;
        } else {
            vu0Var2 = vu0.c;
        }
        return new nh2(new mh2(e82.a(customizableMediaView.getWidth()), e82.a(customizableMediaView.getHeight())), new nr0(numValueOf, numValueOf2), new tu0(new uu0(iA, vu0Var), new uu0(iA2, vu0Var2)), kotlin.collections.a.p(abb.a("asset", "media"), abb.a(SheetDialogParamsConstant.MEDIA_TYPE, str)));
    }
}
