package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import java.io.IOException;
import java.io.InputStream;

public final class iu1 extends mm {
    private final Context b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public iu1(Context context) {
        super(context);
        y45.j(context, "context");
        this.b = context.getApplicationContext();
    }

    @Override
    public final byte[][] a() {
        try {
            InputStream inputStreamOpenRawResource = this.b.getResources().openRawResource(R.raw.monetization_ads_sdkinternalca);
            try {
                y45.g(inputStreamOpenRawResource);
                byte[] bArrC = defpackage.oo0.c(inputStreamOpenRawResource);
                defpackage.ly0.a(inputStreamOpenRawResource, null);
                return (byte[][]) defpackage.fi.B(super.a(), new byte[][]{bArrC});
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
