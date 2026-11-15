package defpackage;

import android.view.View;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.auth.view.PalmPrevActivity;

public class ap7 implements View.OnClickListener {
    public final PalmPrevActivity b;

    public ap7(PalmPrevActivity palmPrevActivity) {
        this.b = palmPrevActivity;
    }

    @Override
    public void onClick(View view) {
        PalmAuthRequest palmAuthRequest = this.b.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.onCancel();
            this.b.f = null;
        }
        this.b.finish();
    }
}
