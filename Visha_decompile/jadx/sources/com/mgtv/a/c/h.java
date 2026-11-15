package com.mgtv.a.c;

import android.content.Context;
import android.view.View;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.widget.IVideoView;
import com.hunantv.media.widget.MgtvVideoView;
import com.mgadplus.mgutil.SourceKitLogger;

public class h extends a {
    protected MgtvVideoView s;

    @Override
    public void a(Context context) {
        SourceKitLogger.a("VideoPlayerCore", "PreRollVideoAd initPlayer");
        MgtvVideoView mgtvVideoView = new MgtvVideoView(context, 1, true, true);
        this.s = mgtvVideoView;
        mgtvVideoView.setDisableAudioFocus(true);
        this.s.setReportParams(new ReportParams().setVideoType(ReportParams.VideoType.AD_PRE));
        this.s.setOnCompletionListener(new IVideoView.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCore", "onCompletion");
                h.this.f();
                e eVar = h.this.q;
                if (eVar != null) {
                    eVar.g();
                }
            }
        });
        this.s.setOnErrorListener(new IVideoView.OnErrorListener() {
            @Override
            public boolean onError(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCore", "onError " + i + " " + i2);
                h hVar = h.this;
                e eVar = hVar.q;
                if (eVar == null) {
                    return false;
                }
                eVar.a(hVar.m, i, i2 + "");
                return false;
            }
        });
        this.s.setOnInfoListener(new IVideoView.OnInfoListener() {
            @Override
            public boolean onInfo(int i, int i2) {
                SourceKitLogger.a("VideoPlayerCore", "onInfo " + i + " " + i2);
                if (i != 900) {
                    return false;
                }
                h.this.e();
                h.this.a(300L);
                e eVar = h.this.q;
                if (eVar == null) {
                    return false;
                }
                eVar.d();
                return false;
            }
        });
        this.s.setOnPauseListener(new IVideoView.OnPauseListener() {
            @Override
            public void onPause() {
                e eVar = h.this.q;
                if (eVar != null) {
                    eVar.f();
                }
            }
        });
        this.s.setOnPreparedListener(new IVideoView.OnPreparedListener() {
            @Override
            public void onPrepared() {
                e eVar = h.this.q;
                if (eVar != null) {
                    eVar.b();
                }
            }
        });
        this.s.setOnStartListener(new IVideoView.OnStartListener() {
            @Override
            public void onStart() {
                e eVar = h.this.q;
                if (eVar != null) {
                    eVar.c();
                }
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
                h hVar = h.this;
                e eVar = hVar.q;
                if (eVar == null || (mgtvVideoView2 = hVar.s) == null) {
                    return;
                }
                eVar.a(mgtvVideoView2.isPlaying(), h.this.s.isPrepared(), h.this.s.isCompletion());
            }
        });
        this.s.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View view) {
                SourceKitLogger.a("VideoPlayerCore", "onViewAttachedToWindow");
            }

            @Override
            public void onViewDetachedFromWindow(View view) {
                SourceKitLogger.a("VideoPlayerCore", "onViewDetachedFromWindow");
                MgtvVideoView mgtvVideoView2 = h.this.s;
                if (mgtvVideoView2 != null) {
                    try {
                        mgtvVideoView2.stop();
                        h.this.s.release();
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    @Override
    public void c() {
        super.c();
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.start();
        }
    }

    @Override
    public void g() {
        e eVar = this.q;
        if (eVar != null) {
            eVar.a(s(), h());
        }
        a(500L);
    }

    @Override
    public int h() {
        MgtvVideoView mgtvVideoView = this.s;
        return mgtvVideoView != null ? mgtvVideoView.getDuration() : this.b;
    }

    @Override
    public boolean i() {
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.isPlaying();
        }
        return super.i();
    }

    @Override
    public void j() {
        super.j();
        SourceKitLogger.a("VideoPlayerCore", "pause");
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.pause();
        }
    }

    @Override
    public void k() {
        super.k();
        SourceKitLogger.a("VideoPlayerCore", "resume");
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.start();
        }
    }

    @Override
    public void l() {
        super.l();
        SourceKitLogger.a("VideoPlayerCore", "stop");
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.stop();
        }
    }

    @Override
    public void q() {
        super.q();
        SourceKitLogger.a("VideoPlayerCore", "release");
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.release();
        }
    }

    public int s() {
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            return mgtvVideoView.getCurrentPosition();
        }
        return 0;
    }

    public void c(int i) {
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView != null) {
            mgtvVideoView.setAspectRatio(i);
        }
    }

    @Override
    public boolean a(String str) {
        super.a(str);
        MgtvVideoView mgtvVideoView = this.s;
        if (mgtvVideoView == null) {
            return true;
        }
        mgtvVideoView.setVideoPath(str);
        return true;
    }

    @Override
    public View a() {
        return this.s;
    }

    @Override
    public void a(boolean z) {
        if (z) {
            MgtvVideoView mgtvVideoView = this.s;
            if (mgtvVideoView != null) {
                mgtvVideoView.setVolume(0.0f, 0.0f);
                return;
            }
            return;
        }
        MgtvVideoView mgtvVideoView2 = this.s;
        if (mgtvVideoView2 != null) {
            mgtvVideoView2.setVolume(1.0f, 1.0f);
        }
    }
}
