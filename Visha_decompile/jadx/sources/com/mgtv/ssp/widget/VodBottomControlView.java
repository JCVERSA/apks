package com.mgtv.ssp.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.log.e;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.b;
import com.mgtv.ssp.utils.c;

public class VodBottomControlView extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, b {
    protected com.mgtv.ssp.control.a a;
    protected ImageView b;
    protected ImageView c;
    a d;
    private TextView e;
    private TextView f;
    private TextView g;
    private ImageView h;
    private LinearLayout i;
    private LinearLayout j;
    private SeekBar k;
    private ProgressBar l;
    private ImageView m;
    private ImageView n;
    private View o;
    private TextView p;
    private View q;
    private TextView r;
    private TextView s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private int y;

    public interface a {
        void a();

        void b();

        void c();
    }

    public VodBottomControlView(@NonNull Context context) {
        super(context);
        this.u = false;
        this.v = false;
        this.w = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.i = (LinearLayout) findViewById(R.id.bottom_container);
        this.j = (LinearLayout) findViewById(R.id.layout_control_bottom);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.k = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.e = (TextView) findViewById(R.id.total_time);
        this.f = (TextView) findViewById(R.id.curr_time);
        this.g = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.m = imageView2;
        imageView2.setOnClickListener(this);
        this.l = (ProgressBar) findViewById(R.id.bottom_progress);
        this.b = (ImageView) findViewById(R.id.play_btn);
        this.c = (ImageView) findViewById(R.id.play_btn_2);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        b();
        this.n = (ImageView) findViewById(R.id.icon_top_back);
        this.o = findViewById(R.id.three_top_dd);
        this.p = (TextView) findViewById(R.id.to_top_detail);
        this.q = findViewById(R.id.topui);
        this.r = (TextView) findViewById(R.id.tv_select_definition);
        this.s = (TextView) findViewById(R.id.tv_select_index);
        this.r.setOnClickListener(this);
        this.s.setOnClickListener(this);
    }

    private void b() {
        if (this.x == 1) {
            this.v = com.hunantv.imgo.util.b.ad();
        }
        if (this.v) {
            this.m.setSelected(true);
        } else {
            this.m.setSelected(false);
        }
    }

    private void c() {
    }

    public boolean a() {
        com.mgtv.ssp.control.a aVar = this.a;
        if (aVar != null) {
            return aVar.isFullScreen();
        }
        return false;
    }

    @Override
    public void attach(@NonNull com.mgtv.ssp.control.a aVar) {
        this.a = aVar;
    }

    public int getLayoutId() {
        return R.layout.mgplayer_layout_vod_control_view;
    }

    @Override
    public View getView() {
        return this;
    }

    public TextView getmDefinitionView() {
        return this.r;
    }

    @Override
    public void onClick(View view) {
        a aVar;
        int id = view.getId();
        if (id == R.id.fullscreen) {
            a aVar2 = this.d;
            if (aVar2 != null) {
                aVar2.a();
                return;
            }
            return;
        }
        if (id == R.id.iv_mute) {
            if (!this.v) {
                this.w = true;
                this.v = true;
                this.m.setSelected(true);
                this.a.setMute(true);
                return;
            }
            this.w = false;
            this.v = false;
            this.m.setSelected(false);
            this.a.setMute(false);
            com.hunantv.imgo.util.b.g(false);
            return;
        }
        if (id == R.id.play_btn || id == R.id.play_btn_2) {
            this.a.togglePlay();
            return;
        }
        if (R.id.tv_select_definition == id) {
            a aVar3 = this.d;
            if (aVar3 != null) {
                aVar3.b();
                return;
            }
            return;
        }
        if (R.id.tv_select_index != id || (aVar = this.d) == null) {
            return;
        }
        aVar.c();
    }

    @Override
    public void onLockStateChanged(boolean z) {
        onVisibilityChanged(!z, (Animation) null);
    }

