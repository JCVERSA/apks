package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class j81 implements q61 {
    private final List<q61> a;
    private final q61 b;

    public j81(ArrayList arrayList) {
        y45.j(arrayList, "nativePrivates");
        this.a = arrayList;
        this.b = arrayList.isEmpty() ? null : (q61) arrayList.get(0);
    }

    @Override
    public final y61 a() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            return q61Var.a();
        }
        return null;
    }

    @Override
    public final void b(ut utVar) {
        y45.j(utVar, "listener");
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.b(utVar);
        }
    }

    @Override
    public final List<b30> c() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            return q61Var.c();
        }
        return null;
    }

    @Override
    public final void destroy() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.destroy();
        }
    }

    public final List<q61> e() {
        return this.a;
    }

    @Override
    public final rt getAdAssets() {
        rt adAssets;
        q61 q61Var = this.b;
        return (q61Var == null || (adAssets = q61Var.getAdAssets()) == null) ? new rt(0) : adAssets;
    }

    @Override
    public final gr1 getAdType() {
        gr1 adType;
        q61 q61Var = this.b;
        return (q61Var == null || (adType = q61Var.getAdType()) == null) ? gr1.c : adType;
    }

    @Override
    public final String getInfo() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            return q61Var.getInfo();
        }
        return null;
    }

    @Override
    public final yt getNativeAdVideoController() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            return q61Var.getNativeAdVideoController();
        }
        return null;
    }

    @Override
    public final void loadImages() {
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.loadImages();
        }
    }

    @Override
    public final void a(ut utVar) {
        y45.j(utVar, "listener");
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.a(utVar);
        }
    }

    @Override
    public final void b(k71 k71Var, uo uoVar) throws e61 {
        y45.j(k71Var, "viewProvider");
        y45.j(uoVar, "clickConnector");
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.b(k71Var, uoVar);
        }
    }

    @Override
    public final void a(com.yandex.mobile.ads.nativeads.c cVar) {
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.a(cVar);
        }
    }

    @Override
    public final void a(st stVar) {
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.a(stVar);
        }
    }

    @Override
    public final void b(k71 k71Var) throws e61 {
        y45.j(k71Var, "viewProvider");
        q61 q61Var = this.b;
        if (q61Var != null) {
            q61Var.b(k71Var);
        }
    }

    @Override
    public final n91 b() {
        n91 n91VarB;
        q61 q61Var = this.b;
        return (q61Var == null || (n91VarB = q61Var.b()) == null) ? new n91(null, null) : n91VarB;
    }
}
