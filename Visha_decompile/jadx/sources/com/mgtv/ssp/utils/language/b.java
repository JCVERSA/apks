package com.mgtv.ssp.utils.language;

import android.content.Context;
import com.hunantv.imgo.BaseApplication;
import java.io.Serializable;

public class b {
    private static b b;
    private a a;

    private b() {
    }

    public static b a() {
        if (b == null) {
            b = new b();
        }
        return b;
    }

    public void a(Context context, String str) throws Throwable {
        a aVarA = a.a(context, str);
        this.a = aVarA;
        String strA = aVarA.a("key_api_cache_version");
        if (strA == null || !strA.equals("1.3")) {
            this.a.a();
        }
        this.a.a("key_api_cache_version", "1.3");
    }

    public void a(String str, Serializable serializable) throws Throwable {
        this.a.a(str, serializable);
    }

    public Object a(String str) throws Throwable {
        if (this.a == null) {
            a(BaseApplication.getContext(), "ssp_api_cache");
        }
        return this.a.c(str);
    }
}
