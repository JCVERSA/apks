package com.wandoujia.download.rpc;

import android.content.ContentValues;
import android.content.Context;
import com.snaptube.util.ProductionEnv;
import java.util.List;

public class b {
    public static final String b = "b";
    public static b c;
    public final Context a;

    public b(Context context) {
        this.a = context;
    }

    public static synchronized b e(Context context) {
        try {
            if (c == null) {
                c = new b(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    public h a(InnerDownloadRequest innerDownloadRequest) throws Throwable {
        long jN = c.n(this.a, innerDownloadRequest);
        if (jN < 0) {
            return null;
        }
        h hVarH = c.h(this.a, Long.valueOf(jN));
        if (hVarH == null) {
            return hVarH;
        }
        ProductionEnv.d(b, "insert into download database success, and the download id is " + hVarH.a);
        return hVarH;
    }

    public h b(long j) {
        return c.h(this.a, Long.valueOf(j));
    }

    public h c(String str) {
        return c.g(this.a, str);
    }

    public List d(InnerDownloadFilter innerDownloadFilter, int i, int i2, InnerDownloadFilter.FilterArea filterArea, boolean z) {
        return c.i(this.a, innerDownloadFilter, i, i2, filterArea, z);
    }

    public boolean f(long j) {
        return c.c(this.a, j) == 1;
    }

    public boolean g(long j, ContentValues contentValues) {
        return c.r(this.a, j, contentValues) == 1;
    }
}
