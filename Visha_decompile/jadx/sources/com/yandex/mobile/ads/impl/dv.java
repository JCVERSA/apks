package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public final class dv implements mg2 {
    private final uu a;
    private final kg2 b;
    private final re2 c;
    private final no0 d;
    private boolean e;

    public dv(uu uuVar, kg2 kg2Var, re2 re2Var) {
        y45.j(uuVar, "creative");
        y45.j(kg2Var, "eventsTracker");
        y45.j(re2Var, "videoEventUrlsTracker");
        this.a = uuVar;
        this.b = kg2Var;
        this.c = re2Var;
        this.d = new no0(new vu());
    }

    @Override
    public final void a(float f) {
    }

    @Override
    public final void b() {
        this.b.a(this.a, "complete");
    }

    @Override
    public final void c() {
        this.b.a(this.a, "resume");
    }

    @Override
    public final void d() {
        this.b.a(this.a, "pause");
    }

    @Override
    public final void e() {
        this.b.a(this.a, "skip");
    }

    @Override
    public final void f() {
    }

    @Override
    public final void g() {
    }

    @Override
    public final void h() {
        this.b.a(this.a, "creativeView");
    }

    @Override
    public final void i() {
        uu uuVar = this.a;
        y45.j(uuVar, "creative");
        this.b.a(new zu(uuVar), "creativeRenderingStart");
    }

    @Override
    public final void j() {
    }

    @Override
    public final void k() {
        this.e = false;
    }

    @Override
    public final void l() {
        this.b.a(this.a, "mute");
    }

    @Override
    public final void m() {
        if (!this.e) {
            this.e = true;
            this.b.a(this.a, TtmlNode.START);
        }
        this.b.a(this.a, "clickTracking");
    }

    @Override
    public final void n() {
    }

    @Override
    public final void a(View view, List<xb2> list) {
        y45.j(view, "view");
        y45.j(list, "friendlyOverlays");
    }

    @Override
    public final void a(String str) {
        y45.j(str, "assetName");
        if (!this.e) {
            this.e = true;
            this.b.a(this.a, TtmlNode.START);
        }
        this.c.a(this.d.a(this.a, str).b(), null);
    }

    @Override
    public final void a(xc2 xc2Var) {
        y45.j(xc2Var, "error");
    }

    @Override
    public final void a(mg2.a aVar) {
        String str;
        y45.j(aVar, "quartile");
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 0) {
            str = "firstQuartile";
        } else if (iOrdinal == 1) {
            str = "midpoint";
        } else {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            str = "thirdQuartile";
        }
        this.b.a(this.a, str);
    }

    @Override
    public final void a(float f, long j) {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.a(this.a, TtmlNode.START);
    }

    @Override
    public final void a() {
        this.b.a(this.a, "unmute");
    }
}
