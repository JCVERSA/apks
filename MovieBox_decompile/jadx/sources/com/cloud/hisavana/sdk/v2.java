package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;

public class v2 extends F {

    private d4 f22383i;

    private volatile AdsDTO f22384j;

    public v2(p3 p3Var) {
        super(p3Var);
        this.f22384j = null;
    }

    private void L() {
        this.f22383i = new d4(this);
    }

    void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    void G(AdsDTO adsDTO) {
        if (adsDTO != null) {
            this.f22384j = adsDTO;
        }
    }

    public void H(AdsDTO adsDTO) {
        this.f22384j = adsDTO;
        L();
        this.f22383i.e(adsDTO);
    }

    void I() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.m();
            this.f20888e.k(this.f22384j);
        }
    }

    void J() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.p(this.f22384j);
        }
    }

    void K() {
        f();
        k(true);
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void M() {
        Preconditions.a();
        L();
        if (this.f22384j == null) {
            F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            b4.b().d("ssp", "adBean = null");
        } else if (r() == 0 && !z()) {
            this.f22383i.e(this.f22384j);
        } else {
            F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            b4.b().d("ssp", "ad not condition to use");
        }
    }

    @Override
    public void d(List list, Bundle bundle) {
        this.f22384j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    @Override
    public void m() {
        super.m();
        d4 d4Var = this.f22383i;
        if (d4Var != null) {
            d4Var.d();
        }
    }
}
