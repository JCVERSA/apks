package com.transsion.ad;

import com.blankj.utilcode.util.Utils;
import java.io.File;

public final class a {

    public static final a f40775a = new a();

    private static final String f40776b;

    private static final String f40777c;

    static {
        File externalFilesDir = Utils.a().getExternalFilesDir("mb");
        String absolutePath = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        char c10 = File.separatorChar;
        f40776b = absolutePath + c10 + "non_ad";
        File externalFilesDir2 = Utils.a().getExternalFilesDir("ps");
        f40777c = (externalFilesDir2 != null ? externalFilesDir2.getAbsolutePath() : null) + c10 + "non_ad";
    }

    private a() {
    }

    public final String a() {
        return f40777c;
    }

    public final String b() {
        return f40776b;
    }
}
