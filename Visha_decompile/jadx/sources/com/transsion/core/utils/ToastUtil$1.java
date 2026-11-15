package com.transsion.core.utils;

import android.content.Context;
import android.widget.Toast;
import defpackage.yoa;

final class ToastUtil$1 implements Runnable {
    final Context val$context;
    final int val$resid;

    public ToastUtil$1(int i, Context context) {
        this.val$resid = i;
        this.val$context = context;
    }

    @Override
    public void run() {
        if (yoa.b != null) {
            yoa.b.setText(this.val$resid);
            yoa.b.setDuration(0);
            yoa.d(yoa.b);
        } else {
            Toast unused = yoa.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resid, 0);
        }
        yoa.b.show();
    }
}
