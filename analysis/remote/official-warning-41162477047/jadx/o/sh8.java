package o;

import android.view.View;
import com.snaptube.premium.dialog.UpgradeDialog;

public final class sh8 implements View.OnClickListener {
    public final UpgradeDialog a;

    public sh8(UpgradeDialog upgradeDialog) {
        this.a = upgradeDialog;
    }

    @Override
    public final void onClick(View view) {
        UpgradeDialog.G2(this.a, view);
    }
}
