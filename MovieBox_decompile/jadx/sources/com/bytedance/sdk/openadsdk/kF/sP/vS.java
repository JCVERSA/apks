package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.LD;

public class vS {
    public static boolean Sj(View view, int i10) {
        return Sj(view, false, i10);
    }

    public static boolean Sj(View view, boolean z10, int i10) {
        if (view == null) {
            return false;
        }
        return LD.Sj(view, z10 ? 30 : 50, i10);
    }
}
