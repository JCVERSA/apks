package o;

import android.content.DialogInterface;
import com.snaptube.premium.selfupgrade.BaseUpgradeActivity;

public final class i80 implements DialogInterface.OnDismissListener {
    public final BaseUpgradeActivity a;

    public i80(BaseUpgradeActivity baseUpgradeActivity) {
        this.a = baseUpgradeActivity;
    }

    @Override
    public final void onDismiss(DialogInterface dialogInterface) {
        BaseUpgradeActivity.F0(this.a, dialogInterface);
    }
}
