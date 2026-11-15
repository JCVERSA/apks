package com.yandex.mobile.ads.impl;

import android.view.View;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class sd2 implements mg2 {
    private final mb2 a;
    private final kg2 b;

    public sd2(mb2 mb2Var, kg2 kg2Var) {
        y45.j(mb2Var, "videoAd");
        y45.j(kg2Var, "eventsTracker");
        this.a = mb2Var;
        this.b = kg2Var;
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
    }

    @Override
    public final void d() {
    }

    @Override
    public final void e() {
    }

    @Override
    public final void f() {
    }

    @Override
    public final void g() {
    }

    @Override
    public final void h() {
        this.b.a(this.a, "render_impression");
    }

    @Override
    public final void i() {
        mb2 mb2Var = this.a;
        y45.j(mb2Var, "videoAd");
        this.b.a(new wb2(mb2Var), "renderingStart");
    }

    @Override
    public final void j() {
    }

    @Override
    public final void k() {
    }

    @Override
    public final void l() {
    }

    @Override
    public final void m() {
    }

    @Override
    public final void n() {
        this.b.a(this.a, AdSDKNotificationListener.IMPRESSION_EVENT);
    }

    @Override
    public final void a(float f) {
    }

    @Override
    public final void a(float f, long j) {
    }

    @Override
    public final void a(View view, List<xb2> list) {
        y45.j(view, "view");
        y45.j(list, "friendlyOverlays");
    }

    @Override
    public final void a(String str) {
        y45.j(str, "assetName");
    }

    @Override
    public final void a(xc2 xc2Var) {
        int i;
        y45.j(xc2Var, "error");
        switch (xc2Var.a().ordinal()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 10:
            case 11:
            case 25:
            case 26:
                i = 405;
                break;
            case 7:
                i = 402;
                break;
            case 8:
            case 12:
            case 28:
                i = 900;
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 20:
            case 21:
            case 22:
            case 24:
            case 27:
                i = 400;
                break;
            case 19:
                i = 401;
                break;
            case 23:
                i = 403;
                break;
            case 29:
                i = 901;
                break;
            case 30:
                i = 902;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        this.b.a(this.a, "error", ky5.h(abb.a("[ERRORCODE]", String.valueOf(i))));
    }

    @Override
    public final void a(mg2.a aVar) {
        y45.j(aVar, "quartile");
    }
}
