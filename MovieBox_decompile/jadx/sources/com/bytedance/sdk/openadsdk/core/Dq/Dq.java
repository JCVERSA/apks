package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;
import org.json.JSONObject;

public class Dq extends com.bytedance.sdk.openadsdk.core.sP.Sj {
    public Dq(@NonNull Context context, @NonNull com.bytedance.sdk.openadsdk.core.model.sU sUVar, @NonNull String str, int i10) {
        super(context, sUVar, str, i10);
    }

    @Override
    protected com.bytedance.sdk.openadsdk.core.model.TEQ Sj(float f10, float f11, float f12, float f13, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, long j10, long j11, View view, View view2, String str, float f14, int i10, float f15, int i11, JSONObject jSONObject, JSONObject jSONObject2) {
        float f16;
        float f17;
        float f18;
        float fSP;
        int i12;
        int i13;
        int i14;
        long j12;
        long j13;
        char c10;
        int iSP;
        int iSP2;
        int[] iArrSj = FPG.Sj(view);
        int i15 = 0;
        if (iArrSj == null || iArrSj.length != 2) {
            f16 = f10;
            f17 = f11;
            f18 = f12;
            fSP = f13;
            i12 = 0;
            i13 = 0;
        } else {
            i12 = iArrSj[0];
            i13 = iArrSj[1];
            if (this.sU == 0) {
                float fSP2 = (FPG.sP(this.EjP, f10) + i12) - 0.5f;
                float fSP3 = (FPG.sP(this.EjP, f11) + i13) - 0.5f;
                float fSP4 = (FPG.sP(this.EjP, f12) + i12) - 0.5f;
                fSP = (FPG.sP(this.EjP, f13) + i13) - 0.5f;
                f18 = fSP4;
                f16 = fSP2;
                f17 = fSP3;
            } else {
                f16 = f10;
                f17 = f11;
                f18 = f12;
                fSP = f13;
            }
        }
        int[] iArrSj2 = new int[2];
        int[] iArrTKC = new int[2];
        com.bytedance.sdk.openadsdk.core.model.sef sefVar = this.HiB;
        if (sefVar != null) {
            j12 = sefVar.HiB;
            j13 = sefVar.vS;
            if (this.sU == 0) {
                iArrSj2[0] = FPG.sP(this.EjP, sefVar.Jcg) + i12;
                iArrSj2[1] = FPG.sP(this.EjP, this.HiB.Dq) + i13;
                iSP = FPG.sP(this.EjP, this.HiB.uA);
                iSP2 = FPG.sP(this.EjP, this.HiB.TEQ);
                c10 = 0;
                i14 = 1;
            } else {
                c10 = 0;
                iArrSj2[0] = sefVar.Jcg;
                i14 = 1;
                iArrSj2[1] = sefVar.Dq;
                iSP = sefVar.uA;
                iSP2 = sefVar.TEQ;
            }
            iArrTKC[c10] = iSP;
            iArrTKC[i14] = iSP2;
            if (iSP == 0 && iSP2 == 0 && view2 != null) {
                iArrSj2 = FPG.Sj(view2);
                iArrTKC = FPG.TKC(view2);
            }
            i15 = 0;
        } else {
            i14 = 1;
            j12 = j10;
            j13 = j11;
        }
        this.sU = i15;
        return new com.bytedance.sdk.openadsdk.core.model.TEQ.Sj().vS(f16).HiB(f17).EjP(f18).TKC(fSP).sP(j12).Sj(j13).sP(iArrSj).Sj(iArrSj2).TKC(FPG.TKC(view)).EjP(iArrTKC).EjP(this.ley).HiB(this.LqL).vS(this.Yf).sP(com.bytedance.sdk.openadsdk.core.uA.sP().Sj() ? i14 : 2).Sj(sparseArray).Sj(str).Sj(f14).TKC(i10).sP(f15).Sj(i11).Sj(jSONObject).sP(jSONObject2).Sj();
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sef sefVar) {
        this.HiB = sefVar;
    }
}
