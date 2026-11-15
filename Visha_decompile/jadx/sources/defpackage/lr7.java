package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.view.inputmethod.InputMethodManager;
import com.transsion.xuanniao.account.center.view.e;

public class lr7 implements DialogInterface.OnShowListener {
    public final Context a;
    public final e b;

    public lr7(e eVar, Context context) {
        this.b = eVar;
        this.a = context;
    }

    @Override
    public void onShow(DialogInterface dialogInterface) {
        this.b.b.setFocusable(true);
        this.b.b.setFocusableInTouchMode(true);
        this.b.b.requestFocus();
        ((InputMethodManager) this.a.getApplicationContext().getSystemService("input_method")).showSoftInput(this.b.b, 1);
    }
}
