package com.hunantv.media.player.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.player.IMgtvRenderView;
import com.hunantv.media.player.MgtvPlayerListener;
import com.hunantv.media.player.d.f;
import com.hunantv.media.player.h;
import com.hunantv.media.player.l;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.SurfaceUtil;
import com.hunantv.media.utils.FpsStatistic;
import com.hunantv.media.widget.IVideoView;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@TargetApi(14)
public class e extends TextureView implements IMgtvRenderView {
    private c a;
    private f b;
    private boolean c;
    private FpsStatistic d;
    private MgtvPlayerListener.OnWarningListener e;
    private f.a f;
    private b g;

    public static final class a implements IMgtvRenderView.ISurfaceHolder {
        private e a;
        private SurfaceTexture b;
        private Surface c;
        private f d;

        public a(e eVar, SurfaceTexture surfaceTexture, com.hunantv.media.player.f.b bVar, f fVar) {
            this.a = eVar;
            this.b = surfaceTexture;
            this.d = fVar;
        }

        @TargetApi(16)
        public void a(h hVar, int i) {
            StringBuilder sb;
            String str;
            if (hVar == null) {
                return;
            }
            com.hunantv.media.player.d dVarZ = hVar.z();
            if (!(dVarZ instanceof com.hunantv.media.player.f.a) || i >= 0) {
                if (i > 0) {
                    hVar.a(openSurface(), i);
                } else {
                    hVar.a(openSurface());
                }
                DebugLog.i("MgtvTextureRenderView", "bindToMediaPlayer16: openSurface is " + this.c);
                return;
            }
            com.hunantv.media.player.f.a aVar = (com.hunantv.media.player.f.a) dVarZ;
            this.a.g.a(false);
            SurfaceTexture surfaceTextureC = aVar.c();
            if (surfaceTextureC != null) {
                try {
                    DebugLog.i("MgtvTextureRenderView", "bindToMediaPlayer16: setSurfaceTexture mSurfaceT " + this.b);
                    this.a.setSurfaceTexture(surfaceTextureC);
                    if (this.b != surfaceTextureC) {
                        releaseSurface();
                        this.b.release();
                        this.b = surfaceTextureC;
                        this.a.g.a = surfaceTextureC;
                        return;
                    }
                    return;
                } catch (Exception e) {
                    e = e;
                    sb = new StringBuilder();
                    str = "setSurfaceTexture error 1,e:";
                }
            } else {
                try {
                    DebugLog.i("MgtvTextureRenderView", "bindToMediaPlayer16: setSurfaceTexture mSurfaceT(Host) " + this.b);
                    aVar.a(this);
                    aVar.a(this.a.g);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    sb = new StringBuilder();
                    str = "setSurfaceTexture error 2,e:";
                }
            }
            sb.append(str);
            sb.append(e.getMessage());
            DebugLog.e("MgtvTextureRenderView", sb.toString());
        }

        @Override
        public void bindToMediaPlayer(h hVar) {
            bindToMediaPlayer(hVar, -1);
        }

        @Override
        public IMgtvRenderView getRenderView() {
            return this.a;
        }

        @Override
        public SurfaceHolder getSurfaceHolder() {
            return null;
        }

        @Override
        public SurfaceTexture getSurfaceTexture() {
            return this.b;
        }

        @Override
        public Surface openSurface() {
            DebugLog.i("MgtvTextureRenderView", "openSurface: mSurfaceT " + this.b);
            if (this.b == null) {
                return null;
            }
            Surface surface = this.c;
            if (surface != null && surface.isValid()) {
                return this.c;
            }
            f fVar = this.d;
            if (fVar != null) {
                try {
                    this.c = fVar.d();
                } catch (Exception unused) {
                    this.d.e();
                    this.d = null;
                    this.c = SurfaceUtil.create(this.b);
                }
                return this.c;
            }
            Surface surface2 = this.c;
            if (surface2 != null) {
                surface2.release();
                this.c = null;
            }
            this.c = SurfaceUtil.create(this.b);
            return this.c;
        }

