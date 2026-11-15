package com.transsion.playercommon.widgets;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.PathInterpolator;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import defpackage.olb;
import defpackage.s53;
import java.util.Iterator;

public class OSMaskImageView extends AppCompatImageView {
    public final RectF b;
    public final Path c;
    public ValueAnimator d;
    public ValueAnimator e;
    public AnimatorSet f;
    public Paint g;
    public Bitmap h;
    public Bitmap i;
    public boolean j;
    public boolean k;
    public int l;
    public AnimatorListenerAdapter m;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                float fFloatValue = ((Float) animatedValue).floatValue();
                OSMaskImageView.this.c.reset();
                OSMaskImageView.this.c.addCircle(OSMaskImageView.this.b.centerX(), OSMaskImageView.this.b.centerY(), fFloatValue, Path.Direction.CCW);
                OSMaskImageView.this.invalidate();
            }
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public b() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (!(animatedValue instanceof Integer) || OSMaskImageView.this.b.isEmpty()) {
                return;
            }
            OSMaskImageView.this.l = ((Integer) animatedValue).intValue();
            OSMaskImageView.this.invalidate();
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            OSMaskImageView.this.j = false;
            OSMaskImageView.this.setSelected(false);
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Float) {
                float fFloatValue = ((Float) animatedValue).floatValue();
                OSMaskImageView.this.setScaleX(fFloatValue);
                OSMaskImageView.this.setScaleY(fFloatValue);
            }
        }
    }

    public class e extends AnimatorListenerAdapter {
        public e() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            OSMaskImageView.this.k = true;
            OSMaskImageView.this.j = false;
            OSMaskImageView.this.c.reset();
            OSMaskImageView.this.invalidate();
            if (OSMaskImageView.this.m != null) {
                OSMaskImageView.this.m.onAnimationCancel(animator);
            }
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (OSMaskImageView.this.d != null && OSMaskImageView.this.d.isRunning()) {
                OSMaskImageView.this.d.cancel();
            }
            OSMaskImageView oSMaskImageView = OSMaskImageView.this;
            oSMaskImageView.setSelected(!oSMaskImageView.k);
            OSMaskImageView.this.setScaleX(1.0f);
            OSMaskImageView.this.setScaleY(1.0f);
            if (OSMaskImageView.this.m != null) {
                OSMaskImageView.this.m.onAnimationEnd(animator);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            OSMaskImageView.this.setSelected(false);
            OSMaskImageView.this.k = false;
            OSMaskImageView.this.j = true;
            if (OSMaskImageView.this.m != null) {
                OSMaskImageView.this.m.onAnimationStart(animator);
            }
        }
    }

    public OSMaskImageView(Context context) {
        super(context);
        this.b = new RectF();
        this.c = new Path();
        init();
    }

    private void getSourceImage() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        this.h = olb.i(drawable);
        int width = getWidth();
        int height = getHeight();
        Bitmap bitmap = this.h;
        if (bitmap == null || width <= 0 || height <= 0 || bitmap.getWidth() <= 0 || this.h.getHeight() <= 0) {
            return;
        }
        float f = width;
        this.b.set(0.0f, 0.0f, f, height);
        ColorStateList imageTintList = getImageTintList();
        if (imageTintList == null) {
            return;
        }
        int colorForState = imageTintList.getColorForState(new int[]{R.attr.state_selected}, -16711936);
        this.i = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.i);
        float width2 = (f * 1.0f) / this.h.getWidth();
        canvas.scale(width2, width2);
        Paint paint = new Paint(this.g);
        paint.setColor(colorForState);
        canvas.drawBitmap(this.h.extractAlpha(), 0.0f, 0.0f, paint);
        if (this.d == null) {
            j();
        }
        this.d.setFloatValues(0.0f, (float) Math.sqrt(Math.pow((((double) this.b.width()) * 1.0d) / 2.0d, 2.0d) + Math.pow((((double) this.b.height()) * 1.0d) / 2.0d, 2.0d)));
    }

    private void init() {
        Paint paint = new Paint(1);
        this.g = paint;
        paint.setDither(true);
        this.g.setFilterBitmap(true);
        j();
        i();
        k();
    }

    public void cancelSelectedAnimRunning() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void i() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
        this.e = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(130L);
        this.e.setInterpolator(new s53(0.01f, 0.0f, 0.1f, 1.0f));
        this.e.addUpdateListener(new b());
        this.e.addListener(new c());
    }

    public boolean isSelectedAnimRunning() {
        AnimatorSet animatorSet = this.f;
        return animatorSet != null && animatorSet.isRunning();
    }

    public final void j() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.d = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(250L);
        this.d.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.8f, 1.0f));
        this.d.addUpdateListener(new a());
    }

    public final void k() {
        d dVar = new d();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.15f);
        valueAnimatorOfFloat.setDuration(130L);
        valueAnimatorOfFloat.setInterpolator(new s53(0.01f, 0.0f, 0.1f, 1.0f));
        valueAnimatorOfFloat.addUpdateListener(dVar);
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.15f, 1.0f);
        valueAnimatorOfFloat2.setDuration(570L);
        valueAnimatorOfFloat2.setInterpolator(new s53(0.33f, 0.0f, 0.0f, 1.0f));
        valueAnimatorOfFloat2.addUpdateListener(dVar);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f = animatorSet;
        animatorSet.play(valueAnimatorOfFloat2).after(valueAnimatorOfFloat);
        this.f.addListener(new e());
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.d;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ValueAnimator valueAnimator2 = this.e;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        Bitmap bitmap = this.h;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.h.recycle();
            this.h = null;
        }
        Bitmap bitmap2 = this.i;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        this.i.recycle();
        this.i = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.h == null || this.i == null) {
            return;
        }
        if (!this.j) {
            int iSaveLayerAlpha = canvas.saveLayerAlpha(this.b, this.l, 31);
            canvas.drawBitmap(this.i, (Rect) null, this.b, this.g);
            canvas.restoreToCount(iSaveLayerAlpha);
        } else {
            canvas.save();
            canvas.clipPath(this.c);
            canvas.drawBitmap(this.i, (Rect) null, this.b, this.g);
            canvas.restore();
        }
    }

    @Override
    public void setSelected(boolean z) {
        super.setSelected(z);
        this.j = z;
    }

    public void setSelectedAnim(boolean z, AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.h == null) {
            getSourceImage();
        }
        if (this.h == null) {
            return;
        }
        this.m = animatorListenerAdapter;
        if (!z) {
            ValueAnimator valueAnimator = this.e;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                if (this.e == null) {
                    i();
                }
                this.e.end();
                this.e.start();
                return;
            }
            return;
        }
        AnimatorSet animatorSet = this.f;
        if (animatorSet == null || !animatorSet.isRunning()) {
            if (this.d == null) {
                j();
            }
            this.d.end();
            this.d.start();
            if (this.f == null) {
                k();
            }
            Iterator<Animator> it = this.f.getChildAnimations().iterator();
            while (it.hasNext()) {
                it.next().end();
            }
            this.f.start();
        }
    }

    public OSMaskImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new RectF();
        this.c = new Path();
        init();
    }

    public OSMaskImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new RectF();
        this.c = new Path();
        init();
    }

    public void setSelectedAnim(boolean z) {
        setSelectedAnim(z, null);
    }
}
