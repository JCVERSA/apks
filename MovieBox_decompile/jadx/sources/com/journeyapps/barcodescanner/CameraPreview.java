package com.journeyapps.barcodescanner;

import af.o;
import af.p;
import af.q;
import af.s;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.google.zxing.client.android.R$id;
import com.google.zxing.client.android.R$styleable;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.journeyapps.barcodescanner.camera.PreviewScalingStrategy;
import com.journeyapps.barcodescanner.camera.i;
import com.journeyapps.barcodescanner.camera.j;
import com.journeyapps.barcodescanner.camera.l;
import com.journeyapps.barcodescanner.camera.m;
import com.journeyapps.barcodescanner.camera.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CameraPreview extends ViewGroup {
    private static final String A = "CameraPreview";

    private CameraInstance f33046a;

    private WindowManager f33047b;

    private Handler f33048c;

    private boolean f33049d;

    private SurfaceView f33050e;

    private TextureView f33051f;

    private boolean f33052g;

    private p f33053h;

    private int f33054i;

    private List f33055j;

    private m f33056k;

    private CameraSettings f33057l;

    private q f33058m;

    private q f33059n;

    private Rect f33060o;

    private q f33061p;

    private Rect f33062q;

    private Rect f33063r;

    private q f33064s;

    private double f33065t;

    private PreviewScalingStrategy f33066u;

    private boolean f33067v;

    private final SurfaceHolder.Callback f33068w;

    private final Handler.Callback f33069x;

    private o f33070y;

    private final f f33071z;

    class a implements TextureView.SurfaceTextureListener {
        a() {
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
            onSurfaceTextureSizeChanged(surfaceTexture, i10, i11);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            return false;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
            CameraPreview.this.f33061p = new q(i10, i11);
            CameraPreview.this.w();
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    class b implements SurfaceHolder.Callback {
        b() {
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
            if (surfaceHolder == null) {
                Log.e(CameraPreview.A, "*** WARNING *** surfaceChanged() gave us a null surface!");
                return;
            }
            CameraPreview.this.f33061p = new q(i11, i12);
            CameraPreview.this.w();
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            CameraPreview.this.f33061p = null;
        }
    }

    class c implements Handler.Callback {
        c() {
        }

        @Override
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == R$id.zxing_prewiew_size_ready) {
                CameraPreview.this.r((q) message.obj);
                return true;
            }
            if (i10 != R$id.zxing_camera_error) {
                if (i10 != R$id.zxing_camera_closed) {
                    return false;
                }
                CameraPreview.this.f33071z.b();
                return false;
            }
            Exception exc = (Exception) message.obj;
            if (!CameraPreview.this.q()) {
                return false;
            }
            CameraPreview.this.pause();
            CameraPreview.this.f33071z.c(exc);
            return false;
        }
    }

    class d implements o {
        d() {
        }

        public void c() {
            CameraPreview.this.t();
        }

        @Override
        public void a(int i10) {
            CameraPreview.this.f33048c.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.f33099a.c();
                }
            }, 250L);
        }
    }

    class e implements f {
        e() {
        }

        @Override
        public void a() {
            Iterator it = CameraPreview.this.f33055j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).a();
            }
        }

        @Override
        public void b() {
            Iterator it = CameraPreview.this.f33055j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).b();
            }
        }

        @Override
        public void c(Exception exc) {
            Iterator it = CameraPreview.this.f33055j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).c(exc);
            }
        }

        @Override
        public void d() {
            Iterator it = CameraPreview.this.f33055j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).d();
            }
        }

        @Override
        public void e() {
            Iterator it = CameraPreview.this.f33055j.iterator();
            while (it.hasNext()) {
                ((f) it.next()).e();
            }
        }
    }

    public interface f {
        void a();

        void b();

        void c(Exception exc);

        void d();

        void e();
    }

    public CameraPreview(Context context) {
        super(context);
        this.f33049d = false;
        this.f33052g = false;
        this.f33054i = -1;
        this.f33055j = new ArrayList();
        this.f33057l = new CameraSettings();
        this.f33062q = null;
        this.f33063r = null;
        this.f33064s = null;
        this.f33065t = 0.1d;
        this.f33066u = null;
        this.f33067v = false;
        this.f33068w = new b();
        this.f33069x = new c();
        this.f33070y = new d();
        this.f33071z = new e();
        o(context, null, 0, 0);
    }

    private int getDisplayRotation() {
        return this.f33047b.getDefaultDisplay().getRotation();
    }

    private void i() {
        q qVar;
        m mVar;
        q qVar2 = this.f33058m;
        if (qVar2 == null || (qVar = this.f33059n) == null || (mVar = this.f33056k) == null) {
            this.f33063r = null;
            this.f33062q = null;
            this.f33060o = null;
            throw new IllegalStateException("containerSize or previewSize is not set yet");
        }
        int i10 = qVar.f336a;
        int i11 = qVar.f337b;
        int i12 = qVar2.f336a;
        int i13 = qVar2.f337b;
        Rect rectD = mVar.d(qVar);
        if (rectD.width() <= 0 || rectD.height() <= 0) {
            return;
        }
        this.f33060o = rectD;
        this.f33062q = j(new Rect(0, 0, i12, i13), this.f33060o);
        Rect rect = new Rect(this.f33062q);
        Rect rect2 = this.f33060o;
        rect.offset(-rect2.left, -rect2.top);
        Rect rect3 = new Rect((rect.left * i10) / this.f33060o.width(), (rect.top * i11) / this.f33060o.height(), (rect.right * i10) / this.f33060o.width(), (rect.bottom * i11) / this.f33060o.height());
        this.f33063r = rect3;
        if (rect3.width() > 0 && this.f33063r.height() > 0) {
            this.f33071z.a();
            return;
        }
        this.f33063r = null;
        this.f33062q = null;
        Log.w(A, "Preview frame is too small");
    }

    private void l(q qVar) {
        this.f33058m = qVar;
        CameraInstance cameraInstance = this.f33046a;
        if (cameraInstance == null || cameraInstance.p() != null) {
            return;
        }
        m mVar = new m(getDisplayRotation(), qVar);
        this.f33056k = mVar;
        mVar.e(getPreviewScalingStrategy());
        this.f33046a.A(this.f33056k);
        this.f33046a.o();
        boolean z10 = this.f33067v;
        if (z10) {
            this.f33046a.D(z10);
        }
    }

    private void n() {
        if (this.f33046a != null) {
            Log.w(A, "initCamera called twice");
            return;
        }
        CameraInstance cameraInstanceM = m();
        this.f33046a = cameraInstanceM;
        cameraInstanceM.B(this.f33048c);
        this.f33046a.x();
        this.f33054i = getDisplayRotation();
    }

    private void o(Context context, AttributeSet attributeSet, int i10, int i11) {
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        p(attributeSet);
        this.f33047b = (WindowManager) context.getSystemService("window");
        this.f33048c = new Handler(this.f33069x);
        this.f33053h = new p();
    }

    public void r(q qVar) {
        this.f33059n = qVar;
        if (this.f33058m != null) {
            i();
            requestLayout();
            w();
        }
    }

    public void t() {
        if (!q() || getDisplayRotation() == this.f33054i) {
            return;
        }
        pause();
        resume();
    }

    private void u() {
        if (this.f33049d) {
            TextureView textureView = new TextureView(getContext());
            this.f33051f = textureView;
            textureView.setSurfaceTextureListener(x());
            addView(this.f33051f);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.f33050e = surfaceView;
        surfaceView.getHolder().addCallback(this.f33068w);
        addView(this.f33050e);
    }

    private void v(j jVar) {
        if (this.f33052g || this.f33046a == null) {
            return;
        }
        this.f33046a.C(jVar);
        this.f33046a.E();
        this.f33052g = true;
        s();
        this.f33071z.e();
    }

    public void w() {
        Rect rect;
        q qVar = this.f33061p;
        if (qVar == null || this.f33059n == null || (rect = this.f33060o) == null) {
            return;
        }
        if (this.f33050e != null && qVar.equals(new q(rect.width(), this.f33060o.height()))) {
            v(new j(this.f33050e.getHolder()));
            return;
        }
        TextureView textureView = this.f33051f;
        if (textureView == null || textureView.getSurfaceTexture() == null) {
            return;
        }
        if (this.f33059n != null) {
            this.f33051f.setTransform(k(new q(this.f33051f.getWidth(), this.f33051f.getHeight()), this.f33059n));
        }
        v(new j(this.f33051f.getSurfaceTexture()));
    }

    private TextureView.SurfaceTextureListener x() {
        return new a();
    }

    public void addStateListener(f fVar) {
        this.f33055j.add(fVar);
    }

    public void changeCameraParameters(i iVar) {
        CameraInstance cameraInstance = this.f33046a;
        if (cameraInstance != null) {
            cameraInstance.m(iVar);
        }
    }

    public CameraInstance getCameraInstance() {
        return this.f33046a;
    }

    public CameraSettings getCameraSettings() {
        return this.f33057l;
    }

    public Rect getFramingRect() {
        return this.f33062q;
    }

    public q getFramingRectSize() {
        return this.f33064s;
    }

    public double getMarginFraction() {
        return this.f33065t;
    }

    public Rect getPreviewFramingRect() {
        return this.f33063r;
    }

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        PreviewScalingStrategy previewScalingStrategy = this.f33066u;
        if (previewScalingStrategy != null) {
            return previewScalingStrategy;
        }
        return this.f33051f != null ? new l() : new n();
    }

    public q getPreviewSize() {
        return this.f33059n;
    }

    public boolean isCameraClosed() {
        CameraInstance cameraInstance = this.f33046a;
        return cameraInstance == null || cameraInstance.r();
    }

    public boolean isPreviewActive() {
        return this.f33052g;
    }

    public boolean isUseTextureView() {
        return this.f33049d;
    }

    protected Rect j(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        if (this.f33064s != null) {
            rect3.inset(Math.max(0, (rect3.width() - this.f33064s.f336a) / 2), Math.max(0, (rect3.height() - this.f33064s.f337b) / 2));
            return rect3;
        }
        int iMin = (int) Math.min(((double) rect3.width()) * this.f33065t, ((double) rect3.height()) * this.f33065t);
        rect3.inset(iMin, iMin);
        if (rect3.height() > rect3.width()) {
            rect3.inset(0, (rect3.height() - rect3.width()) / 2);
        }
        return rect3;
    }

    protected Matrix k(q qVar, q qVar2) {
        float f10;
        float f11 = qVar.f336a / qVar.f337b;
        float f12 = qVar2.f336a / qVar2.f337b;
        float f13 = 1.0f;
        if (f11 < f12) {
            float f14 = f12 / f11;
            f10 = 1.0f;
            f13 = f14;
        } else {
            f10 = f11 / f12;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f13, f10);
        int i10 = qVar.f336a;
        int i11 = qVar.f337b;
        matrix.postTranslate((i10 - (i10 * f13)) / 2.0f, (i11 - (i11 * f10)) / 2.0f);
        return matrix;
    }

    protected CameraInstance m() {
        CameraInstance cameraInstance = new CameraInstance(getContext());
        cameraInstance.z(this.f33057l);
        return cameraInstance;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        l(new q(i12 - i10, i13 - i11));
        SurfaceView surfaceView = this.f33050e;
        if (surfaceView == null) {
            TextureView textureView = this.f33051f;
            if (textureView != null) {
                textureView.layout(0, 0, getWidth(), getHeight());
                return;
            }
            return;
        }
        Rect rect = this.f33060o;
        if (rect == null) {
            surfaceView.layout(0, 0, getWidth(), getHeight());
        } else {
            surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("super"));
        setTorch(bundle.getBoolean("torch"));
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", parcelableOnSaveInstanceState);
        bundle.putBoolean("torch", this.f33067v);
        return bundle;
    }

    protected void p(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.zxing_camera_preview);
        int dimension = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.zxing_camera_preview_zxing_framing_rect_width, -1.0f);
        int dimension2 = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.zxing_camera_preview_zxing_framing_rect_height, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.f33064s = new q(dimension, dimension2);
        }
        this.f33049d = typedArrayObtainStyledAttributes.getBoolean(R$styleable.zxing_camera_preview_zxing_use_texture_view, true);
        int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.zxing_camera_preview_zxing_preview_scaling_strategy, -1);
        if (integer == 1) {
            this.f33066u = new l();
        } else if (integer == 2) {
            this.f33066u = new n();
        } else if (integer == 3) {
            this.f33066u = new com.journeyapps.barcodescanner.camera.o();
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void pause() {
        TextureView textureView;
        SurfaceView surfaceView;
        s.a();
        this.f33054i = -1;
        CameraInstance cameraInstance = this.f33046a;
        if (cameraInstance != null) {
            cameraInstance.n();
            this.f33046a = null;
            this.f33052g = false;
        } else {
            this.f33048c.sendEmptyMessage(R$id.zxing_camera_closed);
        }
        if (this.f33061p == null && (surfaceView = this.f33050e) != null) {
            surfaceView.getHolder().removeCallback(this.f33068w);
        }
        if (this.f33061p == null && (textureView = this.f33051f) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.f33058m = null;
        this.f33059n = null;
        this.f33063r = null;
        this.f33053h.f();
        this.f33071z.d();
    }

    public void pauseAndWait() {
        CameraInstance cameraInstance = getCameraInstance();
        pause();
        long jNanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.r() && System.nanoTime() - jNanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    protected boolean q() {
        return this.f33046a != null;
    }

    public void resume() {
        s.a();
        n();
        if (this.f33061p != null) {
            w();
        } else {
            SurfaceView surfaceView = this.f33050e;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.f33068w);
            } else {
                TextureView textureView = this.f33051f;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        x().onSurfaceTextureAvailable(this.f33051f.getSurfaceTexture(), this.f33051f.getWidth(), this.f33051f.getHeight());
                    } else {
                        this.f33051f.setSurfaceTextureListener(x());
                    }
                }
            }
        }
        requestLayout();
        this.f33053h.e(getContext(), this.f33070y);
    }

    protected void s() {
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.f33057l = cameraSettings;
    }

    public void setFramingRectSize(q qVar) {
        this.f33064s = qVar;
    }

    public void setMarginFraction(double d10) {
        if (d10 >= 0.5d) {
            throw new IllegalArgumentException("The margin fraction must be less than 0.5");
        }
        this.f33065t = d10;
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.f33066u = previewScalingStrategy;
    }

    public void setTorch(boolean z10) {
        this.f33067v = z10;
        CameraInstance cameraInstance = this.f33046a;
        if (cameraInstance != null) {
            cameraInstance.D(z10);
        }
    }

    public void setUseTextureView(boolean z10) {
        this.f33049d = z10;
    }

    public CameraPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33049d = false;
        this.f33052g = false;
        this.f33054i = -1;
        this.f33055j = new ArrayList();
        this.f33057l = new CameraSettings();
        this.f33062q = null;
        this.f33063r = null;
        this.f33064s = null;
        this.f33065t = 0.1d;
        this.f33066u = null;
        this.f33067v = false;
        this.f33068w = new b();
        this.f33069x = new c();
        this.f33070y = new d();
        this.f33071z = new e();
        o(context, attributeSet, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33049d = false;
        this.f33052g = false;
        this.f33054i = -1;
        this.f33055j = new ArrayList();
        this.f33057l = new CameraSettings();
        this.f33062q = null;
        this.f33063r = null;
        this.f33064s = null;
        this.f33065t = 0.1d;
        this.f33066u = null;
        this.f33067v = false;
        this.f33068w = new b();
        this.f33069x = new c();
        this.f33070y = new d();
        this.f33071z = new e();
        o(context, attributeSet, i10, 0);
    }
}
