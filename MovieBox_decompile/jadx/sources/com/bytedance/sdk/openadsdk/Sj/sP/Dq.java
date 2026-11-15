package com.bytedance.sdk.openadsdk.Sj.sP;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.uA;
import com.bytedance.sdk.openadsdk.core.uvD;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.ib;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Dq extends PAGNativeAd {
    private boolean Dq;
    protected Sj EjP;
    protected int HiB;
    protected String Jcg;
    protected uvD Sj;
    protected final Context TKC;
    protected final sU sP;
    private boolean uA;
    protected int vS;

    public Dq(@NonNull Context context, @NonNull sU sUVar, int i10, boolean z10) {
        this.sP = sUVar;
        this.TKC = context;
        this.HiB = i10;
        this.vS = sUVar.If();
        String strTKC = Mts.TKC(i10);
        this.Jcg = strTKC;
        if (z10) {
            this.EjP = new Sj(context, sUVar, strTKC);
            this.Sj = new uvD(context, this, sUVar, Sj(i10), this.EjP);
        }
    }

    private List<View> Sj(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                linkedList.add(list.get(i10));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                linkedList.add(list2.get(i11));
            }
        }
        return linkedList;
    }

    public Sj Dq() {
        return this.EjP;
    }

    protected boolean Jcg() {
        sU sUVar = this.sP;
        return (sUVar == null || sUVar.sdp() == 5 || dNu.EjP().TKC(this.vS) != 1) ? false : true;
    }

    @Override
    public Object getExtraInfo(String str) {
        sU sUVar = this.sP;
        if (sUVar == null || sUVar.QZ() == null) {
            return null;
        }
        try {
            return this.sP.QZ().get(str);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTNativeAdImpl", th2.getMessage());
            return null;
        }
    }

    @Override
    public Map<String, Object> getMediaExtraInfo() {
        sU sUVar = this.sP;
        if (sUVar != null) {
            return sUVar.QZ();
        }
        return null;
    }

    @Override
    public PAGNativeAdData getNativeAdData() {
        return new EjP(Dq());
    }

    @Override
    public void loss(Double d10, String str, String str2) {
        if (this.uA) {
            return;
        }
        LqL.Sj(this.sP, d10, str, str2);
        this.uA = true;
    }

    @Override
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        if (viewGroup == null || list == null || list.size() <= 0) {
            return;
        }
        Sj(viewGroup, null, list, list2, view, new Jcg(pAGNativeAdInteractionListener));
    }

    @Override
    public void win(Double d10) {
        if (this.Dq) {
            return;
        }
        LqL.Sj(this.sP, d10);
        this.Dq = true;
    }

    @Override
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionCallback pAGNativeAdInteractionCallback) {
        registerViewForInteraction(viewGroup, list, list2, view, (PAGNativeAdInteractionListener) pAGNativeAdInteractionCallback);
    }

    private String Sj(int i10) {
        if (i10 == 1) {
            return "banner_ad";
        }
        if (i10 != 2) {
            return "embeded_ad";
        }
        return "interaction";
    }

    protected void Sj(String str) {
        this.Jcg = str;
    }

    public void Sj(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @NonNull List<View> list2, @Nullable List<View> list3, @Nullable View view, final vS vSVar) {
        if (viewGroup == null || list2 == null || list2.size() <= 0) {
            return;
        }
        if (Jcg()) {
            list3 = Sj(list2, list3);
        }
        List<View> list4 = list3;
        if (view != null && vSVar != null && vSVar.sP()) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view2) {
                    final String strSj = ib.Sj();
                    TTDelegateActivity.Sj(Dq.this.sP, strSj, new com.bytedance.sdk.openadsdk.core.TKC.EjP.Sj() {
                        @Override
                        public void Sj() {
                            vSVar.Sj();
                            uA.sP().vS(strSj);
                            PAGMediaView pAGMediaViewSj = Dq.this.Dq().Sj();
                            if (pAGMediaViewSj != null) {
                                pAGMediaViewSj.close();
                            }
                        }
                    });
                }
            });
        }
        this.Sj.Sj(viewGroup, list, list2, list4, view, vSVar);
        sU sUVar = this.sP;
        com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(viewGroup, this.sP, (sUVar == null || sUVar.ley() != 2) ? null : new com.bytedance.sdk.openadsdk.kF.sP.HiB.Sj(this.sP.fF()));
    }

    @Override
    public void showPrivacyActivity() {
    }
}
