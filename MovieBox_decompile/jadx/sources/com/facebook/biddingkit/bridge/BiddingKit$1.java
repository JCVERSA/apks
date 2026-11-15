package com.facebook.biddingkit.bridge;

import android.content.Context;
import com.facebook.biddingkit.logging.h;
import q8.b;

final class BiddingKit$1 implements Runnable {
    final String val$configuration;
    final Context val$context;

    BiddingKit$1(Context context, String str) {
        this.val$context = context;
        this.val$configuration = str;
    }

    @Override
    public void run() {
        Context context = this.val$context;
        h.a(context, b.c(context), "0.5.1", this.val$configuration);
    }
}
