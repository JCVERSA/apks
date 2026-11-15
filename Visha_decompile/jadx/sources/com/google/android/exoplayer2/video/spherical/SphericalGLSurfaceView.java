package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import defpackage.blb;
import defpackage.f29;
import defpackage.lrb;
import defpackage.xq0;
import defpackage.zi;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class SphericalGLSurfaceView extends GLSurfaceView {
    public final CopyOnWriteArrayList b;
    public final SensorManager c;
    public final Sensor d;
    public final com.google.android.exoplayer2.video.spherical.a e;
    public final Handler f;
    public final com.google.android.exoplayer2.video.spherical.b g;
    public final f29 h;
    public SurfaceTexture i;
    public Surface j;
    public boolean k;
    public boolean l;
    public boolean m;

    public final class a implements GLSurfaceView.Renderer, com.google.android.exoplayer2.video.spherical.b.a, com.google.android.exoplayer2.video.spherical.a.InterfaceC0087a {
        public final f29 b;
        public final float[] e;
        public final float[] f;
        public final float[] g;
        public float h;
        public float i;
        public final float[] c = new float[16];
        public final float[] d = new float[16];
        public final float[] j = new float[16];
        public final float[] k = new float[16];

        public a(f29 f29Var) {
            float[] fArr = new float[16];
            this.e = fArr;
            float[] fArr2 = new float[16];
            this.f = fArr2;
            float[] fArr3 = new float[16];
            this.g = fArr3;
            this.b = f29Var;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.i = 3.1415927f;
        }

        public final float a(float f) {
            if (f > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f))) * 2.0d);
            }
            return 90.0f;
        }

        public final void b() {
            Matrix.setRotateM(this.f, 0, -this.h, (float) Math.cos(this.i), (float) Math.sin(this.i), 0.0f);
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.k, 0, this.e, 0, this.g, 0);
                Matrix.multiplyMM(this.j, 0, this.f, 0, this.k, 0);
            }
            Matrix.multiplyMM(this.d, 0, this.c, 0, this.j, 0);
            this.b.c(this.d, false);
        }

        @Override
        public synchronized void onOrientationChange(float[] fArr, float f) {
            float[] fArr2 = this.e;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.i = -f;
            b();
        }

        @Override
        public synchronized void onScrollChange(PointF pointF) {
            this.h = pointF.y;
            b();
            Matrix.setRotateM(this.g, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLES20.glViewport(0, 0, i, i2);
            float f = i / i2;
            Matrix.perspectiveM(this.c, 0, a(f), f, 0.1f, 100.0f);
        }

        @Override
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.f(this.b.d());
        }
    }

    public interface b {
        void onVideoSurfaceCreated(Surface surface);

        void onVideoSurfaceDestroyed(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public static void g(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    public void addVideoSurfaceListener(b bVar) {
        this.b.add(bVar);
    }

    public final void d() {
        Surface surface = this.j;
        if (surface != null) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((b) it.next()).onVideoSurfaceDestroyed(surface);
            }
        }
        g(this.i, surface);
        this.i = null;
        this.j = null;
    }

    public final void e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.i;
        Surface surface = this.j;
        Surface surface2 = new Surface(surfaceTexture);
        this.i = surfaceTexture;
        this.j = surface2;
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((b) it.next()).onVideoSurfaceCreated(surface2);
        }
        g(surfaceTexture2, surface);
    }

    public final void f(final SurfaceTexture surfaceTexture) {
        this.f.post(new Runnable() {
            @Override
            public final void run() {
                this.b.e(surfaceTexture);
            }
        });
    }

    public xq0 getCameraMotionListener() {
        return this.h;
    }

    public lrb getVideoFrameMetadataListener() {
        return this.h;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.j;
    }

    public final void h() {
        boolean z = this.k && this.l;
        Sensor sensor = this.d;
        if (sensor == null || z == this.m) {
            return;
        }
        if (z) {
            this.c.registerListener(this.e, sensor, 0);
        } else {
            this.c.unregisterListener(this.e);
        }
        this.m = z;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f.post(new Runnable() {
            @Override
            public final void run() {
                this.b.d();
            }
        });
    }

    @Override
    public void onPause() {
        this.l = false;
        h();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.l = true;
        h();
    }

    public void removeVideoSurfaceListener(b bVar) {
        this.b.remove(bVar);
    }

    public void setDefaultStereoMode(int i) {
        this.h.f(i);
    }

    public void setUseSensorRotation(boolean z) {
        this.k = z;
        h();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new CopyOnWriteArrayList();
        this.f = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) zi.e(context.getSystemService("sensor"));
        this.c = sensorManager;
        Sensor defaultSensor = blb.a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.d = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        f29 f29Var = new f29();
        this.h = f29Var;
        a aVar = new a(f29Var);
        com.google.android.exoplayer2.video.spherical.b bVar = new com.google.android.exoplayer2.video.spherical.b(context, aVar, 25.0f);
        this.g = bVar;
        this.e = new com.google.android.exoplayer2.video.spherical.a(((WindowManager) zi.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), bVar, aVar);
        this.k = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(bVar);
    }
}
