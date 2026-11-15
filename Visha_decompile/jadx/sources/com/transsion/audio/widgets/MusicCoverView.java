package com.transsion.audio.widgets;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import com.transsion.audio.R;
import com.transsion.audio.widgets.musicwaveview.MagicWaveView;
import com.transsion.playercommon.widgets.CircleImageView;

public class MusicCoverView extends FrameLayout {
    public static final int CIRCLE_R = 100;
    private CircleImageView circleImageView;
    boolean isPause;
    private ObjectAnimator objectAnimator;
    private MagicWaveView waveView;

    public MusicCoverView(@NonNull Context context) {
        super(context);
        this.isPause = false;
        init(context);
    }

    @SuppressLint({"ResourceType"})
    private void init(Context context) {
        this.waveView = new MagicWaveView(context);
        addView(this.waveView, new FrameLayout.LayoutParams(-1, -1));
        CircleImageView circleImageView = new CircleImageView(context);
        this.circleImageView = circleImageView;
        circleImageView.setImageDrawable(getResources().getDrawable(R.drawable.def_music_cover, context.getTheme()));
        int iD = com.transsion.utils.a.d(context, 200.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iD, iD);
        layoutParams.gravity = 17;
        addView(this.circleImageView, layoutParams);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.circleImageView, Key.ROTATION, 0.0f, 360.0f);
        this.objectAnimator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(30000L);
        this.objectAnimator.setRepeatCount(-1);
        this.objectAnimator.setInterpolator(new LinearInterpolator());
        this.objectAnimator.setRepeatMode(1);
        this.objectAnimator.start();
        setBackgroundColor(0);
    }

    private void resetAnimation() {
        this.objectAnimator.end();
        this.objectAnimator.start();
        setPause(this.isPause);
    }

    public CircleImageView getCircleImageView() {
        return this.circleImageView;
    }

    public MagicWaveView getWaveView() {
        return this.waveView;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.objectAnimator.cancel();
    }

    public void setCoverImg(Drawable drawable) {
        this.circleImageView.setImageDrawable(drawable);
        resetAnimation();
    }

    public void setPause(boolean z) {
        this.isPause = z;
        if (z) {
            this.waveView.pauseDraw();
            this.objectAnimator.pause();
        } else {
            this.waveView.resumeDraw();
            this.objectAnimator.resume();
        }
    }

    public void setCoverImg(Bitmap bitmap) {
        this.circleImageView.setImageBitmap(bitmap);
        resetAnimation();
    }

    public MusicCoverView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isPause = false;
        init(context);
    }

    public MusicCoverView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isPause = false;
        init(context);
    }

    public MusicCoverView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isPause = false;
        init(context);
    }
}
