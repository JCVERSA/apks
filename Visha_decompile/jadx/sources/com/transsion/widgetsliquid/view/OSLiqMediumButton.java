package com.transsion.widgetsliquid.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.view.OSBigButton;
import com.transsion.widgetsliquid.R;
import defpackage.n57;
import defpackage.olb;

public class OSLiqMediumButton extends LinearLayout {
    public OSLiquidBigButton b;
    public OSLiquidBigButton c;
    public LinearLayout d;
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public final TextPaint i;

    public OSLiqMediumButton(Context context) {
        this(context, null);
    }

    public final void c(OSBigButton oSBigButton, int i, boolean z) {
        oSBigButton.setMaxTextSizeSp(i);
        oSBigButton.setMinTextSizeSp(i);
        oSBigButton.setTextSize(i);
        oSBigButton.setLetterSpacing(oSBigButton.getMaxLetterSpacing());
        if (z) {
            oSBigButton.requestLayout();
        }
    }

    public final boolean d() {
        return e(this.c.getOsBigButton(), this.h) | e(this.b.getOsBigButton(), this.g);
    }

    public final boolean e(OSBigButton oSBigButton, int i) {
        int measuredWidth = oSBigButton.getMeasuredWidth();
        if (measuredWidth <= 0 || i <= 0) {
            return false;
        }
        if (k(oSBigButton, i, 2, measuredWidth)) {
            int iMax = Math.max(1, i - 2);
            i = k(oSBigButton, iMax, 2, measuredWidth) ? Math.max(1, i - 4) : iMax;
        }
        if (oSBigButton.getMaxTextSizeSp() == i && oSBigButton.getMinTextSizeSp() == i) {
            return false;
        }
        c(oSBigButton, i, false);
        return true;
    }

    public final boolean f(int i) {
        return true;
    }

    public final void g(boolean z) {
        OSLiquidBigButton oSLiquidBigButton;
        LinearLayout linearLayout = this.d;
        if (linearLayout == null || (oSLiquidBigButton = this.b) == null || this.c == null) {
            return;
        }
        int iIndexOfChild = linearLayout.indexOfChild(oSLiquidBigButton);
        int iIndexOfChild2 = this.d.indexOfChild(this.c);
        if (iIndexOfChild < 0 || iIndexOfChild2 < 0) {
            return;
        }
        if (z) {
            if (iIndexOfChild2 < iIndexOfChild) {
                return;
            }
        } else if (iIndexOfChild < iIndexOfChild2) {
            return;
        }
        this.d.removeView(this.b);
        this.d.removeView(this.c);
        if (z) {
            this.d.addView(this.c);
            this.d.addView(this.b);
        } else {
            this.d.addView(this.b);
            this.d.addView(this.c);
        }
    }

    public OSLiquidBigButton getFirstButton() {
        return this.b;
    }

    public OSLiquidBigButton getSecondButton() {
        return this.c;
    }

    public final int h(int i) {
        return Math.max(0, (i - getContext().getResources().getDimensionPixelSize(R.dimen.os_btn_medium_width_padding)) / 2);
    }

    public final void i() {
        View.inflate(getContext(), R.layout.os_liq_view_auto_adjust_double_botton_layout_base, this);
        setGravity(17);
        this.b = (OSLiquidBigButton) findViewById(R.id.os_auto_aj_left_btn);
        this.c = (OSLiquidBigButton) findViewById(R.id.os_auto_aj_right_btn);
        this.d = (LinearLayout) findViewById(R.id.os_auto_aj_linear_layout);
        post(new n57(this));
        this.b.getOsBigButton().setMaxButtonHeightDp(this.b.getOsBigButton().getMinButtonHeightDp());
        this.c.getOsBigButton().setMaxButtonHeightDp(this.c.getOsBigButton().getMinButtonHeightDp());
        this.g = this.b.getOsBigButton().getMaxTextSizeSp();
        this.h = this.c.getOsBigButton().getMaxTextSizeSp();
        p(false);
        this.b.getOsBigButton().registerOnMeasureListener(new OSBigButton.a() {
            @Override
            public final void onMeasure(int i, int i2) {
                this.a.l(i, i2);
            }
        });
        this.c.getOsBigButton().registerOnMeasureListener(new OSBigButton.a() {
            @Override
            public final void onMeasure(int i, int i2) {
                this.a.m(i, i2);
            }
        });
        setButtonMixLevel(1, 5);
    }

