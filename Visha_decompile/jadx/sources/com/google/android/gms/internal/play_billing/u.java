package com.google.android.gms.internal.play_billing;

import defpackage.hnj;
import defpackage.vkj;

public final class u {
    public Object a;
    public vkj b;
    public hnj c = hnj.i();
    public boolean d;

    public final void a() {
        this.a = null;
        this.b = null;
        this.c.d(null);
    }

    public final boolean b(Object obj) {
        this.d = true;
        vkj vkjVar = this.b;
        boolean z = vkjVar != null && vkjVar.a(obj);
        if (z) {
            this.a = null;
            this.b = null;
            this.c = null;
        }
        return z;
    }

    public final void finalize() {
        hnj hnjVar;
        vkj vkjVar = this.b;
        if (vkjVar != null && !vkjVar.isDone()) {
            vkjVar.c(new zzq("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.a))));
        }
        if (this.d || (hnjVar = this.c) == null) {
            return;
        }
        hnjVar.d(null);
    }
}
