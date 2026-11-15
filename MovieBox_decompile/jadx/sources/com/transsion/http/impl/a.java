package com.transsion.http.impl;

import android.graphics.Bitmap;

class a implements Runnable {

    final Bitmap f44591a;

    final b f44592b;

    a(b bVar, Bitmap bitmap) {
        this.f44592b = bVar;
        this.f44591a = bitmap;
    }

    @Override
    public void run() {
        b bVar = this.f44592b;
        bVar.f44595c.z(bVar.f44594b, this.f44591a);
    }
}
