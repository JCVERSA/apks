package com.hunantv.media.player;

import android.content.Context;
import android.view.View;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.widget.IVideoView;
import java.util.Locale;

public class j {
    public static boolean a = false;
    private IMgtvRenderView d;
    private boolean e;
    private MgtvPlayerListener.OnWarningListener f;
    private com.hunantv.media.player.d.f.a g;
    private String b = "ImgoRendView";
    private int c = 1;
    private MgtvPlayerListener.OnWarningListener h = new MgtvPlayerListener.OnWarningListener() {
        @Override
        public void onTsSkip(String str, int i, int i2) {
        }

        @Override
        public void onWarning(int i, String str, String str2, Object obj) {
            if (i == 801001 && "101".equals(str)) {
                j.a = true;
            }
            if (j.this.f != null) {
                j.this.f.onWarning(i, str, str2, obj);
            }
        }
    };

    public j(Context context) {
        this.d = a(context);
    }

    private void h() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.releaseFilter();
        }
    }

    public IMgtvRenderView a() {
        return this.d;
    }

    public int b() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView == null) {
            return 0;
        }
        if (iMgtvRenderView instanceof com.hunantv.media.player.f.e) {
            return 1;
        }
        boolean z = iMgtvRenderView instanceof com.hunantv.media.player.f.d;
        return 0;
    }

    public View c() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            return iMgtvRenderView.getView();
        }
        return null;
    }

    public boolean d() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            return iMgtvRenderView.shouldWaitForResize();
        }
        return false;
    }

    public IMgtvRenderView.FloatRect e() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            return iMgtvRenderView.getDisplayFloatRect();
        }
        return null;
    }

    public void f() {
        this.f = null;
        h();
    }

    public void g() {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.resetFilter();
        }
    }

    public j(Context context, int i, boolean z, MgtvPlayerListener.OnWarningListener onWarningListener, com.hunantv.media.player.d.f.a aVar) {
        this.e = z;
        this.f = onWarningListener;
        this.g = aVar;
        this.d = a(context, i);
    }

    private IMgtvRenderView a(int i, Context context) {
        boolean z = false;
        if (i == 0) {
            if (this.e && !a) {
                z = true;
            }
            return new com.hunantv.media.player.f.d(context, z, this.h, this.g);
        }
        if (i != 1) {
            DebugLog.e(this.b, String.format(Locale.getDefault(), "invalid render %d\n", Integer.valueOf(i)));
            return null;
        }
        if (this.e && !a) {
            z = true;
        }
        return new com.hunantv.media.player.f.e(context, z, this.h, this.g);
    }

    public void b(int i) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setAspectRatio(i);
        }
    }

    public void c(int i) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setRenderFilter(i);
        }
    }

    public IMgtvRenderView a(Context context) {
        this.c = BuildHelper.isApi14_IceCreamSandwichOrLater() ? 1 : 0;
        return a(this.c, context);
    }

    public void b(int i, int i2) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setVideoSampleAspectRatio(i, i2);
        }
    }

    public void c(boolean z) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setIsInScaleAnim(z);
        }
    }

    public IMgtvRenderView a(Context context, int i) {
        if (BuildHelper.isApi14_IceCreamSandwichOrLater() && i == 1) {
            this.c = 1;
        } else {
            this.c = 0;
        }
        return a(this.c, context);
    }

    public void b(IMgtvRenderView.IRenderCallback iRenderCallback) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.removeRenderCallback(iRenderCallback);
        }
    }

    public void b(boolean z) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setAntiShake(z);
        }
    }

    public void a(int i) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setVideoRotation(i);
        }
    }

    public void a(int i, int i2) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setVideoSize(i, i2);
        }
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setManualRotation(i, i2, i3, i4, i5);
        }
    }

    public void a(IMgtvRenderView.FloatRect floatRect) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setDisplayFloatRect(floatRect);
        }
    }

    public void a(IMgtvRenderView.IRenderCallback iRenderCallback) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.addRenderCallback(iRenderCallback);
        }
    }

    public void a(l lVar) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.bindResizableFrameView(lVar);
        }
    }

    public void a(IVideoView iVideoView) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.bind(iVideoView);
        }
    }

    public void a(boolean z) {
        IMgtvRenderView iMgtvRenderView = this.d;
        if (iMgtvRenderView != null) {
            iMgtvRenderView.setAntiAliasing(z);
        }
    }
}
