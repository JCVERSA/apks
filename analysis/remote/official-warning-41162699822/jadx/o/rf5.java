package o;

import android.app.Activity;
import com.snaptube.extractor.pluginlib.piratical.OfficialWarningDialog;

public final class rf5 implements Runnable {
    public final OfficialWarningDialog.a a;
    public final Activity b;

    public rf5(OfficialWarningDialog.a aVar, Activity activity) {
        this.a = aVar;
        this.b = activity;
    }

    @Override
    public final void run() {
        OfficialWarningDialog.a.a(this.a, this.b);
    }
}
