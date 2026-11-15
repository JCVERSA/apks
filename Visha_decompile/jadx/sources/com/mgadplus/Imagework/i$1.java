package com.mgadplus.Imagework;

import android.content.Context;
import com.bumptech.glide.Glide;
import defpackage.cjd;

class i$1 implements Runnable {
    final Context a;
    final cjd b;

    public i$1(cjd cjdVar, Context context) {
        this.a = context;
    }

    @Override
    public void run() {
        Glide.get(this.a);
    }
}
