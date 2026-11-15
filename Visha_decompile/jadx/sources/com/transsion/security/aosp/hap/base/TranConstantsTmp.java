package com.transsion.security.aosp.hap.base;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.s74;
import defpackage.y45;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public final class TranConstantsTmp {
    public static final TranConstantsTmp a = new TranConstantsTmp();
    public static final String b = "AndroidKeyStore";
    public static final String c = "BKS";
    public static final String d = "AndroidOpenSSL";
    public static Charset e = StandardCharsets.UTF_8;
    public static Charset f = StandardCharsets.ISO_8859_1;
    public static final s74 g = new s74() {
        @Override
        public final String invoke(Context context, String str) {
            y45.j(context, "context");
            y45.j(str, Progress.FILE_NAME);
            return context.getApplicationContext().getFilesDir().getPath() + "/datastore/" + str;
        }
    };

    public final Charset a() {
        return f;
    }

    public final String b() {
        return b;
    }

    public final String c() {
        return c;
    }

    public final String d() {
        return d;
    }
}
