package com.mgtv.ssp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.log.e;
import com.mgtv.ssp.R;
import com.mgtv.ssp.control.a;
import com.mgtv.ssp.control.b;

public class VideoLoadingView extends FrameLayout implements b {
    private FloatLoadingView a;
    private a b;
    private String c;

    public VideoLoadingView(@NonNull Context context) {
        super(context);
        this.c = "VideoLoadingView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_float_container, (ViewGroup) this, true);
        this.a = (FloatLoadingView) findViewById(R.id.float_loading);
    }

    public void a(String str) {
        FloatLoadingView floatLoadingView = this.a;
        if (floatLoadingView != null) {
            floatLoadingView.a(str, "");
        }
    }

    @Override
    public void attach(@NonNull a aVar) {
        this.b = aVar;
    }

    @Override
    @Nullable
    public View getView() {
        return this;
    }

    @Override
    public void onLockStateChanged(boolean z) {
    }

    @Override
    public void onPlayStateChanged(int i) {
        e.b(this.c, "@@@@@onPlayStateChanged VideoLoadingView" + hashCode() + "playState =" + i, true);
        if (i != 0 && i != 9 && i != 3 && i != 4) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                case 14:
                    break;
                default:
                    switch (i) {
                        case 17:
                            bringToFront();
                            setVisibility(0);
                            break;
                    }
            }
        }
        setVisibility(8);
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

    public void show(String str, String str2) {
        FloatLoadingView floatLoadingView = this.a;
        if (floatLoadingView != null) {
            floatLoadingView.show(str, str2);
        }
    }

    public VideoLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = "VideoLoadingView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_float_container, (ViewGroup) this, true);
        this.a = (FloatLoadingView) findViewById(R.id.float_loading);
    }

    public VideoLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = "VideoLoadingView";
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_float_container, (ViewGroup) this, true);
        this.a = (FloatLoadingView) findViewById(R.id.float_loading);
    }
}
