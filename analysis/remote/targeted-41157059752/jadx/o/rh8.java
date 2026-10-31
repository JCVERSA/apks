package o;

import com.snaptube.premium.selfupgrade.incremental_upgrade.UpgradeConfig;
import com.wandoujia.base.config.GlobalConfig;

public abstract class rh8 {
    public static final boolean a(UpgradeConfig upgradeConfig) {
        or3.f(upgradeConfig, "<this>");
        return upgradeConfig.getVersionCode() > az7.P(GlobalConfig.getAppContext());
    }

    public static final boolean b(UpgradeConfig upgradeConfig) {
        or3.f(upgradeConfig, "<this>");
        return upgradeConfig.getVersionCode() <= az7.P(GlobalConfig.getAppContext());
    }
}
