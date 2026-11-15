package com.transsion.widgetslib.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSLoadingView;
import defpackage.c74;
import defpackage.eb7;
import defpackage.olb;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b*\u0018\u0000 |2\u00020\u0001:\u0001}B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\rJ\u000f\u0010\u0014\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0014\u0010\rJ\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J7\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!H\u0014¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010'J\u0015\u0010*\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u000b¢\u0006\u0004\b,\u0010\rJ\r\u0010-\u001a\u00020\u0019¢\u0006\u0004\b-\u0010.J\r\u0010/\u001a\u00020\u000b¢\u0006\u0004\b/\u0010\rJ\u0015\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u0006¢\u0006\u0004\b1\u0010'J\u000f\u00102\u001a\u00020\u000bH\u0014¢\u0006\u0004\b2\u0010\rJ\u001f\u00105\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0006H\u0014¢\u0006\u0004\b5\u00106R\u0016\u00109\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0016\u0010A\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010@R\u0016\u0010B\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u00108R\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010<\u001a\u0004\bE\u0010FR\u001b\u0010J\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010<\u001a\u0004\bI\u0010FR\u001b\u0010M\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010<\u001a\u0004\bL\u0010FR\u001b\u0010O\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010<\u001a\u0004\bN\u0010FR\u0016\u0010P\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00108R\u0016\u0010Q\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u00108R\u0016\u0010S\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010@R#\u0010Y\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010<\u001a\u0004\bW\u0010XR#\u0010\\\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010<\u001a\u0004\b[\u0010XR#\u0010_\u001a\n U*\u0004\u0018\u00010T0T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b]\u0010<\u001a\u0004\b^\u0010XR\u0016\u0010a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010@R\u0016\u0010c\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u00108R\u0016\u0010e\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u00108R\u0016\u0010g\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u00108R\u0016\u0010i\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u00108R\u0014\u0010k\u001a\u00020(8\u0002X\u0082D¢\u0006\u0006\n\u0004\bj\u00108R\u0016\u0010m\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u00108R\u0016\u0010o\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u00108R\u0016\u0010q\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u00108R\"\u0010w\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010.\"\u0004\bu\u0010vR\u0016\u0010y\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010sR\u0016\u0010{\u001a\u00020\u00068\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bz\u0010@¨\u0006~"}, d2 = {"Lcom/transsion/widgetslib/view/OSLoadingView;", "Landroid/view/View;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "Lzfb;", "j", "()V", "", "getDistance", "()D", "d", "e", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "k", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "runningType", "setRunningType", "(I)V", "", "percent", "setPullPercent", "(F)V", "release", "isRunning", "()Z", "startLoadingAnimation", "dotColorRes", "setDotColor", "onDetachedFromWindow", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "b", "F", "mOutCircleRadiusStatic", "Landroid/graphics/Paint;", "c", "Lyi5;", "getMPaint", "()Landroid/graphics/Paint;", "mPaint", "I", "mMeasuredSize", "mCircleRadius", "Landroid/graphics/Path;", "f", "getMPath", "()Landroid/graphics/Path;", "mPath", GslbInterceptor.HEADER_KEY_GSLB, "getMLeftCirclePath", "mLeftCirclePath", CmcdData.STREAMING_FORMAT_HLS, "getMRightCirclePath", "mRightCirclePath", "getMUnionPath", "mUnionPath", "mCenterX", "mCenterY", CmcdData.STREAM_TYPE_LIVE, "mRunningType", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", CmcdData.OBJECT_TYPE_MANIFEST, "getMAnimAppeal", "()Landroid/animation/ValueAnimator;", "mAnimAppeal", "n", "getMAnimCircle", "mAnimCircle", "o", "getMAnimRepel", "mAnimRepel", TtmlNode.TAG_P, "mType", "q", "mCenterLeftX", "r", "mCenterLeftY", "s", "mCenterRightX", "t", "mCenterRightY", "u", "mCubicRatio", "v", "mOuterCircleRadius", "w", "mCurrentAngle", "x", "mPullPercent", "y", "Z", "getMVisibilityChangedReStartAnim", "setMVisibilityChangedReStartAnim", "(Z)V", "mVisibilityChangedReStartAnim", "z", "mIsSecondHome", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mDotColor", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class OSLoadingView extends View {
    public static final int RUNNING_TYPE_CIRCLE = 0;
    public static final int RUNNING_TYPE_PULL = 1;

    public int mDotColor;

    public float mOutCircleRadiusStatic;

    public final yi5 mPaint;

    public int mMeasuredSize;

    public float mCircleRadius;

    public final yi5 mPath;

    public final yi5 mLeftCirclePath;

    public final yi5 mRightCirclePath;

    public final yi5 mUnionPath;

    public float mCenterX;

    public float mCenterY;

    public int mRunningType;

    public final yi5 mAnimAppeal;

    public final yi5 mAnimCircle;

    public final yi5 mAnimRepel;

    public int mType;

    public float mCenterLeftX;

    public float mCenterLeftY;

    public float mCenterRightX;

    public float mCenterRightY;

    public final float mCubicRatio;

    public float mOuterCircleRadius;

    public float mCurrentAngle;

    public float mPullPercent;

    public boolean mVisibilityChangedReStartAnim;

    public boolean mIsSecondHome;

    public static final class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            y45.j(animator, "animation");
            OSLoadingView.this.getMAnimCircle().start();
            OSLoadingView.this.getMAnimAppeal().start();
            OSLoadingView.this.getMAnimRepel().start();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLoadingView(Context context) {
        this(context, null, 0, 0, 14, null);
        y45.j(context, "context");
    }

    public static final void f(OSLoadingView oSLoadingView, ValueAnimator valueAnimator) {
        y45.j(oSLoadingView, "this$0");
        y45.j(valueAnimator, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSLoadingView.mCurrentAngle = ((Float) animatedValue).floatValue();
        oSLoadingView.invalidate();
    }

    public static final void g(OSLoadingView oSLoadingView, ValueAnimator valueAnimator) {
        y45.j(oSLoadingView, "this$0");
        y45.j(valueAnimator, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSLoadingView.mOuterCircleRadius = ((Float) animatedValue).floatValue();
        oSLoadingView.invalidate();
    }

    private final double getDistance() {
        return Math.sqrt(Math.pow(Math.abs(this.mCenterX - this.mCenterLeftX), 2.0d) + Math.pow(Math.abs(this.mCenterY - this.mCenterLeftY), 2.0d));
    }

    public final ValueAnimator getMAnimAppeal() {
        return (ValueAnimator) this.mAnimAppeal.getValue();
    }

    public final ValueAnimator getMAnimCircle() {
        return (ValueAnimator) this.mAnimCircle.getValue();
    }

    public final ValueAnimator getMAnimRepel() {
        return (ValueAnimator) this.mAnimRepel.getValue();
    }

    private final Path getMLeftCirclePath() {
        return (Path) this.mLeftCirclePath.getValue();
    }

    private final Paint getMPaint() {
        return (Paint) this.mPaint.getValue();
    }

    private final Path getMPath() {
        return (Path) this.mPath.getValue();
    }

    private final Path getMRightCirclePath() {
        return (Path) this.mRightCirclePath.getValue();
    }

    private final Path getMUnionPath() {
        return (Path) this.mUnionPath.getValue();
    }

    public static final void h(OSLoadingView oSLoadingView, ValueAnimator valueAnimator) {
        y45.j(oSLoadingView, "this$0");
        y45.j(valueAnimator, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        y45.h(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        oSLoadingView.mOuterCircleRadius = ((Float) animatedValue).floatValue();
        oSLoadingView.invalidate();
    }

    public final void d() {
        double distance = getDistance() / ((double) (this.mOutCircleRadiusStatic * this.mCubicRatio));
        if (distance > 0.9d) {
            distance = 1.0d;
        }
        float f = this.mCircleRadius;
        double d = ((double) (2.0f * f)) - (((double) (2.25f * f)) * distance);
        if (d > (3 * f) / 4) {
            d = f;
        }
        if (d < (-f)) {
            d = -f;
        }
        double d2 = 1.5707963267948966d - ((distance * 3.141592653589793d) / ((double) 6));
        double d3 = 6.283185307179586d - ((double) this.mCurrentAngle);
        if (d3 < 0.0d) {
            d3 = 0.0d;
        }
        double d4 = d2 + d3;
        float fCos = (float) (((double) this.mCenterLeftX) + (((double) f) * Math.cos(d4)));
        float fSin = (float) (((double) this.mCenterLeftY) - (((double) this.mCircleRadius) * Math.sin(d4)));
        float f2 = this.mCenterRightX;
        float f3 = this.mCenterLeftX;
        float f4 = 2;
        double d5 = 1.5707963267948966d - d3;
        float fCos2 = (float) (((double) (((f2 - f3) / f4) + f3)) - (Math.cos(d5) * d));
        float f5 = this.mCenterRightY;
        float f6 = this.mCenterLeftY;
        float fSin2 = (float) (((double) (((f5 - f6) / f4) + f6)) - (Math.sin(d5) * d));
        double d6 = d3 - d2;
        float fCos3 = (float) (((double) this.mCenterRightX) - (((double) this.mCircleRadius) * Math.cos(d6)));
        float fSin3 = (float) (((double) this.mCenterRightY) + (((double) this.mCircleRadius) * Math.sin(d6)));
        float fCos4 = (float) (((double) this.mCenterLeftX) + (((double) this.mCircleRadius) * Math.cos(d6)));
        float fSin4 = (float) (((double) this.mCenterLeftY) - (((double) this.mCircleRadius) * Math.sin(d6)));
        float f7 = this.mCenterRightX;
        float f8 = this.mCenterLeftX;
        float fCos5 = (float) (((double) (((f7 - f8) / f4) + f8)) + (Math.cos(d5) * d));
        float f9 = this.mCenterRightY;
        float f10 = this.mCenterLeftY;
        float fSin5 = (float) (((double) (((f9 - f10) / f4) + f10)) + (d * Math.sin(d5)));
        float fCos6 = (float) (((double) this.mCenterRightX) - (((double) this.mCircleRadius) * Math.cos(d4)));
        float fSin6 = (float) (((double) this.mCenterRightY) + (((double) this.mCircleRadius) * Math.sin(d4)));
        getMPath().moveTo(fCos, fSin);
        getMPath().quadTo(fCos2, fSin2, fCos3, fSin3);
        getMPath().lineTo(fCos6, fSin6);
        getMPath().quadTo(fCos5, fSin5, fCos4, fSin4);
        getMPath().close();
    }

    public final void e() {
        ValueAnimator mAnimCircle = getMAnimCircle();
        mAnimCircle.setDuration(850L);
        mAnimCircle.setInterpolator(new eb7());
        mAnimCircle.removeAllUpdateListeners();
        mAnimCircle.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSLoadingView.f(this.b, valueAnimator);
            }
        });
        mAnimCircle.start();
        ValueAnimator mAnimAppeal = getMAnimAppeal();
        mAnimAppeal.setDuration(500L);
        mAnimAppeal.setStartDelay(500L);
        mAnimAppeal.setInterpolator(new eb7());
        mAnimAppeal.removeAllUpdateListeners();
        mAnimAppeal.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSLoadingView.g(this.b, valueAnimator);
            }
        });
        mAnimAppeal.start();
        ValueAnimator mAnimRepel = getMAnimRepel();
        mAnimRepel.setDuration(500L);
        mAnimRepel.setStartDelay(1000L);
        mAnimRepel.setInterpolator(new eb7());
        mAnimRepel.removeAllUpdateListeners();
        mAnimRepel.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                OSLoadingView.h(this.b, valueAnimator);
            }
        });
        mAnimRepel.removeAllListeners();
        mAnimRepel.addListener(new b());
        mAnimRepel.start();
    }

    public final boolean getMVisibilityChangedReStartAnim() {
        return this.mVisibilityChangedReStartAnim;
    }

    public final void i() {
        this.mOuterCircleRadius = this.mRunningType == 0 ? this.mOutCircleRadiusStatic : 0.0f;
    }

    public final boolean isRunning() {
        return getMAnimAppeal().isStarted() || getMAnimRepel().isStarted() || getMAnimCircle().isStarted();
    }

    public final void j() {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int i = this.mType;
        Resources resources = getContext().getResources();
        int i2 = R.integer.OSLoadingViewSmall;
        if (i == resources.getInteger(i2)) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_size_small);
        } else {
            dimensionPixelSize = i == getContext().getResources().getInteger(R.integer.OSLoadingViewLarge) ? getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_size_large) : getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_size_medium);
        }
        this.mOutCircleRadiusStatic = dimensionPixelSize;
        int i3 = this.mType;
        if (i3 == getContext().getResources().getInteger(i2)) {
            dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_dot_size_small);
        } else {
            dimensionPixelSize2 = i3 == getContext().getResources().getInteger(R.integer.OSLoadingViewLarge) ? getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_dot_size_large) : getResources().getDimensionPixelSize(R.dimen.os_dimen_loading_view_dot_size_medium);
        }
        float f = dimensionPixelSize2;
        float f2 = 2;
        this.mOutCircleRadiusStatic /= f2;
        this.mCircleRadius = f / f2;
        i();
        getMAnimAppeal().setFloatValues(this.mOutCircleRadiusStatic, 0.0f);
        getMAnimRepel().setFloatValues(0.0f, this.mOutCircleRadiusStatic);
    }

    public final void k() {
        this.mCurrentAngle = 6.2831855f;
        this.mOuterCircleRadius = this.mOutCircleRadiusStatic;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        if (this.mIsSecondHome) {
            canvas.scale(0.9f, 0.9f);
            float f = 2;
            canvas.translate((getWidth() * 0.100000024f) / f, (getHeight() * 0.100000024f) / f);
        }
        getMPath().reset();
        getMLeftCirclePath().reset();
        getMRightCirclePath().reset();
        getMUnionPath().reset();
        if (this.mRunningType == 1) {
            float f2 = this.mCenterX;
            float f3 = this.mOutCircleRadiusStatic;
            float f4 = this.mPullPercent;
            this.mCenterLeftX = f2 - (f3 * f4);
            int i = this.mMeasuredSize;
            this.mCenterLeftY = i / 2.0f;
            this.mCenterRightX = f2 + (f3 * f4);
            this.mCenterRightY = i / 2.0f;
            if (getDistance() <= this.mOutCircleRadiusStatic * this.mCubicRatio) {
                d();
            }
        } else {
            this.mCenterLeftX = this.mCenterX - (this.mOuterCircleRadius * ((float) Math.cos(this.mCurrentAngle)));
            this.mCenterLeftY = this.mCenterY - (this.mOuterCircleRadius * ((float) Math.sin(this.mCurrentAngle)));
            this.mCenterRightX = this.mCenterX + (this.mOuterCircleRadius * ((float) Math.cos(this.mCurrentAngle)));
            this.mCenterRightY = this.mCenterY + (this.mOuterCircleRadius * ((float) Math.sin(this.mCurrentAngle)));
            if (getDistance() <= this.mOutCircleRadiusStatic * this.mCubicRatio) {
                float f5 = this.mCurrentAngle;
                if ((f5 > 0.5235987755982988d && f5 < 6.283185307179586d) || Math.abs(((double) f5) - 6.283185307179586d) <= 1.0E-6d) {
                    d();
                }
            }
        }
        Path mLeftCirclePath = getMLeftCirclePath();
        float f6 = this.mCenterLeftX;
        float f7 = this.mCenterLeftY;
        float f8 = this.mCircleRadius;
        Path.Direction direction = Path.Direction.CW;
        mLeftCirclePath.addCircle(f6, f7, f8, direction);
        getMRightCirclePath().addCircle(this.mCenterRightX, this.mCenterRightY, this.mCircleRadius, direction);
        Path mUnionPath = getMUnionPath();
        Path mLeftCirclePath2 = getMLeftCirclePath();
        Path mRightCirclePath = getMRightCirclePath();
        Path.Op op = Path.Op.UNION;
        mUnionPath.op(mLeftCirclePath2, mRightCirclePath, op);
        if (!getMPath().isEmpty()) {
            getMUnionPath().op(getMPath(), op);
        }
        canvas.drawPath(getMUnionPath(), getMPaint());
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.mRunningType != 0 || getMAnimAppeal().isRunning()) {
            return;
        }
        e();
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int iH;
        int integer;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824) {
            if (getMeasuredWidth() < getContext().getResources().getDimensionPixelSize(R.dimen.os_loading_medium_size)) {
                integer = getContext().getResources().getInteger(R.integer.OSLoadingViewSmall);
            } else {
                integer = getMeasuredWidth() < getContext().getResources().getDimensionPixelSize(R.dimen.os_loading_default_size) ? getContext().getResources().getInteger(R.integer.OSLoadingViewMedium) : getContext().getResources().getInteger(R.integer.OSLoadingViewLarge);
            }
            this.mType = integer;
            j();
            iH = getMeasuredWidth();
        } else {
            float f = 2;
            iH = (int) ((this.mOutCircleRadiusStatic * f) + (this.mCircleRadius * f) + olb.h(getContext(), 2));
            setMeasuredDimension(iH, iH);
        }
        this.mMeasuredSize = iH;
        this.mCenterX = iH / 2.0f;
        this.mCenterY = iH / 2.0f;
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        y45.j(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (isAttachedToWindow()) {
            if (!isShown()) {
                release();
            } else if (this.mRunningType == 0) {
                startLoadingAnimation();
            }
        }
    }

    public final void release() {
        ValueAnimator mAnimRepel = getMAnimRepel();
        if (mAnimRepel != null) {
            mAnimRepel.removeAllListeners();
            mAnimRepel.removeAllUpdateListeners();
            if (mAnimRepel.isStarted()) {
                mAnimRepel.cancel();
            }
        }
        ValueAnimator mAnimCircle = getMAnimCircle();
        if (mAnimCircle != null) {
            mAnimCircle.removeAllUpdateListeners();
            if (mAnimCircle.isStarted()) {
                mAnimCircle.cancel();
            }
        }
        ValueAnimator mAnimAppeal = getMAnimAppeal();
        if (mAnimAppeal != null) {
            mAnimAppeal.removeAllUpdateListeners();
            if (mAnimAppeal.isStarted()) {
                mAnimAppeal.cancel();
            }
        }
        k();
    }

    public final void setDotColor(int dotColorRes) {
        this.mDotColor = getContext().getResources().getColor(dotColorRes, null);
        getMPaint().setColor(this.mDotColor);
        postInvalidate();
    }

    public final void setMVisibilityChangedReStartAnim(boolean z) {
        this.mVisibilityChangedReStartAnim = z;
    }

    public final void setPullPercent(float percent) {
        if (this.mRunningType != 1) {
            this.mRunningType = 1;
        }
        release();
        this.mPullPercent = percent;
        postInvalidate();
    }

    public void setRunningType(int runningType) {
        this.mRunningType = runningType;
        i();
    }

    public final void startLoadingAnimation() {
        if (isRunning()) {
            return;
        }
        k();
        this.mRunningType = 0;
        i();
        e();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLoadingView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        y45.j(context, "context");
    }

    public OSLoadingView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLoadingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
        this.mPaint = kotlin.b.a(new c74() {
            @Override
            public final Paint invoke() {
                return new Paint();
            }
        });
        this.mPath = kotlin.b.a(new c74() {
            @Override
            public final Path invoke() {
                return new Path();
            }
        });
        this.mLeftCirclePath = kotlin.b.a(new c74() {
            @Override
            public final Path invoke() {
                return new Path();
            }
        });
        this.mRightCirclePath = kotlin.b.a(new c74() {
            @Override
            public final Path invoke() {
                return new Path();
            }
        });
        this.mUnionPath = kotlin.b.a(new c74() {
            @Override
            public final Path invoke() {
                return new Path();
            }
        });
        this.mAnimAppeal = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final ValueAnimator invoke() {
                return ValueAnimator.ofFloat(this.this$0.mOutCircleRadiusStatic, 0.0f);
            }
        });
        this.mAnimCircle = kotlin.b.a(new c74() {
            @Override
            public final ValueAnimator invoke() {
                return ValueAnimator.ofFloat(0.0f, 6.2831855f);
            }
        });
        this.mAnimRepel = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final ValueAnimator invoke() {
                return ValueAnimator.ofFloat(0.0f, this.this$0.mOutCircleRadiusStatic);
            }
        });
        this.mCubicRatio = 0.6f;
        this.mCurrentAngle = 6.2831855f;
        this.mIsSecondHome = olb.q0(getContext());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSLoadingView);
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr….styleable.OSLoadingView)");
        this.mType = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSLoadingView_os_lv_type, context.getResources().getInteger(R.integer.OSLoadingViewMedium));
        this.mDotColor = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLoadingView_os_lv_dot_color, context.getColor(R.color.os_comp_color_loading_hios));
        this.mRunningType = typedArrayObtainStyledAttributes.getInteger(R.styleable.OSLoadingView_os_lv_running_type, 0);
        typedArrayObtainStyledAttributes.recycle();
        Paint mPaint = getMPaint();
        mPaint.setAntiAlias(true);
        mPaint.setDither(true);
        mPaint.setColor(this.mDotColor);
        j();
    }
}
