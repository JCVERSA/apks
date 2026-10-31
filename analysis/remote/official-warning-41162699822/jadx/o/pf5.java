package o;

import android.view.View;
import com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog;

public final class pf5 implements View.OnClickListener {
    public final OfficialWarningDialog a;

    public pf5(OfficialWarningDialog officialWarningDialog) {
        this.a = officialWarningDialog;
    }

    @Override
    public final void onClick(View view) {
        OfficialWarningDialog.a(this.a, view);
    }
}
