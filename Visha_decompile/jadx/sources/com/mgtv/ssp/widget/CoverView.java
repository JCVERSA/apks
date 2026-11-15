package com.mgtv.ssp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.log.e;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.a;
import com.mgtv.ssp.control.b;

public class CoverView extends FrameLayout implements b {
    private a a;
    private ImageView b;
    private ImageView c;
    private ProgressBar d;
    private FrameLayout e;
    private TextView f;
    private TextView g;
    private String h;
    private com.mgtv.ssp.immersion.a.a i;

    public CoverView(@NonNull Context context) {
        super(context);
        this.h = "CoverView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_prepare_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.thumb);
        this.c = (ImageView) findViewById(R.id.start_play);
        this.d = (ProgressBar) findViewById(R.id.loading);
        this.e = (FrameLayout) findViewById(R.id.net_warning_layout);
        e.b(this.h, "CoverView" + hashCode(), true);
        this.f = (TextView) findViewById(R.id.status_btn);
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                CoverView.this.e.setVisibility(8);
                if (CoverView.this.i != null) {
                    CoverView.this.i.a();
                }
                CoverView.this.a.start();
            }
        });
        this.g = (TextView) findViewById(R.id.tv_time);
    }

    @Override
    public void attach(@NonNull a aVar) {
        this.a = aVar;
    }

    @Override
    public View getView() {
        return this;
    }

    @Override
    public void onLockStateChanged(boolean z) {
    }

    @Override
    public void onPlayStateChanged(int i) {
        switch (i) {
            case 0:
            case 12:
                setVisibility(0);
                bringToFront();
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                this.c.setVisibility(0);
                this.b.setVisibility(0);
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 8:
            case 9:
            case 11:
            case 13:
            case 16:
                this.b.setVisibility(8);
                setVisibility(8);
                this.c.setVisibility(8);
                this.e.setVisibility(8);
                this.d.setVisibility(8);
                break;
            case 7:
                if (getVisibility() == 8) {
                    setVisibility(0);
                    bringToFront();
                }
                TextView textView = this.g;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                this.d.setVisibility(0);
                break;
            case 14:
                setVisibility(0);
                this.e.setVisibility(0);
                this.e.bringToFront();
                this.b.setVisibility(0);
                break;
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
    }

    public void setAutoPlayClickListener(com.mgtv.ssp.immersion.a.a aVar) {
        this.i = aVar;
    }

    @Override
    public void setProgress(int i, int i2) {
    }

    public CoverView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = "CoverView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_prepare_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.thumb);
        this.c = (ImageView) findViewById(R.id.start_play);
        this.d = (ProgressBar) findViewById(R.id.loading);
        this.e = (FrameLayout) findViewById(R.id.net_warning_layout);
        e.b(this.h, "CoverView" + hashCode(), true);
        this.f = (TextView) findViewById(R.id.status_btn);
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                CoverView.this.e.setVisibility(8);
                if (CoverView.this.i != null) {
                    CoverView.this.i.a();
                }
                CoverView.this.a.start();
            }
        });
        this.g = (TextView) findViewById(R.id.tv_time);
    }

    public CoverView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = "CoverView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_prepare_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.thumb);
        this.c = (ImageView) findViewById(R.id.start_play);
        this.d = (ProgressBar) findViewById(R.id.loading);
        this.e = (FrameLayout) findViewById(R.id.net_warning_layout);
        e.b(this.h, "CoverView" + hashCode(), true);
        this.f = (TextView) findViewById(R.id.status_btn);
        this.e.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                CoverView.this.e.setVisibility(8);
                if (CoverView.this.i != null) {
                    CoverView.this.i.a();
                }
                CoverView.this.a.start();
            }
        });
        this.g = (TextView) findViewById(R.id.tv_time);
    }
}
