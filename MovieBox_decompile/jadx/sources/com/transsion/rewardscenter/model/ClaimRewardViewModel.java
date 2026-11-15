package com.transsion.rewardscenter.model;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

public final class ClaimRewardViewModel extends androidx.p009lifecycle.b {

    private final b0 f48951b;

    private final b0 f48952c;

    private final b0 f48953d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClaimRewardViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f48951b = new b0(Boolean.FALSE);
        this.f48952c = new b0();
        this.f48953d = new b0();
    }

    public final void d(String str) {
        if (str.length() != 0) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ClaimRewardViewModel$claim$1(str, this, null), 3, null);
        } else {
            this.f48951b.n(Boolean.FALSE);
            this.f48952c.n(new Pair(null, null));
        }
    }

    public final b0 e() {
        return this.f48953d;
    }

    public final b0 f() {
        return this.f48952c;
    }

    public final b0 g() {
        return this.f48951b;
    }

    public final void h(ClaimReceiverRequest requestBody) {
        Intrinsics.h(requestBody, "requestBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ClaimRewardViewModel$submitAndClaim$1(this, requestBody, null), 3, null);
    }
}
