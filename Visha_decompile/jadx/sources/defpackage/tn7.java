package defpackage;

import android.view.View;
import com.transsion.xuanniao.account.auth.view.PalmPrevActivity;

public class tn7 implements View.OnClickListener {
    public final PalmPrevActivity b;

    public tn7(PalmPrevActivity palmPrevActivity) {
        this.b = palmPrevActivity;
    }

    @Override
    public void onClick(View view) {
        PalmPrevActivity palmPrevActivity = this.b;
        if (palmPrevActivity.f != null) {
            palmPrevActivity.E0(true);
        } else {
            palmPrevActivity.finish();
        }
    }
}
