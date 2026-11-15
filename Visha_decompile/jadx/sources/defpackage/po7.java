package defpackage;

import android.view.View;
import com.transsion.xuanniao.account.auth.view.PalmPrevActivity;

public class po7 implements View.OnClickListener {
    public final PalmPrevActivity b;

    public po7(PalmPrevActivity palmPrevActivity) {
        this.b = palmPrevActivity;
    }

    @Override
    public void onClick(View view) {
        this.b.c0(49999, "switch account");
    }
}
