package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.ikd;
import defpackage.wsd;
import defpackage.xnd;
import defpackage.y45;

public final class h implements wsd {
    public xnd b;
    public boolean e;
    public final String a = "NoOpVideoPlayer";
    public boolean c = true;
    public boolean d = true;

    @Override
    public void a() {
    }

    @Override
    public void b() {
    }

    @Override
    public void c() {
    }

    @Override
    public void d() {
    }

    @Override
    public void e() {
    }

    @Override
    public long getCurrentPosition() {
        return 0L;
    }

    @Override
    public long getDuration() {
        return 0L;
    }

    @Override
    public boolean getPlayWhenReady() {
        return this.c;
    }

    @Override
    public boolean isPlaying() {
        return false;
    }

    @Override
    public void pause() {
    }

    @Override
    public void play() {
    }

    @Override
    public void release() {
        this.b = null;
    }

    @Override
    public void seekTo(long j) {
    }

    @Override
    public void setPlayWhenReady(boolean z) {
        this.c = z;
    }

    @Override
    public void a(MediaTextureView mediaTextureView) {
    }

    @Override
    public void b(AdsDTO adsDTO, String str, boolean z, boolean z2) {
        y45.j(str, "path");
        ikd.b().i(this.a, "ExoPlayer unavailable, notifying error via listener");
        xnd xndVar = this.b;
        if (xndVar != null) {
            xndVar.a(p.e.a());
        }
    }

    @Override
    public void c(xnd xndVar) {
        this.b = xndVar;
    }

    @Override
    public void a(boolean z) {
        this.e = z;
    }
}
