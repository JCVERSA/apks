package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.t0;

public class MBSplashShakeView extends MBLinearLayout {

    private final String f33701f;

    private final String f33702g;

    private final String f33703h;

    private final String f33704i;

    private final String f33705j;

    private final String f33706k;

    private ImageView f33707l;

    private Animation f33708m;

    public MBSplashShakeView(Context context) {
        super(context);
        this.f33701f = "浏览第三方应用";
        this.f33702g = "View";
        this.f33703h = "打开第三方应用";
        this.f33704i = "Open";
        this.f33705j = "下载第三方应用";
        this.f33706k = "Install";
    }

    private String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "Install":
                case "Open":
                case "View":
                case "下载第三方应用":
                case "打开第三方应用":
                case "浏览第三方应用":
                    return str;
            }
        }
        return getContext().getResources().getConfiguration().locale.getLanguage().contains("zh") ? "浏览第三方应用" : "View";
    }

    private void setBgDrawable(View view) {
        int color = Color.parseColor("#60000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(200);
        view.setBackground(gradientDrawable);
    }

    public void initView(String str) {
        setOrientation(1);
        setGravity(1);
        View imageView = new ImageView(getContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(t0.a(getContext(), 80.0f), t0.a(getContext(), 80.0f)));
        setBgDrawable(imageView);
        this.f33707l = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(t0.a(getContext(), 40.0f), t0.a(getContext(), 40.0f));
        layoutParams.gravity = 17;
        this.f33707l.setLayoutParams(layoutParams);
        this.f33707l.setImageResource(getResources().getIdentifier("mbridge_cm_btn_shake", "drawable", c.m().h()));
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        frameLayout.addView(imageView);
        frameLayout.addView(this.f33707l);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.topMargin = t0.a(getContext(), 10.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setGravity(17);
        textView.setText("Shake your phone");
        textView.setTextSize(16.0f);
        textView.setTextColor(-1);
        String strA = a(str);
        TextView textView2 = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = t0.a(getContext(), 5.0f);
        textView2.setLayoutParams(layoutParams3);
        textView2.setGravity(17);
        textView2.setText(strA);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(-1);
        addView(frameLayout);
        addView(textView);
        addView(textView2);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f33707l != null) {
            a();
        }
    }

    private void a() {
        RotateAnimation rotateAnimation = new RotateAnimation(-10.0f, 10.0f, 1, 0.5f, 1, 0.5f);
        this.f33708m = rotateAnimation;
        rotateAnimation.setDuration(100L);
        this.f33708m.setRepeatMode(2);
        this.f33708m.setRepeatCount(-1);
        this.f33707l.startAnimation(this.f33708m);
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33701f = "浏览第三方应用";
        this.f33702g = "View";
        this.f33703h = "打开第三方应用";
        this.f33704i = "Open";
        this.f33705j = "下载第三方应用";
        this.f33706k = "Install";
    }

    public MBSplashShakeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f33701f = "浏览第三方应用";
        this.f33702g = "View";
        this.f33703h = "打开第三方应用";
        this.f33704i = "Open";
        this.f33705j = "下载第三方应用";
        this.f33706k = "Install";
    }
}
