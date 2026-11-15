package com.transsion.push.utils;

import android.content.Intent;
import com.transsion.push.bean.PushMessage;
import com.transsion.push.tracker.Tracker;
import com.transsion.pushui.activity.TransparentActivity;
import defpackage.qab;
import defpackage.xj1;

class PushIml$1 implements Runnable {
    final PushMessage val$message;

    public PushIml$1(PushMessage pushMessage) {
        this.val$message = pushMessage;
    }

    @Override
    public void run() {
        try {
            Intent intent = new Intent();
            intent.putExtra("message", qab.b(this.val$message));
            intent.setClassName(this.val$message.packageName, TransparentActivity.class.getName());
            intent.setFlags(268435456);
            xj1.a().startActivity(intent);
            Tracker tracker = Tracker.getInstance();
            PushMessage pushMessage = this.val$message;
            tracker.trackMessage(pushMessage.messageId, pushMessage.type, pushMessage.timeStamp, "success", 0);
        } catch (Exception e) {
            PushLogUtils.LOG.i(e);
        }
    }
}
