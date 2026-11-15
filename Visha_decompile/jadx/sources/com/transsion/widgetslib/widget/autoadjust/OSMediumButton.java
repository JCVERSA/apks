package com.transsion.widgetslib.widget.autoadjust;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSBigButton;
import defpackage.h97;

public class OSMediumButton extends LinearLayout {
    public OSBigButton b;
    public OSBigButton c;
    public LinearLayout d;
    public boolean e;

    public OSMediumButton(Context context) {
        this(context, null);
    }

    public final boolean c(int i) {
        return true;
    }

    public final void d(boolean z) {
        OSBigButton oSBigButton;
        LinearLayout linearLayout = this.d;
        if (linearLayout == null || (oSBigButton = this.b) == null || this.c == null) {
            return;
        }
        int iIndexOfChild = linearLayout.indexOfChild(oSBigButton);
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

    public final int e(int i) {
        return Math.max(0, (i - getContext().getResources().getDimensionPixelSize(R.dimen.os_btn_medium_width_padding)) / 2);
    }

    public final int f(OSBigButton oSBigButton, boolean z) {
        return !z ? oSBigButton.getMaxTextSizeSp() : Math.max(1, oSBigButton.getMaxTextSizeSp() - 4);
    }

    public final void g() {
        View.inflate(getContext(), R.layout.os_view_auto_adjust_double_botton_layout_base, this);
        setGravity(17);
        this.b = (OSBigButton) findViewById(R.id.os_auto_aj_left_btn);
        this.c = (OSBigButton) findViewById(R.id.os_auto_aj_right_btn);
        this.d = (LinearLayout) findViewById(R.id.os_auto_aj_linear_layout);
        post(new h97(this));
        OSBigButton oSBigButton = this.b;
        oSBigButton.setMaxButtonHeightDp(oSBigButton.getMinButtonHeightDp());
        OSBigButton oSBigButton2 = this.c;
        oSBigButton2.setMaxButtonHeightDp(oSBigButton2.getMinButtonHeightDp());
        m(false);
        this.b.registerOnMeasureListener(new OSBigButton.a() {
            @Override
            public final void onMeasure(int i, int i2) {
                this.a.i(i, i2);
            }
        });
        this.c.registerOnMeasureListener(new OSBigButton.a() {
            @Override
            public final void onMeasure(int i, int i2) {
                this.a.j(i, i2);
            }
        });
    }

    public OSBigButton getFirstButton() {
        return this.b;
    }

    public OSBigButton getSecondButton() {
        return this.c;
    }

    public final boolean h(OSBigButton oSBigButton, int i) {
        return !oSBigButton.isTextFullyVisibleInButton(oSBigButton.getText(), oSBigButton.getMaxTextSizeSp(), oSBigButton.getMaxLetterSpacing(), 1, i);
    }

    public final void i(int i, int i2) {
        judgeButtonLayout();
    }

    public final void j(int i, int i2) {
        judgeButtonLayout();
    }

    public void judgeButtonLayout() {
        int measuredWidth = this.d.getMeasuredWidth();
        if (measuredWidth <= 0) {
            return;
        }
        int iE = e(measuredWidth);
        if (!c(iE) || h(this.b, iE) || h(this.c, iE)) {
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
            post(new h97(this));
            return;
        }
        if (this.e) {
            k();
        }
    }

    public final void k() {
        n(this.b);
        n(this.c);
    }

    public final void l(int i) {
        this.b.setMaxTextLine(i);
        this.c.setMaxTextLine(i);
    }

    public final void m(boolean z) {
        OSBigButton oSBigButton = this.b;
        oSBigButton.setMinTextSizeSp(f(oSBigButton, z));
        OSBigButton oSBigButton2 = this.c;
        oSBigButton2.setMinTextSizeSp(f(oSBigButton2, z));
    }

    public final void n(OSBigButton oSBigButton) {
        int measuredWidth = oSBigButton.getMeasuredWidth();
        if (measuredWidth <= 0) {
            return;
        }
        boolean zIsTextFullyVisibleInButton = oSBigButton.isTextFullyVisibleInButton(oSBigButton.getText(), oSBigButton.getMaxTextSizeSp(), oSBigButton.getMaxLetterSpacing(), 2, measuredWidth);
        int maxTextSizeSp = oSBigButton.getMaxTextSizeSp();
        if (!zIsTextFullyVisibleInButton) {
            int iMax = Math.max(1, oSBigButton.getMaxTextSizeSp() - 2);
            maxTextSizeSp = oSBigButton.isTextFullyVisibleInButton(oSBigButton.getText(), (float) iMax, oSBigButton.getMaxLetterSpacing(), 2, measuredWidth) ? iMax : f(oSBigButton, true);
        }
        if (oSBigButton.getMinTextSizeSp() != maxTextSizeSp) {
            oSBigButton.setMinTextSizeSp(maxTextSizeSp);
        }
    }

    public void updateLayoutToHorizontal() {
        this.e = false;
        this.d.setOrientation(0);
        d(false);
        l(1);
        m(this.e);
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
        d(true);
        l(2);
        m(this.e);
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

    public OSMediumButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSMediumButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        g();
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
                    OSBigButton oSBigButton = this.b;
                    int i4 = R.color.os_platform_basic_color_selector;
                    oSBigButton.setTextColor(ContextCompat.getColorStateList(context, i4));
                    OSBigButton oSBigButton2 = this.b;
                    int i5 = R.drawable.os_btn_big_gray;
                    oSBigButton2.setBackgroundResource(i5);
                    this.c.setTextColor(ContextCompat.getColorStateList(context, i4));
                    this.c.setBackgroundResource(i5);
                } else if (i3 == 2) {
                    OSBigButton oSBigButton3 = this.b;
                    int i6 = R.color.os_platform_red_color_selector;
                    oSBigButton3.setTextColor(ContextCompat.getColorStateList(context, i6));
                    OSBigButton oSBigButton4 = this.b;
                    int i7 = R.drawable.os_btn_big_gray;
                    oSBigButton4.setBackgroundResource(i7);
                    this.c.setTextColor(ContextCompat.getColorStateList(context, i6));
                    this.c.setBackgroundResource(i7);
                } else if (i3 == 3) {
                    OSBigButton oSBigButton5 = this.b;
                    int i8 = R.color.os_button_on_color_outline_selector;
                    oSBigButton5.setTextColor(ContextCompat.getColorStateList(context, i8));
                    OSBigButton oSBigButton6 = this.b;
                    int i9 = R.drawable.os_btn_big_outline_white;
                    oSBigButton6.setBackgroundResource(i9);
                    this.c.setTextColor(ContextCompat.getColorStateList(context, i8));
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
