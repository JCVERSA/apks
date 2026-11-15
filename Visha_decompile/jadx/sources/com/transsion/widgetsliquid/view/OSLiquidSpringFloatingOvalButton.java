package com.transsion.widgetsliquid.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.widgetslib.anim.OSSpringPressSealAnimation;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import com.transsion.widgetsliquid.view.OSLiquidSpringFloatingOvalButton;
import defpackage.c74;
import defpackage.e74;
import defpackage.f43;
import defpackage.fz3;
import defpackage.olb;
import defpackage.x71;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 a2\u00020\u0001:\u0001bB\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\b\u0001\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000f\u0010\u000eJ\u0015\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\n2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\n2\b\b\u0001\u0010\u0018\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\fJ\u0015\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010\fJ\u0015\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0010¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J7\u0010+\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010'\u001a\u00020\b2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\bH\u0014¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\n2\b\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\n2\b\u00102\u001a\u0004\u0018\u000101¢\u0006\u0004\b3\u00104J\u0017\u00107\u001a\u00020\n2\b\u00106\u001a\u0004\u0018\u000105¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\n2\u0006\u00109\u001a\u00020\bH\u0016¢\u0006\u0004\b:\u0010\fJ\u000f\u0010;\u001a\u00020\nH\u0002¢\u0006\u0004\b;\u0010\u000eJ\u0017\u0010=\u001a\u00020\b2\u0006\u0010<\u001a\u00020\u0010H\u0002¢\u0006\u0004\b=\u0010>R\u001b\u0010D\u001a\u00020?8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010J\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0018\u0010M\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010P\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0016\u0010S\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010RR\u0016\u0010X\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010Z\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010WR\u0016\u0010\\\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010WR\u0018\u0010`\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_¨\u0006c"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidSpringFloatingOvalButton;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "iconSize", "Lzfb;", "setIconSize", "(I)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "useDefaultInset", "setUseDefaultInset", "(Z)V", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;", "clickListener", "setOnClickListener", "(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;)V", "colorRes", "setBgColor", "", "string", "setIconText", "(Ljava/lang/String;)V", "color", "setIconTextColor", "toNight", "startBgModeTransition", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;", "onAnimationEndListener", "setOnAnimationEndListener", "(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;)V", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;", "onAnimationUpdateListener", "setOnAnimationUpdateListener", "(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;)V", "Landroid/view/View$OnTouchListener;", "touchListener", "setOnFabTouchListener", "(Landroid/view/View$OnTouchListener;)V", "visibility", "setVisibility", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "nightMode", "z", "(Z)I", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "N", "Lyi5;", "getMIconTv", "()Lcom/transsion/widgetslib/widget/OSIconTextView;", "mIconTv", "O", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;", "mClickListener", "P", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;", "mOnAnimationEndListener", "Q", "Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;", "mOnAnimationUpdateListener", "R", "Landroid/view/View$OnTouchListener;", "mOnTouchListener", ExifInterface.LATITUDE_SOUTH, "I", "mBackgroundColor", "T", "mIconColor", "U", "Z", "mUseDefaultInset", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "isCustomColor", ExifInterface.LONGITUDE_WEST, "isCustomIconColor", "Landroid/animation/Animator;", "a0", "Landroid/animation/Animator;", "bgModeAnimator", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidSpringFloatingOvalButton extends OSLiquidContainerRootLayout {

    public final yi5 mIconTv;

    public OSSpringPressSealAnimation.h mClickListener;

    public OSSpringPressSealAnimation.f mOnAnimationEndListener;

    public OSSpringPressSealAnimation.g mOnAnimationUpdateListener;

    public View.OnTouchListener mOnTouchListener;

    public int mBackgroundColor;

    public int mIconColor;

    public boolean mUseDefaultInset;

    public boolean isCustomColor;

    public boolean isCustomIconColor;

    public Animator bgModeAnimator;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OSLiquidSpringFloatingOvalButton(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        y45.j(context, "context");
    }

    public final OSIconTextView getMIconTv() {
        return (OSIconTextView) this.mIconTv.getValue();
    }

    private final void setIconSize(@DimenRes int iconSize) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(iconSize);
        OSIconTextView mIconTv = getMIconTv();
        y45.g(mIconTv);
        mIconTv.setTextSize(0, dimensionPixelSize);
        OSIconTextView mIconTv2 = getMIconTv();
        y45.g(mIconTv2);
        ViewGroup.LayoutParams layoutParams = mIconTv2.getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = dimensionPixelSize;
        OSIconTextView mIconTv3 = getMIconTv();
        y45.g(mIconTv3);
        OSIconTextView mIconTv4 = getMIconTv();
        y45.g(mIconTv4);
        mIconTv3.setLayoutParams(mIconTv4.getLayoutParams());
    }

    public static final void v(OSLiquidSpringFloatingOvalButton oSLiquidSpringFloatingOvalButton, View view, boolean z) {
        y45.j(oSLiquidSpringFloatingOvalButton, "this$0");
        OSSpringPressSealAnimation.h hVar = oSLiquidSpringFloatingOvalButton.mClickListener;
        if (hVar != null) {
            y45.g(hVar);
            hVar.onClick(view, z);
            if (z) {
                return;
            }
            oSLiquidSpringFloatingOvalButton.playSoundEffect(0);
        }
    }

    public static final boolean w(OSLiquidSpringFloatingOvalButton oSLiquidSpringFloatingOvalButton, View view, MotionEvent motionEvent) {
        y45.j(oSLiquidSpringFloatingOvalButton, "this$0");
        View.OnTouchListener onTouchListener = oSLiquidSpringFloatingOvalButton.mOnTouchListener;
        if (onTouchListener == null) {
            return false;
        }
        y45.g(onTouchListener);
        onTouchListener.onTouch(view, motionEvent);
        return false;
    }

    public static final void x(OSLiquidSpringFloatingOvalButton oSLiquidSpringFloatingOvalButton, boolean z, f43 f43Var, boolean z2, boolean z3, float f, float f2) {
        y45.j(oSLiquidSpringFloatingOvalButton, "this$0");
        OSSpringPressSealAnimation.f fVar = oSLiquidSpringFloatingOvalButton.mOnAnimationEndListener;
        if (fVar != null) {
            y45.g(fVar);
            fVar.a(z, f43Var, z2, z3, f, f2);
        }
    }

    public static final void y(OSLiquidSpringFloatingOvalButton oSLiquidSpringFloatingOvalButton, boolean z, f43 f43Var, float f, float f2) {
        y45.j(oSLiquidSpringFloatingOvalButton, "this$0");
        OSSpringPressSealAnimation.g gVar = oSLiquidSpringFloatingOvalButton.mOnAnimationUpdateListener;
        if (gVar != null) {
            y45.g(gVar);
            gVar.a(z, f43Var, f, f2);
        }
    }

    public final void A() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(R.dimen.os_fab_margin_end_default));
            marginLayoutParams.bottomMargin = getContext().getResources().getDimensionPixelSize(R.dimen.os_fab_margin_bottom_default);
            setLayoutParams(layoutParams);
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (olb.P) {
            if (event.getActionMasked() == 0) {
                OSSpringPressSealAnimation.h hVar = this.mClickListener;
                if (hVar != null) {
                    hVar.onClick(this, true);
                }
            } else if (event.getActionMasked() == 1 && this.mClickListener != null) {
                playSoundEffect(0);
                OSSpringPressSealAnimation.h hVar2 = this.mClickListener;
                y45.g(hVar2);
                hVar2.onClick(this, false);
            }
            View.OnTouchListener onTouchListener = this.mOnTouchListener;
            if (onTouchListener != null) {
                onTouchListener.onTouch(this, event);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
        if (this.mUseDefaultInset) {
            A();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.bgModeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        this.bgModeAnimator = null;
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        setShadowCorner(right - (left / 2));
    }

    public final void setBgColor(@ColorRes int colorRes) {
        int color = getResources().getColor(colorRes, getContext().getTheme());
        this.mBackgroundColor = color;
        setBrandColor(color);
        setMixLevel(5);
    }

    public final void setIconText(String string) {
        y45.j(string, "string");
        OSIconTextView mIconTv = getMIconTv();
        y45.g(mIconTv);
        mIconTv.setText(string);
    }

    public final void setIconTextColor(int color) {
        this.mIconColor = color;
        this.isCustomIconColor = true;
        OSIconTextView mIconTv = getMIconTv();
        y45.g(mIconTv);
        mIconTv.setTextColor(this.mIconColor);
    }

    public final void setOnAnimationEndListener(OSSpringPressSealAnimation.f onAnimationEndListener) {
        this.mOnAnimationEndListener = onAnimationEndListener;
    }

    public final void setOnAnimationUpdateListener(OSSpringPressSealAnimation.g onAnimationUpdateListener) {
        this.mOnAnimationUpdateListener = onAnimationUpdateListener;
    }

    public final void setOnClickListener(OSSpringPressSealAnimation.h clickListener) {
        this.mClickListener = clickListener;
    }

    public final void setOnFabTouchListener(View.OnTouchListener touchListener) {
        this.mOnTouchListener = touchListener;
    }

    public final void setUseDefaultInset(boolean useDefaultInset) {
        this.mUseDefaultInset = useDefaultInset;
    }

    @Override
    public void setVisibility(int visibility) {
        OSIconTextView mIconTv = getMIconTv();
        y45.g(mIconTv);
        mIconTv.setVisibility(visibility);
        super.setVisibility(visibility);
    }

    public final void startBgModeTransition(boolean toNight) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        if (this.isCustomColor) {
            setNightMode(toNight);
            return;
        }
        Animator animator = this.bgModeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        final ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        final int iZ = z(!toNight);
        final int iZ2 = z(toNight);
        if (!this.isCustomIconColor) {
            getMIconTv().setTextColor(iZ);
        }
        this.bgModeAnimator = OSLiquidContainerRootLayout.INSTANCE.c(x71.e(this), toNight, (4 & 4) != 0 ? 200L : 0L, (4 & 8) != 0 ? null : new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Number) obj).floatValue());
                return zfb.a;
            }

            public final void invoke(float f) {
                if (OSLiquidSpringFloatingOvalButton.this.isCustomIconColor) {
                    return;
                }
                Object objEvaluate = argbEvaluator.evaluate(f, Integer.valueOf(iZ), Integer.valueOf(iZ2));
                y45.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
                OSLiquidSpringFloatingOvalButton.this.getMIconTv().setTextColor(((Integer) objEvaluate).intValue());
            }
        }, (4 & 16) != 0 ? null : new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                if (OSLiquidSpringFloatingOvalButton.this.isCustomIconColor) {
                    return;
                }
                OSLiquidSpringFloatingOvalButton.this.getMIconTv().setTextColor(OSLiquidSpringFloatingOvalButton.this.z(z));
            }
        }, (4 & 32) != 0 ? null : new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke(((Boolean) obj).booleanValue());
                return zfb.a;
            }

            public final void invoke(boolean z) {
                if (OSLiquidSpringFloatingOvalButton.this.isCustomIconColor) {
                    return;
                }
                OSLiquidSpringFloatingOvalButton.this.getMIconTv().setTextColor(iZ2);
            }
        });
    }

    public final int z(boolean nightMode) {
        return nightMode ? getResources().getColor(R.color.os_color_white70, getContext().getTheme()) : olb.m(getContext(), R.attr.os_icon_primary, R.color.os_icon_primary_hios);
    }

    public OSLiquidSpringFloatingOvalButton(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidSpringFloatingOvalButton(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
        this.mIconTv = b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final OSIconTextView invoke() {
                OSIconTextView oSIconTextView = new OSIconTextView(context, null, 0, 0, 14, null);
                oSIconTextView.setClickable(false);
                return oSIconTextView;
            }
        });
        setClickable(true);
        setElasticTypeConfig(ElasticTypeConfig.FOB);
        setLightTypeConfig(LightTypeConfig.FOB_AUTO);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.OSLiquidFloatingOvalButton);
        y45.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…LiquidFloatingOvalButton)");
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidFloatingOvalButton_liquid_text_icon);
        int i = R.styleable.OSLiquidFloatingOvalButton_liquid_background_color;
        this.isCustomColor = typedArrayObtainStyledAttributes.hasValue(i);
        int i2 = R.styleable.OSLiquidFloatingOvalButton_liquid_text_color;
        this.isCustomIconColor = typedArrayObtainStyledAttributes.hasValue(i2);
        this.mBackgroundColor = typedArrayObtainStyledAttributes.getColor(i, 0);
        this.mIconColor = typedArrayObtainStyledAttributes.getColor(i2, olb.m(getContext(), R.attr.os_icon_primary, R.color.os_icon_primary_hios));
        this.mUseDefaultInset = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidFloatingOvalButton_liquid_use_default_inset, true);
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidFloatingOvalButton_liquid_text_size, getResources().getDimensionPixelSize(R.dimen.os_search_bar_icon_out_size));
        typedArrayObtainStyledAttributes.recycle();
        if (this.isCustomColor) {
            setBrandColor(this.mBackgroundColor);
            setMixLevel(5);
        } else {
            setMixLevel(2);
        }
        enabledPressView(true);
        enableAlpha(true);
        addView(getMIconTv());
        if (isNightMode()) {
            getOsPressView().setFillColor(Color.parseColor("#14FFFFFF"));
        } else if (getMixLevel() == 5) {
            getOsPressView().setFillColor(Color.parseColor("#33FFFFFF"));
        } else {
            getOsPressView().setFillColor(Color.parseColor("#CCFFFFFF"));
        }
        OSIconTextView mIconTv = getMIconTv();
        y45.g(mIconTv);
        mIconTv.setTextSize(0, dimensionPixelSize);
        ViewGroup.LayoutParams layoutParams = getMIconTv().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        OSIconTextView mIconTv2 = getMIconTv();
        y45.g(mIconTv2);
        mIconTv2.setText(string);
        layoutParams2.gravity = 17;
        int i3 = (int) dimensionPixelSize;
        layoutParams2.width = i3;
        layoutParams2.height = i3;
        setWillNotDraw(false);
        getMIconTv().setTextColor(this.mIconColor);
        if (olb.P) {
            return;
        }
        new OSSpringPressSealAnimation.e().D(1.25f).I(250.0f).C(250.0f).A(0.99f).B(0.4f).E(new fz3()).J(this).G(new OSSpringPressSealAnimation.h() {
            @Override
            public final void onClick(View view, boolean z) {
                OSLiquidSpringFloatingOvalButton.v(this.a, view, z);
            }
        }).H(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OSLiquidSpringFloatingOvalButton.w(this.b, view, motionEvent);
            }
        }).x(new OSSpringPressSealAnimation.f() {
            @Override
            public final void a(boolean z, f43 f43Var, boolean z2, boolean z3, float f, float f2) {
                OSLiquidSpringFloatingOvalButton.x(this.a, z, f43Var, z2, z3, f, f2);
            }
        }).y(new OSSpringPressSealAnimation.g() {
            @Override
            public final void a(boolean z, f43 f43Var, float f, float f2) {
                OSLiquidSpringFloatingOvalButton.y(this.a, z, f43Var, f, f2);
            }
        }).z();
    }
}
