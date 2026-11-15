package com.google.android.material.elevation;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.color.b;
import va.a;

public enum SurfaceColors {
    SURFACE_0(R$dimen.m3_sys_elevation_level0),
    SURFACE_1(R$dimen.m3_sys_elevation_level1),
    SURFACE_2(R$dimen.m3_sys_elevation_level2),
    SURFACE_3(R$dimen.m3_sys_elevation_level3),
    SURFACE_4(R$dimen.m3_sys_elevation_level4),
    SURFACE_5(R$dimen.m3_sys_elevation_level5);

    private final int elevationResId;

    SurfaceColors(int i10) {
        this.elevationResId = i10;
    }

    public static int getColorForElevation(@NonNull Context context, float f10) {
        return new a(context).b(b.b(context, R$attr.colorSurface, 0), f10);
    }

    public int getColor(@NonNull Context context) {
        return getColorForElevation(context, context.getResources().getDimension(this.elevationResId));
    }
}
