package com.mgtv.a.c;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.ads.api.render.MySimpleDraweeView;
import defpackage.l4d;

public class i extends h {
    private FrameLayout t;

    @Override
    public void a(Context context) {
        SourceKitLogger.a("VideoPlayerCoverCore", "PreRollVideoAd initPlayer");
        this.t = new FrameLayout(context);
        this.p = new MySimpleDraweeView(context);
        MgtvVideoView mgtvVideoView = new MgtvVideoView(context, 1, true, true);
        this.s = mgtvVideoView;
        mgtvVideoView.setDisableAudioFocus(true);
        this.s.setReportParams(new ReportParams().setVideoType(ReportParams.VideoType.AD_PRE));
        this.s.setOnCompletionListener(new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCoverCore", "onCompletion");
                i.this.f();
                e eVar = i.this.q;
                if (eVar != null) {
                    eVar.g();
                }
            }
        });
        this.s.setOnErrorListener(new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCoverCore", "onError " + i + " " + i2);
                i iVar = i.this;
                e eVar = iVar.q;
                if (eVar == null) {
                    return false;
                }
                eVar.a(iVar.m, i, i2 + "");
                return false;
            }
        });
        this.s.setOnInfoListener(new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCoverCore", "onInfo " + i + " " + i2);
                if (i != 900) {
                    return false;
                }
                i.this.e();
                i.this.a(300L);
                e eVar = i.this.q;
                if (eVar != null) {
                    eVar.d();
                }
                l4d.f(i.this.p, 8);
                return false;
            }
        });
        this.s.setOnPauseListener(new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                e eVar = i.this.q;
                if (eVar != null) {
                    eVar.f();
                }
            }
        });
        this.s.setOnPreparedListener(new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                e eVar = i.this.q;
                if (eVar != null) {
                    eVar.b();
                }
            }
        });
        this.s.setOnStartListener(new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                e eVar = i.this.q;
                if (eVar != null) {
                    eVar.c();
                }
                l4d.f(i.this.p, 8);
            }
        });
        this.s.setOnVideoSizeChangedListener(new IVideoView.OnVideoSizeChangedListener() {
            @Override
            public void onVideoSizeChanged(int i, int i2) {
            }
        });
        this.s.setOnUpdateStatusListener(new IVideoView.OnUpdateStatusListener() {
            @Override
            public void onUpdateStatus() {
                MgtvVideoView mgtvVideoView2;
                i iVar = i.this;
                e eVar = iVar.q;
                if (eVar == null || (mgtvVideoView2 = iVar.s) == null) {
                    return;
                }
                eVar.a(mgtvVideoView2.isPlaying(), i.this.s.isPrepared(), i.this.s.isCompletion());
            }
        });
        this.t.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View view) {
                SourceKitLogger.a("VideoPlayerCoverCore", "onViewAttachedToWindow");
            }

            @Override
            public void onViewDetachedFromWindow(View view) {
                SourceKitLogger.a("VideoPlayerCoverCore", "onViewDetachedFromWindow");
                i iVar = i.this;
                if (iVar.s != null) {
                    try {
                        l4d.g(iVar.t, i.this.s);
                        i.this.s.stop();
                        i.this.s.release();
                    } catch (Throwable unused) {
                    }
                }
            }
        });
        l4d.c(this.t, this.s, new FrameLayout.LayoutParams(-1, -1));
        l4d.c(this.t, this.p, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override
    public View a() {
        return this.t;
    }

    @Override
    public boolean a(String str) {
        super.a(str);
        this.n = this.o.j();
        r();
        return true;
    }
}
