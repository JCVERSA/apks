package com.transsion.core.utils;

import android.content.Context;
import android.widget.Toast;
import defpackage.yoa;

final class ToastUtil$2 implements Runnable {
    final Context val$context;
    final String val$msg;

    public ToastUtil$2(String str, Context context) {
        this.val$msg = str;
        this.val$context = context;
    }

    @Override
    public void run() {
        if (yoa.b != null) {
            yoa.b.setText(this.val$msg);
            yoa.b.setDuration(0);
            yoa.d(yoa.b);
        } else {
            Toast unused = yoa.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$msg, 0);
        }
        yoa.b.show();
    }
}
