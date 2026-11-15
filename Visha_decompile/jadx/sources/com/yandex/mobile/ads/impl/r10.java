package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.io.File;

public final class r10 {
    public static File a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "cacheDirName");
        return new File(context.getCacheDir().getPath() + File.separator + str);
    }
}
