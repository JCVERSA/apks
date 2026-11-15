package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class g3 extends F {

    private final String f21855i;

    private volatile AdsDTO f21856j;

    private t1 f21857k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g3(p3 adFetchInfo) {
        super(adFetchInfo);
        Intrinsics.h(adFetchInfo, "adFetchInfo");
        this.f21855i = "Rewarded";
    }

    private final void K() {
        this.f21857k = new t1(this);
    }

    public final void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    public final void G() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.m();
        }
        AdCallback adCallback2 = this.f20888e;
        if (adCallback2 != null) {
            adCallback2.k(this.f21856j);
        }
    }

    public final void H() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.p(this.f21856j);
        }
    }

    public final void I() {
        f();
        k(true);
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public final void J() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.A();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    public final void L() {
        Unit unit;
        Preconditions.a();
        K();
        if (this.f21856j == null) {
            unit = null;
        } else if (r() != 0 || z()) {
            F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            b4.b().d(this.f21855i, "ad not condition to use");
            unit = Unit.f64096a;
        } else {
            t1 t1Var = this.f21857k;
            if (t1Var != null) {
                t1Var.c(this.f21856j);
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
        }
        if (unit == null) {
            b4.b().d(this.f21855i, "adBean = null");
        }
    }

    @Override
    public void d(List list, Bundle athenaTrackBundle) {
        Intrinsics.h(athenaTrackBundle, "athenaTrackBundle");
        this.f21856j = list != null ? (AdsDTO) CollectionsKt.k0(list) : null;
        super.d(list, athenaTrackBundle);
    }

    @Override
    public void m() {
        super.m();
        t1 t1Var = this.f21857k;
        if (t1Var != null) {
            t1Var.b();
        }
    }
}
