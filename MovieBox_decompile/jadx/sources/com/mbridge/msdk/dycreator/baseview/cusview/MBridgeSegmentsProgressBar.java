package com.mbridge.msdk.dycreator.baseview.cusview;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.List;

public class MBridgeSegmentsProgressBar extends LinearLayout {

    private final String f33797a;

    private int f33798b;

    private int f33799c;

    private int f33800d;

    private int f33801e;

    private int f33802f;

    private int f33803g;

    private int f33804h;

    private List<ProgressBar> f33805i;

    private TextView f33806j;

    private String f33807k;

    private boolean f33808l;

    public MBridgeSegmentsProgressBar(Context context) {
        super(context);
        this.f33797a = "MBridgeSegmentsProgressBar";
        this.f33799c = 1;
        this.f33800d = 20;
        this.f33801e = 10;
        this.f33802f = 1;
        this.f33803g = -1711276033;
        this.f33804h = -1;
        this.f33805i = new ArrayList();
        this.f33808l = false;
    }

    private void a() {
        Drawable drawable;
        try {
            this.f33808l = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th2) {
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        try {
            if (this.f33799c == 1) {
                setOrientation(1);
                if (TextUtils.isEmpty(this.f33807k)) {
                    this.f33807k = this.f33808l ? "正在播放第%s个，共%s个视频" : "The %s is playing, %s videos.";
                }
            }
            if (this.f33799c == 2) {
                setOrientation(0);
                if (TextUtils.isEmpty(this.f33807k)) {
                    this.f33807k = this.f33808l ? "广告 %s/%s" : "ADS %s/%s";
                }
            }
            this.f33805i.clear();
            removeAllViews();
            setBackground(getBackgroundDrawable());
            TextView textView = new TextView(getContext());
            this.f33806j = textView;
            textView.setTextColor(-1);
            this.f33806j.setTextSize(12.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            this.f33806j.setLayoutParams(layoutParams);
            if (this.f33799c == 1) {
                layoutParams.gravity = 5;
                TextView textView2 = this.f33806j;
                int i10 = this.f33800d;
                textView2.setPadding(i10 / 2, 15, i10 / 2, 5);
            }
            if (this.f33799c == 2) {
                this.f33806j.setGravity(16);
                TextView textView3 = this.f33806j;
                int i11 = this.f33800d;
                textView3.setPadding(i11 / 2, 0, i11 / 2, 0);
            }
            try {
                int iA = g0.a(getContext(), "mbridge_reward_video_icon", "drawable");
                if (g0.a(iA) && (drawable = getContext().getResources().getDrawable(iA)) != null) {
                    drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                    this.f33806j.setCompoundDrawables(drawable, null, null, null);
                    this.f33806j.setCompoundDrawablePadding(5);
                }
            } catch (Throwable th3) {
                o0.b("MBridgeSegmentsProgressBar", th3.getMessage());
            }
            this.f33806j.setText(a(this.f33802f));
            LinearLayout linearLayout = new LinearLayout(getContext());
            linearLayout.setOrientation(0);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 25);
            linearLayout.setLayoutParams(layoutParams2);
            for (int i12 = 0; i12 < this.f33798b; i12++) {
                ProgressBar progressBar = new ProgressBar(getContext(), null, R.attr.progressBarStyleHorizontal);
                progressBar.setMax(100);
                progressBar.setProgress(0);
                progressBar.setProgressDrawable(getSegmentLayerDrawable());
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 20, 1.0f);
                int i13 = this.f33800d;
                layoutParams3.leftMargin = i13 / 2;
                layoutParams3.rightMargin = i13 / 2;
                progressBar.setLayoutParams(layoutParams3);
                linearLayout.addView(progressBar);
                this.f33805i.add(progressBar);
            }
            int i14 = this.f33799c;
            if (i14 == 1) {
                setPadding(15, 10, 15, 25);
                addView(this.f33806j);
                addView(linearLayout);
            } else {
                if (i14 != 2) {
                    addView(linearLayout);
                    return;
                }
                setPadding(15, 0, 15, 25);
                layoutParams2.gravity = 16;
                layoutParams2.weight = 1.0f;
                addView(linearLayout);
                addView(this.f33806j);
            }
        } catch (Throwable th4) {
            o0.b("MBridgeSegmentsProgressBar", th4.getMessage());
        }
    }

    private GradientDrawable getBackgroundDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setGradientType(0);
        gradientDrawable.setOrientation(GradientDrawable.Orientation.TOP_BOTTOM);
        gradientDrawable.setDither(true);
        gradientDrawable.setColors(new int[]{0, 1291845632});
        return gradientDrawable;
    }

    private LayerDrawable getSegmentLayerDrawable() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(this.f33801e);
        gradientDrawable.setColor(this.f33803g);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setCornerRadius(this.f33801e);
        gradientDrawable2.setColor(this.f33804h);
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, new ScaleDrawable(gradientDrawable2, 3, 1.0f, -1.0f)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.progress);
        return layerDrawable;
    }

    public void dismiss() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationEnd(Animation animation) {
                MBridgeSegmentsProgressBar.this.setVisibility(8);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        });
        startAnimation(alphaAnimation);
    }

    public void init(int i10, int i11) {
        this.f33798b = i10;
        this.f33799c = i11;
        a();
    }

    public void setIndicatorText(String str) {
        this.f33807k = str;
    }

    public void setProgress(int i10, int i11) {
        try {
            if (this.f33805i.size() == 0) {
                return;
            }
            if (i11 < this.f33805i.size()) {
                this.f33805i.get(i11).setProgress(i10);
            }
            int i12 = i11 + 1;
            if (i12 > this.f33802f) {
                this.f33802f = i12;
                TextView textView = this.f33806j;
                if (textView != null) {
                    textView.setText(a(i12));
                }
            }
        } catch (Throwable th2) {
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
    }

    public void init(int i10, int i11, int i12, int i13) {
        this.f33798b = i10;
        this.f33799c = i11;
        this.f33804h = i12;
        this.f33803g = i13;
        a();
    }

    public void init(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f33798b = i10;
        this.f33799c = i11;
        this.f33804h = i12;
        this.f33803g = i13;
        this.f33800d = i14;
        this.f33801e = i15;
        a();
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33797a = "MBridgeSegmentsProgressBar";
        this.f33799c = 1;
        this.f33800d = 20;
        this.f33801e = 10;
        this.f33802f = 1;
        this.f33803g = -1711276033;
        this.f33804h = -1;
        this.f33805i = new ArrayList();
        this.f33808l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33797a = "MBridgeSegmentsProgressBar";
        this.f33799c = 1;
        this.f33800d = 20;
        this.f33801e = 10;
        this.f33802f = 1;
        this.f33803g = -1711276033;
        this.f33804h = -1;
        this.f33805i = new ArrayList();
        this.f33808l = false;
    }

    public MBridgeSegmentsProgressBar(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f33797a = "MBridgeSegmentsProgressBar";
        this.f33799c = 1;
        this.f33800d = 20;
        this.f33801e = 10;
        this.f33802f = 1;
        this.f33803g = -1711276033;
        this.f33804h = -1;
        this.f33805i = new ArrayList();
        this.f33808l = false;
    }

    private StringBuilder a(int i10) {
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append(String.format(this.f33807k, Integer.valueOf(i10), Integer.valueOf(this.f33798b)));
        } catch (Throwable th2) {
            sb2.append(this.f33798b);
            sb2.append("videos, the");
            sb2.append(i10);
            sb2.append(" is playing.");
            o0.b("MBridgeSegmentsProgressBar", th2.getMessage());
        }
        return sb2;
    }
}
