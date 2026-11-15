package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.VideoTouchPlayUIDisplayView;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.raa;

public class VideoTouchPlayUIDisplayView extends VideoTouchPlayUI {
    public LinearLayout M0;
    public View N0;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            VideoTouchPlayUIDisplayView videoTouchPlayUIDisplayView = VideoTouchPlayUIDisplayView.this;
            TouchWindowLayout.f fVar = videoTouchPlayUIDisplayView.b;
            if (fVar != null) {
                fVar.a();
            } else {
                videoTouchPlayUIDisplayView.g0();
            }
        }
    }

    public VideoTouchPlayUIDisplayView(Context context) {
        super(context);
    }

    private View getPlayUIView() {
        VideoPlayerContentView videoPlayerContentView;
        VideoTouchLayoutNew videoTouchLayoutNewF4;
        if (this.N0 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                int i = R.id.play_ui_panel;
                View viewFindViewById = viewGroup.findViewById(i);
                this.N0 = viewFindViewById;
                if (viewFindViewById == null && (viewGroup instanceof VideoPlayerContentView) && (videoTouchLayoutNewF4 = (videoPlayerContentView = (VideoPlayerContentView) viewGroup).f4()) != null) {
                    View viewFindViewById2 = videoPlayerContentView.findViewById(i);
                    this.N0 = viewFindViewById2;
                    if (viewFindViewById2 == null) {
                        this.N0 = videoTouchLayoutNewF4;
                    }
                }
            }
        }
        return this.N0;
    }

    public static boolean i0(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override
    public void D() {
        if (this.b != null) {
            return;
        }
        super.D();
    }

    public final void f0() {
        if (this.M0 == null) {
            View viewInflate = ((ViewStub) findViewById(R.id.bottom_bar_stub)).inflate();
            this.M0 = (LinearLayout) viewInflate;
            if (viewInflate != null) {
                OSSeekbar oSSeekbar = (OSSeekbar) viewInflate.findViewById(R.id.seekbar_video_play_bottom);
                this.G0 = oSSeekbar;
                oSSeekbar.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return VideoTouchPlayUIDisplayView.i0(view, motionEvent);
                    }
                });
                this.q0 = (TextView) viewInflate.findViewById(R.id.tv_video_play_current_progress);
                this.r0 = (TextView) viewInflate.findViewById(R.id.tv_video_play_total_progress);
            }
        }
    }

    public void g0() {
        if (this.b == null) {
            if (this.T) {
                Log.w("VideoTouchPlayUIDisplayView", "can't showDisplayUI inForceHideUIState");
                return;
            }
            View playUIView = getPlayUIView();
            if (playUIView == null) {
                return;
            } else {
                PlayUIDisplayView.showDisplayUI(playUIView);
            }
        }
        KeyEvent.Callback callback = this.N0;
        if (callback instanceof PlayUIDisplayView.c) {
            ((PlayUIDisplayView.c) callback).onPlayUIDisplay();
        }
    }

    public void h0() {
        LinearLayout linearLayout = this.M0;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        b0(false);
    }

    @Override
    public void init(Context context) {
        super.init(context);
        a0(context);
        this.g0 = VideoPlayManager.X();
        View viewInflate = View.inflate(context, R.layout.video_play_display_ui, this);
        d0();
        if (raa.i(this.l)) {
            viewInflate.findViewById(R.id.content_bar).setOnClickListener(new a());
        }
    }

    @Override
    public void j() {
        if (this.b != null) {
            return;
        }
        super.j();
    }

    public void j0() {
        f0();
        d0();
        R(true);
        this.M0.setVisibility(0);
        b0(true);
    }

    public final void k0(boolean z) {
        LinearLayout linearLayout = this.M0;
        if (linearLayout != null) {
            int i = z ? this.z0 : this.u0;
            int i2 = z ? this.x0 : this.s0;
            int i3 = z ? this.y0 : this.t0;
            int i4 = z ? this.A0 : this.w0;
            if (this.I) {
                i3 = z ? this.C0 : this.B0;
                i4 = z ? this.D0 : this.w0;
            }
            linearLayout.setPadding(i, i2, i4, i3);
        }
    }

    @Override
    public void onPlayUIStatusChange(boolean z) {
    }

    @Override
    public void onScreenClick(MotionEvent motionEvent) {
        TouchWindowLayout.f fVar = this.b;
        if (fVar != null) {
            fVar.a();
        } else {
            ThreadUtils.o().post(new Runnable() {
                @Override
                public final void run() {
                    this.b.g0();
                }
            });
        }
    }

    @Override
    public void q(int i, float f) throws Throwable {
        if (i == 8) {
            f0();
            d0();
            R(false);
            LinearLayout linearLayout = this.M0;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            if (!this.d0) {
                this.f0 = true;
                PlayerViewController.d dVar = this.i0;
                if (dVar != null) {
                    dVar.a(true);
                }
            }
            b0(true);
        } else if (i == 16) {
            PlayerViewController.d dVar2 = this.i0;
            if (dVar2 != null) {
                dVar2.a(false);
            }
            LinearLayout linearLayout2 = this.M0;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
            b0(false);
        }
        super.q(i, f);
    }

    @Override
    public void r(int i) {
    }

    @Override
    public void requestedOrientation(boolean z) {
        super.requestedOrientation(z);
        k0(z);
    }

    @Override
    public void setPlayerMediaView(VideoPlayerMediaView videoPlayerMediaView) {
        if (videoPlayerMediaView == null) {
            return;
        }
        this.m0 = videoPlayerMediaView;
    }

    public VideoTouchPlayUIDisplayView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoTouchPlayUIDisplayView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
