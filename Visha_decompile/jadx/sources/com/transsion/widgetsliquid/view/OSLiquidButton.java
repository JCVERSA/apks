package com.transsion.widgetsliquid.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.StringRes;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetslib.widget.OSIconTextView;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.c74;
import defpackage.e74;
import defpackage.olb;
import defpackage.x71;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\fJ\u0015\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\n2\b\b\u0001\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0013\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u0014J\u0017\u0010\u001e\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u001e\u001a\u00020\n2\b\b\u0001\u0010 \u001a\u00020\u0006¢\u0006\u0004\b\u001e\u0010\u0014J\u0017\u0010\"\u001a\u00020\n2\b\b\u0001\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010\u0014J\u000f\u0010#\u001a\u00020\u000eH\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010\u0011J\u000f\u0010'\u001a\u00020\u0006H\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\u000eH\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u000eH\u0002¢\u0006\u0004\b-\u0010.R\u001b\u00104\u001a\u00020/8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0016\u00107\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0016\u0010<\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidButton;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "resetToDefaultStyle", "()V", "onDetachedFromWindow", "", "toNight", "startBgModeTransition", "(Z)V", "colorRes", "setIconColor", "(I)V", "isSupportMirror", "setSupportIconMirror", "Landroid/content/res/ColorStateList;", "colorStateList", "(Landroid/content/res/ColorStateList;)V", "color", "setPressBackCorlor", "", "iconStr", "setIcon", "(Ljava/lang/String;)V", "iconStrRes", "iconSize", "setIconSize", "hasOverlappingRendering", "()Z", "enabled", "setEnabled", "t", "()I", "night", "r", "(Z)Landroid/content/Context;", "nightMode", "s", "(Z)I", "Lcom/transsion/widgetslib/widget/OSIconTextView;", "N", "Lyi5;", "getMIconText", "()Lcom/transsion/widgetslib/widget/OSIconTextView;", "mIconText", "O", "Z", "isCustomIconColor", "P", "mInitialIsCustomIconColor", "Q", "I", "mInitialTextColor", "Landroid/animation/Animator;", "R", "Landroid/animation/Animator;", "bgModeAnimator", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidButton extends OSLiquidContainerRootLayout {

    public final yi5 mIconText;

    public boolean isCustomIconColor;

    public boolean mInitialIsCustomIconColor;

    public int mInitialTextColor;

    public Animator bgModeAnimator;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidButton(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final OSIconTextView getMIconText() {
        return (OSIconTextView) this.mIconText.getValue();
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
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

    public final Context r(boolean night) {
        Context context = getContext();
        Configuration configuration = new Configuration(getContext().getResources().getConfiguration());
        configuration.uiMode = (configuration.uiMode & (-49)) | (night ? 32 : 16);
        Context contextCreateConfigurationContext = context.createConfigurationContext(configuration);
        y45.i(contextCreateConfigurationContext, "context.createConfigurat…O\n            }\n        )");
        return contextCreateConfigurationContext;
    }

    public final void resetToDefaultStyle() {
        setBackgroundResource(0);
        resetCustomLiquidStyle();
        getOsPressView().setFillColor(t());
        this.isCustomIconColor = this.mInitialIsCustomIconColor;
        getMIconText().setTextColor(this.mInitialTextColor);
    }

    public final int s(boolean nightMode) {
        return olb.m(r(nightMode), R.attr.os_text_primary, R.color.os_text_primary_hios);
    }

    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        setAlpha(enabled ? 1.0f : 0.4f);
    }

    public final void setIcon(String iconStr) {
        getMIconText().setText(iconStr);
    }

    public final void setIconColor(@ColorRes int colorRes) {
        this.isCustomIconColor = true;
        getMIconText().setTextColor(getResources().getColor(colorRes, getContext().getTheme()));
    }

    public final void setIconSize(@DimenRes int iconSize) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(iconSize);
        getMIconText().setTextSize(0, dimensionPixelSize);
        ViewGroup.LayoutParams layoutParams = getMIconText().getLayoutParams();
        layoutParams.width = dimensionPixelSize;
        layoutParams.height = dimensionPixelSize;
        getMIconText().setLayoutParams(getMIconText().getLayoutParams());
    }

    public final void setPressBackCorlor(int color) {
        getOsPressView().setFillColor(color);
    }

    public final void setSupportIconMirror(boolean isSupportMirror) {
        getMIconText().setSupportRtl(isSupportMirror);
    }

    public final void startBgModeTransition(boolean toNight) {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        Animator animator = this.bgModeAnimator;
        if (animator != null) {
            animator.cancel();
        }
        final ArgbEvaluator argbEvaluator = new ArgbEvaluator();
        final int currentTextColor = getMIconText().getCurrentTextColor();
        final int iS = s(toNight);
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
                if (OSLiquidButton.this.isCustomIconColor) {
                    return;
                }
                Object objEvaluate = argbEvaluator.evaluate(f, Integer.valueOf(currentTextColor), Integer.valueOf(iS));
                y45.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
                OSLiquidButton.this.getMIconText().setTextColor(((Integer) objEvaluate).intValue());
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
                if (OSLiquidButton.this.isCustomIconColor) {
                    return;
                }
                OSLiquidButton.this.getMIconText().setTextColor(OSLiquidButton.this.s(z));
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
                if (OSLiquidButton.this.isCustomIconColor) {
                    return;
                }
                OSLiquidButton.this.getMIconText().setTextColor(iS);
            }
        });
    }

    public final int t() {
        if (isNightMode()) {
            return Color.parseColor("#14FFFFFF");
        }
        return getMixLevel() == 5 ? Color.parseColor("#33FFFFFF") : Color.parseColor("#CCFFFFFF");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void setIcon(@StringRes int iconStrRes) {
        getMIconText().setText(getResources().getString(iconStrRes));
    }

    public OSLiquidButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final void setIconColor(ColorStateList colorStateList) {
        y45.j(colorStateList, "colorStateList");
        this.isCustomIconColor = true;
        getMIconText().setTextColor(colorStateList);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidButton(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mIconText = b.a(new c74() {
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
        setElasticTypeConfig(ElasticTypeConfig.BUTTON);
        setLightTypeConfig(LightTypeConfig.BUTTON_AUTO);
        addView(getMIconText());
        enabledPressView(true);
        enableAlpha(true);
        getOsPressView().setFillColor(t());
        int[] iArr = R.styleable.OSLiquidButton;
        y45.i(iArr, "OSLiquidButton");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidButton_os_liquid_button_text_size, typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_search_bar_icon_out_size));
        getMIconText().setTextSize(0, dimensionPixelSize);
        int i2 = R.styleable.OSLiquidButton_os_liquid_button_text_color;
        this.isCustomIconColor = typedArrayObtainStyledAttributes.hasValue(i2);
        int color = typedArrayObtainStyledAttributes.getColor(i2, typedArrayObtainStyledAttributes.getResources().getColor(R.color.os_text_primary_color));
        this.mInitialIsCustomIconColor = this.isCustomIconColor;
        this.mInitialTextColor = color;
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidButton_os_liquid_button_text);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.OSLiquidButton_os_liquid_button_icon_mirror, false);
        if (!TextUtils.isEmpty(string)) {
            getMIconText().setText(string);
        }
        getMIconText().setSupportRtl(z);
        getMIconText().setTextSize(0, dimensionPixelSize);
        getMIconText().setTextColor(color);
        ViewGroup.LayoutParams layoutParams = getMIconText().getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.gravity = 17;
        int i3 = (int) dimensionPixelSize;
        layoutParams2.width = i3;
        layoutParams2.height = i3;
        typedArrayObtainStyledAttributes.recycle();
        setScaleRatio(1.25f);
    }
}
