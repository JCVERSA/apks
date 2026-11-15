package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.MediaFile;
import defpackage.y45;

public final class pm2 implements MediaFile {
    private final xn0 a;

    public pm2(xn0 xn0Var) {
        y45.j(xn0Var, "mediaFile");
        this.a = xn0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pm2) && y45.e(this.a, ((pm2) obj).a);
    }

    @Override
    public final int getAdHeight() {
        return this.a.getAdHeight();
    }

    @Override
    public final int getAdWidth() {
        return this.a.getAdWidth();
    }

    @Override
    public final String getApiFramework() {
        return this.a.getApiFramework();
    }

    @Override
    public final Integer getBitrate() {
        return this.a.getBitrate();
    }

    @Override
    public final String getMediaType() {
        return this.a.getMediaType();
    }

    @Override
    public final String getUrl() {
        return this.a.getUrl();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexMediaFile(mediaFile=" + this.a + ")";
    }
}
