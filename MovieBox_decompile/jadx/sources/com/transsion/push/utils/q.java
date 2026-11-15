package com.transsion.push.utils;

import android.app.Notification;
import android.content.Context;

public abstract class q {
    public static Notification.Builder a(Context context, String str) {
        return new Notification.Builder(context, str);
    }
}
