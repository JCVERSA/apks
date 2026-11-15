package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class nx0 {
    private final bv1 a;
    private final o8<?> b;
    private final hg2 c;
    private final ov d;
    private final sb1 e;
    private final hb1 f;
    private final bc1 g;

    public nx0(bv1 bv1Var, o8 o8Var) {
        this(bv1Var, o8Var, new hg2(), new ov(), new sb1());
    }

    public final cw1 a(CustomizableMediaView customizableMediaView, aw0 aw0Var, o3 o3Var, pk0 pk0Var, db1 db1Var, t81 t81Var, e51 e51Var, ox0 ox0Var, sj0 sj0Var, yx1 yx1Var, lb2 lb2Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(aw0Var, "customControls");
        y45.j(o3Var, "adConfiguration");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(db1Var, "listener");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(sj0Var, "imageProvider");
        Context context = customizableMediaView.getContext();
        yf2 yf2VarA = this.e.a(customizableMediaView);
        hb1 hb1Var = this.f;
        ag2 ag2VarD = lb2Var != null ? lb2Var.d() : null;
        hb1Var.getClass();
        xe2 xe2Var = new xe2(yf2VarA, ag2VarD != null ? ag2VarD.b() : true, ag2VarD != null ? ag2VarD.c() : false, ag2VarD != null ? ag2VarD.a() : null);
        this.d.getClass();
        y45.j(customizableMediaView, "mediaView");
        int videoControlsLayoutId = customizableMediaView.getVideoControlsLayoutId();
        bc1 bc1Var = this.g;
        y45.g(context);
        yb1 yb1VarA = bc1Var.a(context, xe2Var, aw0Var, lb2Var, videoControlsLayoutId);
        this.c.getClass();
        y45.j(customizableMediaView, "mediaView");
        y45.j(yb1VarA, "nativeVideoView");
        Context context2 = customizableMediaView.getContext();
        y45.i(context2, "getContext(...)");
        if (!x80.a(context2, w80.e)) {
            customizableMediaView.removeAllViews();
        }
        customizableMediaView.addView(yb1VarA, new FrameLayout.LayoutParams(-1, -1));
        rg2 rg2Var = new rg2(this.a, yb1VarA, xe2Var, o3Var, this.b, pk0Var, db1Var, t81Var, e51Var, sj0Var, yx1Var, new pg2());
        return new cw1(customizableMediaView, rg2Var, ox0Var, new wg2(rg2Var));
    }

    public nx0(bv1 bv1Var, o8<?> o8Var, hg2 hg2Var, ov ovVar, sb1 sb1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o8Var, "adResponse");
        y45.j(hg2Var, "videoSubViewBinder");
        y45.j(ovVar, "customizableMediaViewManager");
        y45.j(sb1Var, "nativeVideoScaleTypeProvider");
        this.a = bv1Var;
        this.b = o8Var;
        this.c = hg2Var;
        this.d = ovVar;
        this.e = sb1Var;
        this.f = new hb1();
        this.g = new bc1();
    }
}
