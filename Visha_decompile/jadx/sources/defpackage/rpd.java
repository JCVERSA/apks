package defpackage;

import android.os.Bundle;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;

public final class rpd extends G {
    public final String i;
    public volatile AdsDTO j;
    public ebd k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rpd(ied iedVar) {
        super(iedVar);
        y45.j(iedVar, "adFetchInfo");
        this.i = "Rewarded";
    }

    private final void K() {
        this.k = new ebd(this);
    }

    public final void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    public final void G() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.m(this.j);
        }
        AdCallback adCallback2 = this.e;
        if (adCallback2 != null) {
            adCallback2.k(this.j);
        }
    }

    public final void H() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.p(this.j);
        }
    }

    public final void I() {
        f();
        k(true);
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public final void J() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.A();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0051  */
    public final void L() {
        zfb zfbVar;
        String str;
        Preconditions.a();
        K();
        AdsDTO adsDTO = this.j;
        if (adsDTO != null) {
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (this.b != null && impBeanRequest != null && ((str = impBeanRequest.mSceneId) == null || str.length() == 0)) {
                impBeanRequest.mSceneId = this.b.m();
            }
            if (r() != 0 || z()) {
                F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
                ikd.b().d(this.i, "ad not condition to use");
                zfbVar = zfb.a;
            } else {
                ebd ebdVar = this.k;
                if (ebdVar != null) {
                    ebdVar.c(this.j);
                    zfbVar = zfb.a;
                } else {
                    zfbVar = null;
                }
            }
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            ikd.b().d(this.i, "adBean = null");
        }
    }

    @Override
    public void d(List list, Bundle bundle) {
        y45.j(bundle, "athenaTrackBundle");
        this.j = list != null ? (AdsDTO) i81.q0(list) : null;
        super.d(list, bundle);
    }

    @Override
    public void m() {
        super.m();
        ebd ebdVar = this.k;
        if (ebdVar != null) {
            ebdVar.b();
        }
    }
}