    @Override
    public void onPlayStateChanged(int i) {
        switch (i) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 11:
            case 12:
                setVisibility(8);
                this.l.setProgress(0);
                this.l.setSecondaryProgress(0);
                this.k.setProgress(0);
                this.k.setSecondaryProgress(0);
                this.b.setVisibility(8);
                this.j.setVisibility(8);
                break;
            case 5:
            case 13:
                setVisibility(8);
                this.b.setVisibility(8);
                this.j.setVisibility(8);
                break;
            case 7:
            case 9:
                this.c.setSelected(false);
                this.b.setSelected(false);
                if (this.y != 11) {
                    this.b.setVisibility(0);
                } else {
                    this.j.setVisibility(0);
                }
                break;
            case 8:
                this.a.startProgress();
                this.b.setSelected(true);
                this.c.setSelected(true);
                if (this.y != 11) {
                    this.b.setVisibility(0);
                } else {
                    this.j.setVisibility(0);
                }
                break;
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
        if (i == 10) {
            this.y = i;
            this.h.setSelected(false);
            this.b.setVisibility(0);
            this.j.setVisibility(8);
        } else if (i == 11) {
            this.y = i;
            this.h.setSelected(true);
            this.b.setVisibility(8);
            this.j.setVisibility(0);
        } else if (i == 14) {
            this.v = true;
            this.m.setSelected(true);
            if (this.x == 1) {
                com.hunantv.imgo.util.b.g(true);
            }
        } else if (i == 15 && !this.w) {
            this.v = false;
            this.m.setSelected(false);
            if (this.x == 1) {
                com.hunantv.imgo.util.b.g(false);
            }
        }
        Activity activityB = c.b(getContext());
        if (activityB == null || !this.a.hasCutout()) {
            return;
        }
        int requestedOrientation = activityB.getRequestedOrientation();
        int cutoutHeight = this.a.getCutoutHeight();
        if (requestedOrientation == 1) {
            this.i.setPadding(0, 0, 0, 0);
            this.l.setPadding(0, 0, 0, 0);
        } else if (requestedOrientation == 0) {
            this.i.setPadding(cutoutHeight, 0, 0, 0);
            this.l.setPadding(cutoutHeight, 0, 0, 0);
        } else if (requestedOrientation == 8) {
            this.i.setPadding(0, 0, cutoutHeight, 0);
            this.l.setPadding(0, 0, cutoutHeight, 0);
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            long videoTotalTime = (((long) this.a.getVideoTotalTime()) * ((long) i)) / ((long) this.k.getMax());
            TextView textView = this.f;
            if (textView != null) {
                textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a((int) videoTotalTime));
            }
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.t = true;
        this.a.stopProgress();
        this.a.stopFadeOut();
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.a.seekTo((int) ((((long) this.a.getVideoTotalTime()) * ((long) seekBar.getProgress())) / ((long) this.k.getMax())));
        this.t = false;
        this.a.startProgress();
        this.a.startFadeOut();
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        e.b("lyzzzzzzzzzz", "onVisibilityChanged:" + z, true);
        if (!z) {
            this.i.setVisibility(8);
            this.q.setVisibility(8);
            if (animation != null) {
                this.i.startAnimation(animation);
            }
            if (this.u) {
                this.l.setVisibility(0);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(300L);
                this.l.startAnimation(alphaAnimation);
            }
            b();
            return;
        }
        if (this.a.getPlayerStatus() == 3 || this.a.getPlayerStatus() == 2 || this.a.getPlayerStatus() == 4) {
            return;
        }
        setVisibility(0);
        this.i.setVisibility(0);
        this.q.setVisibility(0);
        if (animation != null) {
            this.i.startAnimation(animation);
        }
        if (this.u) {
            this.l.setVisibility(8);
        }
        boolean zA = a();
        if (this.x == 2) {
            setTopUiVisible(zA);
        }
        c();
    }

