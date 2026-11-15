package com.transsion.tools.activities;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.tools.R;
import defpackage.f5;
import defpackage.hb0;
import defpackage.pp3;
import defpackage.w6c;
import java.util.ArrayList;

public class SkinsGuideActivity extends BaseActivity implements View.OnClickListener {
    public LinearLayout N;
    public AnimatorSet O;
    public ValueAnimator P;
    public View Q;
    public View R;
    public View S;
    public View T;
    public View U;
    public SeekBar V;
    public TextView W;
    public ImageView X;

    public class a implements Animator.AnimatorListener {
        public final ImageView b;

        public a(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SkinsGuideActivity.this.V.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.btn_confirm) {
            if (id == R.id.iv_close) {
                finish();
                hb0.markDirect("skin_popup_close");
                return;
            }
            return;
        }
        w6c.s(this, "need_personal_theme_guide", false);
        finish();
        Intent intent = new Intent(this, (Class<?>) SkinsActivity.class);
        intent.putExtra("from", "skin_popup_ok");
        f5.c(intent, this);
        hb0.markDirect("skin_popup_ok");
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activcity_skins_guide);
        Window window = getWindow();
        Resources resources = getResources();
        int i = R.color.black;
        window.setStatusBarColor(resources.getColor(i, getTheme()));
        getWindow().setNavigationBarColor(getResources().getColor(i, getTheme()));
        this.Q = findViewById(R.id.thumb_preview_content);
        this.V = (SeekBar) findViewById(R.id.preview_sb);
        this.N = (LinearLayout) findViewById(R.id.anim_views);
        this.R = findViewById(R.id.ll_video);
        this.S = findViewById(R.id.ll_music);
        this.T = findViewById(R.id.ll_download);
        this.U = findViewById(R.id.ll_more);
        TextView textView = (TextView) findViewById(R.id.btn_confirm);
        this.W = textView;
        textView.setOnClickListener(this);
        this.X = (ImageView) findViewById(R.id.iv_close);
        ((TextView) findViewById(R.id.tv_title)).setText(getString(pp3.c ? R.string.custom_theme_guide_title_pre : R.string.custom_theme_guide_title));
        this.X.setOnClickListener(this);
        r0();
        hb0.markDirect("skin_popup_show");
    }

    public final View q0(int i) {
        if (i == 0) {
            return this.R;
        }
        if (i == 1) {
            return this.S;
        }
        return i == 2 ? this.T : this.U;
    }

    public final void r0() {
        this.N.removeAllViews();
        this.N.setVisibility(0);
        this.V.setThumb(getDrawable(R.drawable.globefish));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(R.drawable.starfish));
        arrayList.add(Integer.valueOf(R.drawable.shark));
        arrayList.add(Integer.valueOf(R.drawable.turtle));
        arrayList.add(Integer.valueOf(R.drawable.seashells));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        layoutParams.width = 0;
        layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.custom_thumb_tab_height);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            ImageView imageView = new ImageView(this);
            imageView.setImageResource(((Integer) arrayList.get(i)).intValue());
            this.N.addView(imageView, layoutParams);
            imageView.setVisibility(4);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "TranslationY", getResources().getDimensionPixelOffset(R.dimen.custom_thumb_tab_height), 0.0f);
            objectAnimatorOfFloat.addListener(new a(imageView));
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, "scaleY", 0.1f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(imageView, "scaleX", 0.1f, 1.0f);
            ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(q0(i), "alpha", 1.0f, 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat2, objectAnimatorOfFloat4);
            animatorSet.setDuration(400L);
            animatorSet.setInterpolator(new AccelerateInterpolator());
            arrayList2.add(animatorSet);
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.O = animatorSet2;
        animatorSet2.playSequentially(arrayList2);
        this.O.setInterpolator(new LinearInterpolator());
        this.O.start();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 60);
        this.P = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(2000L);
        this.P.setInterpolator(new LinearInterpolator());
        this.P.addUpdateListener(new b());
        this.P.start();
    }
}
