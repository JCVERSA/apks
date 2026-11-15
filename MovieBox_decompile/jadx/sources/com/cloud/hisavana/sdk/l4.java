package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;

public class l4 extends e4 {

    private List f21968e;

    private p3 f21969f;

    class a implements i4.f {
        a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            l4.this.g(taErrorCode);
            SSPTrackingHelper.f21368a.U(2, l4.this.f21969f, taErrorCode, bundle);
        }

        @Override
        public void b(List list, Bundle bundle) {
            l4.this.j(list);
            SSPTrackingHelper.f21368a.U(2, l4.this.f21969f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    public void g(TaErrorCode taErrorCode) {
        this.f21825b = 3;
        e4.a aVar = this.f21824a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
        }
    }

    public void j(List list) {
        this.f21825b = 3;
        if (list == null || list.isEmpty()) {
            g(TaErrorCode.ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        e4.a aVar = this.f21824a;
        if (aVar != null) {
            aVar.b(list, null);
        }
    }

    @Override
    public void a(p3 p3Var) {
        this.f21825b = 2;
        this.f21969f = p3Var;
        b4.b().d("ssp", "start execute getAdCreativies.");
        i4 i4Var = new i4();
        i4Var.c(new a());
        SSPTrackingHelper.f21368a.U(1, this.f21969f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        i4Var.e(this.f21968e, p3Var.e(), 1, this.f21827d);
    }

    public void k(List list) {
        this.f21968e = list;
    }
}
