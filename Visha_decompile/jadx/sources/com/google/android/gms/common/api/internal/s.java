package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import defpackage.g0e;

public final class s extends g0e {
    public final Dialog a;
    public final zao b;

    public s(zao zaoVar, Dialog dialog) {
        this.b = zaoVar;
        this.a = dialog;
    }

    @Override
    public final void a() {
        this.b.zaa.o();
        if (this.a.isShowing()) {
            this.a.dismiss();
        }
    }
}
