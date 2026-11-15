package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.y45;

public final class en1 {
    private final jj0 a;
    private final fn1 b;

    public en1(Context context, sj0 sj0Var) {
        this(context, sj0Var, new jj0(context, new sn0(true), sj0Var), new fn1());
    }

    public final void a(String str, String str2, jj0.b bVar) {
        y45.j(str, "clickUrl");
        y45.j(bVar, "listener");
        this.b.getClass();
        y45.j(str, "clickUrl");
        Uri.Builder builderBuildUpon = Uri.parse("https://www.yandex.ru/ads/qr/gen").buildUpon();
        builderBuildUpon.appendQueryParameter("click_link", str);
        builderBuildUpon.appendQueryParameter(PlayAudioData.TAG_SIZE, String.valueOf(300));
        y45.g(builderBuildUpon);
        y45.j(builderBuildUpon, "<this>");
        y45.j("brand_logo_link", "key");
        if (str2 != null && str2.length() != 0) {
            y45.g(builderBuildUpon.appendQueryParameter("brand_logo_link", str2));
        }
        String string = builderBuildUpon.build().toString();
        y45.i(string, "toString(...)");
        this.a.a(new xj0(300, 300, string, null, 120), bVar);
    }

    public en1(Context context, sj0 sj0Var, jj0 jj0Var, fn1 fn1Var) {
        y45.j(context, "context");
        y45.j(sj0Var, "imageProvider");
        y45.j(jj0Var, "imageForPresentProvider");
        y45.j(fn1Var, "qrcodeUrlConfigurator");
        this.a = jj0Var;
        this.b = fn1Var;
    }
}
