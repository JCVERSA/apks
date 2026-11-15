package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;

public class vnd extends G {
    public pud i;
    public volatile AdsDTO j;

    public vnd(ied iedVar) {
        super(iedVar);
        this.j = null;
    }

    private void L() {
        this.i = new pud(this);
    }

    public void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    public void G(AdsDTO adsDTO) {
        if (adsDTO != null) {
            this.j = adsDTO;
        }
    }

    public void H(AdsDTO adsDTO) {
        this.j = adsDTO;
        L();
        this.i.e(adsDTO);
    }

    public void I() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.m(this.j);
            AdCallback adCallback2 = this.e;
            if (adCallback2 != null) {
                adCallback2.k(this.j);
            }
        }
    }

    public void J() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.p(this.j);
        }
    }

    public void K() {
        f();
        k(true);
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void M() {
        Preconditions.a();
        L();
        if (this.j == null) {
            F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            ikd.b().d("ssp", "adBean = null");
            return;
        }
        AdxImpBean impBeanRequest = this.j.getImpBeanRequest();
        if (this.b != null && impBeanRequest != null && TextUtils.isEmpty(impBeanRequest.mSceneId)) {
            impBeanRequest.mSceneId = this.b.m();
        }
        if (r() == 0 && !z()) {
            this.i.e(this.j);
        } else {
            F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            ikd.b().d("ssp", "ad not condition to use");
        }
    }

    @Override
    public void d(List list, Bundle bundle) {
        this.j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    @Override
    public void m() {
        super.m();
        pud pudVar = this.i;
        if (pudVar != null) {
            pudVar.d();
        }
    }
}
