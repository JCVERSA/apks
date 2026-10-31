package o;

import android.content.Context;
import com.mobiuspace.framework.launchconductor.Policy;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import com.snaptube.premium.selfupgrade.force.AppForceUpdateHelper;
import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;

public final class pi2 implements a00 {

    public static final class a extends ve7 {
        @Override
        public void c(Object obj) {
            d((UpgradeConfig) obj);
        }

        public void d(UpgradeConfig upgradeConfig) {
            if (upgradeConfig == null || s5.d() == null) {
                return;
            }
            AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
            Context contextZ = PhoenixApplication.z();
            or3.e(contextZ, "getAppContext(...)");
            appForceUpdateHelper.r(contextZ, upgradeConfig, "cold_start");
        }
    }

    @Override
    public void run() {
        CheckSelfUpgradeManager.ConfigFetcher.UPGRADE.fetchUpgradeConfig(true, false, "cold_start").Y(sh.c()).x0(new a());
        com.snaptube.premium.selfupgrade.incremental_upgrade.b.y();
    }

    @Override
    public String tag() {
        return "FetchUpgradeTask";
    }

    @Override
    public Policy u() {
        return a00.a.a(this);
    }
}
