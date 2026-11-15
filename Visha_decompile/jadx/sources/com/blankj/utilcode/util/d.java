package com.blankj.utilcode.util;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import androidx.core.app.NotificationCompat;

public abstract class d {

    public static class a {
        public static final a b = new a(Utils.a().getPackageName(), Utils.a().getPackageName(), 3);
        public NotificationChannel a;

        public a(String str, CharSequence charSequence, int i) {
            this.a = new NotificationChannel(str, charSequence, i);
        }

        public NotificationChannel b() {
            return this.a;
        }
    }

    public static Notification a(a aVar, Utils.b bVar) {
        ((NotificationManager) Utils.a().getSystemService("notification")).createNotificationChannel(aVar.b());
        NotificationCompat.Builder builder = new NotificationCompat.Builder(Utils.a());
        builder.setChannelId(aVar.a.getId());
        if (bVar != null) {
            bVar.accept(builder);
        }
        return builder.build();
    }
}
