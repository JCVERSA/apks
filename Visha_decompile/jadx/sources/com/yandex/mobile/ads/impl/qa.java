package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class qa {
    /* JADX WARN: Code duplicated, block: B:20:0x0052  */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    public static final boolean a(Context context, gz1 gz1Var, gz1 gz1Var2) {
        boolean z;
        y45.j(context, "context");
        y45.j(gz1Var, "sizeInfo");
        y45.j(gz1Var2, "containerSizeInfo");
        y45.j(context, "context");
        y45.j(gz1Var, "sizeInfo");
        y45.j(gz1Var2, "containerSizeInfo");
        int iC = gz1Var2.c(context);
        int iA = gz1Var2.a(context);
        int iC2 = gz1Var.c(context);
        int iA2 = gz1Var.a(context);
        int iOrdinal = gz1Var2.a().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                if (iC2 <= iC || iC <= 0 || (iA2 > iA && iA != 0)) {
                    z = false;
                } else {
                    z = true;
                }
            } else if (iOrdinal == 2) {
                z = true;
            } else {
                if (iOrdinal != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                if (iC2 <= iC) {
                }
                z = false;
            }
        } else if (iC2 > iC || iC <= 0 || iA2 > iA) {
            z = false;
        } else {
            z = true;
        }
        return z && b(context, gz1Var);
    }

    public static final boolean b(Context context, gz1 gz1Var) {
        y45.j(context, "context");
        y45.j(gz1Var, "adSize");
        return gz1Var.c(context) <= wh2.c(context) && gz1Var.a(context) <= wh2.b(context);
    }

    public static final boolean a(Context context, gz1 gz1Var) {
        y45.j(context, "context");
        y45.j(gz1Var, "adSize");
        return gz1Var.c(context) <= wh2.b(context) && gz1Var.a(context) <= wh2.c(context);
    }
}
