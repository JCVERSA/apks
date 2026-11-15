package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import defpackage.ied;
import defpackage.ikd;
import java.util.List;

public class j0 extends z {
    public List e;
    public ied f;

    public class a implements h0.g {
        public a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            j0.this.h(taErrorCode);
            SSPTrackingHelper.a.U(2, j0.this.f, taErrorCode, bundle);
        }

        @Override
        public void b(List list, Bundle bundle) {
            j0.this.k(list);
            SSPTrackingHelper.a.U(2, j0.this.f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    public void h(TaErrorCode taErrorCode) {
        this.b = 3;
        z.a aVar = this.a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
            e();
        }
    }

    public void k(List list) {
        this.b = 3;
        if (list == null || list.isEmpty()) {
            h(TaErrorCode.ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        z.a aVar = this.a;
        if (aVar != null) {
            aVar.b(list, null);
            e();
        }
    }

    @Override
    public void a(ied iedVar) {
        this.b = 2;
        this.f = iedVar;
        ikd.b().d("ssp", "start execute getAdCreativies.");
        h0 h0Var = new h0();
        h0Var.d(new a());
        SSPTrackingHelper.a.U(1, this.f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        h0Var.g(this.e, iedVar.e(), 1, this.d);
    }

    public void l(List list) {
        this.e = list;
    }
}
