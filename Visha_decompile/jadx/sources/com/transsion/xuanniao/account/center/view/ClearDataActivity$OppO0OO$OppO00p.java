package com.transsion.xuanniao.account.center.view;

import android.util.Log;
import com.transsion.xuanniao.account.R;
import defpackage.gk7;
import defpackage.rl7;

public class ClearDataActivity$OppO0OO$OppO00p implements Runnable {
    public final int OppO00p;
    public final ClearDataActivity.c OppO0O0;

    public ClearDataActivity$OppO0OO$OppO00p(ClearDataActivity.c cVar, int i) {
        this.OppO0O0 = cVar;
        this.OppO00p = i;
    }

    @Override
    public void run() {
        ClearDataActivity.this.A0();
        Log.d("com.palm.id.log", "getSyncState state=" + this.OppO00p);
        if (this.OppO00p != 1) {
            ClearDataActivity.B0(ClearDataActivity.this);
            return;
        }
        ClearDataActivity clearDataActivity = ClearDataActivity.this;
        clearDataActivity.getClass();
        new com.transsion.widgetslib.dialog.d.a(clearDataActivity, R.style.dialog_soft_input).B(clearDataActivity.getString(R.string.xn_sync_title)).k(clearDataActivity.getString(R.string.xn_sync_note)).w(clearDataActivity.getString(R.string.xn_go_logout), new rl7(clearDataActivity)).n(clearDataActivity.getString(R.string.xn_not_logout_now), new gk7(clearDataActivity)).F();
    }
}
