package com.snaptube.premium.selfupgrade.force;

import android.app.Activity;
import com.snaptube.premium.selfupgrade.CheckSelfUpgradeManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;
import o.mg8;

@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lo/mg8;", "invoke", "()V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class AppForceUpdateHelper$checkForceUpdateAsync$1 extends Lambda implements bx2 {
    final Activity $activity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppForceUpdateHelper$checkForceUpdateAsync$1(Activity activity) {
        super(0);
        this.$activity = activity;
    }

    @Override
    public Object invoke() {
        m175invoke();
        return mg8.a;
    }

    public final void m175invoke() {
        AppForceUpdateHelper appForceUpdateHelper = AppForceUpdateHelper.a;
        if (appForceUpdateHelper.r(this.$activity, CheckSelfUpgradeManager.M(), "any_page_visible")) {
            return;
        }
        AppForceUpdateHelper.e(appForceUpdateHelper, this.$activity, "any_page_visible_normal");
    }
}
