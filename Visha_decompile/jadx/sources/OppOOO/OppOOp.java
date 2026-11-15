package OppOOO;

import android.view.inputmethod.InputMethodManager;
import com.transsion.xuanniao.account.center.view.j;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;

public class OppOOp implements Runnable {
    public final BaseActivity OppO00p;
    public final j OppO0O0;

    public OppOOp(j jVar, BaseActivity baseActivity) {
        this.OppO0O0 = jVar;
        this.OppO00p = baseActivity;
    }

    @Override
    public void run() {
        this.OppO0O0.b.setFocusable(true);
        this.OppO0O0.b.setFocusableInTouchMode(true);
        this.OppO0O0.b.requestFocus();
        ((InputMethodManager) this.OppO00p.getApplicationContext().getSystemService("input_method")).showSoftInput(this.OppO0O0.b, 1);
    }
}
