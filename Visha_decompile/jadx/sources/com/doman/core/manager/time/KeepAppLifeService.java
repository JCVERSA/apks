package com.doman.core.manager.time;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import androidx.annotation.RequiresApi;
import com.alibaba.android.arouter.utils.Consts;
import com.doman.core.CoreMain;
import com.doman.core.R;
import com.doman.core.d.g;

public class KeepAppLifeService extends Service {
    private NotificationManager a;
    private String b = "keepapplifeid";
    private String c = "keepapplifename";
    private String d = "KeepAppLifeService";
    private BroadcastReceiver e = new BroadcastReceiver() {
        @Override
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                g.a(KeepAppLifeService.this.d, "KeepAppLifeService ss on@1");
                KeepAppLifeService.this.stopService(new Intent(context, (Class<?>) KeepAppLifeService.class));
            } else {
                if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()) || !"android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                    return;
                }
                g.a(KeepAppLifeService.this.d, "KeepAppLifeService ss on@2");
                KeepAppLifeService.this.stopService(new Intent(context, (Class<?>) KeepAppLifeService.class));
            }
        }
    };

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    @RequiresApi(api = 16)
    public void onCreate() {
        super.onCreate();
        this.a = (NotificationManager) getSystemService("notification");
        this.a.createNotificationChannel(new NotificationChannel(this.b, this.c, 4));
        g.a(this.d, "KeepAppLifeService onCreate");
        Notification.Builder contentText = new Notification.Builder(this).setSmallIcon(R.drawable.notification_template_icon_bg).setContentTitle(Consts.DOT).setContentText(Consts.DOT);
        contentText.setChannelId(this.b);
        startForeground(1, contentText.build());
        CoreMain.getInstance().getContext().registerReceiver(this.e, new IntentFilter("android.intent.action.SCREEN_ON"));
        CoreMain.getInstance().getContext().registerReceiver(this.e, new IntentFilter("android.intent.action.SCREEN_OFF"));
        CoreMain.getInstance().getContext().registerReceiver(this.e, new IntentFilter("android.intent.action.USER_PRESENT"));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        CoreMain.getInstance().getContext().unregisterReceiver(this.e);
        g.a(this.d, this.d + "---->onDestroy,停止服务");
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        g.a(this.d, "KeepAppLifeService onStartCommand");
        return 1;
    }
}
