package com.mgmi.ViewGroup;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.mgmi.R;

public class MgmiAdTopBar extends FrameLayout {
    protected LinearLayout a;
    protected TextView b;
    protected TextView c;
    protected ImageView d;

    public MgmiAdTopBar(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.mgmiplayer_ad_top_bar, (ViewGroup) this, true);
        this.a = (LinearLayout) frameLayout.findViewById(R.id.layout_countdown);
        this.b = (TextView) frameLayout.findViewById(R.id.adSkip);
        this.c = (TextView) frameLayout.findViewById(R.id.countTime);
        this.d = (ImageView) frameLayout.findViewById(R.id.ivAdVoice);
    }

    public void setCountDownVisible(int i) {
        LinearLayout linearLayout = this.a;
        if (linearLayout != null) {
            linearLayout.setVisibility(i);
        }
    }

    public void setIvAdVoiceSrc(int i) {
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setImageResource(i);
        }
    }

    public void setIvAdVoiceVisible(int i) {
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setVisibility(i);
        }
    }

    public void setOnCountDownClickListener(View.OnClickListener onClickListener) {
        LinearLayout linearLayout = this.a;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(onClickListener);
        }
    }

    public void setOnVoiceClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.d;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public void setTvAdCountDownText(String str) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTvAdSkipText(String str) {
        TextView textView = this.b;
        if (textView != null) {
            textView.setTextColor(Color.parseColor("#FF4500"));
            this.b.setText(str + "");
        }
    }

    public MgmiAdTopBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public MgmiAdTopBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
