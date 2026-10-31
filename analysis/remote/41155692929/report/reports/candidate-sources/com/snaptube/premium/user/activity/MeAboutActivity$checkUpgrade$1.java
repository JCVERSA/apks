package com.snaptube.premium.user.activity;

import android.widget.LinearLayout;
import com.snaptube.ktx.view.ViewKt;
import com.snaptube.premium.R;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import o.b88;
import o.or3;
import o.tu7;
import o.u5;

public final class MeAboutActivity$checkUpgrade$1 extends tu7 {
    public final MeAboutActivity a;
    public final boolean b;

    public MeAboutActivity$checkUpgrade$1(MeAboutActivity meAboutActivity, boolean z) {
        this.a = meAboutActivity;
        this.b = z;
    }

    public void c(UpgradeConfig upgradeConfig) {
        if (upgradeConfig == null) {
            MeAboutActivity.R0(this.a);
            return;
        }
        u5 u5Var = null;
        if (CheckSelfUpgradeManager.k(CheckSelfUpgradeManager.P(upgradeConfig))) {
            if (MeAboutActivity.Q0(this.a)) {
                MeAboutActivity.V0(this.a);
            }
            u5 u5VarP0 = MeAboutActivity.P0(this.a);
            if (u5VarP0 == null) {
                or3.w("binding");
                u5VarP0 = null;
            }
            u5VarP0.k.setVisibility(8);
            u5 u5VarP1 = MeAboutActivity.P0(this.a);
            if (u5VarP1 == null) {
                or3.w("binding");
                u5VarP1 = null;
            }
            u5VarP1.h.setVisibility(0);
            u5 u5VarP2 = MeAboutActivity.P0(this.a);
            if (u5VarP2 == null) {
                or3.w("binding");
            } else {
                u5Var = u5VarP2;
            }
            LinearLayout linearLayout = u5Var.l;
            or3.e(linearLayout, "meAboutUpgradeGroup");
            ViewKt.t(linearLayout, new MeAboutActivity$checkUpgrade$1$onNext$2(this.a));
            return;
        }
        u5 u5VarP3 = MeAboutActivity.P0(this.a);
        if (u5VarP3 == null) {
            or3.w("binding");
            u5VarP3 = null;
        }
        u5VarP3.k.setVisibility(0);
        u5 u5VarP4 = MeAboutActivity.P0(this.a);
        if (u5VarP4 == null) {
            or3.w("binding");
            u5VarP4 = null;
        }
        u5VarP4.h.setVisibility(8);
        u5 u5VarP5 = MeAboutActivity.P0(this.a);
        if (u5VarP5 == null) {
            or3.w("binding");
        } else {
            u5Var = u5VarP5;
        }
        LinearLayout linearLayout2 = u5Var.l;
        or3.e(linearLayout2, "meAboutUpgradeGroup");
        ViewKt.t(linearLayout2, new MeAboutActivity$checkUpgrade$1$onNext$1(this.a));
        if (this.b) {
            return;
        }
        b88.l(this.a, R.string.setting_dialog_already_new_version);
    }

    @Override
    public void onCompleted() {
        u5 u5VarP0 = MeAboutActivity.P0(this.a);
        if (u5VarP0 == null) {
            or3.w("binding");
            u5VarP0 = null;
        }
        u5VarP0.d.b().setVisibility(8);
    }

    @Override
    public void onError(Throwable th) {
        MeAboutActivity.R0(this.a);
    }

    @Override
    public void onNext(Object obj) {
        c((UpgradeConfig) obj);
    }
}
