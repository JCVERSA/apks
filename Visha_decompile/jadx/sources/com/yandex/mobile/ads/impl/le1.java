package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class le1 {
    private final ya2 a;
    private final oe1 b;
    private final xe1 c;

    public le1(Context context, ya2 ya2Var) {
        this(context, ya2Var, new oe1(context), new xe1());
    }

    public final vn2 a(List list) throws IllegalStateException {
        y45.j(list, "verifications");
        List listC = defpackage.x71.c();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            wa2 wa2Var = (wa2) it.next();
            try {
                this.c.getClass();
                listC.add(xe1.a(wa2Var));
            } catch (xa2 e) {
                this.a.a(e);
            } catch (Exception unused) {
                sp0.c(new Object[0]);
            }
        }
        List listA = defpackage.x71.a(listC);
        if (listA.isEmpty()) {
            return null;
        }
        return b9.a(c9.a(), d9.a(fg1.a(), this.b.a(), listA));
    }

    public le1(Context context, ya2 ya2Var, oe1 oe1Var, xe1 xe1Var) {
        y45.j(context, "context");
        y45.j(ya2Var, "verificationNotExecutedListener");
        y45.j(oe1Var, "omSdkJsLoader");
        y45.j(xe1Var, "omSdkVerificationScriptResourceCreator");
        this.a = ya2Var;
        this.b = oe1Var;
        this.c = xe1Var;
    }
}
