package com.transsion.widgetsliquid.view;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Switch;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.widgetsliquid.view.OSLiquidSwitch;
import defpackage.a67;
import defpackage.f43;
import defpackage.fz3;
import defpackage.jv9;
import defpackage.kv9;
import defpackage.olb;
import defpackage.s86;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\"\b\u0016\u0018\u0000 h2\u00020\u0001:\u0001iB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\fH\u0014¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001d\u0010\u001aJ\u0017\u0010 \u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\fH\u0002¢\u0006\u0004\b\"\u0010\u001aJ\u000f\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b#\u0010\u001aJ\u001f\u0010&\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001eH\u0002¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010,R\u0016\u00100\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010,R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00102R\u0014\u00104\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010)R\u0014\u00105\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010,R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010:\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010)R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010?\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010=R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010Q\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010PR\u0016\u0010U\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010)R\u0016\u0010W\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010PR\u0016\u0010Y\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010PR\u0016\u0010[\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010PR\u0016\u0010]\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010)R\u0016\u0010_\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010)R\u0016\u0010a\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010PR\u0016\u0010c\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010PR\u0016\u0010e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010PR\u0018\u0010g\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010M¨\u0006j"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSwitch;", "Landroid/widget/Switch;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "checked", "Lzfb;", "setChecked", "(Z)V", "withAnim", "(ZZ)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "onDetachedFromWindow", "()V", "onAttachedToWindow", CmcdData.STREAM_TYPE_LIVE, "d", "", TypedValues.AttributesType.S_TARGET, "f", "(F)V", "j", CmcdData.STREAMING_FORMAT_HLS, "stiffness", "dampingRatio", GslbInterceptor.HEADER_KEY_GSLB, "(FF)V", "b", "F", "mThumbAlphaIndex", "c", "I", "mLiquidWidth", "mLiquidHeight", "e", "mLiquidRadius", "La67;", "La67;", "mOSLiquidDrawable", "mOriginRadius", "mDisableColor", "Landroid/graphics/drawable/GradientDrawable;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Landroid/graphics/drawable/GradientDrawable;", "mWhiteBackDrawable", "mLiquidProgress", "Ljv9;", "k", "Ljv9;", "mLiquidSpring", "mThumbSpring", "Lf43$q;", CmcdData.OBJECT_TYPE_MANIFEST, "Lf43$q;", "mLastLiquidEndListener", "Landroid/os/Handler;", "n", "Landroid/os/Handler;", "mShapeShrinkHandler", "Ljava/lang/Runnable;", "o", "Ljava/lang/Runnable;", "mShapeShrinkRunnable", TtmlNode.TAG_P, "Ljava/lang/Float;", "mThumbVisualCenterX", "q", "Z", "mIsInitialized", "r", "mIsTrackVisualChecked", "s", "minProgress", "t", "mPendingTouchClick", "u", "mHasDraggedSinceDown", "v", "mIsTouching", "w", "mTouchOffsetX", "x", "mTouchOffsetY", "y", "mShouldApplyOffset", "z", "mIsClickAnimating", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mIsDragging", "B", "mLastTargetCenterX", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidSwitch extends Switch {

    public boolean mIsDragging;

    public Float mLastTargetCenterX;

    public float mThumbAlphaIndex;

    public int mLiquidWidth;

    public int mLiquidHeight;

    public int mLiquidRadius;

    public final a67 mOSLiquidDrawable;

    public final float mOriginRadius;

    public final int mDisableColor;

    public final GradientDrawable mWhiteBackDrawable;

    public float mLiquidProgress;

    public jv9 mLiquidSpring;

    public jv9 mThumbSpring;

    public f43.q mLastLiquidEndListener;

    public final Handler mShapeShrinkHandler;

    public Runnable mShapeShrinkRunnable;

    public Float mThumbVisualCenterX;

    public boolean mIsInitialized;

    public boolean mIsTrackVisualChecked;

    public float minProgress;

    public boolean mPendingTouchClick;

    public boolean mHasDraggedSinceDown;

    public boolean mIsTouching;

    public float mTouchOffsetX;

    public float mTouchOffsetY;

    public boolean mShouldApplyOffset;

    public boolean mIsClickAnimating;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSwitch(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void e(OSLiquidSwitch oSLiquidSwitch) {
        y45.j(oSLiquidSwitch, "this$0");
        oSLiquidSwitch.g(500.0f, 0.79f);
        jv9 jv9Var = oSLiquidSwitch.mLiquidSpring;
        kv9 kv9VarV = jv9Var != null ? jv9Var.v() : null;
        if (kv9VarV != null) {
            kv9VarV.h(0.0f);
        }
        jv9 jv9Var2 = oSLiquidSwitch.mLiquidSpring;
        if (jv9Var2 != null) {
            jv9Var2.p();
        }
    }

    public static final void i(OSLiquidSwitch oSLiquidSwitch, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSwitch, "this$0");
        oSLiquidSwitch.mLiquidProgress = f;
        oSLiquidSwitch.invalidate();
    }

    public static final void k(OSLiquidSwitch oSLiquidSwitch, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSwitch, "this$0");
        if (oSLiquidSwitch.mIsDragging) {
            oSLiquidSwitch.mThumbVisualCenterX = Float.valueOf(f);
            oSLiquidSwitch.invalidate();
        }
    }

    public final void d() {
        jv9 jv9Var;
        h();
        Runnable runnable = this.mShapeShrinkRunnable;
        if (runnable != null) {
            this.mShapeShrinkHandler.removeCallbacks(runnable);
        }
        this.mShapeShrinkRunnable = null;
        f43.q qVar = this.mLastLiquidEndListener;
        if (qVar != null && (jv9Var = this.mLiquidSpring) != null) {
            jv9Var.removeEndListener(qVar);
        }
        this.mLastLiquidEndListener = null;
        jv9 jv9Var2 = this.mLiquidSpring;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        jv9 jv9Var3 = this.mLiquidSpring;
        if (jv9Var3 != null) {
        }
        g(700.0f, 0.99f);
        jv9 jv9Var4 = this.mLiquidSpring;
        kv9 kv9VarV = jv9Var4 != null ? jv9Var4.v() : null;
        if (kv9VarV != null) {
            kv9VarV.h(1.0f);
        }
        jv9 jv9Var5 = this.mLiquidSpring;
        if (jv9Var5 != null) {
            jv9Var5.p();
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                OSLiquidSwitch.e(this.b);
            }
        };
        this.mShapeShrinkRunnable = runnable2;
        Handler handler = this.mShapeShrinkHandler;
        y45.g(runnable2);
        handler.postDelayed(runnable2, 180L);
    }

    public final void f(float target) {
        jv9 jv9Var;
        h();
        f43.q qVar = this.mLastLiquidEndListener;
        if (qVar != null && (jv9Var = this.mLiquidSpring) != null) {
            jv9Var.removeEndListener(qVar);
        }
        this.mLastLiquidEndListener = null;
        jv9 jv9Var2 = this.mLiquidSpring;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        jv9 jv9Var3 = this.mLiquidSpring;
        if (jv9Var3 != null) {
        }
        if (target > this.mLiquidProgress) {
            g(700.0f, 0.99f);
        } else {
            g(500.0f, 0.79f);
        }
        jv9 jv9Var4 = this.mLiquidSpring;
        if (jv9Var4 != null) {
            jv9Var4.s(target);
        }
    }

    public final void g(float stiffness, float dampingRatio) {
        kv9 kv9VarV;
        jv9 jv9Var = this.mLiquidSpring;
        if (jv9Var == null || (kv9VarV = jv9Var.v()) == null) {
            return;
        }
        kv9VarV.i(stiffness);
        kv9VarV.g(dampingRatio);
    }

    public final void h() {
        if (this.mLiquidSpring == null) {
            jv9 jv9Var = new jv9(new fz3());
            jv9Var.z(new kv9());
            jv9Var.v().i(500.0f);
            jv9Var.v().g(0.79f);
            jv9Var.k(this.minProgress);
            jv9Var.b(new f43.r() {
                @Override
                public final void a(f43 f43Var, float f, float f2) {
                    OSLiquidSwitch.i(this.a, f43Var, f, f2);
                }
            });
            this.mLiquidSpring = jv9Var;
        }
    }

    public final void j() {
        if (this.mThumbSpring == null) {
            jv9 jv9Var = new jv9(new fz3());
            jv9Var.z(new kv9());
            jv9Var.v().i(500.0f);
            jv9Var.v().g(0.99f);
            jv9Var.k(this.minProgress);
            jv9Var.b(new f43.r() {
                @Override
                public final void a(f43 f43Var, float f, float f2) {
                    OSLiquidSwitch.k(this.a, f43Var, f, f2);
                }
            });
            this.mThumbSpring = jv9Var;
        }
    }

    public final void l() {
        jv9 jv9Var = this.mThumbSpring;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.mLiquidSpring;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        Runnable runnable = this.mShapeShrinkRunnable;
        if (runnable != null) {
            this.mShapeShrinkHandler.removeCallbacks(runnable);
        }
        this.mShapeShrinkRunnable = null;
        this.mThumbVisualCenterX = null;
        this.mLastTargetCenterX = null;
        this.mShouldApplyOffset = false;
        this.mIsTouching = false;
        this.mIsDragging = false;
        this.mIsClickAnimating = false;
        this.mPendingTouchClick = false;
        this.mHasDraggedSinceDown = false;
        this.mLiquidProgress = 0.0f;
        invalidate();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mThumbVisualCenterX = null;
        this.mLastTargetCenterX = null;
        this.mLiquidProgress = 0.0f;
        this.mIsTrackVisualChecked = isChecked();
        j();
        h();
    }

    @Override
    public void onDetachedFromWindow() {
        jv9 jv9Var;
        super.onDetachedFromWindow();
        jv9 jv9Var2 = this.mThumbSpring;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        jv9 jv9Var3 = this.mLiquidSpring;
        if (jv9Var3 != null) {
            jv9Var3.c();
        }
        this.mPendingTouchClick = false;
        this.mHasDraggedSinceDown = false;
        Runnable runnable = this.mShapeShrinkRunnable;
        if (runnable != null) {
            this.mShapeShrinkHandler.removeCallbacks(runnable);
        }
        this.mShapeShrinkRunnable = null;
        f43.q qVar = this.mLastLiquidEndListener;
        if (qVar != null && (jv9Var = this.mLiquidSpring) != null) {
            jv9Var.removeEndListener(qVar);
        }
        this.mLastLiquidEndListener = null;
        this.mThumbSpring = null;
        this.mLiquidSpring = null;
    }

    @Override
    public void onDraw(Canvas canvas) {
        float fFloatValue;
        Float f;
        y45.j(canvas, "canvas");
        float f2 = this.mLiquidWidth;
        float f3 = this.mLiquidHeight;
        float f4 = this.mOriginRadius;
        Drawable thumbDrawable = getThumbDrawable();
        if (thumbDrawable == null) {
            super.onDraw(canvas);
            return;
        }
        thumbDrawable.setAlpha(0);
        super.onDraw(canvas);
        Rect bounds = thumbDrawable.getBounds();
        y45.i(bounds, "thumb.bounds");
        float fHeight = bounds.height();
        float fCenterY = bounds.centerY();
        if (!this.mIsDragging || (f = this.mThumbVisualCenterX) == null || f == null) {
            int iCenterX = bounds.centerX();
            fFloatValue = iCenterX;
        } else {
            fFloatValue = f.floatValue();
        }
        float f5 = this.mLiquidProgress;
        float f6 = f5 < 0.005f ? f4 : ((f2 - f4) * f5) + f4;
        if (f5 >= 0.005f) {
            f4 += (f3 - f4) * f5;
        }
        float f7 = olb.e0(getContext()) ? 0.8f : 0.5f;
        this.mThumbAlphaIndex = f7;
        float f8 = 255;
        int iK = wn8.k((int) ((1.0f - (this.mLiquidProgress * f7)) * f8), 0, 255);
        float f9 = fHeight / 2.0f;
        float f10 = this.mLiquidRadius - f9;
        float f11 = this.mLiquidProgress;
        float f12 = f9 + (f10 * f11);
        if (f11 >= 0.005f || isEnabled() || !olb.e0(getContext())) {
            this.mWhiteBackDrawable.setColor(-1);
            this.mWhiteBackDrawable.setAlpha(iK);
        } else {
            this.mWhiteBackDrawable.setColor(this.mDisableColor);
            this.mWhiteBackDrawable.setAlpha(255);
        }
        this.mWhiteBackDrawable.setCornerRadius(f12);
        this.mWhiteBackDrawable.setBounds(0, 0, s86.c(f6), s86.c(f4));
        canvas.save();
        float f13 = 2;
        float f14 = fFloatValue - (f6 / f13);
        float f15 = fCenterY - (f4 / f13);
        canvas.translate(f14, f15);
        this.mWhiteBackDrawable.draw(canvas);
        canvas.restore();
        float f16 = this.mLiquidProgress;
        if (f16 > this.minProgress) {
            int iK2 = wn8.k((int) (f8 * f16), 0, 255);
            this.mOSLiquidDrawable.setCornerRadius(f12);
            this.mOSLiquidDrawable.setAlpha(iK2);
            canvas.save();
            canvas.translate(f14, f15);
            this.mOSLiquidDrawable.c(canvas, f6, f4, false);
            canvas.restore();
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0118  */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        MotionEvent motionEventObtain;
        Drawable thumbDrawable;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        int action = event.getAction();
        if (action == 0) {
            this.mIsClickAnimating = false;
            this.mLastTargetCenterX = null;
            Drawable thumbDrawable2 = getThumbDrawable();
            if (thumbDrawable2 != null) {
                Rect bounds = thumbDrawable2.getBounds();
                y45.i(bounds, "thumb.bounds");
                int iH = olb.h(getContext(), 20);
                float x = event.getX();
                float y = event.getY();
                if (x < bounds.left - iH || x > bounds.right + iH || y < bounds.top - iH || y > bounds.bottom + iH) {
                    this.mShouldApplyOffset = false;
                    motionEventObtain = event;
                } else {
                    this.mShouldApplyOffset = true;
                    this.mTouchOffsetX = bounds.centerX() - x;
                    this.mTouchOffsetY = bounds.centerY() - y;
                    motionEventObtain = MotionEvent.obtain(event);
                    motionEventObtain.setLocation(x + this.mTouchOffsetX, y + this.mTouchOffsetY);
                    y45.i(motionEventObtain, "newEvent");
                }
            } else {
                motionEventObtain = event;
            }
        } else if (action != 2) {
            if (this.mShouldApplyOffset) {
                motionEventObtain = MotionEvent.obtain(event);
                motionEventObtain.setLocation(event.getX() + this.mTouchOffsetX, event.getY() + this.mTouchOffsetY);
                y45.i(motionEventObtain, "newEvent");
            } else {
                motionEventObtain = event;
            }
            if (action == 1 || action == 3) {
                f(0.0f);
            }
        } else {
            if (this.mIsDragging && this.mIsTouching && !this.mIsClickAnimating && (thumbDrawable = getThumbDrawable()) != null) {
                float fCenterX = thumbDrawable.getBounds().centerX();
                Float f = this.mLastTargetCenterX;
                if (f == null || Math.abs(f.floatValue() - fCenterX) > this.minProgress) {
                    this.mHasDraggedSinceDown = true;
                    j();
                    jv9 jv9Var = this.mThumbSpring;
                    if (jv9Var != null) {
                        Float f2 = this.mThumbVisualCenterX;
                        float fFloatValue = f2 != null ? f2.floatValue() : fCenterX;
                        if (!jv9Var.h()) {
                            jv9Var.m(fFloatValue);
                        }
                        jv9Var.s(fCenterX);
                    }
                    this.mLastTargetCenterX = Float.valueOf(fCenterX);
                }
            }
            if (this.mShouldApplyOffset) {
                motionEventObtain = MotionEvent.obtain(event);
                motionEventObtain.setLocation(event.getX() + this.mTouchOffsetX, event.getY() + this.mTouchOffsetY);
                y45.i(motionEventObtain, "newEvent");
            } else {
                motionEventObtain = event;
            }
        }
        boolean zOnTouchEvent = super.onTouchEvent(motionEventObtain);
        if (!y45.e(motionEventObtain, event)) {
            motionEventObtain.recycle();
        }
        if (action == 0) {
            if (zOnTouchEvent) {
                this.mIsTouching = true;
                this.mIsDragging = true;
                if (isEnabled()) {
                    f(1.0f);
                }
            } else {
                this.mIsTouching = false;
                this.mIsDragging = false;
            }
        }
        if (action == 1 || action == 3) {
            if (this.mIsTouching && action == 1 && !this.mHasDraggedSinceDown) {
                this.mPendingTouchClick = true;
            }
            this.mHasDraggedSinceDown = false;
            jv9 jv9Var2 = this.mThumbSpring;
            if (jv9Var2 != null) {
                jv9Var2.c();
            }
            this.mLastTargetCenterX = null;
            this.mThumbVisualCenterX = null;
            this.mShouldApplyOffset = false;
            this.mIsTouching = false;
            this.mIsDragging = false;
        }
        return zOnTouchEvent;
    }

    @Override
    public void setChecked(boolean checked) {
        boolean z;
        if (this.mPendingTouchClick) {
            this.mPendingTouchClick = false;
            z = true;
        } else {
            z = this.mIsTouching;
        }
        setChecked(checked, z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public OSLiquidSwitch(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.switchStyle : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mThumbAlphaIndex = 0.5f;
        this.mLiquidWidth = getResources().getDimensionPixelSize(com.transsion.widgetsThemes.R.dimen.os_thumb_width);
        this.mLiquidHeight = getResources().getDimensionPixelSize(com.transsion.widgetsThemes.R.dimen.os_thumb_height);
        this.mLiquidRadius = getResources().getDimensionPixelSize(com.transsion.widgetsThemes.R.dimen.os_liquid_radius);
        a67 a67Var = new a67(context, this.mLiquidRadius);
        a67Var.setStrokeWidth(olb.h(context, 1));
        a67Var.h(true);
        this.mOSLiquidDrawable = a67Var;
        this.mOriginRadius = getResources().getDimensionPixelSize(com.transsion.widgetsThemes.R.dimen.os_switch_thumb_size);
        this.mDisableColor = getResources().getColor(com.transsion.widgetsThemes.R.color.os_button_on_disable_color, null);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-1);
        this.mWhiteBackDrawable = gradientDrawable;
        this.mShapeShrinkHandler = new Handler(Looper.getMainLooper());
        this.mIsTrackVisualChecked = isChecked();
        this.minProgress = 0.001f;
        if (getTextOn() == null) {
            setTextOn("");
        }
        if (getTextOff() == null) {
            setTextOff("");
        }
        this.mIsInitialized = true;
    }

    public final void setChecked(boolean checked, boolean withAnim) {
        boolean zIsChecked = isChecked();
        if (!withAnim) {
            l();
        }
        super.setChecked(checked);
        if (withAnim && this.mIsInitialized) {
            this.mIsClickAnimating = true;
            if (zIsChecked == checked || this.mIsTouching) {
                return;
            }
            d();
        }
    }
}
