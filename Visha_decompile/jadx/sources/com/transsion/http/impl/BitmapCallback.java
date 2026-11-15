package com.transsion.http.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import defpackage.ds4;
import defpackage.jo0;
import java.nio.ByteBuffer;

public abstract class BitmapCallback extends ds4 {
    public final Bitmap D(byte[] bArr) {
        return BitmapFactory.decodeStream(jo0.f(ByteBuffer.wrap(bArr)));
    }

    public abstract void E(int i, Bitmap bitmap, Throwable th);

    public abstract void F(int i, Bitmap bitmap);

    @Override
    public void o(int i, byte[] bArr, Throwable th) {
        j(new c(this, i, th));
    }

    @Override
    public void v(int i, byte[] bArr) {
        b bVar = new b(this, bArr, i);
        if (m() || l()) {
            bVar.run();
        } else {
            new Thread(bVar).start();
        }
    }
}
