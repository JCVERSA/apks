package com.mgtv.ssp.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.b;
import com.mgtv.ssp.utils.c;

public class TitleView extends FrameLayout implements b {
    private com.mgtv.ssp.control.a a;
    private LinearLayout b;
    private TextView c;
    private TextView d;
    private a e;
    private boolean f;

    public static class a extends BroadcastReceiver {
        private ImageView a;

        public a(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            this.a.getDrawable().setLevel((extras.getInt(MediaFormat.KEY_LEVEL) * 100) / extras.getInt("scale"));
        }
    }

    public TitleView(@NonNull Context context) {
        super(context);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_title_control_view, (ViewGroup) this, true);
        this.b = (LinearLayout) findViewById(R.id.title_container);
        ((ImageView) findViewById(R.id.back)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Activity activityB = c.b(TitleView.this.getContext());
                if (activityB == null || !TitleView.this.a.isFullScreen()) {
                    return;
                }
                activityB.setRequestedOrientation(1);
                TitleView.this.a.switchFullScreen(false);
            }
        });
        this.c = (TextView) findViewById(R.id.title);
        this.d = (TextView) findViewById(R.id.sys_time);
        this.e = new a((ImageView) findViewById(R.id.iv_battery));
    }

    @Override
    public void attach(@NonNull com.mgtv.ssp.control.a aVar) {
        this.a = aVar;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f) {
            return;
        }
        getContext().registerReceiver(this.e, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.f = true;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f) {
            getContext().unregisterReceiver(this.e);
            this.f = false;
        }
    }

    @Override
    public void onLockStateChanged(boolean z) {
        if (z) {
            setVisibility(8);
        } else {
            setVisibility(0);
            this.d.setText(c.a());
        }
    }

    @Override
    public void onPlayStateChanged(int i) {
        if (i == 0 || i == 11 || i == 13 || i == 2 || i == 3 || i == 4 || i == 5) {
            setVisibility(8);
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
        if (i == 11) {
            if (this.a.isShowing() && !this.a.isLocked()) {
                setVisibility(0);
                this.d.setText(c.a());
            }
            this.c.setSelected(true);
        } else {
            setVisibility(8);
            this.c.setSelected(false);
        }
        Activity activityB = c.b(getContext());
        if (activityB == null || !this.a.hasCutout()) {
            return;
        }
        int requestedOrientation = activityB.getRequestedOrientation();
        int cutoutHeight = this.a.getCutoutHeight();
        if (requestedOrientation == 1) {
            this.b.setPadding(0, 0, 0, 0);
        } else if (requestedOrientation == 0) {
            this.b.setPadding(cutoutHeight, 0, 0, 0);
        } else if (requestedOrientation == 8) {
            this.b.setPadding(0, 0, cutoutHeight, 0);
        }
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
        if (this.a.isFullScreen()) {
            if (!z) {
                if (getVisibility() == 0) {
                    setVisibility(8);
                    if (animation != null) {
                        startAnimation(animation);
                        return;
                    }
                    return;
                }
                return;
            }
            if (getVisibility() == 8) {
                this.d.setText(c.a());
                setVisibility(0);
                if (animation != null) {
                    startAnimation(animation);
                }
            }
        }
    }

    @Override
    public void setProgress(int i, int i2) {
    }

    public void setTitle(String str) {
        this.c.setText(str);
    }

    public TitleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_title_control_view, (ViewGroup) this, true);
        this.b = (LinearLayout) findViewById(R.id.title_container);
        ((ImageView) findViewById(R.id.back)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Activity activityB = c.b(TitleView.this.getContext());
                if (activityB == null || !TitleView.this.a.isFullScreen()) {
                    return;
                }
                activityB.setRequestedOrientation(1);
                TitleView.this.a.switchFullScreen(false);
            }
        });
        this.c = (TextView) findViewById(R.id.title);
        this.d = (TextView) findViewById(R.id.sys_time);
        this.e = new a((ImageView) findViewById(R.id.iv_battery));
    }

    public TitleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_title_control_view, (ViewGroup) this, true);
        this.b = (LinearLayout) findViewById(R.id.title_container);
        ((ImageView) findViewById(R.id.back)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Activity activityB = c.b(TitleView.this.getContext());
                if (activityB == null || !TitleView.this.a.isFullScreen()) {
                    return;
                }
                activityB.setRequestedOrientation(1);
                TitleView.this.a.switchFullScreen(false);
            }
        });
        this.c = (TextView) findViewById(R.id.title);
        this.d = (TextView) findViewById(R.id.sys_time);
        this.e = new a((ImageView) findViewById(R.id.iv_battery));
    }
}
