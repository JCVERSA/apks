package com.transsion.http.impl;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.nio.ByteBuffer;

public abstract class BitmapCallback extends q {
    public Bitmap x(byte[] bArr) {
        return BitmapFactory.decodeStream(kl.a.f(ByteBuffer.wrap(bArr)));
    }

    @Override
    public void m(int i10, byte[] bArr, Throwable th2) {
        h(new c(this, i10, th2));
    }

    @Override
    public void s(int i10, byte[] bArr) {
        b bVar = new b(this, bArr, i10);
        if (k() || j()) {
            bVar.run();
        } else {
            new Thread(bVar).start();
        }
    }

    public abstract void y(int i10, Bitmap bitmap, Throwable th2);

    public abstract void z(int i10, Bitmap bitmap);
}
