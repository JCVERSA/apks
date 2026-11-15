package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import defpackage.y45;
import java.util.List;

public final class dk1 {
    private final j0 a;
    private final ak1 b;
    private final q1 c;

    public dk1(o3 o3Var, o8 o8Var) {
        this(o3Var, o8Var, new j0(), new ak1(), new q1(o3Var, o8Var));
    }

    public final boolean a(Context context, List<zj1> list) {
        Activity activity;
        y45.j(context, "context");
        y45.j(list, "preferredPackages");
        Activity activityA = p0.a();
        if (activityA != null) {
            context = activityA;
        } else {
            this.a.getClass();
            y45.j(context, "context");
            Context baseContext = context;
            int i = 0;
            while (true) {
                if (baseContext instanceof ContextWrapper) {
                    int i2 = i + 1;
                    if (i < 10) {
                        if (baseContext instanceof Activity) {
                            activity = (Activity) baseContext;
                            break;
                        }
                        baseContext = ((ContextWrapper) baseContext).getBaseContext();
                        i = i2;
                    }
                }
                activity = null;
                break;
            }
            if (activity != null) {
                context = activity;
            }
        }
        for (zj1 zj1Var : list) {
            try {
                this.b.getClass();
                Intent intentA = ak1.a(context, zj1Var);
                if (zj1Var.c() == xy.d) {
                    this.c.a(context, intentA);
                    return true;
                }
                context.startActivity(intentA);
                return true;
            } catch (Exception unused) {
                sp0.b(zj1Var.d());
            }
        }
        return false;
    }

    public dk1(o3 o3Var, o8<?> o8Var, j0 j0Var, ak1 ak1Var, q1 q1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(j0Var, "activityContextProvider");
        y45.j(ak1Var, "preferredPackageIntentCreator");
        y45.j(q1Var, "adActivityResultLauncher");
        this.a = j0Var;
        this.b = ak1Var;
        this.c = q1Var;
    }
}
