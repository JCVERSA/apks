package com.bytedance.sdk.openadsdk.core.sP;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.sU;

public abstract class HiB extends Sj {
    public HiB(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i10) {
        super(context, sUVar, str, i10);
    }

    protected abstract void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, int i10, int i11, int i12, boolean z10);

    @Override
    public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        if (Sj(view, z10)) {
            Sj(view, f10, f11, f12, f13, sparseArray, this.Yf, this.ley, this.LqL, z10);
        }
        super.Sj(view, f10, f11, f12, f13, sparseArray, z10);
    }
}
