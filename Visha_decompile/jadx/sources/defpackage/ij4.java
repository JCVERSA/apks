package defpackage;

import android.app.Activity;
import android.app.Application;
import androidx.core.content.ContextCompat;
import com.transsion.magicshow.R;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.manager.UpgradeInfoCallback;
import com.transsion.upgradesdk.manager.UpgradeSdkManager;

public final class ij4 implements ax4 {

    public class a implements UpgradeInfoCallback {
        public final hhb a;

        public a(hhb hhbVar) {
            this.a = hhbVar;
        }

        public void onRequestFail(String str) {
            hhb hhbVar = this.a;
            if (hhbVar != null) {
                hhbVar.b(str);
            }
        }

        public void onRequestSuccess(UpgradeInfo upgradeInfo) {
            hhb hhbVar = this.a;
            if (hhbVar != null) {
                hhbVar.a(new ehb(upgradeInfo.isNewVersion(), upgradeInfo.getShowUpgradeDialog()));
            }
        }
    }

    public class b implements UpgradeDialogCallback {
        public b() {
        }

        public void onDialogClick(int i) {
        }

        public void onDialogDismiss() {
        }

        public void onDialogShow() {
        }
    }

    @Override
    public void a(Application application, String str, boolean z) {
        UpgradeSdkManager.getInstance().init(application, str, z);
    }

    @Override
    public void b(Activity activity, boolean z, hhb hhbVar) {
        UpgradeSdkManager.getInstance().checkUpgradeTask(new a(hhbVar));
    }

    @Override
    public void c(Activity activity, boolean z) {
        if (activity == null) {
            return;
        }
        UpgradeSdkManager.DialogParams dialogParams = new UpgradeSdkManager.DialogParams(activity, z, new b());
        dialogParams.cancelButtonTextColor = Integer.valueOf(ContextCompat.getColor(activity, R.color.dialog_negative_text_color));
        dialogParams.confirmButtonTextColor = Integer.valueOf(vha.o(activity));
        UpgradeSdkManager.getInstance().showUpgradeDialog(dialogParams);
    }
}
