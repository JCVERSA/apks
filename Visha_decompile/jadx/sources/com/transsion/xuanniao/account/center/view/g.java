package com.transsion.xuanniao.account.center.view;

import android.content.DialogInterface;
import defpackage.xj;

public class g implements DialogInterface.OnClickListener {
    public final int b;
    public final h c;

    public g(h hVar, int i) {
        this.c = hVar;
        this.b = i;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        h.a aVar;
        dialogInterface.dismiss();
        h hVar = this.c;
        hVar.d = (i + 1) % 3;
        xj.U(hVar.b).I0("confirm");
        h hVar2 = this.c;
        int i2 = hVar2.d;
        if (i2 == this.b || (aVar = hVar2.c) == null) {
            return;
        }
        PersonInfoActivity.this.f.b(i2);
    }
}
