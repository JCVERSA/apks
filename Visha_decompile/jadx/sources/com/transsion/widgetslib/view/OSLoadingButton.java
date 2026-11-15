package com.transsion.widgetslib.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class OSLoadingButton extends FrameLayout {
    public OSBigButton b;
    public OSLoadingView c;
    public boolean d;
    public String e;
    public String f;
    public View.OnClickListener g;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override
        public void onGlobalLayout() {
            OSLoadingButton.this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (OSLoadingButton.this.b.getLayout() == null || OSLoadingButton.this.b.getLayout().getEllipsisCount(0) <= 0) {
                return;
            }
            Resources resources = OSLoadingButton.this.getContext().getResources();
            int i = R.dimen.os_space200;
            OSLoadingButton.this.b.setPaddingRelative((resources.getDimensionPixelSize(i) * 2) + OSLoadingButton.this.getContext().getResources().getDimensionPixelSize(R.dimen.os_space150), 0, OSLoadingButton.this.getContext().getResources().getDimensionPixelSize(i), 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) OSLoadingButton.this.c.getLayoutParams();
            marginLayoutParams.setMarginStart(OSLoadingButton.this.getContext().getResources().getDimensionPixelSize(i));
            OSLoadingButton.this.c.setLayoutParams(marginLayoutParams);
        }
    }

    public OSLoadingButton(@NonNull Context context) {
        this(context, null);
    }

    public final void d(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.os_loading_button_layout, (ViewGroup) this, true);
        this.b = (OSBigButton) viewInflate.findViewById(R.id.os_loading_button);
        this.c = (OSLoadingView) viewInflate.findViewById(R.id.os_loading_view);
        String string = this.b.getText().toString();
        this.e = string;
        this.f = string;
        this.c.setVisibility(8);
        this.b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.e(view);
            }
        });
    }

    public final void e(View view) {
        View.OnClickListener onClickListener;
        if (this.d || (onClickListener = this.g) == null) {
            return;
        }
        onClickListener.onClick(this);
    }

    public final void f() {
        OSBigButton oSBigButton = this.b;
        if (oSBigButton == null || this.c == null) {
            return;
        }
        int iMax = Math.max(oSBigButton.getMeasuredWidth(), this.b.getMinimumWidth());
        float fMeasureText = this.b.getPaint().measureText(this.f);
        float f = iMax;
        float paddingLeft = this.b.getPaddingLeft();
        float paddingRight = ((((f - fMeasureText) - paddingLeft) - this.b.getPaddingRight()) / 2.0f) + paddingLeft;
        float f2 = fMeasureText + paddingRight;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
        if (layoutParams != null) {
            if (TextUtils.isEmpty(this.f)) {
                layoutParams.removeRule(18);
                layoutParams.addRule(14);
                this.c.setLayoutParams(layoutParams);
            } else {
                int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.os_space200);
                int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.os_space150);
                if (olb.l0()) {
                    int iMax2 = Math.max(0, (int) (((f - f2) - dimensionPixelSize2) - dimensionPixelSize));
                    layoutParams.leftMargin = 0;
                    layoutParams.setMarginStart(iMax2);
                    this.c.setLayoutParams(layoutParams);
                } else {
                    layoutParams.setMarginStart(Math.max(0, (int) ((paddingRight - dimensionPixelSize) - dimensionPixelSize2)));
                    layoutParams.rightMargin = 0;
                    this.c.setLayoutParams(layoutParams);
                }
            }
            this.c.invalidate();
        }
    }

    public OSBigButton getButton() {
        return this.b;
    }

    public OSLoadingView getLoadingView() {
        return this.c;
    }

    public String getText() {
        return this.e;
    }

    public boolean isLoading() {
        return this.d;
    }

    public void setButtonHeight(int i) {
        OSBigButton oSBigButton = this.b;
        if (oSBigButton != null) {
            oSBigButton.setMinButtonHeightDp(i);
        }
    }

    public void setButtonTextSize(int i) {
        OSBigButton oSBigButton = this.b;
        if (oSBigButton != null) {
            oSBigButton.setMinTextSizeSp(i);
        }
    }

    public void setLoading(boolean z) {
        if (this.d == z) {
            return;
        }
        this.d = z;
        this.b.setEnabled(!z);
        if (z) {
            this.b.setText(this.f);
            this.b.getViewTreeObserver().addOnGlobalLayoutListener(new a());
            this.c.setVisibility(0);
            this.c.startLoadingAnimation();
            return;
        }
        this.c.setVisibility(8);
        this.b.setText(this.e);
        OSBigButton oSBigButton = this.b;
        Resources resources = getContext().getResources();
        int i = R.dimen.os_space200;
        oSBigButton.setPadding(resources.getDimensionPixelSize(i), 0, getContext().getResources().getDimensionPixelSize(i), 0);
    }

    public void setLoadingText(String str) {
        this.f = str;
        f();
    }

    @Override
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.g = onClickListener;
    }

    public void setText(String str) {
        this.e = str;
        this.b.setText(str);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.b.setTextColor(colorStateList);
    }

    public OSLoadingButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OSLoadingButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = false;
        this.f = "";
        d(context);
    }
}
