package com.bytedance.sdk.openadsdk.core.sP;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.TEQ;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.sef;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.Zq;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import w5.b;

public class sP extends TKC {
    private static int Mts = Integer.MIN_VALUE;
    protected final int Dq;
    protected Context EjP;
    protected PAGNativeAd Fmk;
    public sef HiB;
    protected final String Jcg;
    protected com.bytedance.sdk.openadsdk.core.Dq.sP RiZ;
    private String Sj;
    protected WeakReference<View> TEQ;
    private boolean TKC;
    protected PangleAd TzV;
    protected TEQ Ym;
    protected boolean Zq;

    protected Sj f20477aa;
    protected Map<String, Object> dNu;
    private WeakReference<Activity> sP;
    protected int sU;
    protected b sef;
    protected WeakReference<View> uA;
    protected com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS uvD;
    protected final sU vS;

    public interface Sj {
        void Sj(View view, int i10);
    }

    public sP(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i10) {
        this.Zq = false;
        this.sU = 0;
        this.TKC = false;
        this.EjP = context;
        this.vS = sUVar;
        this.Jcg = str;
        this.Dq = i10;
    }

    public View EjP() {
        WeakReference<Activity> weakReference = this.sP;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.sP.get().findViewById(R.id.content);
    }

    public void HiB(boolean z10) {
        this.Zq = z10;
    }

    public boolean Sj(TEQ teq, Map<String, Object> map) {
        return false;
    }

    public void TKC(int i10) {
        this.ley = i10;
    }

    public void sP(View view) {
        if (view == null) {
            return;
        }
        this.TEQ = new WeakReference<>(view);
    }

    public String vS() {
        return this.Sj;
    }

    public static boolean TKC(View view) {
        return 520093705 == view.getId() || 520093707 == view.getId() || 520093703 == view.getId() || Sj(view.getContext()) == view.getId() || Zq.nP == view.getId() || Zq.rB == view.getId();
    }

    public View HiB() {
        WeakReference<Activity> weakReference = this.sP;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        View viewFindViewById = this.sP.get().findViewById(520093713);
        return viewFindViewById == null ? this.sP.get().findViewById(520093713) : viewFindViewById;
    }

    public void Sj(com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar) {
        this.uvD = vSVar;
    }

    public void sP(int i10) {
        this.LqL = i10;
    }

    public void EjP(int i10) {
        this.sU = i10;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.Dq.sP sPVar) {
        this.RiZ = sPVar;
    }

    public void Sj(PAGNativeAd pAGNativeAd) {
        this.Fmk = pAGNativeAd;
    }

    public void Sj(PangleAd pangleAd) {
        this.TzV = pangleAd;
    }

    public void Sj(b bVar) {
        this.sef = bVar;
    }

    public void Sj(Sj sj2) {
        this.f20477aa = sj2;
    }

    public void Sj(Activity activity) {
        if (activity == null) {
            return;
        }
        this.sP = new WeakReference<>(activity);
    }

    public sP(@NonNull Context context, @NonNull sU sUVar, @NonNull String str, int i10, boolean z10) {
        this(context, sUVar, str, i10);
        this.TKC = z10;
    }

    public void Sj(View view) {
        if (view == null) {
            return;
        }
        this.uA = new WeakReference<>(view);
    }

    public void Sj(Map<String, Object> map) {
        Map<String, Object> map2 = this.dNu;
        if (map2 != null) {
            map2.putAll(map);
            map.putAll(this.dNu);
        }
        this.dNu = map;
    }

    public void Sj(int i10) {
        this.Yf = i10;
    }

