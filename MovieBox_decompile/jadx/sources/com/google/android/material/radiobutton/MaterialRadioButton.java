package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.b0;
import db.a;
import za.c;

public class MaterialRadioButton extends AppCompatRadioButton {

    private static final int f28686c = R$style.Widget_MaterialComponents_CompoundButton_RadioButton;

    private static final int[][] f28687d = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    private ColorStateList f28688a;

    private boolean f28689b;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f28688a == null) {
            int iD = b.d(this, R$attr.colorControlActivated);
            int iD2 = b.d(this, R$attr.colorOnSurface);
            int iD3 = b.d(this, R$attr.colorSurface);
            int[][] iArr = f28687d;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = b.j(iD3, iD, 1.0f);
            iArr2[1] = b.j(iD3, iD2, 0.54f);
            iArr2[2] = b.j(iD3, iD2, 0.38f);
            iArr2[3] = b.j(iD3, iD2, 0.38f);
            this.f28688a = new ColorStateList(iArr, iArr2);
        }
        return this.f28688a;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f28689b;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f28689b && androidx.core.widget.b.b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f28689b = z10;
        if (z10) {
            androidx.core.widget.b.d(this, getMaterialThemeColorsTintList());
        } else {
            androidx.core.widget.b.d(this, null);
        }
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28686c;
        super(a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.MaterialRadioButton, i10, i11, new int[0]);
        if (typedArrayI.hasValue(R$styleable.MaterialRadioButton_buttonTint)) {
            androidx.core.widget.b.d(this, c.a(context2, typedArrayI, R$styleable.MaterialRadioButton_buttonTint));
        }
        this.f28689b = typedArrayI.getBoolean(R$styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayI.recycle();
    }
}
