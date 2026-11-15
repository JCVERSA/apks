package com.bytedance.sdk.openadsdk.TzV.Sj;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.HiB.Dq;
import com.bytedance.sdk.component.HiB.Ym;
import com.bytedance.sdk.component.HiB.uvD;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.uA.EjP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;

public class Sj {

    public interface InterfaceC0224Sj {
        void Sj(int i10, String str, Throwable th2);

        void Sj(String str, sP sPVar);
    }

    public void Sj(com.bytedance.sdk.openadsdk.TzV.Sj sj2, final InterfaceC0224Sj interfaceC0224Sj, int i10, int i11, ImageView.ScaleType scaleType, String str, final int i12, sU sUVar) {
        EjP.Sj(sj2.Sj).Sj(sj2.sP).Sj(i10).sP(i11).HiB(FPG.HiB(dNu.Sj())).EjP(FPG.TKC(dNu.Sj())).sP(str).Sj(Bitmap.Config.RGB_565).Sj(scaleType).Sj(!TextUtils.isEmpty(str)).Sj(new Dq() {
            @Override
            public Bitmap Sj(Bitmap bitmap) {
                return i12 <= 0 ? bitmap : com.bytedance.sdk.component.adexpress.EjP.Sj.Sj(dNu.Sj(), bitmap, i12);
            }
        }).Sj(new com.bytedance.sdk.openadsdk.uA.sP(sUVar, sj2.Sj, new uvD() {
            @Override
            public void Sj(Ym ym2) {
                Sj.this.Sj(ym2, interfaceC0224Sj);
            }

            @Override
            public void Sj(int i13, String str2, Throwable th2) {
                Sj.this.Sj(i13, str2, th2, interfaceC0224Sj);
            }
        }));
    }

    protected void Sj(Ym ym2, InterfaceC0224Sj interfaceC0224Sj) {
        if (interfaceC0224Sj != null) {
            Object objSP = ym2.sP();
            int iSj = Sj(ym2);
            if (objSP instanceof byte[]) {
                interfaceC0224Sj.Sj(ym2.Sj(), new sP((byte[]) objSP, iSj));
                return;
            }
            if (objSP instanceof Bitmap) {
                interfaceC0224Sj.Sj(ym2.Sj(), new sP((Bitmap) objSP, ym2.TKC() instanceof Bitmap ? (Bitmap) ym2.TKC() : null, iSj));
            } else {
                interfaceC0224Sj.Sj(0, "not bitmap or gif result!", null);
            }
        }
    }

    private int Sj(Ym ym2) {
        Object obj;
        Map<String, String> mapEjP = ym2.EjP();
        if (mapEjP == null || (obj = mapEjP.get(CampaignEx.JSON_KEY_IMAGE_SIZE)) == null || !(obj instanceof Integer)) {
            return 0;
        }
        return ((Integer) obj).intValue();
    }

    protected void Sj(int i10, String str, Throwable th2, InterfaceC0224Sj interfaceC0224Sj) {
        if (interfaceC0224Sj != null) {
            interfaceC0224Sj.Sj(i10, str, th2);
        }
    }
}
