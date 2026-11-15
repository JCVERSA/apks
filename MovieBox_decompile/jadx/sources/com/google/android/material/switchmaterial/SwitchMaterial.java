package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.color.b;
import com.google.android.material.internal.b0;
import com.google.android.material.internal.f0;
import va.a;

public class SwitchMaterial extends SwitchCompat {

    private static final int f28984b0 = R$style.Widget_MaterialComponents_CompoundButton_Switch;

    private static final int[][] f28985c0 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private final a U;
    private ColorStateList V;
    private ColorStateList W;

    private boolean f28986a0;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.V == null) {
            int iD = b.d(this, R$attr.colorSurface);
            int iD2 = b.d(this, R$attr.colorControlActivated);
            float dimension = getResources().getDimension(R$dimen.mtrl_switch_thumb_elevation);
            if (this.U.e()) {
                dimension += f0.n(this);
            }
            int iC = this.U.c(iD, dimension);
            int[][] iArr = f28985c0;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = b.j(iD, iD2, 1.0f);
            iArr2[1] = iC;
            iArr2[2] = b.j(iD, iD2, 0.38f);
            iArr2[3] = iC;
            this.V = new ColorStateList(iArr, iArr2);
        }
        return this.V;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.W == null) {
            int[][] iArr = f28985c0;
            int[] iArr2 = new int[iArr.length];
            int iD = b.d(this, R$attr.colorSurface);
            int iD2 = b.d(this, R$attr.colorControlActivated);
            int iD3 = b.d(this, R$attr.colorOnSurface);
            iArr2[0] = b.j(iD, iD2, 0.54f);
            iArr2[1] = b.j(iD, iD3, 0.32f);
            iArr2[2] = b.j(iD, iD2, 0.12f);
            iArr2[3] = b.j(iD, iD3, 0.12f);
            this.W = new ColorStateList(iArr, iArr2);
        }
        return this.W;
    }

    public boolean isUseMaterialThemeColors() {
        return this.f28986a0;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f28986a0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f28986a0 && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        this.f28986a0 = z10;
        if (z10) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11 = f28984b0;
        super(db.a.c(context, attributeSet, i10, i11), attributeSet, i10);
        Context context2 = getContext();
        this.U = new a(context2);
        TypedArray typedArrayI = b0.i(context2, attributeSet, R$styleable.SwitchMaterial, i10, i11, new int[0]);
        this.f28986a0 = typedArrayI.getBoolean(R$styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayI.recycle();
    }
}
