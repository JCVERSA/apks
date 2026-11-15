package com.transsion.vishatransfers.service;

import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.vishatransfers.R;
import com.transsion.vishatransfers.manager.TransferNotificationManager;
import defpackage.b6b;
import defpackage.se;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001%\u0018\u00002\u00020\u0001:\u0001/B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J)\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00118\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001dR\u0016\u0010 \u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u001fR\u0018\u0010$\u001a\u00060!R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010.\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010+¨\u00060"}, d2 = {"Lcom/transsion/vishatransfers/service/TransferService;", "Landroid/app/Service;", MethodDecl.initName, "()V", "Lzfb;", "onCreate", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "onDestroy", "", "title", "b", "(Ljava/lang/String;)V", Progress.CURRENT_SIZE, "progress", "d", "(Ljava/lang/String;Ljava/lang/String;I)V", "c", "Ljava/lang/String;", AbstractID3v1Tag.TAG, "Landroid/app/Notification;", "Landroid/app/Notification;", "mNotification", "I", "mNotificationId", "Lcom/transsion/vishatransfers/service/TransferService$a;", "e", "Lcom/transsion/vishatransfers/service/TransferService$a;", "binder", "com/transsion/vishatransfers/service/TransferService$cancelReceiver$1", "f", "Lcom/transsion/vishatransfers/service/TransferService$cancelReceiver$1;", "cancelReceiver", "Landroid/widget/RemoteViews;", GslbInterceptor.HEADER_KEY_GSLB, "Landroid/widget/RemoteViews;", "simpleView", CmcdData.STREAMING_FORMAT_HLS, "complexView", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "vishatransfer_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransferService extends Service {

    public Notification mNotification;

    public int mNotificationId;

    public final String TAG = "TransferService";

    public final a binder = new a();

    public final TransferService$cancelReceiver$1 cancelReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            y45.j(context, "context");
            y45.j(intent, "intent");
            if (y45.e(intent.getAction(), "com.transsion.vishatransfers.action.CANCEL_TRANSFER")) {
                Log.d(this.a.TAG, "onReceive: ACTION_CANCEL_TRANSFER");
                TransferNotificationManager.s.a().t();
            }
        }
    };

    public final RemoteViews simpleView = new RemoteViews(se.a().getPackageName(), R.layout.notification_transfer_simple);

    public final RemoteViews complexView = new RemoteViews(se.a().getPackageName(), R.layout.notification_transfer_complex);

    public final class a extends Binder {
        public a() {
        }

        public final TransferService a() {
            return TransferService.this;
        }
    }

    public final void b(String title) {
        y45.j(title, "title");
        this.mNotificationId = 20001;
        Notification notificationB = b6b.a.b(this, this.simpleView, this.complexView, title, 20001);
        this.mNotification = notificationB;
        startForeground(this.mNotificationId, notificationB);
    }

    public final void c() {
        b6b.a.a(this, this.mNotificationId);
        stopForeground(true);
        this.mNotification = null;
    }

    public final void d(String title, String currentSize, int progress) {
        y45.j(title, "title");
        y45.j(currentSize, Progress.CURRENT_SIZE);
        Log.d(this.TAG, "updateTransferProgress: " + progress);
        Notification notification = this.mNotification;
        if (notification != null) {
            b6b.a.d(this, this.mNotificationId, notification, title, currentSize, progress, this.simpleView, this.complexView);
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        Log.d(this.TAG, "onBind");
        return this.binder;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(this.TAG, "onCreate");
        b6b.a.c(this);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.cancelReceiver, new IntentFilter("com.transsion.vishatransfers.action.CANCEL_TRANSFER"), 4);
        } else {
            registerReceiver(this.cancelReceiver, new IntentFilter("com.transsion.vishatransfers.action.CANCEL_TRANSFER"));
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d(this.TAG, "onDestroy");
        unregisterReceiver(this.cancelReceiver);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(this.TAG, "onStartCommand");
        return 1;
    }
}
