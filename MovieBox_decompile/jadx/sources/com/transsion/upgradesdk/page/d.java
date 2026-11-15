package com.transsion.upgradesdk.page;

import com.transsion.upgradesdk.bean.UpgradeData;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public final class d extends Lambda implements Function0 {

    public final f f54534a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar) {
        super(0);
        this.f54534a = fVar;
    }

    @Override
    public final Object invoke() {
        UpgradeData upgradeData = this.f54534a.f54543h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            this.f54534a.dismiss();
        }
        return Unit.f64096a;
    }
}
