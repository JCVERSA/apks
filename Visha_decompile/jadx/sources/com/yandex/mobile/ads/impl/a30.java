package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import kotlin.jvm.internal.Lambda;

public final class a30 {
    private final yi5 a;

    public static final class a extends Lambda implements c74 {
        final Context b;
        final v20 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, v20 v20Var) {
            super(0);
            this.b = context;
            this.c = v20Var;
        }

        @Override
        public final Object invoke() {
            jh2.b bVarE = new jh2.b(new j20(this.b)).c(new x10(new z10(), new d20(), new c20(), new y10(), new e20(), new a20())).e(new m30(this.b));
            v20 v20Var = this.c;
            if (v20Var != null) {
                bVarE = bVarE.d(new w20(v20Var));
            }
            return bVarE.b();
        }
    }

    public a30(Context context, v20 v20Var) {
        y45.j(context, "context");
        this.a = kotlin.b.a(new a(context, v20Var));
    }

    public final defpackage.jh2 a() {
        return (defpackage.jh2) this.a.getValue();
    }
}
