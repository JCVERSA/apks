package uv;

import android.app.Activity;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.manager.UpgradeInfoCallback;
import com.transsion.upgradesdk.manager.UpgradeSdkManager;
import com.transsion.version.update.UpdateManager;
import com.transsion.version.update.e;
import com.transsion.web.api.WebConstants;
import kj.k;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f73257a = new a();

    public static final class C0901a implements UpgradeInfoCallback {

        final Function1 f73258a;

        final Activity f73259b;

        final String f73260c;

        final boolean f73261d;

        final String f73262e;

        public static final class C0902a implements UpgradeDialogCallback {

            final String f73263a;

            final boolean f73264b;

            final String f73265c;

            C0902a(String str, boolean z10, String str2) {
                this.f73263a = str;
                this.f73264b = z10;
                this.f73265c = str2;
            }

            @Override
            public void onDialogClick(int i10) {
                wf.a.C0922a.l(wf.a.f74274a, "update", "ps_dialog 点击ps弹窗 " + i10, false, 4, null);
                if (i10 != 1) {
                    e.f55374a.a(this.f73263a, false, "ps");
                    return;
                }
                e eVar = e.f55374a;
                eVar.a(this.f73263a, true, "ps");
                eVar.b(MapsKt.l(TuplesKt.a(EventConstants.KEY_ACTION, "jump"), TuplesKt.a("action_result", "true"), TuplesKt.a("dialog_type", "ps"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, PlaceTypes.STORE), TuplesKt.a("manual", String.valueOf(this.f73264b)), TuplesKt.a(WebConstants.PAGE_FROM, this.f73263a)));
            }

            @Override
            public void onDialogDismiss() {
                wf.a.C0922a.l(wf.a.f74274a, "update", "ps弹窗消失 onDialogDismiss", false, 4, null);
            }

            @Override
            public void onDialogShow() {
                e.d(e.f55374a, this.f73263a, this.f73264b, "ps", null, 8, null);
                if (!this.f73264b) {
                    UpdateManager.f55354f.a().h(this.f73265c);
                }
                wf.a.C0922a.l(wf.a.f74274a, "update", "ps弹窗展示 onDialogShow", false, 4, null);
            }
        }

        C0901a(Function1 function1, Activity activity, String str, boolean z10, String str2) {
            this.f73258a = function1;
            this.f73259b = activity;
            this.f73260c = str;
            this.f73261d = z10;
            this.f73262e = str2;
        }

        @Override
        public void onRequestFail(String error) {
            Intrinsics.h(error, "error");
            wf.a.C0922a.l(wf.a.f74274a, "update", "ps 请求失败 " + error, false, 4, null);
            Function1 function1 = this.f73258a;
            if (function1 != null) {
                function1.invoke(error);
            }
        }

        @Override
        public void onRequestSuccess(UpgradeInfo upgradeInfo) {
            Intrinsics.h(upgradeInfo, "upgradeInfo");
            wf.a.C0922a.l(wf.a.f74274a, "update", "ps 请求成功 " + upgradeInfo.getVersionName() + " " + upgradeInfo.isNewVersion() + " " + upgradeInfo.getShowUpgradeDialog() + " " + upgradeInfo, false, 4, null);
            if (upgradeInfo.getShowUpgradeDialog()) {
                UpgradeSdkManager.DialogParams dialogParams = new UpgradeSdkManager.DialogParams(this.f73259b, true, new C0902a(this.f73260c, this.f73261d, this.f73262e));
                dialogParams.dialogStyle = 0;
                UpgradeSdkManager.getInstance().showUpgradeDialog(dialogParams);
                return;
            }
            Function1 function1 = this.f73258a;
            if (function1 != null) {
                function1.invoke("showUpgradeDialog false");
            }
        }
    }

    private a() {
    }

    public final void a(String fromPage, boolean z10, Activity activity, String configVersionName, Function1 function1) {
        Intrinsics.h(fromPage, "fromPage");
        Intrinsics.h(activity, "activity");
        Intrinsics.h(configVersionName, "configVersionName");
        if (z10 || !k.f64034a.b()) {
            UpgradeSdkManager.getInstance().checkUpgradeTask(new C0901a(function1, activity, fromPage, z10, configVersionName));
            return;
        }
        wf.a.C0922a.l(wf.a.f74274a, "update", "ps 弹窗被拦截  " + fromPage, false, 4, null);
    }
}
