package b0;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.activity.AboutDlg;

public final class b implements View.OnClickListener {

    public final AboutDlg f267a;

    public b(AboutDlg aboutDlg) {
        this.f267a = aboutDlg;
    }

    @Override
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        AboutDlg aboutDlg = this.f267a;
        intent.setData(Uri.parse(aboutDlg.getString(R.string.ABT_PRIVATE_POLICY_URL)));
        h1.h.e(aboutDlg, intent);
    }
}
