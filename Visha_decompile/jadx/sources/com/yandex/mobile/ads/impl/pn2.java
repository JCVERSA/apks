package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.AdPodInfo;
import com.yandex.mobile.ads.video.playback.model.MediaFile;
import com.yandex.mobile.ads.video.playback.model.SkipInfo;
import com.yandex.mobile.ads.video.playback.model.VideoAd;
import com.yandex.mobile.ads.video.playback.model.VideoAdExtensions;
import com.yandex.mobile.ads.video.playback.model.VideoAdInfo;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class pn2 implements VideoAd {
    private final go0 a;
    private final ac2 b;

    public pn2(go0 go0Var, ac2 ac2Var) {
        y45.j(go0Var, "videoAd");
        y45.j(ac2Var, "videoAdInfoConverter");
        this.a = go0Var;
        this.b = ac2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pn2)) {
            return false;
        }
        pn2 pn2Var = (pn2) obj;
        return y45.e(this.a, pn2Var.a) && y45.e(this.b, pn2Var.b);
    }

    @Override
    public final VideoAdInfo getAdInfo() {
        ac2 ac2Var = this.b;
        cm0 cm0VarA = this.a.a();
        ac2Var.getClass();
        y45.j(cm0VarA, "instreamAdInfo");
        return new VideoAdInfo(cm0VarA.a(), cm0VarA.e(), cm0VarA.d(), cm0VarA.f(), cm0VarA.c(), cm0VarA.b());
    }

    @Override
    public final AdPodInfo getAdPodInfo() {
        return new kl2(this.a.b());
    }

    @Override
    public final long getDuration() {
        return this.a.c();
    }

    @Override
    public final VideoAdExtensions getExtensions() {
        return new qn2(this.a.d());
    }

    @Override
    public final String getInfo() {
        return this.a.a().f();
    }

    @Override
    public final MediaFile getMediaFile() {
        return new pm2(this.a.g());
    }

    @Override
    public final List<MediaFile> getMediaFiles() {
        List<xn0> listF = this.a.f();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listF, 10));
        Iterator<T> it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(new pm2((xn0) it.next()));
        }
        return arrayList;
    }

    @Override
    public final SkipInfo getSkipInfo() {
        od2 od2VarH = this.a.h();
        if (od2VarH != null) {
            return new gn2(od2VarH);
        }
        return null;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "YandexVideoAd(videoAd=" + this.a + ", videoAdInfoConverter=" + this.b + ")";
    }
}
