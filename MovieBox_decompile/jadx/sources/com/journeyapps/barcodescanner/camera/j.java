package com.journeyapps.barcodescanner.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import java.io.IOException;

public class j {

    private SurfaceHolder f33164a;

    private SurfaceTexture f33165b;

    public j(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("surfaceHolder may not be null");
        }
        this.f33164a = surfaceHolder;
    }

    public void a(Camera camera) throws IOException {
        SurfaceHolder surfaceHolder = this.f33164a;
        if (surfaceHolder != null) {
            camera.setPreviewDisplay(surfaceHolder);
        } else {
            camera.setPreviewTexture(this.f33165b);
        }
    }

    public j(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != null) {
            this.f33165b = surfaceTexture;
            return;
        }
        throw new IllegalArgumentException("surfaceTexture may not be null");
    }
}
