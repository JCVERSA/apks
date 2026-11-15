package com.mgtv.ssp.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.a;
import com.mgtv.ssp.control.b;
import com.mgtv.ssp.utils.c;

public class ImmerBottomControlView extends FrameLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, b {
    protected a a;
    private TextView b;
    private TextView c;
    private LinearLayout d;
    private SeekBar e;
    private boolean f;
    private boolean g;

    public ImmerBottomControlView(@NonNull Context context) {
        super(context);
        this.g = true;
        setVisibility(4);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.e = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
    }

    @Override
    public void attach(@NonNull a aVar) {
        this.a = aVar;
    }

    public int getLayoutId() {
        return R.layout.mgplayer_layout_immer_botttom_control_view;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.fullscreen) {
            this.a.switchFullScreen(true);
        } else if (id == R.id.iv_mute) {
            this.a.togglePlay();
        }
    }

    @Override
    public void onLockStateChanged(boolean z) {
        onVisibilityChanged(!z, (Animation) null);
    }

    @Override
    public void onPlayStateChanged(int i) {
        if (i != 0) {
            if (i == 8) {
                System.out.println("pos = onPlayStateChanged VIDEO_PLAYING ");
                setVisibility(0);
                this.a.startProgress();
                return;
            } else if (i != 12 && i != 2 && i != 3 && i != 4) {
                return;
            }
        }
        setVisibility(4);
        this.e.setProgress(0);
        this.e.setSecondaryProgress(0);
    }

    @Override
    public void onPlayerStateChanged(int i) {
        Activity activityB = c.b(getContext());
        if (activityB == null || !this.a.hasCutout()) {
            return;
        }
        int requestedOrientation = activityB.getRequestedOrientation();
        int cutoutHeight = this.a.getCutoutHeight();
        if (requestedOrientation == 1) {
            this.d.setPadding(0, 0, 0, 0);
            this.e.setPadding(0, 0, 0, 0);
        } else if (requestedOrientation == 0) {
            this.d.setPadding(cutoutHeight, 0, 0, 0);
            this.e.setPadding(cutoutHeight, 0, 0, 0);
        } else if (requestedOrientation == 8) {
            this.d.setPadding(0, 0, cutoutHeight, 0);
            this.e.setPadding(0, 0, cutoutHeight, 0);
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (z) {
            long videoDuration = (((long) this.a.getVideoDuration()) * ((long) i)) / ((long) this.e.getMax());
            if (getContext() != null) {
                this.e.setThumb(getContext().getDrawable(R.drawable.ic_seek_bar));
            }
            TextView textView = this.c;
            if (textView != null) {
                textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a((int) videoDuration));
            }
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        this.f = true;
        this.a.stopProgress();
        this.a.stopFadeOut();
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        this.a.seekTo((int) ((((long) this.a.getVideoDuration()) * ((long) seekBar.getProgress())) / ((long) this.e.getMax())));
        this.f = false;
        this.a.startProgress();
        this.a.startFadeOut();
        this.e.setThumb(null);
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
    }

    @Override
    public void setProgress(int i, int i2) {
        if (this.f) {
            return;
        }
        SeekBar seekBar = this.e;
        if (seekBar != null) {
            if (i > 0) {
                seekBar.setEnabled(true);
                int max = (int) (((((double) i2) * 1.0d) / ((double) i)) * ((double) this.e.getMax()));
                System.out.println("pos = " + max);
                this.e.setProgress(max);
            } else {
                seekBar.setEnabled(false);
            }
            int bufferedPercentage = this.a.getBufferedPercentage();
            if (bufferedPercentage >= 95) {
                SeekBar seekBar2 = this.e;
                seekBar2.setSecondaryProgress(seekBar2.getMax());
            } else {
                this.e.setSecondaryProgress(bufferedPercentage * 10);
            }
        }
        TextView textView = this.b;
        if (textView != null) {
            textView.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i));
        }
        TextView textView2 = this.c;
        if (textView2 != null) {
            textView2.setText(com.mgtv.thirdsdk.playcore.utils.c.a(i2));
        }
    }

    public ImmerBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = true;
        setVisibility(4);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.e = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
    }

    public ImmerBottomControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = true;
        setVisibility(4);
        LayoutInflater.from(getContext()).inflate(getLayoutId(), (ViewGroup) this, true);
        this.d = (LinearLayout) findViewById(R.id.bottom_container);
        this.b = (TextView) findViewById(R.id.total_time);
        this.c = (TextView) findViewById(R.id.curr_time);
        SeekBar seekBar = (SeekBar) findViewById(R.id.seekBar);
        this.e = seekBar;
        seekBar.setOnSeekBarChangeListener(this);
    }
}
