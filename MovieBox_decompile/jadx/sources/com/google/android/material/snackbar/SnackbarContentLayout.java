package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import ya.j;

public class SnackbarContentLayout extends LinearLayout implements a {

    private TextView f28969a;

    private Button f28970b;

    private final TimeInterpolator f28971c;

    private int f28972d;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    private static void b(View view, int i10, int i11) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i10, ViewCompat.getPaddingEnd(view), i11);
        } else {
            view.setPadding(view.getPaddingLeft(), i10, view.getPaddingRight(), i11);
        }
    }

    private boolean c(int i10, int i11, int i12) {
        boolean z10;
        if (i10 != getOrientation()) {
            setOrientation(i10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f28969a.getPaddingTop() == i11 && this.f28969a.getPaddingBottom() == i12) {
            return z10;
        }
        b(this.f28969a, i11, i12);
        return true;
    }

    void a(float f10) {
        if (f10 != 1.0f) {
            this.f28970b.setTextColor(com.google.android.material.color.b.j(com.google.android.material.color.b.d(this, R$attr.colorSurface), this.f28970b.getCurrentTextColor(), f10));
        }
    }

    @Override
    public void animateContentIn(int i10, int i11) {
        this.f28969a.setAlpha(0.0f);
        long j10 = i11;
        long j11 = i10;
        this.f28969a.animate().alpha(1.0f).setDuration(j10).setInterpolator(this.f28971c).setStartDelay(j11).start();
        if (this.f28970b.getVisibility() == 0) {
            this.f28970b.setAlpha(0.0f);
            this.f28970b.animate().alpha(1.0f).setDuration(j10).setInterpolator(this.f28971c).setStartDelay(j11).start();
        }
    }

    @Override
    public void animateContentOut(int i10, int i11) {
        this.f28969a.setAlpha(1.0f);
        long j10 = i11;
        long j11 = i10;
        this.f28969a.animate().alpha(0.0f).setDuration(j10).setInterpolator(this.f28971c).setStartDelay(j11).start();
        if (this.f28970b.getVisibility() == 0) {
            this.f28970b.setAlpha(1.0f);
            this.f28970b.animate().alpha(0.0f).setDuration(j10).setInterpolator(this.f28971c).setStartDelay(j11).start();
        }
    }

    public Button getActionView() {
        return this.f28970b;
    }

    public TextView getMessageView() {
        return this.f28969a;
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f28969a = (TextView) findViewById(R$id.snackbar_text);
        this.f28970b = (Button) findViewById(R$id.snackbar_action);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R$dimen.design_snackbar_padding_vertical);
        Layout layout = this.f28969a.getLayout();
        boolean z10 = layout != null && layout.getLineCount() > 1;
        if (!z10 || this.f28972d <= 0 || this.f28970b.getMeasuredWidth() <= this.f28972d) {
            if (!z10) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!c(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!c(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i10, i11);
    }

    public void setMaxInlineActionWidth(int i10) {
        this.f28972d = i10;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28971c = j.g(context, R$attr.motionEasingEmphasizedInterpolator, qa.a.f69578b);
    }
}
