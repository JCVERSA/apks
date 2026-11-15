package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import java.io.IOException;
import java.io.InputStream;

public class mm implements mv {
    private final Context a;

    public mm(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
    }

    @Override
    public byte[][] a() {
        try {
            InputStream inputStreamOpenRawResource = this.a.getResources().openRawResource(R.raw.monetization_ads_bundled_cert);
            try {
                y45.g(inputStreamOpenRawResource);
                byte[] bArrC = defpackage.oo0.c(inputStreamOpenRawResource);
                defpackage.ly0.a(inputStreamOpenRawResource, null);
                return new byte[][]{bArrC};
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    defpackage.ly0.a(inputStreamOpenRawResource, th);
                    throw th2;
                }
            }
        } catch (IOException e) {
            throw new IllegalStateException("Failed to create cert", e);
        }
    }
}