        @Override
        public void releaseSurface() {
            try {
                Surface surface = this.c;
                if (surface != null) {
                    SurfaceUtil.release(surface);
                    this.c = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void bindToMediaPlayer(h hVar, int i) {
            if (hVar == null) {
                return;
            }
            a(hVar, i);
            f fVar = this.d;
            if (fVar != null) {
                fVar.a(getSurfaceTexture());
            }
        }
    }

    public static final class b implements TextureView.SurfaceTextureListener, com.hunantv.media.player.f.b {
        private SurfaceTexture a;
        private boolean b;
        private int c;
        private int d;
        private WeakReference<e> h;
        private f j;
        private FpsStatistic k;
        private boolean e = true;
        private boolean f = false;
        private boolean g = false;
        private Map<IMgtvRenderView.IRenderCallback, Object> i = new ConcurrentHashMap();

        public b(e eVar, FpsStatistic fpsStatistic) {
            this.h = new WeakReference<>(eVar);
            this.k = fpsStatistic;
        }

        public void b() {
            DebugLog.i("MgtvTextureRenderView", "didDetachFromWindow()");
            this.g = true;
        }

        public void c() {
            DebugLog.i("MgtvTextureRenderView", "willAttachToWindow()");
            this.f = false;
        }

        public void d() {
            DebugLog.i("MgtvTextureRenderView", "didAttachToWindow()");
            this.g = false;
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            this.a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            f fVar = this.j;
            if (fVar != null) {
                fVar.b(i, i2);
            }
            a aVar = new a(this.h.get(), this.a, this, this.j);
            Iterator<IMgtvRenderView.IRenderCallback> it = this.i.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceCreated(aVar, 0, 0);
            }
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.h.get(), this.a, this, this.j);
            Iterator<IMgtvRenderView.IRenderCallback> it = this.i.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceDestroyed(aVar, this.e);
            }
            DebugLog.i("MgtvTextureRenderView", "onSurfaceDestroyed: destroy: " + this.e);
            return this.e;
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            f fVar = this.j;
            if (fVar != null) {
                fVar.b(i, i2);
            }
            this.a = surfaceTexture;
            this.b = true;
            this.c = i;
            this.d = i2;
            a aVar = new a(this.h.get(), this.a, this, this.j);
            Iterator<IMgtvRenderView.IRenderCallback> it = this.i.keySet().iterator();
            while (it.hasNext()) {
                it.next().onSurfaceChanged(aVar, 0, i, i2);
            }
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            FpsStatistic fpsStatistic = this.k;
            if (fpsStatistic != null) {
                fpsStatistic.onFrame();
            }
        }

        public void b(IMgtvRenderView.IRenderCallback iRenderCallback) {
            this.i.remove(iRenderCallback);
        }

        public void a() {
            DebugLog.i("MgtvTextureRenderView", "willDetachFromWindow()");
            this.f = true;
        }

        @Override
        public void a(SurfaceTexture surfaceTexture) {
            String str;
            String str2;
            String str3;
            if (surfaceTexture == null) {
                DebugLog.i("MgtvTextureRenderView", "releaseSurface: null");
                return;
            }
            if (this.g) {
                if (surfaceTexture != this.a) {
                    str3 = "releaseSurface: didDetachFromWindow(): release different SurfaceTexture";
                } else {
                    if (this.e) {
                        str = "releaseSurface: didDetachFromWindow(): already released by TextureView";
                        DebugLog.i("MgtvTextureRenderView", str);
                    }
                    str3 = "releaseSurface: didDetachFromWindow(): release detached SurfaceTexture";
                }
                DebugLog.i("MgtvTextureRenderView", str3);
                surfaceTexture.release();
            }
            if (this.f) {
                if (surfaceTexture != this.a) {
                    str3 = "releaseSurface: willDetachFromWindow(): release different SurfaceTexture";
                    DebugLog.i("MgtvTextureRenderView", str3);
                    surfaceTexture.release();
                } else if (!this.e) {
                    str2 = "releaseSurface: willDetachFromWindow(): re-attach SurfaceTexture to TextureView";
                    DebugLog.i("MgtvTextureRenderView", str2);
                    a(true);
                } else {
                    str = "releaseSurface: willDetachFromWindow(): will released by TextureView";
                    DebugLog.i("MgtvTextureRenderView", str);
                }
            }
            if (surfaceTexture != this.a) {
                str3 = "releaseSurface: alive: release different SurfaceTexture";
                DebugLog.i("MgtvTextureRenderView", str3);
                surfaceTexture.release();
            } else if (!this.e) {
                str2 = "releaseSurface: alive: re-attach SurfaceTexture to TextureView";
                DebugLog.i("MgtvTextureRenderView", str2);
                a(true);
            } else {
                str = "releaseSurface: alive: will released by TextureView";
                DebugLog.i("MgtvTextureRenderView", str);
            }
        }

