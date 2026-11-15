package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.view.View;
import defpackage.xj;

public class f implements View.OnClickListener {
    public final Context b;
    public final e c;

    public f(e eVar, Context context) {
        this.c = eVar;
        this.b = context;
    }

    @Override
    public void onClick(View view) {
        e eVar = this.c;
        com.transsion.widgetslib.dialog.d dVar = eVar.a;
        if (dVar != null && dVar.isShowing()) {
            eVar.a.dismiss();
        }
        xj.U(this.b).B0("confirm");
        e eVar2 = this.c;
        e.b bVar = eVar2.h;
        if (bVar != null) {
            PersonInfoActivity.this.f.i(eVar2.b.getText().toString());
        }
    }
}
