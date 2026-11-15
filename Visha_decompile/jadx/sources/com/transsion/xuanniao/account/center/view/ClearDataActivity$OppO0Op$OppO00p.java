package com.transsion.xuanniao.account.center.view;

import com.google.gson.Gson;
import defpackage.kl7;
import defpackage.xj;
import java.util.ArrayList;

public class ClearDataActivity$OppO0Op$OppO00p implements Runnable {
    public final ClearDataActivity.d OppO00p;

    public ClearDataActivity$OppO0Op$OppO00p(ClearDataActivity.d dVar) {
        this.OppO00p = dVar;
    }

    @Override
    public void run() {
        ClearDataActivity clearDataActivity = ClearDataActivity.this;
        clearDataActivity.getClass();
        xj xjVarU = xj.U(clearDataActivity);
        int[] iArrA = ClearDataActivity.this.e.a();
        ArrayList arrayList = new ArrayList();
        for (int i : iArrA) {
            if (i == 1) {
                arrayList.add("Contacts");
            } else if (i == 2) {
                arrayList.add("Block");
            } else if (i == 3) {
                arrayList.add("WLAN");
            }
        }
        xjVarU.H(arrayList.size() > 0 ? new Gson().toJson(arrayList) : "");
        ClearDataActivity clearDataActivity2 = ClearDataActivity.this;
        kl7 kl7Var = clearDataActivity2.f;
        if (kl7Var.e) {
            clearDataActivity2.B();
        } else {
            kl7Var.c();
        }
    }
}
