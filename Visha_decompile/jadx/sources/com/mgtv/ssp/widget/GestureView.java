package com.mgtv.ssp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.IGestureComponent;
import com.mgtv.ssp.control.a;

public class GestureView extends FrameLayout implements IGestureComponent {
    private a a;
    private ImageView b;
    private ProgressBar c;
    private TextView d;
    private LinearLayout e;

    public GestureView(@NonNull Context context) {
        super(context);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_gesture_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.iv_icon);
        this.c = (ProgressBar) findViewById(R.id.pro_percent);
        this.d = (TextView) findViewById(R.id.tv_percent);
        this.e = (LinearLayout) findViewById(R.id.center_container);
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
        if (i == 0 || i == 5 || i == 13 || i == 11) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    @Override
    public void onPlayerStateChanged(int i) {
    }

    @Override
    public void onVisibilityChanged(boolean z, Animation animation) {
    }

    @Override
    public void setProgress(int i, int i2) {
    }

    public GestureView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_gesture_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.iv_icon);
        this.c = (ProgressBar) findViewById(R.id.pro_percent);
        this.d = (TextView) findViewById(R.id.tv_percent);
        this.e = (LinearLayout) findViewById(R.id.center_container);
    }

    public GestureView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setVisibility(8);
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_layout_gesture_control_view, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.iv_icon);
        this.c = (ProgressBar) findViewById(R.id.pro_percent);
        this.d = (TextView) findViewById(R.id.tv_percent);
        this.e = (LinearLayout) findViewById(R.id.center_container);
    }
}
