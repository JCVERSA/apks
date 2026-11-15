package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.StringRes;
import androidx.core.widget.TextViewCompat;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import com.transsion.widgetsliquid.R;
import com.transsion.widgetsliquid.effect.OSLiquidContainerRootLayout;
import defpackage.c74;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\f2\b\b\u0001\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0010\u0010\u0014J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\f2\b\b\u0001\u0010\u001b\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u0011J\u0017\u0010\u001d\u001a\u00020\f2\b\b\u0001\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u0011J\u001d\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u001f\u001a\u00020\f2\b\b\u0001\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\u001f\u0010\u0011J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020%8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0016\u0010-\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcom/transsion/widgetsliquid/view/OSLiquidTextButton;", "Lcom/transsion/widgetsliquid/effect/OSLiquidContainerRootLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "colorRes", "setTextColor", "(I)V", "Landroid/content/res/ColorStateList;", "colorStateList", "(Landroid/content/res/ColorStateList;)V", "", "getText", "()Ljava/lang/CharSequence;", "iconStr", "setText", "(Ljava/lang/CharSequence;)V", "iconStrRes", "iconSize", "setTextSize", "dp", "setMaxWidth", "(Landroid/content/Context;I)V", "dimenRes", "", "hasOverlappingRendering", "()Z", "Landroid/widget/TextView;", "N", "Lyi5;", "getMText", "()Landroid/widget/TextView;", "mText", "O", "I", "mMaxWidthPx", "widgetsliquid_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class OSLiquidTextButton extends OSLiquidContainerRootLayout {

    public final yi5 mText;

    public int mMaxWidthPx;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidTextButton(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final TextView getMText() {
        return (TextView) this.mText.getValue();
    }

    public final CharSequence getText() {
        return getMText().getText();
    }

    @Override
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mMaxWidthPx == Integer.MAX_VALUE) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        } else {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            super.onMeasure(mode == 0 ? View.MeasureSpec.makeMeasureSpec(this.mMaxWidthPx, Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(wn8.g(View.MeasureSpec.getSize(widthMeasureSpec), this.mMaxWidthPx), mode), heightMeasureSpec);
        }
    }

    public final void setMaxWidth(Context context, int dp) {
        y45.j(context, "context");
        this.mMaxWidthPx = (int) TypedValue.applyDimension(1, dp, context.getResources().getDisplayMetrics());
        requestLayout();
    }

    public final void setText(CharSequence iconStr) {
        getMText().setText(iconStr);
    }

    public final void setTextColor(@ColorRes int colorRes) {
        getMText().setTextColor(getResources().getColor(colorRes, getContext().getTheme()));
    }

    public final void setTextSize(@DimenRes int iconSize) {
        getMText().setTextSize(0, getResources().getDimensionPixelSize(iconSize));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OSLiquidTextButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public final void setText(@StringRes int iconStrRes) {
        getMText().setText(getResources().getString(iconStrRes));
    }

    public final void setTextColor(ColorStateList colorStateList) {
        y45.j(colorStateList, "colorStateList");
        getMText().setTextColor(colorStateList);
    }

    public OSLiquidTextButton(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OSLiquidTextButton(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mText = b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final TextView invoke() {
                TextView textView = new TextView(context);
                textView.setClickable(false);
                textView.setIncludeFontPadding(true);
                textView.setGravity(17);
                textView.setMaxLines(1);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                TextViewCompat.setTextAppearance(textView, R.style.os_semibold_font);
                Resources resources = textView.getResources();
                int i2 = R.dimen.os_space150;
                textView.setPadding(resources.getDimensionPixelSize(i2), 0, textView.getResources().getDimensionPixelSize(i2), 0);
                return textView;
            }
        });
        this.mMaxWidthPx = Integer.MAX_VALUE;
        setElasticTypeConfig(ElasticTypeConfig.BUTTON);
        setLightTypeConfig(LightTypeConfig.TEXT_BUTTON_AUTO);
        addView(getMText());
        int[] iArr = R.styleable.OSLiquidButton;
        y45.i(iArr, "OSLiquidButton");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
        y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(s…efStyleAttr, defStyleRes)");
        float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.OSLiquidButton_os_liquid_button_text_size, typedArrayObtainStyledAttributes.getResources().getDimensionPixelSize(R.dimen.os_search_bar_icon_out_size));
        getMText().setTextSize(0, dimensionPixelSize);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.OSLiquidButton_os_liquid_button_text_color, typedArrayObtainStyledAttributes.getResources().getColor(R.color.os_text_primary_color));
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.OSLiquidButton_os_liquid_button_text);
        if (!TextUtils.isEmpty(string)) {
            getMText().setText(string);
        }
        getMText().setTextSize(0, dimensionPixelSize);
        getMText().setTextColor(color);
        typedArrayObtainStyledAttributes.recycle();
        setScaleRatio(1.25f);
    }

    public final void setMaxWidth(@DimenRes int dimenRes) {
        this.mMaxWidthPx = getResources().getDimensionPixelSize(dimenRes);
        requestLayout();
    }
}
