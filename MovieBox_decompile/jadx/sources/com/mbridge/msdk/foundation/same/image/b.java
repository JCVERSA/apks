package com.mbridge.msdk.foundation.same.image;

import android.content.Context;
import android.graphics.Bitmap;
import com.mbridge.msdk.foundation.tools.t0;

public class b {

    private static b f34567a;

    protected b(Context context) {
    }

    public void a() {
    }

    public void b() {
    }

    public boolean c(String str) {
        if (t0.k(str)) {
            return false;
        }
        return d.a().d(str);
    }

    public void a(String str) {
    }

    public Bitmap b(String str) {
        if (t0.k(str)) {
            return null;
        }
        return d.a().c(str);
    }

    public static b a(Context context) {
        if (f34567a == null) {
            f34567a = new b(context);
        }
        return f34567a;
    }

    public void a(String str, c cVar) {
        d.a().b(str, null, cVar);
    }
}