    public final boolean j(OSLiquidBigButton oSLiquidBigButton, int i) {
        return !oSLiquidBigButton.getOsBigButton().isTextFullyVisibleInButton(oSLiquidBigButton.getOsBigButton().getText(), oSLiquidBigButton.getOsBigButton().getMaxTextSizeSp(), oSLiquidBigButton.getOsBigButton().getMaxLetterSpacing(), 1, i);
    }

    public void judgeButtonLayout() {
        int measuredWidth;
        if (this.f && (measuredWidth = this.d.getMeasuredWidth()) > 0) {
            int iH = h(measuredWidth);
            if (!f(iH) || j(this.b, iH) || j(this.c, iH)) {
                if (!this.e) {
                    this.e = true;
                    post(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.updateLayoutToVertical();
                        }
                    });
                }
            } else if (this.e) {
                this.e = false;
                post(new n57(this));
                return;
            }
            if (this.e) {
                n();
            }
        }
    }

    public final boolean k(OSBigButton oSBigButton, int i, int i2, int i3) {
        int paddingLeft = (i3 - oSBigButton.getPaddingLeft()) - oSBigButton.getPaddingRight();
        if (paddingLeft <= 0) {
            return true;
        }
        TextPaint textPaint = this.i;
        textPaint.set(oSBigButton.getPaint());
        textPaint.setTextSize(olb.q0(getContext()) ? i * 3.0f : TypedValue.applyDimension(2, i, getContext().getResources().getDisplayMetrics()));
        textPaint.setLetterSpacing(oSBigButton.getMaxLetterSpacing());
        CharSequence text = oSBigButton.getText();
        String string = text == null ? "" : text.toString();
        StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(string, 0, string.length(), textPaint, paddingLeft).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(oSBigButton.getLineSpacingExtra(), oSBigButton.getLineSpacingMultiplier()).setIncludePad(oSBigButton.getIncludeFontPadding()).setEllipsize(TextUtils.TruncateAt.END).setMaxLines(i2).build();
        return staticLayoutBuild.getLineCount() >= i2 && staticLayoutBuild.getEllipsisCount(i2 - 1) > 0;
    }

    public final void l(int i, int i2) {
        judgeButtonLayout();
    }

    public final void m(int i, int i2) {
        judgeButtonLayout();
    }

    public final void n() {
        requestLayout();
    }

    public final void o(int i) {
        this.b.getOsBigButton().setMaxTextLine(i);
        this.c.getOsBigButton().setMaxTextLine(i);
        this.b.getOsBigButton().requestLayout();
        this.c.getOsBigButton().requestLayout();
    }

    @Override
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (this.e && mode == Integer.MIN_VALUE && size > 0) {
            i = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        }
        super.onMeasure(i, i2);
        if (this.e && d()) {
            super.onMeasure(i, i2);
        }
    }

    public final void p(boolean z) {
        if (z) {
            c(this.b.getOsBigButton(), this.g, true);
            c(this.c.getOsBigButton(), this.h, true);
        } else {
            c(this.b.getOsBigButton(), this.g, true);
            c(this.c.getOsBigButton(), this.h, true);
        }
    }

    public void setAutoAdjustLayoutEnabled(boolean z) {
        this.f = z;
    }

    public void setButtonMixLevel(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 31) {
            this.b.setMixLevel(i);
            this.c.setMixLevel(i2);
        }
    }

    public void setMixLevel(int i) {
        if (Build.VERSION.SDK_INT >= 31) {
            this.b.setMixLevel(i);
            this.c.setMixLevel(i);
        }
    }

    public void updateLayoutToHorizontal() {
        this.e = false;
        this.d.setOrientation(0);
        g(false);
        o(1);
        p(this.e);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_btn_medium_width_padding);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.height = -2;
        layoutParams.weight = 1.0f;
        layoutParams.topMargin = 0;
        layoutParams.setMarginEnd(dimensionPixelSize);
        this.b.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams2.width = 0;
        layoutParams2.height = -2;
        layoutParams2.weight = 1.0f;
        layoutParams2.topMargin = 0;
        layoutParams2.setMarginEnd(0);
        this.c.setLayoutParams(layoutParams2);
    }

    public void updateLayoutToVertical() {
        this.e = true;
        this.d.setOrientation(1);
        g(true);
        o(2);
        p(this.e);
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_space125);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.weight = 0.0f;
        layoutParams.topMargin = dimensionPixelSize;
        layoutParams.setMarginEnd(0);
        this.b.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -2;
        layoutParams2.weight = 0.0f;
        layoutParams2.topMargin = 0;
        layoutParams2.setMarginEnd(0);
        this.c.setLayoutParams(layoutParams2);
    }

    public OSLiqMediumButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSLiqMediumButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = true;
        this.g = 0;
        this.h = 0;
        this.i = new TextPaint();
        i();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MediumButton);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.MediumButton_first_text) {
                this.b.setText(typedArrayObtainStyledAttributes.getString(index));
            } else if (index == R.styleable.MediumButton_second_text) {
                this.c.setText(typedArrayObtainStyledAttributes.getString(index));
            } else if (index == R.styleable.MediumButton_style_mod) {
                int i3 = typedArrayObtainStyledAttributes.getInt(index, 0);
                if (i3 == 1) {
                    OSBigButton osBigButton = this.b.getOsBigButton();
                    int i4 = R.color.os_platform_basic_color_selector;
                    osBigButton.setTextColor(ContextCompat.getColorStateList(context, i4));
                    OSLiquidBigButton oSLiquidBigButton = this.b;
                    int i5 = R.drawable.os_btn_big_gray;
                    oSLiquidBigButton.setBackgroundResource(i5);
                    this.c.getOsBigButton().setTextColor(ContextCompat.getColorStateList(context, i4));
                    this.c.setBackgroundResource(i5);
                } else if (i3 == 2) {
                    OSBigButton osBigButton2 = this.b.getOsBigButton();
                    int i6 = R.color.os_platform_red_color_selector;
                    osBigButton2.setTextColor(ContextCompat.getColorStateList(context, i6));
                    OSLiquidBigButton oSLiquidBigButton2 = this.b;
                    int i7 = R.drawable.os_btn_big_gray;
                    oSLiquidBigButton2.setBackgroundResource(i7);
                    this.c.getOsBigButton().setTextColor(ContextCompat.getColorStateList(context, i6));
                    this.c.setBackgroundResource(i7);
                } else if (i3 == 3) {
                    OSBigButton osBigButton3 = this.b.getOsBigButton();
                    int i8 = R.color.os_button_on_color_outline_selector;
                    osBigButton3.setTextColor(ContextCompat.getColorStateList(context, i8));
                    OSLiquidBigButton oSLiquidBigButton3 = this.b;
                    int i9 = R.drawable.os_btn_big_outline_white;
                    oSLiquidBigButton3.setBackgroundResource(i9);
                    this.c.getOsBigButton().setTextColor(ContextCompat.getColorStateList(context, i8));
                    this.c.setBackgroundResource(i9);
                }
            } else if (index == R.styleable.MediumButton_first_enable) {
                this.b.setEnabled(typedArrayObtainStyledAttributes.getBoolean(index, true));
            } else if (index == R.styleable.MediumButton_second_enable) {
                this.c.setEnabled(typedArrayObtainStyledAttributes.getBoolean(index, true));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
