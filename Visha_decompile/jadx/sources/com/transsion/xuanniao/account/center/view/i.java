package com.transsion.xuanniao.account.center.view;

import android.view.View;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import defpackage.xj;

public class i implements View.OnClickListener {
    public final BaseActivity b;
    public final j c;

    public i(j jVar, BaseActivity baseActivity) {
        this.c = jVar;
        this.b = baseActivity;
    }

    @Override
    public void onClick(View view) {
        j jVar = this.c;
        com.transsion.widgetslib.dialog.d dVar = jVar.a;
        if (dVar != null && dVar.isShowing()) {
            jVar.a.dismiss();
        }
        xj.U(this.b).t0("confirm");
        j jVar2 = this.c;
        j.b bVar = jVar2.h;
        if (bVar != null) {
            PersonInfoActivity.this.f.k(jVar2.b.getText().toString());
        }
    }
}
