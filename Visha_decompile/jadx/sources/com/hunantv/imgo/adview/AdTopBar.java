package com.hunantv.imgo.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.mgtv.ssp.R;

public class AdTopBar extends FrameLayout {
    protected FrameLayout a;
    protected TextView b;
    protected TextView c;

    public AdTopBar(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.mgplayer_ad_top_bar, (ViewGroup) this, true);
        this.a = frameLayout;
        this.b = (TextView) frameLayout.findViewById(R.id.adSkip);
        this.c = (TextView) this.a.findViewById(R.id.countTime);
    }

    public void setTvAdCountDownText(int i) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(i + " · ");
        }
    }

    public void setTvAdSkipText(String str) {
        TextView textView = this.b;
        if (textView != null) {
            textView.setText(str + "");
        }
    }

    public AdTopBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public AdTopBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
