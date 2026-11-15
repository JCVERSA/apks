package com.blankj.utilcode.util;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import androidx.core.app.NotificationCompat;

public class s {

    public static class a {

        public static final a f19478b = new a(Utils.a().getPackageName(), Utils.a().getPackageName(), 3);

        private NotificationChannel f19479a;

        public a(String str, CharSequence charSequence, int i10) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f19479a = m.f.a(str, charSequence, i10);
            }
        }

        public NotificationChannel b() {
            return this.f19479a;
        }
    }

    public static Notification a(a aVar, Utils.b bVar) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            ((NotificationManager) Utils.a().getSystemService("notification")).createNotificationChannel(aVar.b());
        }
        NotificationCompat.m mVar = new NotificationCompat.m(Utils.a());
        if (i10 >= 26) {
            mVar.n(aVar.f19479a.getId());
        }
        if (bVar != null) {
            bVar.accept(mVar);
        }
        return mVar.c();
    }
}
