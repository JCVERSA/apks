package com.bytedance.sdk.openadsdk.core.vS.Sj;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.component.adexpress.sP.Ym;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.sP.TKC;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.lang.ref.WeakReference;

public class Sj extends TKC implements com.bytedance.sdk.component.adexpress.dynamic.vS.Sj {
    protected WeakReference<View> Sj;
    private Ym TKC;
    protected WeakReference<View> sP;

    @Override
    public void Sj(Ym ym2) {
        this.TKC = ym2;
    }

    @Override
    public void sP(View view) {
        this.sP = new WeakReference<>(view);
    }

    @Override
    public void Sj(View view) {
        this.Sj = new WeakReference<>(view);
    }

    @Override
    public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        Sj(view, ((Integer) view.getTag()).intValue(), f10, f11, f12, f13, sparseArray);
    }

    private void Sj(View view, int i10, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray) {
        if (this.TKC != null) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.sP;
            if (weakReference != null) {
                int[] iArrSj = FPG.Sj(weakReference.get());
                if (iArrSj != null) {
                    iArr = iArrSj;
                }
                int[] iArrTKC = FPG.TKC(this.sP.get());
                if (iArrTKC != null) {
                    iArr2 = iArrTKC;
                }
            }
            String strValueOf = "";
            try {
                int i11 = com.bytedance.sdk.component.adexpress.dynamic.Sj.f20268dx;
                if (view.getTag(i11) != null) {
                    strValueOf = String.valueOf(view.getTag(i11));
                }
            } catch (Exception unused) {
            }
            this.TKC.Sj(view, i10, new sef.Sj().EjP(f10).TKC(f11).sP(f12).Sj(f13).sP(this.uP).Sj(this.wE).TKC(iArr[0]).EjP(iArr[1]).HiB(iArr2[0]).vS(iArr2[1]).Sj(sparseArray).Sj(this.fF).Sj(strValueOf).Sj());
        }
    }
}
