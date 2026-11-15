package com.mgtv.a.b;

import android.view.View;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.model.VASTChannelAd;
import defpackage.g4d;

public class a extends com.mgtv.a.b.a.a<VASTChannelAd> {
    private String a;

    public a() {
        this("banner");
        this.a = g4d.a();
    }

    @Override
    public void a(VASTChannelAd vASTChannelAd) {
    }

    public boolean b() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            return bVar.j();
        }
        return false;
    }

    public boolean c() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar == null || !(bVar.p() instanceof VASTChannelAd)) {
            return false;
        }
        return ((VASTChannelAd) this.k.p()).hasFireImpressions();
    }

    @Override
    public void d() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar instanceof com.mgtv.a.d.a.a) {
            ((com.mgtv.a.d.a.a) bVar).i();
        }
    }

    public void d_() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar instanceof com.mgtv.a.d.a.a) {
            ((com.mgtv.a.d.a.a) bVar).h();
        }
    }

    @Override
    public void e() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            bVar.f();
        }
    }

    @Override
    public void g() {
        super.g();
        com.mgtv.a.b.a.b bVar = this.m;
        if (bVar != null) {
            bVar.r();
        }
    }

    @Override
    public void h() {
        if (this.n != null) {
            AdWidgetInfo adWidgetInfo = new AdWidgetInfo("");
            adWidgetInfo.setValuesTag(this.a);
            this.n.onAdListener(com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA, adWidgetInfo);
        }
    }

    public String i() {
        return this.a;
    }

    @Override
    public void j() {
        com.mgmi.ads.api.a aVar = this.n;
        if (aVar != null) {
            aVar.onAdListener(com.mgmi.ads.api.a.EnumC0161a.CLOSE_AD, new AdWidgetInfo(""));
        }
    }

    public a(String str) {
        super(str);
    }

    public View a() {
        com.mgtv.a.d.b.b bVar = this.k;
        if (bVar != null) {
            return bVar.t();
        }
        return null;
    }
}