        public void a(IMgtvRenderView.IRenderCallback iRenderCallback) {
            a aVar;
            this.i.put(iRenderCallback, iRenderCallback);
            if (this.a != null) {
                aVar = new a(this.h.get(), this.a, this, this.j);
                iRenderCallback.onSurfaceCreated(aVar, this.c, this.d);
                DebugLog.i("MgtvTextureRenderView", "onSurfaceCreated: create: " + aVar);
            } else {
                aVar = null;
            }
            if (this.b) {
                if (aVar == null) {
                    aVar = new a(this.h.get(), this.a, this, this.j);
                }
                iRenderCallback.onSurfaceChanged(aVar, 0, this.c, this.d);
                DebugLog.i("MgtvTextureRenderView", "onSurfaceChanged: change: " + aVar);
            }
        }

        public void a(f fVar) {
            this.j = fVar;
        }

        public void a(boolean z) {
            this.e = z;
        }
    }

    public e(Context context, boolean z, MgtvPlayerListener.OnWarningListener onWarningListener, f.a aVar) {
        super(context);
        this.d = new FpsStatistic();
        this.c = z;
        this.e = onWarningListener;
        this.f = aVar;
        a(context);
    }

    @Override
    public void addRenderCallback(IMgtvRenderView.IRenderCallback iRenderCallback) {
        this.g.a(iRenderCallback);
    }

    @Override
    public void bind(IVideoView iVideoView) {
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(iVideoView);
        }
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
        return fVar != null ? fVar.i() : this.d.getFps();
    }

    @Override
    public com.hunantv.media.player.d.a.d getRenderFilter() {
        f fVar = this.b;
        if (fVar != null) {
            return fVar.j();
        }
        return null;
    }

    public IMgtvRenderView.ISurfaceHolder getSurfaceHolder() {
        return new a(this, this.g.a, this.g, this.b);
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onAttachedToWindow() {
        this.g.c();
        try {
            super.onAttachedToWindow();
        } catch (Exception unused) {
        }
        this.g.d();
    }

    @Override
    public void onDetachedFromWindow() {
        this.g.a();
        try {
            super.onDetachedFromWindow();
        } catch (Exception e) {
            DebugLog.e("MgtvTextureRenderView", "onDetachedFromWindow faild,msg: " + e.getMessage());
        }
        this.g.b();
    }

    @Override
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(e.class.getName());
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(e.class.getName());
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
        } else {
            this.d.resetFps();
        }
    }

    @Override
    public void setAntiAliasing(boolean z) {
        setScaleX(z ? 1.00001f : 1.0f);
    }

    @Override
    public void setAntiShake(boolean z) {
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(z);
        }
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
    }

    @Override
    public void setManualRotation(int i, int i2, int i3, int i4, int i5) {
        DebugLog.i("MgtvTextureRenderView", "setManualRotation,rotation_degree:" + i5);
        int i6 = 90;
        if (i5 > 90) {
            i6 = 180;
            if (i5 > 180) {
                i6 = 270;
                if (i5 > 270) {
                    i6 = TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
                    if (i5 > 360) {
                        i6 = 0;
                    }
                }
            }
        }
        setVideoRotation(i6);
        setVideoSize(i, i2);
        setVideoSampleAspectRatio(i3, i4);
        requestLayout();
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
        this.a.a(i);
        setRotation(i);
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
        requestLayout();
    }

    @Override
    public boolean shouldWaitForResize() {
        return false;
    }

    @Override
    public void startFps() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.g();
        } else {
            this.d.startFps();
        }
    }

    @Override
    public void stopFps() {
        f fVar = this.b;
        if (fVar != null) {
            fVar.h();
        } else {
            this.d.stopFps();
        }
    }

    private void a(Context context) {
        this.a = new c(this);
        this.g = new b(this, this.d);
        this.c = false;
        if (f.k() && this.c && NetPlayConfig.isRenderOpenglOpen()) {
            f fVar = new f(getContext());
            this.b = fVar;
            fVar.a(this.e);
            this.b.a(this.f);
            this.b.a();
            this.b.a(0);
            this.b.b();
            this.g.a(this.b);
        }
        setSurfaceTextureListener(this.g);
        setAntiAliasing(true);
        setImportantForAccessibility(2);
    }
}
