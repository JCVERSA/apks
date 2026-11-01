package ru.zdevs.zarchiver.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.Build;
import ru.zdevs.zarchiver.R;

public final class b {

    public static boolean f1725f = false;

    public static boolean f1726g = false;

    public static final h1.a<b> f1727h = new h1.a<>();

    public int f1728a;

    public final int f1729b;

    public int f1730c;

    public long f1731d;

    public final Notification.Builder f1732e;

    public b(Context context, int i2, int i3) {
        this.f1728a = i2;
        this.f1729b = i3;
        Notification.Builder builder = new Notification.Builder(context);
        this.f1732e = builder;
        builder.setSmallIcon(R.drawable.ic_stat_notify);
        builder.setWhen(System.currentTimeMillis());
    }

    public static synchronized void a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && !f1725f) {
            f1725f = true;
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("za_d", "Notification", 4);
            notificationChannel.enableLights(true);
            if (i2 >= 33) {
                notificationChannel.setBlockable(false);
            }
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(new NotificationChannel("za_p", "Progress", 2));
            NotificationChannel notificationChannel2 = new NotificationChannel("za_m", "Message", 4);
            notificationChannel2.enableLights(true);
            notificationManager.createNotificationChannel(notificationChannel2);
        }
    }

    public static synchronized b c(Service service, int i2, String str, String str2, Intent intent) {
        b bVar;
        int i3 = i2 + 70;
        bVar = new b(service, i3, 70);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            bVar.f1732e.setCategory("status");
        }
        if (i4 >= 26) {
            bVar.f1732e.setChannelId("za_d");
        }
        bVar.f1732e.setTicker(str2);
        bVar.f1732e.setContentTitle(str);
        bVar.f1732e.setContentText(str2);
        bVar.f1732e.setContentIntent(PendingIntent.getActivity(service, i3, intent, 201326592));
        return bVar;
    }

    public static synchronized b d(Service service, int i2, String str, String str2, int i3, Intent intent) {
        b bVar;
        int i4 = i2 + 80;
        bVar = new b(service, i4, 80);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 26) {
            bVar.f1732e.setChannelId("za_m");
        }
        bVar.f1732e.setTicker(str2);
        bVar.f1732e.setContentTitle(str);
        bVar.f1732e.setContentText(str2);
        if (i5 >= 16 && i3 > 0) {
            bVar.f1732e.setSubText((i3 / 60) + ":" + (i3 % 60));
        }
        bVar.f1732e.setAutoCancel(true);
        bVar.f1732e.setContentIntent(PendingIntent.getActivity(service, i4, intent, 201326592));
        return bVar;
    }

    public static synchronized b e(Service service, int i2, String str, Intent intent) {
        int i3;
        b bVar;
        if (f1726g) {
            i3 = i2 + 60;
        } else {
            f1726g = true;
            i3 = 69;
        }
        a(service);
        bVar = new b(service, i3, 60);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            bVar.f1732e.setCategory("progress");
        }
        if (i4 >= 26) {
            bVar.f1732e.setChannelId("za_p");
        }
        bVar.f1732e.setTicker(service.getString(R.string.app_name));
        if (i4 < 24) {
            bVar.f1732e.setContentTitle(service.getString(R.string.app_name));
            bVar.f1732e.setContentText(str);
            bVar.f1732e.setNumber(0);
        } else {
            bVar.f1732e.setContentTitle(str);
            bVar.f1732e.setContentText("0%");
        }
        bVar.f1732e.setProgress(100, 0, true);
        bVar.f1732e.setOngoing(true);
        if (i4 >= 24) {
            Intent intent2 = new Intent(service, (Class<?>) ZArchiverService.class);
            intent2.setAction("ru.zdevs.zarchiver.service.cancel_task");
            intent2.putExtra("iTaskID", i2);
            PendingIntent service2 = PendingIntent.getService(service, 0, intent2, 1140850688);
            Notification.Action actionBuild = new Notification.Action.Builder((Icon) null, service.getText(R.string.MENU_OPEN), PendingIntent.getActivity(service, i2 + 60, intent, 201326592)).build();
            Notification.Action actionBuild2 = new Notification.Action.Builder((Icon) null, service.getText(R.string.BTN_CANCEL), service2).build();
            bVar.f1732e.addAction(actionBuild);
            bVar.f1732e.addAction(actionBuild2);
        } else {
            bVar.f1732e.setContentIntent(PendingIntent.getActivity(service, i2 + 60, intent, 201326592));
        }
        if (i3 == 69) {
            Notification notificationB = bVar.b();
            if (i4 < 29) {
                service.startForeground(i3, notificationB);
            } else {
                service.startForeground(i3, notificationB, 1);
            }
            f1727h.put(i2, bVar);
        }
        return bVar;
    }

    public static synchronized void f(NotificationManager notificationManager, Service service, int i2) {
        b bVar;
        h1.a<b> aVar = f1727h;
        b bVar2 = aVar.get(i2);
        aVar.delete(i2);
        if (bVar2 != null && notificationManager != null) {
            int i3 = bVar2.f1728a;
            if (i3 == 69) {
                int iC = a0.c.C(i2);
                if (iC >= 0 && (bVar = aVar.get(iC)) != null) {
                    notificationManager.cancel(bVar.f1728a);
                    bVar.f1728a = 69;
                    notificationManager.notify(69, bVar.b());
                    bVar2.f1728a = i2 + 60;
                }
                if (bVar2.f1728a == 69) {
                    f1726g = false;
                    if (Build.VERSION.SDK_INT >= 29) {
                        bVar2.f1732e.setContentText("100%");
                        bVar2.f1732e.setOngoing(false);
                        bVar2.f1732e.setProgress(100, 100, false);
                        notificationManager.notify(bVar2.f1728a, bVar2.b());
                        service.stopForeground(1);
                    } else {
                        service.stopForeground(true);
                    }
                }
            } else {
                notificationManager.cancel(i3);
            }
        }
    }

    public static synchronized void g(NotificationManager notificationManager) {
        if (notificationManager == null) {
            return;
        }
        f1727h.clear();
        for (int i2 = 0; i2 < 5; i2++) {
            notificationManager.cancel(i2 + 60);
            notificationManager.cancel(i2 + 70);
        }
    }

    public static synchronized void h(NotificationManager notificationManager, int i2, String str) {
        b bVar = f1727h.get(i2);
        if (bVar == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 24) {
            bVar.f1732e.setContentText(str);
        } else {
            bVar.f1732e.setContentTitle(str);
        }
        notificationManager.notify(bVar.f1728a, bVar.b());
    }

    public final Notification b() {
        int i2 = Build.VERSION.SDK_INT;
        Notification.Builder builder = this.f1732e;
        Notification notificationBuild = i2 >= 16 ? builder.build() : builder.getNotification();
        int i3 = this.f1729b;
        if (i3 != 60) {
            if (i3 == 70) {
                notificationBuild.flags |= 32;
            }
        } else if (this.f1728a == 69) {
            notificationBuild.flags |= 64;
        }
        return notificationBuild;
    }

    public final synchronized void i(NotificationManager notificationManager) {
        int i2;
        if (notificationManager == null) {
            return;
        }
        notificationManager.notify(this.f1728a, b());
        if (this.f1729b == 60 && (i2 = this.f1728a) != 69) {
            f1727h.put(i2 - 60, this);
        }
    }
}
