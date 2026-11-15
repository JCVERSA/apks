package androidx.media3.exoplayer.video.spherical;

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
import androidx.media3.common.util.GlUtil;
import androidx.media3.exoplayer.video.t;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public final class SphericalGLSurfaceView extends GLSurfaceView {

    public static final int f12909m = 0;

    private final CopyOnWriteArrayList f12910a;

    private final SensorManager f12911b;

    private final Sensor f12912c;

    private final androidx.media3.exoplayer.video.spherical.b f12913d;

    private final Handler f12914e;

    private final h f12915f;

    private final g f12916g;

    private SurfaceTexture f12917h;

    private Surface f12918i;

    private boolean f12919j;

    private boolean f12920k;

    private boolean f12921l;

    final class a implements GLSurfaceView.Renderer, h.a, androidx.media3.exoplayer.video.spherical.b.a {

        private final g f12922a;

        private final float[] f12925d;

        private final float[] f12926e;

        private final float[] f12927f;

        private float f12928g;

        private float f12929h;

        private final float[] f12923b = new float[16];

        private final float[] f12924c = new float[16];

        private final float[] f12930i = new float[16];

        private final float[] f12931j = new float[16];

        public a(g gVar) {
            float[] fArr = new float[16];
            this.f12925d = fArr;
            float[] fArr2 = new float[16];
            this.f12926e = fArr2;
            float[] fArr3 = new float[16];
            this.f12927f = fArr3;
            this.f12922a = gVar;
            GlUtil.k(fArr);
            GlUtil.k(fArr2);
            GlUtil.k(fArr3);
            this.f12929h = 3.1415927f;
        }

        private float c(float f10) {
            if (f10 > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f10))) * 2.0d);
            }
            return 90.0f;
        }

        private void d() {
            Matrix.setRotateM(this.f12926e, 0, -this.f12928g, (float) Math.cos(this.f12929h), (float) Math.sin(this.f12929h), 0.0f);
        }

        @Override
        public synchronized void a(float[] fArr, float f10) {
            float[] fArr2 = this.f12925d;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.f12929h = -f10;
            d();
        }

        @Override
        public synchronized void b(PointF pointF) {
            this.f12928g = pointF.y;
            d();
            Matrix.setRotateM(this.f12927f, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.f12931j, 0, this.f12925d, 0, this.f12927f, 0);
                Matrix.multiplyMM(this.f12930i, 0, this.f12926e, 0, this.f12931j, 0);
            }
            Matrix.multiplyMM(this.f12924c, 0, this.f12923b, 0, this.f12930i, 0);
            this.f12922a.d(this.f12924c, false);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return SphericalGLSurfaceView.this.performClick();
        }

        @Override
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f10 = i10 / i11;
            Matrix.perspectiveM(this.f12923b, 0, c(f10), f10, 0.1f, 100.0f);
        }

        @Override
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            SphericalGLSurfaceView.this.f(this.f12922a.e());
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
        Surface surface = this.f12918i;
        if (surface != null) {
            Iterator it = this.f12910a.iterator();
            while (it.hasNext()) {
                ((b) it.next()).p(surface);
            }
        }
        g(this.f12917h, surface);
        this.f12917h = null;
        this.f12918i = null;
    }

    public void e(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.f12917h;
        Surface surface = this.f12918i;
        Surface surface2 = new Surface(surfaceTexture);
        this.f12917h = surfaceTexture;
        this.f12918i = surface2;
        Iterator it = this.f12910a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).q(surface2);
        }
        g(surfaceTexture2, surface);
    }

    public void f(final SurfaceTexture surfaceTexture) {
        this.f12914e.post(new Runnable() {
            @Override
            public final void run() {
                this.f62879a.e(surfaceTexture);
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
        boolean z10 = this.f12919j && this.f12920k;
        Sensor sensor = this.f12912c;
        if (sensor == null || z10 == this.f12921l) {
            return;
        }
        if (z10) {
            this.f12911b.registerListener(this.f12913d, sensor, 0);
        } else {
            this.f12911b.unregisterListener(this.f12913d);
        }
        this.f12921l = z10;
    }

    public void addVideoSurfaceListener(b bVar) {
        this.f12910a.add(bVar);
    }

    public j2.a getCameraMotionListener() {
        return this.f12916g;
    }

    public t getVideoFrameMetadataListener() {
        return this.f12916g;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.f12918i;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f12914e.post(new Runnable() {
            @Override
            public final void run() {
                this.f62878a.d();
            }
        });
    }

    @Override
    public void onPause() {
        this.f12920k = false;
        h();
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.f12920k = true;
        h();
    }

    public void removeVideoSurfaceListener(b bVar) {
        this.f12910a.remove(bVar);
    }

    public void setDefaultStereoMode(int i10) {
        this.f12916g.h(i10);
    }

    public void setUseSensorRotation(boolean z10) {
        this.f12919j = z10;
        h();
    }

    public SphericalGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f12910a = new CopyOnWriteArrayList();
        this.f12914e = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) androidx.media3.common.util.a.e(context.getSystemService("sensor"));
        this.f12911b = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f12912c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        g gVar = new g();
        this.f12916g = gVar;
        a aVar = new a(gVar);
        h hVar = new h(context, aVar, 25.0f);
        this.f12915f = hVar;
        this.f12913d = new androidx.media3.exoplayer.video.spherical.b(((WindowManager) androidx.media3.common.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), hVar, aVar);
        this.f12919j = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(hVar);
    }
}
