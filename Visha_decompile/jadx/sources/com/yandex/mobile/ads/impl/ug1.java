package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.List;

public final class ug1 {
    private static final List<String> a = defpackage.y71.n("android.permission.ACCESS_NETWORK_STATE", "android.permission.INTERNET");

    public static void a(Context context) throws bp0 {
        y45.j(context, "context");
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            List listE1 = defpackage.i81.e1(a);
            String[] strArr = packageInfo.requestedPermissions;
            if (strArr != null) {
                y45.i(strArr, "requestedPermissions");
                listE1.removeAll(defpackage.hi.c1(strArr));
                if (listE1.size() <= 0) {
                    return;
                }
                hz9 hz9Var = hz9.a;
                String str = String.format("Please, check %s permission in AndroidManifest file.", Arrays.copyOf(new Object[]{listE1}, 1));
                y45.i(str, "format(...)");
                throw new bp0(str, str);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
