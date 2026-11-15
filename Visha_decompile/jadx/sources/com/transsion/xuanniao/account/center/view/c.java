package com.transsion.xuanniao.account.center.view;

import android.content.Context;
import android.content.DialogInterface;
import defpackage.xj;
import java.lang.ref.WeakReference;

public class c implements DialogInterface.OnClickListener {
    public final WeakReference b;
    public final d c;

    public c(d dVar, WeakReference weakReference) {
        this.c = dVar;
        this.b = weakReference;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.b.get() != null) {
            xj.U((Context) this.b.get()).v0("confirm");
        }
        d dVar = this.c;
        d.a aVar = dVar.c;
        if (aVar != null) {
            PersonInfoActivity.this.f.g(dVar.b);
        }
    }
}
