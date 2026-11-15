package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.hunantv.media.player.utils.SurfaceUtil;

@TargetApi(14)
public class k extends i implements d, com.hunantv.media.player.f.a {
    private SurfaceTexture b;
    private com.hunantv.media.player.f.b c;

    public k(d dVar) {
        super(dVar);
    }

    @Override
    public void a(SurfaceTexture surfaceTexture) {
        if (this.b == surfaceTexture) {
            return;
        }
        b();
        this.b = surfaceTexture;
        super.setSurface(surfaceTexture == null ? null : SurfaceUtil.create(surfaceTexture));
    }

    public void b() {
        SurfaceTexture surfaceTexture = this.b;
        if (surfaceTexture != null) {
            com.hunantv.media.player.f.b bVar = this.c;
            if (bVar != null) {
                bVar.a(surfaceTexture);
            } else {
                surfaceTexture.release();
            }
            this.b = null;
        }
    }

    @Override
    public SurfaceTexture c() {
        return this.b;
    }

    @Override
    public void release() {
        super.release();
        b();
    }

    @Override
    public void reset() {
        super.reset();
        b();
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (this.b == null) {
            super.setDisplay(surfaceHolder);
        }
    }

    @Override
    public void setSurface(Surface surface) {
        if (this.b == null) {
            super.setSurface(surface);
        }
    }

    @Override
    public void a(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) {
        SurfaceTexture surfaceTexture = iSurfaceHolder.getSurfaceTexture();
        if (this.b == surfaceTexture) {
            return;
        }
        b();
        this.b = surfaceTexture;
        super.setSurface(surfaceTexture == null ? null : iSurfaceHolder.openSurface());
    }

    @Override
    public void a(com.hunantv.media.player.f.b bVar) {
        this.c = bVar;
    }
}
