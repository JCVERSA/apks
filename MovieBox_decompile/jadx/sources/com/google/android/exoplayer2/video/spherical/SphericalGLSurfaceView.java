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
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.video.i;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class SphericalGLSurfaceView extends GLSurfaceView {

    public static final int f27046m = 0;

    private final CopyOnWriteArrayList f27047a;

    private final SensorManager f27048b;

    private final Sensor f27049c;

    private final com.google.android.exoplayer2.video.spherical.b f27050d;

    private final Handler f27051e;

    private final h f27052f;

    private final g f27053g;

    private SurfaceTexture f27054h;

    private Surface f27055i;

    private boolean f27056j;

    private boolean f27057k;

    private boolean f27058l;

    final class a implements GLSurfaceView.Renderer, h.a, com.google.android.exoplayer2.video.spherical.b.a {

        private final g f27059a;

        private final float[] f27062d;

        private final float[] f27063e;

        private final float[] f27064f;

        private float f27065g;

        private float f27066h;

        private final float[] f27060b = new float[16];

        private final float[] f27061c = new float[16];

        private final float[] f27067i = new float[16];

        private final float[] f27068j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f27062d = fArr;
            float[] fArr2 = new float[16];
            this.f27063e = fArr2;
            float[] fArr3 = new float[16];
            this.f27064f = fArr3;
            this.f27059a = gVar;
            Matrix.setIdentityM(fArr, 0);
            Matrix.setIdentityM(fArr2, 0);
            Matrix.setIdentityM(fArr3, 0);
            this.f27066h = 3.1415927f;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f10))) * 2.0d);
            }
            return 90.0f;
        }

        private void d() {
            Matrix.setRotateM(this.f27063e, 0, -this.f27065g, (float) Math.cos(this.f27066h), (float) Math.sin(this.f27066h), 0.0f);
        }

        @Override
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f27062d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f27066h = -f10;
            d();
        }

        @Override
        public synchronized void b(PointF pointF) {
            this.f27065g = pointF.y;
            d();
            Matrix.setRotateM(this.f27064f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f27068j, 0, this.f27062d, 0, this.f27064f, 0);
                Matrix.multiplyMM(this.f27067i, 0, this.f27063e, 0, this.f27068j, 0);
            }
            Matrix.multiplyMM(this.f27061c, 0, this.f27060b, 0, this.f27067i, 0);
            this.f27059a.d(this.f27061c, false);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f10 = i10 / i11;
            Matrix.perspectiveM(this.f27060b, 0, c(f10), f10, 0.1f, 100.0f);
        }

        @Override
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.f(this.f27059a.e());
        }
    }

    public interface b {
        void p(Surface surface);

        void q(Surface surface);
    }

    public SphericalGLSurfaceView(Context context) {
        this(context, null);
    }

    public void d() {
        Surface surface = this.f27055i;
        if (surface != null) {
            Iterator it = this.f27047a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).p(surface);
            }
        }
        g(this.f27054h, surface);
        this.f27054h = null;
        this.f27055i = null;
    }

    public void e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f27054h;
        Surface surface = this.f27055i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f27054h = surfaceTexture;
        this.f27055i = surface2;
        Iterator it = this.f27047a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).q(surface2);
        }
        g(surfaceTexture2, surface);
    }

    public void f(final SurfaceTexture surfaceTexture) {
        this.f27051e.post(new Runnable() {
            @Override
            public final void run() {
                this.f67722a.e(surfaceTexture);
            }
        });
    }

    private static void g(SurfaceTexture surfaceTexture, Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void h() {
        boolean z10 = this.f27056j && this.f27057k;
        Sensor sensor = this.f27049c;
        if (sensor == null || z10 == this.f27058l) {
            return;
        }
        if (z10) {
            this.f27048b.registerListener(this.f27050d, sensor, 0);
        } else {
            this.f27048b.unregisterListener(this.f27050d);
        }
        this.f27058l = z10;
    }

    public void addVideoSurfaceListener(b bVar) {
        this.f27047a.add(bVar);
    }

    public oa.a getCameraMotionListener() {
        return this.f27053g;
    }

    public i getVideoFrameMetadataListener() {
        return this.f27053g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f27055i;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f27051e.post(new Runnable() {
            @Override
            public final void run() {
                this.f67724a.d();
            }
        });
    }

    @Override
    public void onPause() {
        this.f27057k = false;
        h();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.f27057k = true;
        h();
    }

    public void removeVideoSurfaceListener(b bVar) {
        this.f27047a.remove(bVar);
    }

    public void setDefaultStereoMode(int i10) {
        this.f27053g.h(i10);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f27056j = z10;
        h();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27047a = new CopyOnWriteArrayList();
        this.f27051e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("sensor"));
        this.f27048b = sensorManager;
        Sensor defaultSensor = p0.f26854a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.f27049c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f27053g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f27052f = hVar;
        this.f27050d = new com.google.android.exoplayer2.video.spherical.b(((WindowManager) com.google.android.exoplayer2.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f27056j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }
}
