package com.transsion.upgradesdk.page;

import com.transsion.upgradesdk.bean.UpgradeData;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public final class j extends Lambda implements Function0 {

    public final su.i f54552a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(su.i iVar) {
        super(0);
        this.f54552a = iVar;
    }

    @Override
    public final Object invoke() {
        UpgradeData upgradeData = this.f54552a.f72406h;
        if (upgradeData == null) {
            Intrinsics.y("upgradeData");
            upgradeData = null;
        }
        if (!upgradeData.isForceUpdate()) {
            this.f54552a.dismiss();
        }
        return Unit.f64096a;
    }
}
