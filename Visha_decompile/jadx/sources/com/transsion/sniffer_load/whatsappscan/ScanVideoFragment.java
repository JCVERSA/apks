package com.transsion.sniffer_load.whatsappscan;

import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.transsion.playercommon.utils.VideoOrientationHelper;
import com.transsion.playercommon.whatsapp.WhatsappFile;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.whatsappscan.ScanVideoFragment;
import com.transsion.widgets.VideoPlayerSurfaceView;
import defpackage.e16;
import defpackage.iia;
import defpackage.jxb;
import defpackage.oc2;
import defpackage.ttb;
import defpackage.wna;
import defpackage.zs7;

public class ScanVideoFragment extends BaseScanFragment implements jxb.a {
    public TextView A;
    public zs7 B;
    public VideoPlayerSurfaceView p;
    public ttb q;
    public int s;
    public boolean t;
    public SeekBar u;
    public ImageView v;
    public int w;
    public boolean x;
    public TextView z;
    public Handler r = new Handler();
    public final AudioManager.OnAudioFocusChangeListener y = new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public final void onAudioFocusChange(int i) {
            this.b.d0(i);
        }
    };
    public Runnable C = new Runnable() {
        @Override
        public void run() {
            ScanVideoFragment scanVideoFragment = ScanVideoFragment.this;
            if (scanVideoFragment.q != null) {
                scanVideoFragment.z.setText(wna.c(ScanVideoFragment.this.q.c()));
                ScanVideoFragment.this.A.setText(wna.c(ScanVideoFragment.this.q.getVideoDuration()));
                ScanVideoFragment.this.u.setProgress(ScanVideoFragment.this.q.getVideoDuration() == 0 ? 0 : (ScanVideoFragment.this.q.c() * 100) / ScanVideoFragment.this.q.getVideoDuration());
                ScanVideoFragment scanVideoFragment2 = ScanVideoFragment.this;
                Handler handler = scanVideoFragment2.r;
                if (handler != null) {
                    handler.removeCallbacks(scanVideoFragment2.C);
                    ScanVideoFragment.this.r.postDelayed(this, 500L);
                }
            }
        }
    };

    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        public void lambda$run$0(boolean z) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ScanVideoFragment.this.p.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = z ? oc2.a(ScanVideoFragment.this.getActivity(), 200.0f) : -1;
            ScanVideoFragment.this.p.setLayoutParams(layoutParams);
        }

        @Override
        public void run() {
            final boolean zC = VideoOrientationHelper.c(ScanVideoFragment.this.getContext(), ScanVideoFragment.this.l.getFileUri());
            ScanVideoFragment.this.p.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.lambda$run$0(zC);
                }
            });
        }
    }

    public class a implements SeekBar.OnSeekBarChangeListener {
        public a() {
        }

        @Override
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        }

        @Override
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    public static ScanVideoFragment c0(WhatsappFile whatsappFile) {
        ScanVideoFragment scanVideoFragment = new ScanVideoFragment();
        scanVideoFragment.l = whatsappFile;
        return scanVideoFragment;
    }

    public void d0(int i) {
        ttb ttbVar;
        if ((i == -2 || i == -1) && (ttbVar = this.q) != null && ttbVar.m()) {
            this.q.b(false);
        }
    }

    public void e0(View view) {
        g0();
    }

    public static boolean f0(View view, MotionEvent motionEvent) {
        return true;
    }

    public final void g0() {
        ttb ttbVar = this.q;
        if (ttbVar == null) {
            return;
        }
        if (ttbVar.m()) {
            this.q.b(false);
            e16.o(0);
        } else {
            e16.o(1);
            this.q.i();
        }
    }

    public void h0() {
        if (this.p == null) {
            Log.e("ScanVideoFragment", "playVideo error");
            return;
        }
        if (this.q == null) {
            ttb ttbVar = new ttb(this.mContext, this.p);
            this.q = ttbVar;
            ttbVar.d(this);
        }
        this.q.g(this.l.getFileUri());
        this.q.i();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ttb ttbVar = this.q;
        if (ttbVar != null) {
            ttbVar.h(true);
            this.q = null;
        }
        Handler handler = this.r;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.r = null;
        }
        zs7 zs7Var = this.B;
        if (zs7Var != null) {
            zs7Var.b();
        }
    }

    @Override
    public int onLayoutId() {
        return R.layout.fragment_scan_video;
    }

    @Override
    public void onMediaPlayerStateChange(int i) {
        if (this.w != i) {
            this.w = i;
            boolean z = i == 3;
            if (z) {
                this.B.f();
            }
            this.v.setImageResource(z ? R.drawable.ic_pause_lrc : R.drawable.ic_play_lrc);
            Handler handler = this.r;
            if (handler != null) {
                handler.removeCallbacks(this.C);
                if (z) {
                    this.r.postDelayed(this.C, 500L);
                } else if (i == 6) {
                    this.u.setProgress(100);
                }
            }
        }
    }

    @Override
    public void onPause() {
        ttb ttbVar = this.q;
        if (ttbVar != null && ttbVar.m()) {
            this.t = this.q.m();
            this.s = this.q.c();
            this.q.q(false);
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        ttb ttbVar = this.q;
        if (ttbVar == null || this.s <= 0) {
            return;
        }
        ttbVar.q(true);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable("scan_whatsapp_file_video", this.l);
        super.onSaveInstanceState(bundle);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.B = new zs7(this.mContext, this.y);
        if (bundle != null) {
            this.l = (WhatsappFile) bundle.getParcelable("scan_whatsapp_file_video");
        }
        VideoPlayerSurfaceView videoPlayerSurfaceView = (VideoPlayerSurfaceView) view.findViewById(R.id.player_surface_view);
        this.p = videoPlayerSurfaceView;
        videoPlayerSurfaceView.getHolder().setKeepScreenOn(true);
        this.u = (SeekBar) view.findViewById(R.id.play_progress);
        this.v = (ImageView) view.findViewById(R.id.play_pause);
        this.z = (TextView) view.findViewById(R.id.play_time);
        this.A = (TextView) view.findViewById(R.id.duration);
        this.v.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.e0(view2);
            }
        });
        this.u.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return ScanVideoFragment.f0(view2, motionEvent);
            }
        });
        this.u.setOnSeekBarChangeListener(new a());
        iia.a(new AnonymousClass3());
    }

    @Override
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        ttb ttbVar = this.q;
        if (ttbVar == null || this.x == z) {
            return;
        }
        this.x = z;
        if (z) {
            return;
        }
        ttbVar.h(true);
        this.q.r(0);
        this.u.setProgress(0);
    }
}
