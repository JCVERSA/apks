package o;

import android.view.View;
import com.snaptube.premium.dialog.UpgradeDialog;

public final class th8 implements View.OnClickListener {
    public final UpgradeDialog a;

    public th8(UpgradeDialog upgradeDialog) {
        this.a = upgradeDialog;
    }

    @Override
    public final void onClick(View view) {
        UpgradeDialog.H2(this.a, view);
    }
}
