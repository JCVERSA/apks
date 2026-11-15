package com.hunantv.media.player.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.d.f;
import com.hunantv.media.player.h;
import com.hunantv.media.player.l;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.widget.IVideoView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class d extends SurfaceView implements IMgtvRenderView {
    private c a;
    private f b;
    private boolean c;
    private IVideoView d;
    private MgtvPlayerListener.OnWarningListener e;
    private f.a f;
    private b g;
    private boolean h;

    public static final class a implements IMgtvRenderView.ISurfaceHolder {
        private d a;
        private SurfaceHolder b;
        private f c;
        private int d;

        public a(d dVar, SurfaceHolder surfaceHolder, f fVar, int i) {
            this.a = dVar;
            this.b = surfaceHolder;
            this.c = fVar;
            this.d = i;
        }

        @Override
        public void bindToMediaPlayer(h hVar) {
            if (hVar != null) {
                com.hunantv.media.player.d dVarZ = hVar.z();
                if (dVarZ instanceof com.hunantv.media.player.f.a) {
                    com.hunantv.media.player.f.a aVar = (com.hunantv.media.player.f.a) dVarZ;
                    aVar.a((SurfaceTexture) null);
                    DebugLog.i("MgtvSurfaceRenderView", "bindSurfaceHolder: ISurfaceTextureHolder " + aVar);
                }
                if (this.c != null) {
                    hVar.a(openSurface(), this.d);
                } else {
                    hVar.a(this.b, this.d);
                }
                DebugLog.i("MgtvSurfaceRenderView", "bindSurfaceHolder: mSurfaceHolder " + this.b);
                if (this.b != null) {
                    DebugLog.i("MgtvSurfaceRenderView", "bindSurfaceHolder: mSurface " + this.b.getSurface());
                }
                f fVar = this.c;
                if (fVar != null) {
                    fVar.a(this.b);
                }
            }
        }

        @Override
        public IMgtvRenderView getRenderView() {
            return this.a;
        }

        @Override
        public SurfaceHolder getSurfaceHolder() {
            return this.b;
        }

        @Override
        public SurfaceTexture getSurfaceTexture() {
            return null;
        }

        @Override
        public Surface openSurface() {
            f fVar = this.c;
            if (fVar != null) {
                try {
                    return fVar.d();
                } catch (Exception unused) {
                    this.c.e();
                    this.c = null;
                }
            }
            SurfaceHolder surfaceHolder = this.b;
            if (surfaceHolder == null) {
                return null;
            }
            return surfaceHolder.getSurface();
        }

        @Override
        public void releaseSurface() {
        }

        @Override
        public void bindToMediaPlayer(h hVar, int i) {
            bindToMediaPlayer(hVar);
        }
    }

    public static final class b implements SurfaceHolder.Callback {
        private SurfaceHolder b;
        private boolean c;
        private int d;
        private int e;
        private int f;
        private WeakReference<d> g;
        private f i;
        AtomicInteger a = new AtomicInteger(1);
        private Map<IMgtvRenderView.IRenderCallback, Object> h = new ConcurrentHashMap();

        public b(d dVar) {
            this.g = new WeakReference<>(dVar);
        }

        public void a(IMgtvRenderView.IRenderCallback iRenderCallback) {
            a aVar;
            this.h.put(iRenderCallback, iRenderCallback);
            int i = this.a.get();
            if (this.b != null) {
                aVar = new a(this.g.get(), this.b, this.i, i);
                iRenderCallback.onSurfaceCreated(aVar, this.e, this.f);
                DebugLog.i("MgtvSurfaceRenderView", "onSurfaceCreated: create: " + aVar);
            } else {
                aVar = null;
            }
            if (this.c) {
                if (aVar == null) {
                    aVar = new a(this.g.get(), this.b, this.i, i);
                }
                iRenderCallback.onSurfaceChanged(aVar, this.d, this.e, this.f);
                DebugLog.i("MgtvSurfaceRenderView", "onSurfaceChanged: Screate: " + aVar);
            }
        }

        public void b(IMgtvRenderView.IRenderCallback iRenderCallback) {
            this.h.remove(iRenderCallback);
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            this.b = surfaceHolder;
            this.c = true;
            this.d = i;
            this.e = i2;
            this.f = i3;
            f fVar = this.i;
            if (fVar != null) {
                fVar.b(i2, i3);
            }
            a aVar = new a(this.g.get(), this.b, this.i, this.a.get());
            Iterator<IMgtvRenderView.IRenderCallback> it = this.h.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceChanged(aVar, i, i2, i3);
            }
            DebugLog.i("MgtvSurfaceRenderView", "onSurfaceChanged: change: " + aVar);
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.b = surfaceHolder;
            this.c = false;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            a aVar = new a(this.g.get(), this.b, this.i, this.a.incrementAndGet());
            Iterator<IMgtvRenderView.IRenderCallback> it = this.h.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceCreated(aVar, 0, 0);
            }
            DebugLog.i("MgtvSurfaceRenderView", "onSurfaceCreated: create 2: " + aVar);
            if (this.b != null) {
                DebugLog.i("MgtvSurfaceRenderView", "onSurfaceCreated: create 2 surface: " + this.b.getSurface());
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.b = null;
            this.c = false;
            this.d = 0;
            this.e = 0;
            this.f = 0;
            a aVar = new a(this.g.get(), this.b, this.i, this.a.get());
            Iterator<IMgtvRenderView.IRenderCallback> it = this.h.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceDestroyed(aVar, true);
            }
            DebugLog.i("MgtvSurfaceRenderView", "onSurfaceDestroyed: destroy: " + aVar);
        }

        public void a(f fVar) {
            this.i = fVar;
        }
    }

    public d(Context context, boolean z, MgtvPlayerListener.OnWarningListener onWarningListener, f.a aVar) {
        super(context);
        this.h = false;
        this.c = z;
        this.e = onWarningListener;
        this.f = aVar;
        a(context);
    }

    private void a(Context context) {
        this.a = new c(this);
        this.g = new b(this);
        getHolder().addCallback(this.g);
        getHolder().setType(0);
        this.c = false;
        if (f.k() && this.c) {
            f fVar = new f(getContext());
            this.b = fVar;
            fVar.a(this.e);
            this.b.a(this.f);
            this.b.a();
            this.b.a(0);
            this.b.b();
            this.g.a(this.b);
        }
        setImportantForAccessibility(2);
    }

    @Override
    public void addRenderCallback(IMgtvRenderView.IRenderCallback iRenderCallback) {
        this.g.a(iRenderCallback);
    }

    @Override
    public void bind(IVideoView iVideoView) {
        this.d = iVideoView;
    }

    @Override
    public void bindResizableFrameView(l lVar) {
        c cVar = this.a;
        if (cVar != null) {
            cVar.a(lVar);
        }
    }

    public void finalize() throws Throwable {
        releaseFilter();
        super.finalize();
    }

    @Override
    public IMgtvRenderView.FloatRect getDisplayFloatRect() {
        c cVar = this.a;
        if (cVar != null) {
            return cVar.a();
        }
        return null;
    }

    @Override
    public int getFps() {
        f fVar = this.b;
        if (fVar != null) {
            return fVar.i();
        }
        return -1;
    }

    @Override
    public com.hunantv.media.player.d.a.d getRenderFilter() {
        f fVar = this.b;
        if (fVar != null) {
            return fVar.j();
        }
        return null;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    @TargetApi(14)
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(d.class.getName());
    }

    @Override
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(d.class.getName());
    }

    @Override
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        this.a.c(i, i2);
        setMeasuredDimension(this.a.b(), this.a.c());
        this.a.d(size, size2);
    }

    @Override
    public void releaseFilter() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.e();
            this.b = null;
        }
    }

    @Override
    public void removeRenderCallback(IMgtvRenderView.IRenderCallback iRenderCallback) {
        this.g.b(iRenderCallback);
    }

    @Override
    public void resetFilter() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.f();
        }
    }

    @Override
    public void setAntiAliasing(boolean z) {
    }

    @Override
    public void setAntiShake(boolean z) {
    }

    @Override
    public void setAspectRatio(int i) {
        this.a.b(i);
        requestLayout();
    }

    @Override
    public void setDisplayFloatRect(IMgtvRenderView.FloatRect floatRect) {
        c cVar = this.a;
        if (cVar != null) {
            cVar.a(floatRect);
        }
        requestLayout();
    }

    @Override
    public void setIsInScaleAnim(boolean z) {
        DebugLog.i("MgtvSurfaceRenderView", "setIsInScaleAnim :" + z);
        this.h = z;
    }

    @Override
    public void setManualRotation(int i, int i2, int i3, int i4, int i5) {
    }

    @Override
    public void setRenderFilter(int i) {
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(i);
        }
    }

    @Override
    public void setVideoRotation(int i) {
        DebugLog.e("", "SurfaceView doesn't support rotation (" + i + ")!\n");
    }

    @Override
    public void setVideoSampleAspectRatio(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.a.b(i, i2);
        requestLayout();
    }

    @Override
    public void setVideoSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(i, i2);
        }
        this.a.a(i, i2);
        if (!this.h) {
            getHolder().setFixedSize(i, i2);
        }
        requestLayout();
    }

    @Override
    public boolean shouldWaitForResize() {
        return true;
    }

    @Override
    public void startFps() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.g();
        }
    }

    @Override
    public void stopFps() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.h();
        }
    }
}
