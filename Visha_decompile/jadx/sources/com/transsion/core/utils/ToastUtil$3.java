package com.transsion.core.utils;

import android.content.Context;
import android.widget.Toast;
import defpackage.yoa;

final class ToastUtil$3 implements Runnable {
    final Context val$context;
    final int val$resid;

    public ToastUtil$3(int i, Context context) {
        this.val$resid = i;
        this.val$context = context;
    }

    @Override
    public void run() {
        if (yoa.b != null) {
            yoa.b.setText(this.val$resid);
            yoa.b.setDuration(1);
            yoa.d(yoa.b);
        } else {
            Toast unused = yoa.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$resid, 1);
        }
        yoa.b.show();
    }
}
