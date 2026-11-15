package com.mgadplus.media;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.UiThread;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgadplus.viewgroup.dynamicview.ScreenOrientationContainer;
import com.mgmi.e.g;
import com.mgmi.model.VASTAd;
import defpackage.b9d;
import defpackage.h2d;
import defpackage.l4d;
import defpackage.s7d;

public class BinderPlayer extends ScreenOrientationContainer implements com.mgadplus.media.a.InterfaceC0156a, b9d {
    public long A;
    public boolean B;
    public boolean C;
    public com.mgmi.e.a.d D;
    public g E;
    public boolean F;
    public VASTAd G;
    public Handler H;
    public boolean I;
    public boolean J;
    public MgtvVideoView x;
    public s7d y;
    public s7d z;

    public class a implements IVideoView.OnStartListener {
        public a() {
        }

        @Override
        public void onStart() {
        }
    }

    public class b implements IVideoView.OnInfoListener {
        public b() {
        }

        @Override
        public boolean onInfo(int i, int i2) {
            if (i == 900) {
                BinderPlayer.this.getClass();
                BinderPlayer binderPlayer = BinderPlayer.this;
                if (binderPlayer.G != null) {
                    com.mgmi.e.a.d dVar = binderPlayer.D;
                    BinderPlayer binderPlayer2 = BinderPlayer.this;
                    dVar.e(binderPlayer2.G, binderPlayer2.E);
                    BinderPlayer.this.D.a(BinderPlayer.this.G, 4, 0, false);
                }
            }
            return false;
        }
    }

    public class c implements IVideoView.OnErrorListener {
        public c() {
        }

        @Override
        public boolean onError(int i, int i2) {
            BinderPlayer binderPlayer = BinderPlayer.this;
            if (binderPlayer.G != null) {
                binderPlayer.D.a(BinderPlayer.this.G, "error=" + i + "errormsg=" + i2, 4, 0);
            }
            BinderPlayer.this.getClass();
            return false;
        }
    }

    public class d implements IVideoView.OnCompletionListener {
        public d() {
        }

        @Override
        public void onCompletion(int i, int i2) {
            BinderPlayer.this.getClass();
        }
    }

    public class e implements IVideoView.OnPauseListener {
        public e() {
        }

        @Override
        public void onPause() {
            BinderPlayer.this.getClass();
        }
    }

    @Override
    public void a() {
    }

    @Override
    public boolean b() {
        return this.C;
    }

    @UiThread
    public void c() {
        if (this.B) {
            MgtvVideoView mgtvVideoView = this.x;
            if (mgtvVideoView != null) {
                mgtvVideoView.pause();
            }
            s7d s7dVar = this.z;
            if (s7dVar != null) {
                s7dVar.b();
            }
            p(true);
            this.B = false;
            r();
        }
    }

    @Override
    public void d() {
        c();
    }

    public void e() {
        if (this.C) {
            this.x.setVolume(0.0f, 0.0f);
        } else {
            this.x.setVolume(1.0f, 1.0f);
        }
    }

    @Override
    public boolean f() {
        MgtvVideoView mgtvVideoView;
        if (!this.B || (mgtvVideoView = this.x) == null) {
            return false;
        }
        return mgtvVideoView.isPlaying();
    }

    @Override
    public void g() {
        if (this.B) {
            s7d s7dVar = this.y;
            if (s7dVar != null) {
                s7dVar.d();
            }
            s7d s7dVar2 = this.z;
            if (s7dVar2 != null) {
                s7dVar2.b();
            }
            if (!this.F) {
                this.x.stop();
                throw null;
            }
            o(getContext());
            s7d s7dVar3 = this.y;
            if (s7dVar3 != null) {
                l4d.g(this, s7dVar3.getControlView());
                l4d.c(this, this.y.getControlView(), new RelativeLayout.LayoutParams(-1, -1));
            }
            s7d s7dVar4 = this.z;
            if (s7dVar4 != null) {
                l4d.g(this, s7dVar4.getControlView());
                l4d.c(this, this.z.getControlView(), new RelativeLayout.LayoutParams(-1, -1));
                this.z.b();
            }
        }
    }

    public boolean getBinding() {
        return this.B;
    }

    public long getCurrentPosition() {
        MgtvVideoView mgtvVideoView;
        if (!this.B || (mgtvVideoView = this.x) == null) {
            return 0L;
        }
        return mgtvVideoView.getCurrentPosition();
    }

    public long getDuration() {
        if (this.I) {
            return this.A;
        }
        MgtvVideoView mgtvVideoView = this.x;
        if (mgtvVideoView != null) {
            return mgtvVideoView.getDuration();
        }
        return 0L;
    }

    @Override
    public void h() {
    }

    public final void o(Context context) {
        if (this.F) {
            this.x = com.mgadplus.media.a.b().a(context, this);
        } else if (this.x == null) {
            this.x = new MgtvVideoView(context, 1, true, false);
        }
        if (!this.J) {
            this.x.setAspectRatio(1);
        }
        this.x.setReportParams(new ReportParams().setVideoType(ReportParams.VideoType.AD_PRE));
        e();
        p(false);
        if (this.x.getParent() != null) {
            l4d.g((ViewGroup) this.x.getParent(), this.x);
        }
        l4d.b(this, this.x);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    public final void p(boolean z) {
        if (!z) {
            this.x.setOnStartListener(new a());
            this.x.setOnInfoListener(new b());
            this.x.setOnErrorListener(new c());
            this.x.setOnCompletionListener(new d());
            this.x.setOnPauseListener(new e());
            return;
        }
        MgtvVideoView mgtvVideoView = this.x;
        if (mgtvVideoView != null) {
            mgtvVideoView.setOnStartListener(null);
            this.x.setOnInfoListener(null);
            this.x.setOnErrorListener(null);
            this.x.setOnCompletionListener(null);
            this.x.setOnPauseListener(null);
            l4d.g((ViewGroup) this.x.getParent(), this.x);
        }
    }

    @Override
    public void pause() {
        MgtvVideoView mgtvVideoView;
        if (!this.B || (mgtvVideoView = this.x) == null) {
            return;
        }
        mgtvVideoView.pause();
    }

    public final void r() {
        this.I = false;
        this.H.removeMessages(20);
    }

    @Override
    public void resume() {
        MgtvVideoView mgtvVideoView;
        if (this.B && h2d.g(getContext()) && (mgtvVideoView = this.x) != null) {
            mgtvVideoView.start();
        }
    }

    public void setIncentiveVideo(boolean z) {
        this.J = z;
    }

    public void setMediaControlVisibility(int i) {
        s7d s7dVar = this.y;
        if (s7dVar != null) {
            l4d.f(s7dVar.getControlView(), i);
        }
    }

    public void setTimeOut(int i) {
        MgtvVideoView mgtvVideoView = this.x;
        if (mgtvVideoView != null) {
            mgtvVideoView.setBufferTimeout(i);
        }
    }

    @Override
    public void a(float f, float f2) {
        MgtvVideoView mgtvVideoView;
        if (!this.B || (mgtvVideoView = this.x) == null) {
            return;
        }
        if (f != 0.0f) {
            this.C = false;
        } else {
            this.C = true;
        }
        mgtvVideoView.setVolume(f, f2);
    }
}
