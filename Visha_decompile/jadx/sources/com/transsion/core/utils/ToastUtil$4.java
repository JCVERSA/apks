package com.transsion.core.utils;

import android.content.Context;
import android.widget.Toast;
import defpackage.yoa;

final class ToastUtil$4 implements Runnable {
    final Context val$context;
    final String val$msg;

    public ToastUtil$4(String str, Context context) {
        this.val$msg = str;
        this.val$context = context;
    }

    @Override
    public void run() {
        if (yoa.b != null) {
            yoa.b.setText(this.val$msg);
            yoa.b.setDuration(1);
            yoa.d(yoa.b);
        } else {
            Toast unused = yoa.b = Toast.makeText(this.val$context.getApplicationContext(), this.val$msg, 1);
        }
        yoa.b.show();
    }
}