    public void setDefinition(String str) {
        TextView textView = this.r;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override
    public void setProgress(int i, int i2) {
        if (this.t) {
            return;
        }
        SeekBar seekBar = this.k;
        if (seekBar != null) {
            if (i > 0) {
                seekBar.setEnabled(true);
                int max = (int) (((((double) i2) * 1.0d) / ((double) i)) * ((double) this.k.getMax()));
                this.k.setProgress(max);
                this.l.setProgress(max);
            } else {
                seekBar.setEnabled(false);
            }
            int bufferedPercentage = this.a.getBufferedPercentage();
            if (bufferedPercentage >= 95) {
                SeekBar seekBar2 = this.k;
                seekBar2.setSecondaryProgress(seekBar2.getMax());
                ProgressBar progressBar = this.l;
                progressBar.setSecondaryProgress(progressBar.getMax());
            } else {
                int i3 = bufferedPercentage * 10;
                this.k.setSecondaryProgress(i3);
                this.l.setSecondaryProgress(i3);
            }
        }
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i));
        }
        TextView textView2 = this.f;
        if (textView2 != null) {
            textView2.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i2));
        }
    }

    public void setScene(int i) {
        this.x = i;
    }

    public void setTitle(String str) {
        this.g.setText(str);
    }

    public void setTopUiVisible(boolean z) {
        TextView textView = this.g;
        if (textView != null) {
            if (z) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public void setViewCallback(a aVar) {
        this.d = aVar;
    }

    public VodBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = false;
        this.v = false;
        this.w = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.i = (LinearLayout) findViewById(R.id.bottom_container);
        this.j = (LinearLayout) findViewById(R.id.layout_control_bottom);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.k = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.e = (TextView) findViewById(R.id.total_time);
        this.f = (TextView) findViewById(R.id.curr_time);
        this.g = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.m = imageView2;
        imageView2.setOnClickListener(this);
        this.l = (ProgressBar) findViewById(R.id.bottom_progress);
        this.b = (ImageView) findViewById(R.id.play_btn);
        this.c = (ImageView) findViewById(R.id.play_btn_2);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        b();
        this.n = (ImageView) findViewById(R.id.icon_top_back);
        this.o = findViewById(R.id.three_top_dd);
        this.p = (TextView) findViewById(R.id.to_top_detail);
        this.q = findViewById(R.id.topui);
        this.r = (TextView) findViewById(R.id.tv_select_definition);
        this.s = (TextView) findViewById(R.id.tv_select_index);
        this.r.setOnClickListener(this);
        this.s.setOnClickListener(this);
    }

    public VodBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.u = false;
        this.v = false;
        this.w = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.h = imageView;
        imageView.setOnClickListener(this);
        this.i = (LinearLayout) findViewById(R.id.bottom_container);
        this.j = (LinearLayout) findViewById(R.id.layout_control_bottom);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.k = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.e = (TextView) findViewById(R.id.total_time);
        this.f = (TextView) findViewById(R.id.curr_time);
        this.g = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.m = imageView2;
        imageView2.setOnClickListener(this);
        this.l = (ProgressBar) findViewById(R.id.bottom_progress);
        this.b = (ImageView) findViewById(R.id.play_btn);
        this.c = (ImageView) findViewById(R.id.play_btn_2);
        this.b.setOnClickListener(this);
        this.c.setOnClickListener(this);
        b();
        this.n = (ImageView) findViewById(R.id.icon_top_back);
        this.o = findViewById(R.id.three_top_dd);
        this.p = (TextView) findViewById(R.id.to_top_detail);
        this.q = findViewById(R.id.topui);
        this.r = (TextView) findViewById(R.id.tv_select_definition);
        this.s = (TextView) findViewById(R.id.tv_select_index);
        this.r.setOnClickListener(this);
        this.s.setOnClickListener(this);
    }
}
