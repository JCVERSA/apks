package com.transsion.http.impl;

import android.graphics.Bitmap;

public class a implements Runnable {
    final Bitmap a;
    final b b;

    public a(b bVar, Bitmap bitmap) {
        this.b = bVar;
        this.a = bitmap;
    }

    @Override
    public void run() {
        b bVar = this.b;
        bVar.c.F(bVar.b, this.a);
    }
}
