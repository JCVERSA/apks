package com.transsion.widgetslib.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
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
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.widgetslib.widget.OSMaskImageView;
import defpackage.c74;
import defpackage.g24;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\n \u000b*\u0004\u0018\u00010\n0\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0015\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u0010R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u001b\u0010,\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/widgetslib/widget/OSMaskImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "getMaskAnimator", "()Landroid/animation/ValueAnimator;", "Lzfb;", "getSourceImage", "()V", "", "isVisible", "onVisibilityAggregated", "(Z)V", "onDetachedFromWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "animSelected", "Landroid/graphics/RectF;", "b", "Landroid/graphics/RectF;", "mRectF", "Landroid/graphics/Path;", "c", "Landroid/graphics/Path;", "mPath", "Landroid/graphics/Bitmap;", "d", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/graphics/Paint;", "e", "Lyi5;", "getMPaint", "()Landroid/graphics/Paint;", "mPaint", "Lg24;", "f", "Lg24;", "maskDelegate", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSMaskImageView extends AppCompatImageView {

    public RectF mRectF;

    public Path mPath;

    public Bitmap bitmap;

    public final yi5 mPaint;

    public g24 maskDelegate;

    public static final class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            boolean zIsSelected;
            y45.j(animator, "animation");
            super.onAnimationEnd(animator);
            OSMaskImageView oSMaskImageView = OSMaskImageView.this;
            g24 g24Var = oSMaskImageView.maskDelegate;
            Path path = null;
            if (g24Var == null) {
                y45.B("maskDelegate");
                g24Var = null;
            }
            if (g24Var.b()) {
                zIsSelected = OSMaskImageView.this.isSelected();
            } else {
                zIsSelected = !OSMaskImageView.this.isSelected();
            }
            oSMaskImageView.setSelected(zIsSelected);
            g24 g24Var2 = OSMaskImageView.this.maskDelegate;
            if (g24Var2 == null) {
                y45.B("maskDelegate");
                g24Var2 = null;
            }
            g24Var2.setReversed(false);
            Path path2 = OSMaskImageView.this.mPath;
            if (path2 == null) {
                y45.B("mPath");
            } else {
                path = path2;
            }
            path.reset();
            OSMaskImageView.this.invalidate();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            y45.j(animator, "animation");
            super.onAnimationStart(animator);
            if (OSMaskImageView.this.isSelected()) {
                Paint mPaint = OSMaskImageView.this.getMPaint();
                ColorStateList imageTintList = OSMaskImageView.this.getImageTintList();
                mPaint.setColor(imageTintList != null ? imageTintList.getColorForState(new int[0], -7829368) : -7829368);
            } else {
                Paint mPaint2 = OSMaskImageView.this.getMPaint();
                ColorStateList imageTintList2 = OSMaskImageView.this.getImageTintList();
                mPaint2.setColor(imageTintList2 != null ? imageTintList2.getColorForState(new int[]{R.attr.state_selected}, -16776961) : -16776961);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMaskImageView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void b(OSMaskImageView oSMaskImageView, ValueAnimator valueAnimator) {
        y45.j(oSMaskImageView, "this$0");
        y45.j(valueAnimator, "animator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        RectF rectF = null;
        if (!(animatedValue instanceof Float)) {
            animatedValue = null;
        }
        if (animatedValue != null) {
            float fFloatValue = ((Float) animatedValue).floatValue();
            Path path = oSMaskImageView.mPath;
            if (path == null) {
                y45.B("mPath");
                path = null;
            }
            path.reset();
            Path path2 = oSMaskImageView.mPath;
            if (path2 == null) {
                y45.B("mPath");
                path2 = null;
            }
            RectF rectF2 = oSMaskImageView.mRectF;
            if (rectF2 == null) {
                y45.B("mRectF");
                rectF2 = null;
            }
            float fCenterX = rectF2.centerX();
            RectF rectF3 = oSMaskImageView.mRectF;
            if (rectF3 == null) {
                y45.B("mRectF");
            } else {
                rectF = rectF3;
            }
            path2.addCircle(fCenterX, rectF.height(), fFloatValue, Path.Direction.CCW);
            oSMaskImageView.invalidate();
        }
    }

    public final Paint getMPaint() {
        return (Paint) this.mPaint.getValue();
    }

    private final ValueAnimator getMaskAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(new float[0]);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSMaskImageView.b(this.b, valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new a());
        return valueAnimatorOfFloat;
    }

    private final void getSourceImage() {
        Drawable drawable;
        if (getWidth() <= 0 || getHeight() <= 0 || (drawable = getDrawable()) == null) {
            return;
        }
        Bitmap bitmapI = olb.i(drawable);
        this.bitmap = bitmapI;
        if (bitmapI == null) {
            return;
        }
        this.mRectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        this.mPath = new Path();
        ValueAnimator maskAnimator = getMaskAnimator();
        y45.i(maskAnimator, "this.getMaskAnimator()");
        this.maskDelegate = new g24(maskAnimator);
    }

    public final void animSelected() {
        if (this.bitmap == null) {
            getSourceImage();
        }
        if (this.bitmap == null) {
            return;
        }
        g24 g24Var = this.maskDelegate;
        g24 g24Var2 = null;
        if (g24Var == null) {
            y45.B("maskDelegate");
            g24Var = null;
        }
        if (g24Var.c()) {
            g24 g24Var3 = this.maskDelegate;
            if (g24Var3 == null) {
                y45.B("maskDelegate");
            } else {
                g24Var2 = g24Var3;
            }
            g24Var2.d();
            return;
        }
        RectF rectF = this.mRectF;
        if (rectF == null) {
            y45.B("mRectF");
            rectF = null;
        }
        float fWidth = rectF.width();
        RectF rectF2 = this.mRectF;
        if (rectF2 == null) {
            y45.B("mRectF");
            rectF2 = null;
        }
        float fC = wn8.c(fWidth, rectF2.height());
        if (isSelected()) {
            g24 g24Var4 = this.maskDelegate;
            if (g24Var4 == null) {
                y45.B("maskDelegate");
                g24Var4 = null;
            }
            g24Var4.getAnimator().setInterpolator(new PathInterpolator(0.1f, 0.0f, 0.1f, 1.0f));
            g24 g24Var5 = this.maskDelegate;
            if (g24Var5 == null) {
                y45.B("maskDelegate");
                g24Var5 = null;
            }
            g24Var5.getAnimator().setFloatValues(fC, 0.0f);
        } else {
            g24 g24Var6 = this.maskDelegate;
            if (g24Var6 == null) {
                y45.B("maskDelegate");
                g24Var6 = null;
            }
            g24Var6.getAnimator().setInterpolator(new PathInterpolator(0.33f, 0.0f, 0.67f, 1.0f));
            g24 g24Var7 = this.maskDelegate;
            if (g24Var7 == null) {
                y45.B("maskDelegate");
                g24Var7 = null;
            }
            g24Var7.getAnimator().setFloatValues(0.0f, fC);
        }
        g24 g24Var8 = this.maskDelegate;
        if (g24Var8 == null) {
            y45.B("maskDelegate");
        } else {
            g24Var2 = g24Var8;
        }
        g24Var2.getAnimator().start();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            if (bitmap.isRecycled()) {
                bitmap = null;
            }
            if (bitmap != null) {
                bitmap.recycle();
            }
            g24 g24Var = this.maskDelegate;
            if (g24Var == null) {
                y45.B("maskDelegate");
                g24Var = null;
            }
            ValueAnimator animator = g24Var.getAnimator();
            ValueAnimator valueAnimator = animator.isRunning() ? animator : null;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            g24 g24Var = this.maskDelegate;
            if (g24Var == null) {
                y45.B("maskDelegate");
                g24Var = null;
            }
            if (!g24Var.c()) {
                bitmap = null;
            }
            if (bitmap != null) {
                canvas.save();
                if (isSelected()) {
                    Path path = this.mPath;
                    if (path == null) {
                        y45.B("mPath");
                        path = null;
                    }
                    canvas.clipOutPath(path);
                } else {
                    Path path2 = this.mPath;
                    if (path2 == null) {
                        y45.B("mPath");
                        path2 = null;
                    }
                    canvas.clipPath(path2);
                }
                Bitmap bitmapExtractAlpha = bitmap.extractAlpha();
                RectF rectF = this.mRectF;
                if (rectF == null) {
                    y45.B("mRectF");
                    rectF = null;
                }
                canvas.drawBitmap(bitmapExtractAlpha, (Rect) null, rectF, getMPaint());
                canvas.restore();
            }
        }
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
        if (this.bitmap != null) {
            g24 g24Var = this.maskDelegate;
            if (g24Var == null) {
                y45.B("maskDelegate");
                g24Var = null;
            }
            ValueAnimator animator = g24Var.getAnimator();
            if (isVisible) {
                animator = null;
            }
            if (animator != null) {
                ValueAnimator valueAnimator = animator.isRunning() ? animator : null;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSMaskImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSMaskImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSMaskImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mPaint = b.a(new c74() {
            @Override
            public final Paint invoke() {
                Paint paint = new Paint(1);
                paint.setDither(true);
                paint.setFilterBitmap(true);
                return paint;
            }
        });
    }
}
