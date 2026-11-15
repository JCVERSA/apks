package com.transsion.audio.service;

import android.app.KeyguardManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.R;
import com.transsion.audio.activities.LockScreenActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.MusicHelper;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.player.PlayerService;
import com.transsion.playercommon.receiver.HeadsetsControllerReceiver;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.utils.ToastUtils;
import defpackage.hz5;
import defpackage.jf;
import defpackage.k29;
import defpackage.mc7;
import defpackage.p06;
import defpackage.ry5;
import defpackage.se;
import defpackage.sq3;
import defpackage.t74;
import defpackage.vb;
import defpackage.vf;
import defpackage.vha;
import defpackage.we6;
import defpackage.zf1;
import org.mozilla.javascript.ES6Iterator;

public class MusicService extends PlayerService {
    public static final int y = 0;
    public NotificationChannel f;
    public NotificationManager g;
    public ComponentName h;
    public ContentObserver i;
    public b j;
    public AudioManager k;
    public boolean n;
    public boolean p;
    public MusicPlayManager q;
    public boolean r;
    public KeyguardManager t;
    public final ServiceBinder l = new ServiceBinder();
    public final Object m = new Object();
    public int o = 0;
    public int s = 0;
    public final Runnable u = new Runnable() {
        @Override
        public final void run() {
            this.b.w();
        }
    };
    public BroadcastReceiver v = new BroadcastReceiver() {
        @Override
        public void onReceive(final Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                final String action = intent.getAction();
                TaskExecutor.c(new TaskExecutor.Task<Void>() {
                    @Override
                    public Void onBackground() {
                        if (TextUtils.isEmpty(action) || Settings.canDrawOverlays(MusicService.this.getApplicationContext())) {
                            return null;
                        }
                        MainApp.q = false;
                        return null;
                    }

                    @Override
                    public void onResult(Void r2) {
                        if (!TextUtils.isEmpty(action) && action.equals("android.intent.action.SCREEN_OFF") && MainApp.q && MusicService.this.q.s0() && MusicService.this.G()) {
                            context.startActivity(LockScreenActivity.Q0(context));
                        }
                    }
                });
            } catch (Exception e) {
                Log.e("MusicService", "mLockScreenPlayerReceiver onReceive " + e.getMessage());
            }
        }
    };
    public final BroadcastReceiver w = new a();
    public final Handler x = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.x(message);
        }
    });

    public class MediaStoreObserver extends ContentObserver implements Runnable {
        private static final long REFRESH_DELAY = 500;
        private final Handler mHandler;

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
            we6.i();
            Log.i("MusicService", "run: invalidateSystemAudioQueryCache");
            MusicService.this.q.I1();
        }
    }

    public class ServiceBinder extends Binder {
        public ServiceBinder() {
        }

        public MusicService getService() {
            return MusicService.this;
        }
    }

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                Log.v("MusicService", "onReceive " + action);
                if ("android.media.AUDIO_BECOMING_NOISY".equals(action)) {
                    MusicService.this.q.M0(true);
                } else if ("android.intent.action.HEADSET_PLUG".equals(action)) {
                    if (intent.hasExtra(ICode.CALL.CALL_KEY_STATE)) {
                        if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 1) {
                            if (!MusicService.this.r) {
                                Log.d("MusicService", "有线耳机插入");
                                MusicService.this.r = true;
                                MusicService.this.s = 1;
                                hz5.b(1);
                            }
                        } else if (intent.getIntExtra(ICode.CALL.CALL_KEY_STATE, 2) == 0 && MusicService.this.r) {
                            Log.d("MusicService", "有线耳机拔出");
                            MusicService.this.r = false;
                            MusicService.this.s = 0;
                        }
                    }
                } else if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(action)) {
                    int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
                    if (intExtra == 0) {
                        Log.d("MusicService", "蓝牙耳机未连接");
                        MusicService.this.s = 0;
                    } else if (intExtra == 2) {
                        Log.d("MusicService", "蓝牙耳机连接");
                        MusicService.this.s = 2;
                        hz5.b(2);
                    }
                } else if ("android.intent.action.CONFIGURATION_CHANGED".equals(action)) {
                    vf.f(MusicService.this.b);
                }
            } catch (Exception e) {
                Log.e("MusicService", "mBroadcastReceiver onReceive " + e.getMessage());
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

    private void B(boolean z) {
        if (Build.VERSION.SDK_INT > 29) {
            return;
        }
        if (z) {
            this.k.registerMediaButtonEventReceiver(this.h);
        } else {
            this.k.unregisterMediaButtonEventReceiver(this.h);
        }
    }

    private void p(int i, KeyEvent keyEvent) {
        Log.d("MusicService", "doHeadsetsKeyUp " + i + " ,event = " + keyEvent);
        if (this.q.q0()) {
            if (jf.n(i)) {
                this.q.B1();
            } else if (i == 87) {
                this.q.W0();
            } else if (i == 88) {
                this.q.Z0();
            }
        }
    }

    public void w() {
        I(true);
    }

    public void y() {
        vha.u(getApplicationContext());
    }

    public final void A(Boolean bool) {
        this.x.removeCallbacks(this.u);
        if (I(false)) {
            return;
        }
        this.x.postDelayed(this.u, 300L);
    }

    public void C(int i) {
        this.o = i;
        Log.d("MusicService", "onPlayerStateUpdate " + i);
        boolean z = i == 3;
        if (this.p != z) {
            this.p = z;
            if (z) {
                H();
                B(true);
            }
            K();
        }
    }

    public void D(boolean z, int i) {
        if (!z) {
            p06.m0(v() ? "pause" : PlayAudioData.TAG_NEED_PLAY, false);
        } else if (v()) {
            ry5.g("widget");
        }
        if (PlayAudioListData.getInstance().playMediaItem() == null || !MusicPlayManager.S().r0()) {
            mc7.K(this.b).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.z((Context) obj);
                }
            }).M(vb.a()).d0(k29.c()).Z(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.A((Boolean) obj);
                }
            });
        } else {
            this.q.B1();
        }
        if (z) {
            ry5.k(i);
        }
    }

    public void E() {
        F(false);
    }

    public void F(boolean z) {
        synchronized (this.m) {
            Log.d("MusicService", "removeNotification " + this.n + ",force:" + z);
            if (this.n || z) {
                J(false);
                stopForeground(true);
                this.g.cancel(1);
                this.x.removeMessages(1);
                B(false);
            }
        }
    }

    public final boolean G() {
        KeyguardManager keyguardManagerR = r();
        return keyguardManagerR != null && keyguardManagerR.isKeyguardLocked();
    }

    public synchronized void H() {
        synchronized (this.m) {
            try {
                Log.d("MusicService", "showPlayingNotification " + this.n);
                if (!this.n) {
                    J(true);
                    B(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean I(boolean z) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(PlayAudioListData.getInstance().playMediaItem());
        if (playAudioDataConvertToPlayAudioData == null || v()) {
            return playAudioDataConvertToPlayAudioData != null;
        }
        if (!z) {
            p06.d0("vd_miniplayer_none");
        }
        PlayAudioListData.getInstance().setSource(playAudioDataConvertToPlayAudioData, "");
        playAudioDataConvertToPlayAudioData.autoPlay = true;
        MusicPlayManager.S().N0(playAudioDataConvertToPlayAudioData);
        return true;
    }

    public final void J(boolean z) {
        this.n = z;
        this.q.s1(z);
    }

    public void K() {
        this.x.removeMessages(100);
        this.x.sendEmptyMessageDelayed(100, 500L);
    }

    public final void L() {
        synchronized (this.m) {
        }
    }

    @Override
    public void a(int i, KeyEvent keyEvent) {
        super.a(i, keyEvent);
        p(i, keyEvent);
    }

    @Override
    public void b(boolean z) {
        this.q.L0(z);
    }

    @Override
    public void i(int i, KeyEvent keyEvent) {
        Log.d("MusicService", "onHeadsetsKeyUp " + i);
        p(i, keyEvent);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.l;
    }

    @Override
    public void onCreate() {
        Log.d("MusicService", "onCreate " + this);
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public final void run() {
                this.b.y();
            }
        });
        this.q = MusicPlayManager.S();
        super.onCreate();
        this.b = getApplicationContext();
        this.k = (AudioManager) getSystemService("audio");
        this.j = new b();
        this.i = new MediaStoreObserver(this.j);
        getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, this.i);
        this.h = new ComponentName(this, (Class<?>) HeadsetsControllerReceiver.class);
        HeadsetsControllerReceiver.a(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        registerReceiver(this.w, intentFilter);
        sq3.a().b(this);
        this.g = (NotificationManager) se.a().getSystemService("notification");
        NotificationChannel notificationChannel = new NotificationChannel("magicshow_audio_notification_channel", this.b.getString(R.string.visha_Player), 3);
        this.f = notificationChannel;
        notificationChannel.setShowBadge(false);
        this.f.setSound(null, null);
        this.g.createNotificationChannel(this.f);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(this.v, intentFilter2);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d("MusicService", "onDestroy " + this);
        this.q.I0();
        HeadsetsControllerReceiver.b(this);
        B(false);
        getContentResolver().unregisterContentObserver(this.i);
        unregisterReceiver(this.w);
        unregisterReceiver(this.v);
        this.x.removeCallbacksAndMessages(null);
        E();
        sq3.a().c(this);
        vf.f(this.b);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        boolean booleanExtra = false;
        if (intent != null) {
            Log.d("MusicService", "Got new intent " + intent + ", startId = " + i2);
            u(intent);
            booleanExtra = intent.getBooleanExtra("fromwidget", false);
        }
        return booleanExtra ? 1 : 2;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Log.d("MusicService", "onUnbind " + this);
        return super.onUnbind(intent);
    }

    public int q() {
        return this.s;
    }

    public final KeyguardManager r() {
        if (this.t == null) {
            this.t = (KeyguardManager) getSystemService("keyguard");
        }
        return this.t;
    }

    public PendingIntent s() {
        Intent intent = new Intent();
        intent.setAction("com.transsion.magicmovie.video_player_main_activity");
        intent.setPackage(getPackageName());
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0);
        routerData.setFrom_page("widget_audio_tab");
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        intent.putExtra("com.transsion.magicshow.OPEN_AUDIO", true);
        return PendingIntent.getActivity(this.b, 0, intent, 201326592);
    }

    @Override
    public void t(boolean z) {
    }

    public final void u(Intent intent) {
        String action = intent.getAction();
        boolean booleanExtra = intent.getBooleanExtra("fromwidget", false);
        Log.d("MusicService", "handleCommandIntent action:" + action + "==" + booleanExtra);
        if ("com.transsion.magicshow.stop.video".equals(action)) {
            return;
        }
        if ("com.transsion.magicshow.play.pause".equals(action)) {
            ry5.g("widget");
            D(booleanExtra, intent.getIntExtra("fromwidgetType", 1));
            return;
        }
        if ("com.transsion.magicshow.previous".equals(action)) {
            MusicPlayManager.S().Y0();
            p06.m0("pre", false);
            return;
        }
        if ("com.transsion.magicshow.next".equals(action)) {
            MusicPlayManager.S().U0();
            p06.m0(ES6Iterator.NEXT_METHOD, false);
        } else if ("com.transsion.magicshow.exit".equals(action)) {
            p06.m0("off", false);
            this.q.K();
        } else if ("add_widget_success".equals(action)) {
            vf.f(this.b);
            ToastUtils.s(R.string.visha_widget_added);
        }
    }

    public boolean v() {
        return this.o == 3;
    }

    public final boolean x(Message message) {
        if (message.what != 100) {
            return true;
        }
        L();
        return true;
    }

    public final Boolean z(Context context) {
        MusicHelper.restore(this.b, null);
        return Boolean.TRUE;
    }
}
