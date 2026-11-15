package com.transsion.magicvideo.services;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.FloatingVideoWidget;
import com.transsion.playercommon.player.PlayerService;
import com.transsion.playercommon.receiver.HeadsetsControllerReceiver;
import defpackage.hz5;
import defpackage.jf;
import defpackage.o18;
import defpackage.p06;
import defpackage.se;
import defpackage.sq3;
import defpackage.vha;
import defpackage.w6c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.mozilla.javascript.ES6Iterator;

public class VideosService extends PlayerService {
    public static boolean E;
    public boolean A;
    public NotificationChannel f;
    public NotificationManager g;
    public ComponentName h;
    public ContentObserver i;
    public b j;
    public AudioManager k;
    public boolean n;
    public boolean o;
    public boolean p;
    public WindowManager r;
    public ViewGroup s;
    public FloatingVideoWidget t;
    public int u;
    public int v;
    public int w;
    public int x;
    public boolean y;
    public VideoPlayManager z;
    public ServiceBinder l = new ServiceBinder();
    public Object m = new Object();
    public int q = 0;
    public int B = 0;
    public BroadcastReceiver C = new a();
    public Handler D = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.x(message);
        }
    });

    public class MediaStoreObserver extends ContentObserver implements Runnable {
        private static final long REFRESH_DELAY = 500;
        private Handler mHandler;

        public MediaStoreObserver(Handler handler) {
            super(handler);
            this.mHandler = handler;
        }

        @Override
        public void onChange(boolean z) {
            this.mHandler.removeCallbacks(this);
            this.mHandler.postDelayed(this, 500L);
        }

        @Override
        public void run() {
            VideosService.this.z.d1();
        }
    }

    public class ServiceBinder extends Binder {
        public ServiceBinder() {
        }

        public VideosService getService() {
            return VideosService.this;
        }
    }

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                Log.v("VideosService", "onReceive " + action);
                if ("android.media.AUDIO_BECOMING_NOISY".equals(action)) {
                    VideosService.this.z.i1(true);
                } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    if (!VideosService.this.y && VideosService.E) {
                        VideosService.this.y = true;
                        if (VideosService.this.z.A0()) {
                            VideosService.this.z.p2(true, false);
                        }
                    }
                } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                    if (VideosService.E) {
                        VideosService.this.y = false;
                    }
                } else if ("android.intent.action.HEADSET_PLUG".equals(action)) {
                    if (intent.hasExtra(ICode.CALL.CALL_KEY_STATE)) {
                        if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 1) {
                            if (!VideosService.this.A) {
                                Log.d("VideosService", "有线耳机插入");
                                VideosService.this.A = true;
                                VideosService.this.B = 1;
                                hz5.b(1);
                            }
                        } else if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 0 && VideosService.this.A) {
                            Log.d("VideosService", "有线耳机拔出");
                            VideosService.this.A = false;
                            VideosService.this.B = 0;
                        }
                    }
                } else if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(action)) {
                    int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
                    if (intExtra == 0) {
                        Log.d("VideosService", "蓝牙耳机未连接");
                        VideosService.this.B = 0;
                    } else if (intExtra == 2) {
                        Log.d("VideosService", "蓝牙耳机连接");
                        VideosService.this.B = 2;
                        hz5.b(2);
                    }
                }
            } catch (Exception e) {
                Log.e("VideosService", "onReceive error: " + e.getMessage());
            }
        }
    }

    public static final class b extends Handler {
        @Override
        public void handleMessage(Message message) {
            int i = message.what;
        }

        public b() {
        }
    }

    private void J(boolean z) {
        this.n = z;
        this.z.a2(z);
    }

    private void L() {
        synchronized (this.m) {
            try {
                if (this.n) {
                    LogUtils.i("VideosService", "notify show");
                    VideoPlayManager videoPlayManager = this.z;
                    if (videoPlayManager != null) {
                        videoPlayManager.y2();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void p() {
        FloatingVideoWidget floatingVideoWidget = this.t;
        if (floatingVideoWidget != null) {
            floatingVideoWidget.exitWindow();
        }
        D();
        E = false;
        this.z.X1(false);
        this.y = false;
        o18.e();
    }

    private WindowManager r() {
        if (this.r == null) {
            this.r = (WindowManager) getSystemService("window");
        }
        return this.r;
    }

    private void s(Intent intent) {
        String action = intent.getAction();
        Log.d("VideosService", "handleCommandIntent action:" + action);
        if ("com.transsion.magicshow.stop.video".equals(action)) {
            return;
        }
        if ("com.transsion.magicshow.play.pause".equals(action)) {
            p06.m0(this.z.A0() ? "pause" : PlayAudioData.TAG_NEED_PLAY, true);
            this.z.q2();
            return;
        }
        if ("com.transsion.magicshow.previous".equals(action)) {
            p06.m0("pre", true);
            this.z.r1();
        } else if ("com.transsion.magicshow.next".equals(action)) {
            p06.m0(ES6Iterator.NEXT_METHOD, true);
            this.z.o1();
        } else if ("com.transsion.magicshow.exit".equals(action)) {
            LogUtils.i("VideosService", "clear notification");
            p06.m0("off", true);
            u();
        }
    }

    public boolean x(Message message) {
        int i = message.what;
        if (i == 1) {
            w6c.F(this.b, 0L);
            this.z.i1(true);
        } else if (i == 100) {
            L();
        }
        return true;
    }

    public void y() {
        vha.u(getApplicationContext());
    }

    public void A(MediaItem mediaItem) {
        FloatingVideoWidget floatingVideoWidget = this.t;
        if (floatingVideoWidget != null) {
            floatingVideoWidget.onPlayItemChanged(mediaItem);
        }
    }

    public void B(MediaItem mediaItem) {
        FloatingVideoWidget floatingVideoWidget = this.t;
        if (floatingVideoWidget != null) {
            floatingVideoWidget.onStartChangedPlayItem(mediaItem);
        }
    }

    public void C(boolean z) {
        synchronized (this.m) {
            try {
                Log.d("VideosService", "removeNotification " + this.n + ",force:" + z);
                if (this.n || z) {
                    J(false);
                    stopForeground(true);
                    this.g.cancel(1);
                    if (E) {
                        p();
                    }
                    this.D.removeMessages(100);
                    this.D.removeMessages(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void D() {
        try {
            if (this.s == null) {
                return;
            }
            r().removeView(this.s);
            this.s = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized void E() {
        synchronized (this.m) {
            try {
                LogUtils.i("VideosService", "showPlayingNotification " + this.n);
                J(true);
                LogUtils.i("VideosService", "notify show");
                VideoPlayManager videoPlayManager = this.z;
                if (videoPlayManager != null) {
                    videoPlayManager.y2();
                }
                long jL = w6c.l(this.b) - System.currentTimeMillis();
                if (jL > 0) {
                    this.D.sendEmptyMessageDelayed(1, jL);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void F() {
        D();
        this.p = getResources().getConfiguration().orientation == 2;
        LayoutInflater layoutInflater = (LayoutInflater) getSystemService("layout_inflater");
        if (this.w == 0 || this.x == 0) {
            this.w = this.u;
            this.x = this.v;
        }
        FloatingVideoWidget floatingVideoWidget = new FloatingVideoWidget(layoutInflater.getContext(), this.w, this.x);
        this.t = floatingVideoWidget;
        floatingVideoWidget.bindWindow(this);
        FloatingVideoWidget floatingVideoWidget2 = this.t;
        this.s = floatingVideoWidget2;
        floatingVideoWidget2.attchWindow();
        this.z.C(true);
    }

    public void G(PlayVideoData playVideoData) {
        Log.d("VideosService", "startPip " + playVideoData);
        if (playVideoData != null) {
            E = true;
            this.z.X1(true);
            F();
            E();
            H();
            o18.p(this);
        }
    }

    public void H() {
        this.t.onPlayerStateUpdate(this.q);
        I();
    }

    public void I() {
        FloatingVideoWidget floatingVideoWidget;
        if (!E || (floatingVideoWidget = this.t) == null) {
            return;
        }
        floatingVideoWidget.updateNextAndPreviousState(this.z.s0(), this.z.q0());
    }

    public void K(boolean z) {
        this.D.removeMessages(100);
        this.D.sendEmptyMessageDelayed(100, z ? 300L : 0L);
    }

    @Override
    public void a(int i, KeyEvent keyEvent) {
        super.a(i, keyEvent);
        Log.d("VideosService", "onMediaButtonEventKeyUp " + i + ",isActivityResume:" + this.z.v0() + StringUtils.COMMA + this.n);
        if (jf.n(i) && !this.z.v0() && this.n) {
            this.z.q2();
        }
        if (i == 87) {
            this.z.o1();
        } else if (i == 88) {
            this.z.r1();
        }
    }

    @Override
    public void b(boolean z) {
        LogUtils.N("VideosService", "onPlayTypeChanged isVideo:" + z + " isPlayVideo:" + this.z.z0());
        if (z || !this.z.z0()) {
            return;
        }
        this.z.Y1(false);
        this.z.M();
    }

    @Override
    public void i(int i, KeyEvent keyEvent) {
        Log.d("VideosService", "onHeadsetsKeyUp " + i + ",isActivityResume:" + this.z.v0() + StringUtils.COMMA + this.n);
        if (jf.n(i) && !this.z.v0() && this.n) {
            this.z.q2();
        }
    }

    public void n() {
        p();
    }

    public void o() {
        p();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.l;
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        boolean z = configuration.orientation == 2;
        this.o = z;
        if (this.p && !z) {
            this.p = false;
        }
        super.onConfigurationChanged(configuration);
        K(false);
        FloatingVideoWidget floatingVideoWidget = this.t;
        if (floatingVideoWidget != null) {
            floatingVideoWidget.updateConfig(configuration);
        }
    }

    @Override
    public void onCreate() {
        Log.d("VideosService", "onCreate " + this);
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public final void run() {
                this.b.y();
            }
        });
        this.z = VideoPlayManager.X();
        super.onCreate();
        this.b = getApplicationContext();
        this.k = (AudioManager) getSystemService("audio");
        this.j = new b();
        this.i = new MediaStoreObserver(this.j);
        getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, this.i);
        getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, this.i);
        this.h = new ComponentName(this, (Class<?>) HeadsetsControllerReceiver.class);
        z(true);
        HeadsetsControllerReceiver.a(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        registerReceiver(this.C, intentFilter);
        sq3.a().b(this);
        v(this.b);
        this.g = (NotificationManager) se.a().getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("magicshow_audio_notification_channel", this.b.getString(R.string.visha_Player), 3);
        this.f = notificationChannel;
        notificationChannel.setShowBadge(false);
        this.f.setSound(null, null);
        this.g.createNotificationChannel(this.f);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d("VideosService", "onDestroy " + this);
        this.z.a1();
        z(false);
        HeadsetsControllerReceiver.b(this);
        getContentResolver().unregisterContentObserver(this.i);
        unregisterReceiver(this.C);
        this.D.removeCallbacksAndMessages(null);
        C(true);
        sq3.a().c(this);
    }

    @Override
    public void onLoadingOnlineVideo(boolean z, boolean z2) {
    }

    @Override
    public void onPlayerStateUpdate(int i) {
        FloatingVideoWidget floatingVideoWidget;
        this.q = i;
        if (!E || (floatingVideoWidget = this.t) == null) {
            return;
        }
        floatingVideoWidget.onPlayerStateUpdate(i);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return 2;
        }
        Log.d("VideosService", "Got new intent " + intent + ", startId = " + i2);
        s(intent);
        return 2;
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        FloatingVideoWidget floatingVideoWidget;
        Log.v("VideosService", "onVideoSizeChanged, width = " + i + ", height = " + i2);
        if (E && (floatingVideoWidget = this.t) != null) {
            floatingVideoWidget.onVideoSizeChanged(i, i2);
        }
        this.w = i;
        this.x = i2;
    }

    public int q() {
        return this.B;
    }

    public void u() {
        this.z.y1();
        this.z.M();
    }

    public void v(Context context) {
        Log.d("VideosService", "initResIcons " + context);
        this.o = getResources().getConfiguration().orientation == 2;
        Resources resources = getApplicationContext().getResources();
        this.u = resources.getDimensionPixelOffset(R.dimen.floating_window_width);
        this.v = resources.getDimensionPixelOffset(R.dimen.floating_window_height);
    }

    public boolean w() {
        return this.n;
    }

    public void z(boolean z) {
        Log.d("VideosService", "listenerMediaButton " + z);
        if (Build.VERSION.SDK_INT > 29) {
            return;
        }
        if (z) {
            this.k.registerMediaButtonEventReceiver(this.h);
        } else {
            this.k.unregisterMediaButtonEventReceiver(this.h);
        }
    }
}
