package com.community.oneroom.nu.mm;

import a.e;
import a.h;
import a.k;
import a.l;
import a.m;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.hisavana.common.tracking.TrackingKey;

public final class b extends Activity {

    public static final int f23325d = 0;

    public final Handler f23326a = new Handler(Looper.getMainLooper());

    public LinearLayout f23327b;

    public boolean f23328c;

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i10 = a.f23324a;
        e.a(this);
        LinearLayout linearLayout = new LinearLayout(this);
        this.f23327b = linearLayout;
        linearLayout.setOrientation(1);
        this.f23327b.setBackgroundColor(Color.parseColor("#121212"));
        this.f23327b.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setContentView(this.f23327b);
        d();
        c();
    }

    public final void c() {
        if (isFinishing() || this.f23328c) {
            return;
        }
        k kVar = k.f41q;
        int i10 = kVar.f44c;
        if (i10 != 1) {
            if (i10 == 2) {
                this.f23328c = true;
                new AlertDialog.Builder(this).setTitle("No Internet!").setMessage("Please check your internet is working?").setPositiveButton("RETRY", new m(this)).setCancelable(false).show();
                return;
            } else {
                this.f23326a.postDelayed(new h(this, 2), 250L);
                return;
            }
        }
        this.f23328c = true;
        a.b bVar = kVar.f43b;
        long j10 = getSharedPreferences("support_pref", 0).getLong("success_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        long j11 = bVar.f6d * 1000;
        boolean z10 = j10 != 0 && j11 > 0 && jCurrentTimeMillis >= 0 && jCurrentTimeMillis < j11;
        if (!bVar.f11i || z10) {
            finish();
            return;
        }
        LinearLayout linearLayout = this.f23327b;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(b(20), b(14), b(20), b(10));
        TextView textViewE = e("MovieBox", 18.0f, -1);
        Typeface typeface = Typeface.DEFAULT_BOLD;
        textViewE.setTypeface(typeface);
        textViewE.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        Button buttonA = a("Website", "#444444");
        linearLayout2.addView(textViewE);
        linearLayout2.addView(buttonA);
        ScrollView scrollView = new ScrollView(this);
        scrollView.setFillViewport(true);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setGravity(17);
        linearLayout3.setPadding(b(28), b(80), b(28), b(40));
        TextView textViewE2 = e("We Need Support", 28.0f, -1);
        textViewE2.setTypeface(typeface);
        textViewE2.setGravity(17);
        Button buttonA2 = a("Click Here\nOpen Support Ad", "#0093FF");
        buttonA2.setTextSize(20.0f);
        buttonA2.setPadding(b(24), b(24), b(24), b(24));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(b(280), -2);
        layoutParams.setMargins(0, b(42), 0, b(36));
        buttonA2.setLayoutParams(layoutParams);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.08f, 1.0f, 1.08f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(700L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        buttonA2.startAnimation(scaleAnimation);
        TextView textViewE3 = e("How To Use.\n\n(1) Click on above ADS Button.\n(2) Ads will open in your device's browser.\n(3) Watch ads for more than " + bVar.f5c + " seconds.\n(4) After " + bVar.f5c + " seconds, close the ad and come back to the app.", 16.0f, -1);
        textViewE3.setGravity(17);
        TextView textViewE4 = e("Guys, we know ads are a headache. If we don't put ads then we will have to shut down the app because there is not enough funds to run the app.", 14.0f, -16711936);
        textViewE4.setGravity(17);
        textViewE4.setPadding(0, b(70), 0, 0);
        linearLayout3.addView(textViewE2);
        linearLayout3.addView(buttonA2);
        linearLayout3.addView(textViewE3);
        linearLayout3.addView(textViewE4);
        scrollView.addView(linearLayout3);
        this.f23327b.addView(linearLayout2);
        this.f23327b.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        buttonA2.setOnClickListener(new l(this, bVar, 0));
        buttonA.setOnClickListener(new l(this, bVar, 1));
    }

    public final void d() {
        LinearLayout linearLayout = this.f23327b;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity(17);
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        ProgressBar progressBar = new ProgressBar(this);
        TextView textViewE = e("Loading...", 18.0f, -1);
        textViewE.setGravity(17);
        linearLayout2.addView(progressBar);
        linearLayout2.addView(textViewE);
        this.f23327b.addView(linearLayout2);
    }

    @Override
    public final void onResume() {
        super.onResume();
        int i10 = a.f23324a;
        e.a(this);
        long j10 = getSharedPreferences("support_pref", 0).getLong(TrackingKey.CLICK_TIME, 0L);
        if (j10 == 0) {
            return;
        }
        int i11 = k.f41q.f43b.f5c;
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        getSharedPreferences("support_pref", 0).edit().remove(TrackingKey.CLICK_TIME).apply();
        if (jCurrentTimeMillis >= ((long) i11) * 1000) {
            getSharedPreferences("support_pref", 0).edit().putLong("success_time", System.currentTimeMillis()).apply();
            finish();
            return;
        }
        new AlertDialog.Builder(this).setTitle("Error").setMessage("You must watch ads at least " + i11 + " seconds!").setPositiveButton("RETRY", (DialogInterface.OnClickListener) null).show();
    }

    @Override
    public final void onDestroy() {
        this.f23326a.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    public final TextView e(String str, float f10, int i10) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextSize(f10);
        textView.setTextColor(i10);
        textView.setLineSpacing(b(4), 1.15f);
        return textView;
    }

    public final Button a(String str, String str2) {
        Button button = new Button(this);
        button.setText(str);
        button.setAllCaps(false);
        button.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(str2));
        gradientDrawable.setCornerRadius(b(12));
        button.setBackground(gradientDrawable);
        return button;
    }

    public final int b(int i10) {
        return (int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
