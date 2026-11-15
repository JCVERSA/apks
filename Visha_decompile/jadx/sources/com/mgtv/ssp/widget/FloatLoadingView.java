package com.mgtv.ssp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;

public class FloatLoadingView extends FrameLayout {
    private TextView a;
    private TextView b;
    private ImageView c;

    public FloatLoadingView(@NonNull Context context) {
        super(context);
        a();
    }

    private void a() {
        LayoutInflater.from(getContext()).inflate(R.layout.mgplayer_float_loading_view, (ViewGroup) this, true);
        this.a = (TextView) findViewById(R.id.tvLoadingText);
        this.c = (ImageView) findViewById(R.id.ivLoadingLogo);
        this.b = (TextView) findViewById(R.id.tv_net_speed_tips);
    }

    public FloatLoadingView getView() {
        return this;
    }

    public void show(String str, String str2) {
        setVisibility(0);
        a(str, str2);
    }

    public FloatLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public FloatLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    public void a(String str, String str2) {
        TextView textView = this.a;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
