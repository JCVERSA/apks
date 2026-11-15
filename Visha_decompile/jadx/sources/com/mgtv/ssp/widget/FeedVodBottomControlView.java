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

public class FeedVodBottomControlView extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, b {
    protected com.mgtv.ssp.control.a a;
    protected ImageView b;
    a c;
    private TextView d;
    private TextView e;
    private TextView f;
    private ImageView g;
    private LinearLayout h;
    private SeekBar i;
    private ProgressBar j;
    private ImageView k;
    private ImageView l;
    private View m;
    private TextView n;
    private View o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private int t;

    public interface a {
        void a();

        void a(int i);

        void b(int i);

        void c(int i);
    }

    public FeedVodBottomControlView(@NonNull Context context) {
        super(context);
        this.q = false;
        this.r = false;
        this.s = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.g = imageView;
        imageView.setOnClickListener(this);
        this.h = (LinearLayout) findViewById(R.id.bottom_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.i = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.d = (TextView) findViewById(R.id.total_time);
        this.e = (TextView) findViewById(R.id.curr_time);
        this.f = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.k = imageView2;
        imageView2.setOnClickListener(this);
        this.j = (ProgressBar) findViewById(R.id.bottom_progress);
        ImageView imageView3 = (ImageView) findViewById(R.id.play_btn);
        this.b = imageView3;
        imageView3.setOnClickListener(this);
        b();
        this.l = (ImageView) findViewById(R.id.icon_top_back);
        this.m = findViewById(R.id.three_top_dd);
        this.n = (TextView) findViewById(R.id.to_top_detail);
        this.o = findViewById(R.id.topui);
    }

    private void b() {
        if (this.t == 1) {
            this.r = com.hunantv.imgo.util.b.ad();
        }
        if (this.r) {
            this.k.setSelected(true);
        } else {
            this.k.setSelected(false);
        }
    }

    private void c() {
    }

    public void a(final int i, boolean z, boolean z2) {
        ImageView imageView = this.l;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
                this.l.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        a aVar = FeedVodBottomControlView.this.c;
                        if (aVar != null) {
                            aVar.c(i);
                        }
                    }
                });
            } else {
                imageView.setVisibility(8);
            }
        }
        TextView textView = this.n;
        if (textView != null) {
            if (z2 && z) {
                textView.setVisibility(0);
                this.n.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        a aVar = FeedVodBottomControlView.this.c;
                        if (aVar != null) {
                            aVar.a(i);
                        }
                    }
                });
            } else {
                textView.setVisibility(8);
            }
        }
        View view = this.m;
        if (view != null) {
            if (!z) {
                view.setVisibility(8);
            } else {
                view.setVisibility(0);
                this.m.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view2) {
                        a aVar = FeedVodBottomControlView.this.c;
                        if (aVar != null) {
                            aVar.b(i);
                        }
                    }
                });
            }
        }
    }

    @Override
    public void attach(@NonNull com.mgtv.ssp.control.a aVar) {
        this.a = aVar;
    }

    public int getLayoutId() {
        return R.layout.mgplayer_layout_feed_vod_control_view;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.fullscreen) {
            a aVar = this.c;
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        if (id != R.id.iv_mute) {
            if (id == R.id.play_btn) {
                this.a.togglePlay();
            }
        } else {
            if (!this.r) {
                this.s = true;
                this.r = true;
                this.k.setSelected(true);
                this.a.setMute(true);
                return;
            }
            this.s = false;
            this.r = false;
            this.k.setSelected(false);
            this.a.setMute(false);
            com.hunantv.imgo.util.b.g(false);
        }
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
                this.j.setProgress(0);
                this.j.setSecondaryProgress(0);
                this.i.setProgress(0);
                this.i.setSecondaryProgress(0);
                this.b.setVisibility(8);
                break;
            case 5:
            case 13:
                setVisibility(8);
                this.b.setVisibility(8);
                break;
            case 7:
            case 9:
                this.b.setVisibility(0);
                this.b.setSelected(false);
                break;
            case 8:
                this.a.startProgress();
                this.b.setSelected(true);
                this.b.setVisibility(0);
                break;
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
        if (i == 10) {
            this.g.setSelected(false);
        } else if (i == 11) {
            this.g.setSelected(true);
        } else if (i == 14) {
            this.r = true;
            this.k.setSelected(true);
            if (this.t == 1) {
                com.hunantv.imgo.util.b.g(true);
            }
        } else if (i == 15 && !this.s) {
            this.r = false;
            this.k.setSelected(false);
            if (this.t == 1) {
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
            this.h.setPadding(0, 0, 0, 0);
            this.j.setPadding(0, 0, 0, 0);
        } else if (requestedOrientation == 0) {
            this.h.setPadding(cutoutHeight, 0, 0, 0);
            this.j.setPadding(cutoutHeight, 0, 0, 0);
        } else if (requestedOrientation == 8) {
            this.h.setPadding(0, 0, cutoutHeight, 0);
            this.j.setPadding(0, 0, cutoutHeight, 0);
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            long videoTotalTime = (((long) this.a.getVideoTotalTime()) * ((long) i)) / ((long) this.i.getMax());
            TextView textView = this.e;
            if (textView != null) {
                textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a((int) videoTotalTime));
            }
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.p = true;
        this.a.stopProgress();
        this.a.stopFadeOut();
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.a.seekTo((int) ((((long) this.a.getVideoTotalTime()) * ((long) seekBar.getProgress())) / ((long) this.i.getMax())));
        this.p = false;
        this.a.startProgress();
        this.a.startFadeOut();
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        e.b("lyzzzzzzzzzz", "onVisibilityChanged:" + z, true);
        if (!z) {
            this.h.setVisibility(8);
            this.o.setVisibility(8);
            if (animation != null) {
                this.h.startAnimation(animation);
            }
            if (this.q) {
                this.j.setVisibility(0);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(300L);
                this.j.startAnimation(alphaAnimation);
            }
            b();
            return;
        }
        if (this.a.getPlayerStatus() == 3 || this.a.getPlayerStatus() == 2 || this.a.getPlayerStatus() == 4) {
            return;
        }
        setVisibility(0);
        this.h.setVisibility(0);
        this.o.setVisibility(0);
        if (animation != null) {
            this.h.startAnimation(animation);
        }
        if (this.q) {
            this.j.setVisibility(8);
        }
        boolean zA = a();
        if (this.t == 2) {
            setTopUiVisible(zA);
        }
        c();
    }

    @Override
    public void setProgress(int i, int i2) {
        if (this.p) {
            return;
        }
        SeekBar seekBar = this.i;
        if (seekBar != null) {
            if (i > 0) {
                seekBar.setEnabled(true);
                int max = (int) (((((double) i2) * 1.0d) / ((double) i)) * ((double) this.i.getMax()));
                this.i.setProgress(max);
                this.j.setProgress(max);
            } else {
                seekBar.setEnabled(false);
            }
            int bufferedPercentage = this.a.getBufferedPercentage();
            if (bufferedPercentage >= 95) {
                SeekBar seekBar2 = this.i;
                seekBar2.setSecondaryProgress(seekBar2.getMax());
                ProgressBar progressBar = this.j;
                progressBar.setSecondaryProgress(progressBar.getMax());
            } else {
                int i3 = bufferedPercentage * 10;
                this.i.setSecondaryProgress(i3);
                this.j.setSecondaryProgress(i3);
            }
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i));
        }
        TextView textView2 = this.e;
        if (textView2 != null) {
            textView2.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i2));
        }
    }

    public void setScene(int i) {
        this.t = i;
    }

    public void setTitle(String str) {
        this.f.setText(str);
    }

    public void setTopUiVisible(boolean z) {
        ImageView imageView = this.l;
        if (imageView != null) {
            if (z) {
                imageView.setVisibility(0);
                this.l.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        a aVar = FeedVodBottomControlView.this.c;
                        if (aVar != null) {
                            aVar.c(0);
                        }
                    }
                });
            } else {
                imageView.setVisibility(8);
            }
        }
        TextView textView = this.f;
        if (textView != null) {
            if (z) {
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public void setViewCallback(a aVar) {
        this.c = aVar;
    }

    public boolean a() {
        com.mgtv.ssp.control.a aVar = this.a;
        if (aVar != null) {
            return aVar.isFullScreen();
        }
        return false;
    }

    public FeedVodBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.q = false;
        this.r = false;
        this.s = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.g = imageView;
        imageView.setOnClickListener(this);
        this.h = (LinearLayout) findViewById(R.id.bottom_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.i = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.d = (TextView) findViewById(R.id.total_time);
        this.e = (TextView) findViewById(R.id.curr_time);
        this.f = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.k = imageView2;
        imageView2.setOnClickListener(this);
        this.j = (ProgressBar) findViewById(R.id.bottom_progress);
        ImageView imageView3 = (ImageView) findViewById(R.id.play_btn);
        this.b = imageView3;
        imageView3.setOnClickListener(this);
        b();
        this.l = (ImageView) findViewById(R.id.icon_top_back);
        this.m = findViewById(R.id.three_top_dd);
        this.n = (TextView) findViewById(R.id.to_top_detail);
        this.o = findViewById(R.id.topui);
    }

    public FeedVodBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = false;
        this.r = false;
        this.s = false;
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R.id.fullscreen);
        this.g = imageView;
        imageView.setOnClickListener(this);
        this.h = (LinearLayout) findViewById(R.id.bottom_container);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.i = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
        this.d = (TextView) findViewById(R.id.total_time);
        this.e = (TextView) findViewById(R.id.curr_time);
        this.f = (TextView) findViewById(R.id.tv_title);
        ImageView imageView2 = (ImageView) findViewById(R.id.iv_mute);
        this.k = imageView2;
        imageView2.setOnClickListener(this);
        this.j = (ProgressBar) findViewById(R.id.bottom_progress);
        ImageView imageView3 = (ImageView) findViewById(R.id.play_btn);
        this.b = imageView3;
        imageView3.setOnClickListener(this);
        b();
        this.l = (ImageView) findViewById(R.id.icon_top_back);
        this.m = findViewById(R.id.three_top_dd);
        this.n = (TextView) findViewById(R.id.to_top_detail);
        this.o = findViewById(R.id.topui);
    }
}