    @Override
    public void Sj(View view, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        int i10;
        boolean z11;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        sU sUVar;
        if (this.EjP == null) {
            this.EjP = dNu.Sj();
        }
        if ((this.TKC || !Sj(view, 1, f10, f11, f12, f13, sparseArray, z10)) && this.EjP != null) {
            sef sefVar = this.HiB;
            if (sefVar != null) {
                int i11 = sefVar.f20460aa;
                JSONObject jSONObject3 = sefVar.Fmk;
                JSONObject jSONObject4 = sefVar.dNu;
                z11 = sefVar.TzV;
                i10 = i11;
                jSONObject = jSONObject3;
                jSONObject2 = jSONObject4;
            } else {
                i10 = -1;
                z11 = false;
                jSONObject = null;
                jSONObject2 = null;
            }
            long j10 = this.uP;
            long j11 = this.wE;
            WeakReference<View> weakReference = this.uA;
            View view2 = weakReference == null ? null : weakReference.get();
            WeakReference<View> weakReference2 = this.TEQ;
            TEQ teqSj = Sj(f10, f11, f12, f13, sparseArray, j10, j11, view2, weakReference2 == null ? null : weakReference2.get(), vS(), FPG.Jcg(this.EjP), FPG.uA(this.EjP), FPG.Dq(this.EjP), i10, jSONObject, jSONObject2);
            this.Ym = teqSj;
            if (Sj(teqSj, this.dNu)) {
                return;
            }
            if (this.sef != null) {
                if (this.dNu == null) {
                    this.dNu = new HashMap();
                }
                this.dNu.put("duration", Long.valueOf(this.sef.HiB()));
            }
            if (!this.TKC && !z11) {
                Sj sj2 = this.f20477aa;
                if (sj2 != null) {
                    sj2.Sj(view, -1);
                }
                if (Sj(view, z10)) {
                    boolean zSP = uP.sP(this.vS);
                    String strSj = zSP ? this.Jcg : Mts.Sj(this.Dq);
                    if (view != null) {
                        try {
                            if (((Boolean) view.getTag(520093762)).booleanValue()) {
                                fF.Sj(true);
                            }
                        } catch (Exception unused) {
                        }
                    }
                    Activity activitySj = view != null ? com.bytedance.sdk.component.utils.sP.Sj(view) : null;
                    boolean zSj = fF.Sj(activitySj == null ? this.EjP : activitySj, this.vS, this.Dq, this.Fmk, this.TzV, strSj, this.uvD, zSP, 0);
                    fF.Sj(false);
                    if (zSj || (sUVar = this.vS) == null || sUVar.TFd() == null || this.vS.TFd().TKC() != 2) {
                        sU sUVar2 = this.vS;
                        if (sUVar2 != null && !zSj && TextUtils.isEmpty(sUVar2.Chv()) && com.bytedance.sdk.openadsdk.EjP.sP.Sj(this.Jcg)) {
                            com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.EjP, this.vS, this.Jcg).EjP();
                        }
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", this.vS, this.Ym, this.Jcg, zSj, this.dNu, z10 ? 1 : 2);
                        return;
                    }
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj("click", this.vS, this.Ym, this.Jcg, true, this.dNu, z10 ? 1 : 2);
        }
    }

    public boolean Sj(View view, boolean z10) {
        return Sj(view, this.vS, z10);
    }

    public static boolean Sj(View view, sU sUVar, boolean z10) {
        if (view != null && sUVar != null) {
            try {
                int i10 = com.bytedance.sdk.component.adexpress.dynamic.Sj.sU;
                String strValueOf = String.valueOf(view.getTag(i10));
                if (view.getTag(i10) != null && !TextUtils.isEmpty(strValueOf)) {
                    if ("click".equals(strValueOf)) {
                        return z10;
                    }
                    return true;
                }
            } catch (Exception unused) {
            }
            if (TKC(view)) {
                return sUVar.kF() != 1 || z10;
            }
            if (sUVar.ib() == 1 && !z10) {
                return false;
            }
        }
        return true;
    }

    protected TEQ Sj(float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, long j10, long j11, View view, View view2, String str, float f14, int i10, float f15, int i11, JSONObject jSONObject, JSONObject jSONObject2) {
        return new TEQ.Sj().vS(f10).HiB(f11).EjP(f12).TKC(f13).sP(j10).Sj(j11).sP(FPG.Sj(view)).Sj(FPG.Sj(view2)).TKC(FPG.TKC(view)).EjP(FPG.TKC(view2)).EjP(this.ley).HiB(this.LqL).vS(this.Yf).Sj(sparseArray).sP(uA.sP().Sj() ? 1 : 2).Sj(str).Sj(f14).TKC(i10).sP(f15).Sj(i11).Sj(jSONObject).sP(jSONObject2).Sj();
    }

    protected boolean Sj(View view, int i10, float f10, float f11, float f12, float f13, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        if (this.RiZ == null) {
            return false;
        }
        int[] iArrSj = new int[2];
        int[] iArrTKC = new int[2];
        WeakReference<View> weakReference = this.TEQ;
        if (weakReference != null) {
            iArrSj = FPG.Sj(weakReference.get());
            iArrTKC = FPG.TKC(this.TEQ.get());
        }
        this.RiZ.Sj(view, i10, new sef.Sj().EjP(f10).TKC(f11).sP(f12).Sj(f13).sP(this.uP).Sj(this.wE).TKC(iArrSj[0]).EjP(iArrSj[1]).HiB(iArrTKC[0]).vS(iArrTKC[1]).Sj(sparseArray).Sj(z10).Sj());
        return true;
    }

    private static int Sj(Context context) {
        if (Mts == Integer.MIN_VALUE) {
            Mts = ib.HiB(context, "btn_native_creative");
        }
        return Mts;
    }

    public void Sj(String str) {
        this.Sj = str;
    }
}
