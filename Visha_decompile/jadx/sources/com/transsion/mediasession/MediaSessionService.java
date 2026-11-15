package com.transsion.mediasession;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.media.MediaBrowserServiceCompat;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.utils.FindNewAudioNotificationHelper;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.engine.observer.AudioMediaObserver;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.ao;
import defpackage.c37;
import defpackage.ex5;
import defpackage.h27;
import defpackage.iia;
import defpackage.k06;
import defpackage.p06;
import defpackage.pp3;
import defpackage.ry5;
import defpackage.tpb;
import defpackage.vf;
import defpackage.w6c;
import defpackage.xb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.mozilla.javascript.ES6Iterator;

public class MediaSessionService extends MediaBrowserServiceCompat implements com.transsion.playercommon.player.b.InterfaceC0245b, h27.b {
    public Context b;
    public MusicPlayManager c;
    public VideoPlayManager d;
    public MediaSessionCompat e;
    public MediaSessionCallback f;
    public PlaybackStateCompat g;
    public c37 h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public NotifyAcitonBroadcastReceiver m;
    public boolean n;
    public boolean o;
    public boolean p;
    public AudioMediaObserver r;
    public long q = 0;
    public final MusicPlayManager.d s = new a();
    public final VideoPlayManager.d t = new b();

    public class MediaSessionCallback extends MediaSessionCompat.Callback {
        public final List a = new ArrayList();

        public MediaSessionCallback() {
        }

        @Override
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Override
        public void onCustomAction(String str, Bundle bundle) {
            LogUtils.j("VishaMediaSessionService", "onCustomAction:" + str);
            super.onCustomAction(str, bundle);
            if (str.equals("com.transsion.play.notify.close")) {
                MediaSessionService.this.V();
            } else if (str.equals("com.transsion.play.notify.favorite")) {
                MediaSessionService.this.T();
            }
        }

        @Override
        public boolean onMediaButtonEvent(Intent intent) {
            LogUtils.j("VishaMediaSessionService", "onMediaButtonEvent: " + MediaSessionService.this.c.q0() + ", " + intent);
            KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            if (keyEvent == null) {
                LogUtils.j("VishaMediaSessionService", "doMediaButtonEvent  event null");
                return false;
            }
            LogUtils.j("VishaMediaSessionService", "doMediaButtonEvent :" + keyEvent.toString());
            keyEvent.getAction();
            return super.onMediaButtonEvent(intent);
        }

        @Override
        public void onPause() {
            MediaSessionService.this.M();
        }

        @Override
        public void onPlay() {
            MediaSessionService.this.N();
        }

        @Override
        public void onPrepare() {
        }

        @Override
        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        @Override
        public void onSeekTo(long j) {
            LogUtils.j("VishaMediaSessionService", "OnSeekTo:" + j + " current listen video mode:" + MediaSessionService.this.i + StringUtils.COMMA + MediaSessionService.this.l);
            if (!MediaSessionService.this.l || MediaSessionService.this.j) {
                if (MediaSessionService.this.c != null) {
                    MediaSessionService.this.c.m1((int) j);
                }
            } else if (MediaSessionService.this.d != null) {
                MediaSessionService.this.d.Q1((int) j);
            }
        }

        @Override
        public void onSkipToNext() {
            if (System.currentTimeMillis() - MediaSessionService.this.q < 500) {
                return;
            }
            MediaSessionService.this.q = System.currentTimeMillis();
            MediaSessionService.this.e.setPlaybackState(new PlaybackStateCompat.Builder().setState(6, 0L, 0.0f).setActions(MediaSessionService.this.O(6)).build());
            Log.d("VishaMediaSessionService", "MediaSession onSkipToNext");
            MediaSessionService.this.W(true);
        }

        @Override
        public void onSkipToPrevious() {
            if (System.currentTimeMillis() - MediaSessionService.this.q < 500) {
                return;
            }
            MediaSessionService.this.q = System.currentTimeMillis();
            MediaSessionService.this.e.setPlaybackState(new PlaybackStateCompat.Builder().setState(6, 0L, 0.0f).setActions(MediaSessionService.this.O(6)).build());
            Log.d("VishaMediaSessionService", "MediaSession onSkipToPrevious");
            MediaSessionService.this.X(true);
        }

        @Override
        public void onStop() {
            LogUtils.j("VishaMediaSessionService", "from media session: onStop");
            MediaSessionService.this.M();
            if (MediaSessionService.this.e == null || !MediaSessionService.this.e.isActive()) {
                return;
            }
            MediaSessionService.this.e.setActive(false);
        }
    }

    public class NotifyAcitonBroadcastReceiver extends BroadcastReceiver {
        public NotifyAcitonBroadcastReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                LogUtils.j("VishaMediaSessionService", "onReceive" + intent.getAction());
                if ("com.transsion.play.notify.prev".equalsIgnoreCase(intent.getAction())) {
                    MediaSessionService.this.X(true);
                } else if ("com.transsion.play.notify.next".equalsIgnoreCase(intent.getAction())) {
                    MediaSessionService.this.W(true);
                } else if ("com.transsion.play.notify.play_state".equalsIgnoreCase(intent.getAction())) {
                    MediaSessionService.this.U();
                } else if ("com.transsion.play.notify.close".equalsIgnoreCase(intent.getAction())) {
                    MediaSessionService.this.V();
                } else if ("android.intent.action.MY_PACKAGE_SUSPENDED".equals(intent.getAction())) {
                    MediaSessionService.this.p = true;
                    if (MediaSessionService.this.h != null) {
                        MediaSessionService.this.h.q();
                    }
                } else if ("android.intent.action.MY_PACKAGE_UNSUSPENDED".equals(intent.getAction())) {
                    MediaSessionService.this.p = false;
                } else if ("com.transsion.play.notify.favorite".equals(intent.getAction())) {
                    MediaSessionService.this.T();
                }
            } catch (Exception e) {
                Log.e("VishaMediaSessionService", "NotifyAcitonBroadcastReceiver onReceive " + e.getMessage());
            }
        }
    }

    public class a implements MusicPlayManager.d {
        public a() {
        }

        @Override
        public void onPlayItemChanged(AudioItem audioItem) {
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            LogUtils.j("VishaMediaSessionService", "[audio]->>>>>>>>>>>>>>>>>>>>>>>> ", "onPlayerStateUpdate state: " + i, "mIsListenVideoMode " + MediaSessionService.this.i, "mIsBackgroundPlayVideoMode " + MediaSessionService.this.l, "mIsPlayAudioMode " + MediaSessionService.this.j, "mIsVideoPlayerWorking:" + MediaSessionService.this.n, "mIsAudioPlayerWorking:" + MediaSessionService.this.o);
            if (i == 3) {
                MediaSessionService.this.n = false;
                MediaSessionService.this.o = true;
            }
            if (MediaSessionService.this.o && (MediaSessionService.this.h.z() || i == 3)) {
                MediaSessionService.this.j = true;
                MediaSessionService.this.g0(i);
                MediaSessionService.this.h0(false);
                if (!MediaSessionService.this.e.isActive()) {
                    MediaSessionService.this.e.setActive(true);
                }
            }
            LogUtils.j("VishaMediaSessionService", "[audio]->>>>>>>>>>>>>>>>>>>>>>>> ", "onPlayerStateUpdate state: " + i, "mIsListenVideoMode " + MediaSessionService.this.i, "mIsBackgroundPlayVideoMode " + MediaSessionService.this.l, "mIsPlayAudioMode " + MediaSessionService.this.j, "mIsVideoPlayerWorking:" + MediaSessionService.this.n, "mIsAudioPlayerWorking:" + MediaSessionService.this.o);
        }

        @Override
        public void onUpdateAll(MusicPlayManager musicPlayManager) {
        }

        @Override
        public void seekTo(int i) {
            if (MediaSessionService.this.c == null) {
                return;
            }
            LogUtils.j("VishaMediaSessionService", "musicPlayManager.getPlayerState() seekTo : " + MediaSessionService.this.c.b0() + ", seekTo : " + i + ", getCurrentPosition = " + MediaSessionService.this.c.Q());
            MediaSessionService.this.S(i);
        }
    }

    public class b implements VideoPlayManager.d {
        public b() {
        }

        @Override
        public void onPlayItemChanged(MediaItem mediaItem) {
            MediaSessionService mediaSessionService = MediaSessionService.this;
            mediaSessionService.i = mediaSessionService.d.y0();
            MediaSessionService mediaSessionService2 = MediaSessionService.this;
            mediaSessionService2.l = mediaSessionService2.d.x0() || MediaSessionService.this.i;
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            MediaSessionService mediaSessionService = MediaSessionService.this;
            mediaSessionService.i = mediaSessionService.d.y0();
            MediaSessionService mediaSessionService2 = MediaSessionService.this;
            mediaSessionService2.l = mediaSessionService2.i || MediaSessionService.this.d.x0();
            LogUtils.j("VishaMediaSessionService", "[video]---------->>>>>>", "current video:" + MediaSessionService.this.d.e0(), "onPlayerStateUpdate state: " + i, "isListenVideoMode:" + MediaSessionService.this.i, "isPlayAudioMode:" + MediaSessionService.this.j, "isCustomPipMode:" + MediaSessionService.this.d.x0(), "mIsVideoPlayerWorking:" + MediaSessionService.this.n, "mIsAudioPlayerWorking:" + MediaSessionService.this.o);
            if (i == 3) {
                MediaSessionService.this.n = true;
                MediaSessionService.this.o = false;
            }
            if (MediaSessionService.this.n) {
                MediaSessionService.this.i0(i);
            }
            if (!MediaSessionService.this.e.isActive()) {
                MediaSessionService.this.e.setActive(true);
            }
            if (MediaSessionService.this.P() && MediaSessionService.this.n && (MediaSessionService.this.h.z() || i == 3)) {
                MediaSessionService.this.j = false;
                MediaSessionService.this.h0(true);
                if (MediaSessionService.this.e.isActive()) {
                    return;
                }
                MediaSessionService.this.e.setActive(true);
                return;
            }
            if (MediaSessionService.this.h == null || !MediaSessionService.this.n) {
                return;
            }
            LogUtils.j("VishaMediaSessionService", "cancelNotification---->>>", "player state:" + i, "mIsListenVideoMode:" + MediaSessionService.this.i, "mIsPlayVideoModeInBackground:" + MediaSessionService.this.l);
            MediaSessionService.this.a(true, true);
        }

        @Override
        public void onUpdateNotification(int i) {
            LogUtils.j("VishaMediaSessionService", "onUpdateNotification");
            MediaSessionService mediaSessionService = MediaSessionService.this;
            mediaSessionService.i = mediaSessionService.d.y0();
            MediaSessionService mediaSessionService2 = MediaSessionService.this;
            mediaSessionService2.l = mediaSessionService2.d.x0();
            onPlayerStateUpdate(i);
        }

        @Override
        public void seekTo(int i) {
            if (MediaSessionService.this.d != null && MediaSessionService.this.P()) {
                Log.d("VishaMediaSessionService", "video getPlayerState() seekTo : " + MediaSessionService.this.d.g0());
                MediaSessionService.this.Y(i);
            }
        }
    }

    public static MediaBrowserCompat.MediaItem L(MediaMetadataCompat mediaMetadataCompat) {
        return new MediaBrowserCompat.MediaItem(mediaMetadataCompat.getDescription(), 2);
    }

    public void M() {
        ry5.g("notice");
        if (this.n) {
            if (this.d.A0()) {
                this.d.q2();
            }
        } else if (this.c.s0()) {
            this.c.B1();
        }
        k06.b("pause", this.n);
    }

    public final void N() {
        if (this.n) {
            if (!this.d.A0()) {
                this.d.q2();
            }
        } else if (this.c.b0() <= 0 || this.c.b0() >= 5) {
            d0(this.c.a0());
            return;
        } else if (!this.c.s0()) {
            this.c.B1();
        }
        k06.b(PlayAudioData.TAG_NEED_PLAY, this.n);
    }

    public final long O(int i) {
        if (i == 1) {
            return 3126L;
        }
        if (i != 2) {
            return i != 3 ? 3639L : 3379L;
        }
        return 3381L;
    }

    public final boolean P() {
        VideoPlayManager videoPlayManager = this.d;
        if (videoPlayManager != null) {
            return videoPlayManager.x0() || this.d.y0();
        }
        return false;
    }

    public final void Q() {
        MediaItem mediaItemC0;
        if (!this.o) {
            VideoPlayManager videoPlayManager = this.d;
            if (videoPlayManager == null || (mediaItemC0 = videoPlayManager.c0()) == null) {
                return;
            }
            LogUtils.N("VishaMediaSessionService", "onMediaFavorite:" + mediaItemC0);
            tpb.j0().j(tpb.j0().T(mediaItemC0.data) ^ true, mediaItemC0);
            return;
        }
        if (PlayAudioListData.getInstance().playMediaItem() != null) {
            boolean zC0 = ao.U().c0(false, PlayAudioListData.getInstance().playMediaItem());
            LogUtils.N("VishaMediaSessionService", "onMediaFavorite:" + PlayAudioListData.getInstance().playMediaItem(), "isFar:" + zC0);
            ao.U().l0(!zC0, PlayAudioListData.getInstance().playMediaItem());
            p06.u0(!zC0 ? 1 : 0, PlayAudioListData.getInstance().playMediaItem().isMusicVideo ? "mv" : "audio", "notice");
            h27.c().e(1055, new Object[0]);
            vf.f(this);
        }
    }

    public final void R(ArrayList arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        FindNewAudioNotificationHelper.n(arrayList, new ex5(), this.b, null, FindNewAudioNotificationHelper.NotificationType.NEW_AUDIO_NOTIFICATION);
    }

    public final void S(int i) {
        c37 c37Var = this.h;
        if (c37Var != null) {
            c37Var.Y(false);
        }
    }

    public final void T() {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                this.b.Q();
            }
        });
    }

    public final void U() {
        boolean zS0;
        LogUtils.j("VishaMediaSessionService", "mediasession onPause,mIsPlayAudioMode: " + this.c.q0());
        ry5.g("notice");
        if (this.n) {
            this.d.q2();
            zS0 = this.d.A0();
        } else {
            this.c.B1();
            zS0 = this.c.s0();
        }
        k06.b(zS0 ? "pause" : PlayAudioData.TAG_NEED_PLAY, this.n);
    }

    public final void V() {
        if (this.n) {
            VideoPlayManager.X().M();
        } else {
            MusicPlayManager.S().K();
        }
        k06.b("off", this.n);
    }

    public final void W(boolean z) {
        if (this.n) {
            VideoPlayManager.X().q1(false, z);
        } else {
            MusicPlayManager.S().U0();
        }
        k06.b(ES6Iterator.NEXT_METHOD, this.n);
    }

    public final void X(boolean z) {
        if (this.n) {
            VideoPlayManager.X().s1(true);
        } else {
            MusicPlayManager.S().Y0();
        }
        k06.b("pre", this.n);
    }

    public final void Y(int i) {
        c37 c37Var = this.h;
        if (c37Var != null) {
            c37Var.Y(true);
        }
    }

    public final void Z() {
        if (pp3.x) {
            AudioMediaObserver audioMediaObserverK = AudioMediaObserver.k(this, new AudioMediaObserver.b() {
                @Override
                public final void a(ArrayList arrayList) {
                    this.a.R(arrayList);
                }
            });
            this.r = audioMediaObserverK;
            audioMediaObserverK.q();
        }
    }

    @Override
    public void a(boolean z, boolean z2) {
        c37 c37Var;
        c37 c37Var2;
        LogUtils.N("VishaMediaSessionService", "removeNotification isVideo:" + z, "force:" + z2, "mIsListenVideoMode:" + this.i, "mIsPlayVideoModeInBackground" + this.l, "mIsPlayAudioMode:" + this.j);
        if (z) {
            if ((z2 || this.l) && (c37Var2 = this.h) != null) {
                c37Var2.q();
            }
            this.d.a2(false);
            return;
        }
        if ((z2 || this.j) && (c37Var = this.h) != null) {
            c37Var.q();
            this.j = false;
        }
        this.c.s1(false);
    }

    public final void a0() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.transsion.play.notify.prev");
        intentFilter.addAction("com.transsion.play.notify.next");
        intentFilter.addAction("com.transsion.play.notify.play_state");
        intentFilter.addAction("com.transsion.play.notify.close");
        intentFilter.addAction("com.transsion.play.notify.favorite");
        intentFilter.addAction("android.intent.action.MY_PACKAGE_SUSPENDED");
        intentFilter.addAction("android.intent.action.MY_PACKAGE_UNSUSPENDED");
        NotifyAcitonBroadcastReceiver notifyAcitonBroadcastReceiver = new NotifyAcitonBroadcastReceiver();
        this.m = notifyAcitonBroadcastReceiver;
        xb.b(this, notifyAcitonBroadcastReceiver, intentFilter, true);
    }

    @Override
    public void b(Uri uri) {
        c37 c37Var = this.h;
        if (c37Var != null) {
            c37Var.R(uri);
        }
    }

    public final void b0(int i) {
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.g = builder.setState(i, timeUnit.convert(this.c.Q(), timeUnit), 1.0f).setActions(O(i)).build();
        LogUtils.j("VishaMediaSessionService", "media session set music PlaybackState state: " + i, " currentPos: " + this.c.Q(), " duration:" + this.c.R());
    }

    @Override
    public void c(boolean z) {
        c37 c37Var;
        LogUtils.j("VishaMediaSessionService", "updateNotificationInfo,mIsPlayAudioMode:" + this.j + " isVideo:" + z);
        if (z || !this.j || (c37Var = this.h) == null || !c37Var.z()) {
            return;
        }
        this.h.Y(false);
    }

    public final void c0(int i) {
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        PlaybackStateCompat playbackStateCompatBuild = builder.setState(i, timeUnit.convert(this.d.S(), timeUnit), 1.0f).setActions(O(i)).build();
        this.g = playbackStateCompatBuild;
        this.e.setPlaybackState(playbackStateCompatBuild);
        LogUtils.j("VishaMediaSessionService", "set video PlaybackState  state = " + i + " curpos = " + this.d.S() + " duration = " + this.d.V());
    }

    @Override
    public void d(String str, boolean z) {
        c37 c37Var = this.h;
        if (c37Var != null) {
            if (z) {
                c37Var.P(str);
            } else {
                c37Var.O();
            }
        }
    }

    public void d0(AudioItem audioItem) {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem);
        p06.d0("vd_miniplayer_none");
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = 21;
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            PlayAudioListData.getInstance().setRepeatMode(w6c.d(this.b, "audio_play_repeat_mode", 1));
            MusicPlayManager.S().N0(playAudioDataConvertToPlayAudioData);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        c37 c37Var;
        if ((i == 1055 || i == 1053) && (c37Var = this.h) != null && c37Var.z()) {
            if (this.o || this.n) {
                this.h.Y(this.n);
            }
        }
    }

    public final void e0() {
        AudioMediaObserver audioMediaObserver = this.r;
        if (audioMediaObserver != null) {
            audioMediaObserver.r();
            this.r = null;
        }
    }

    public final void f0() {
        NotifyAcitonBroadcastReceiver notifyAcitonBroadcastReceiver = this.m;
        if (notifyAcitonBroadcastReceiver != null) {
            unregisterReceiver(notifyAcitonBroadcastReceiver);
            this.m = null;
        }
    }

    public final void g0(int i) {
        if (i == 2 || i == 3) {
            b0(3);
            return;
        }
        if (i == 4) {
            b0(2);
        } else if (i != 5) {
            b0(0);
        } else {
            b0(1);
        }
    }

    public final void h0(boolean z) {
        if (this.p) {
            Log.w("VishaMediaSessionService", "package Suspended");
            return;
        }
        LogUtils.j("VishaMediaSessionService", "updateNotification isPlayVideoModeInBackground:" + z + ",mLastNotificationForVideo:" + this.k);
        c37 c37Var = this.h;
        if (c37Var != null) {
            boolean z2 = this.k;
            if (!z2 && z) {
                this.k = true;
                this.d.a2(true);
                this.c.s1(false);
            } else if (z2 && !z) {
                this.k = false;
                this.d.a2(false);
                this.c.s1(true);
            } else if (!c37Var.z()) {
                this.k = z;
                this.d.a2(z);
                this.c.s1(!z);
            }
            this.h.Y(z);
        }
    }

    public final void i0(int i) {
        if (i == 2 || i == 3) {
            c0(3);
            return;
        }
        if (i == 4) {
            c0(2);
        } else if (i != 5) {
            c0(0);
        } else {
            c0(1);
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.b = getApplicationContext();
        this.g = new PlaybackStateCompat.Builder().setState(0, 0L, 1.0f).setActions(O(0)).build();
        this.e = new MediaSessionCompat(this.b, "MediaSessionService");
        MediaSessionCallback mediaSessionCallback = new MediaSessionCallback();
        this.f = mediaSessionCallback;
        this.e.setCallback(mediaSessionCallback);
        this.e.setFlags(7);
        setSessionToken(this.e.getSessionToken());
        MusicPlayManager musicPlayManagerS = MusicPlayManager.S();
        this.c = musicPlayManagerS;
        musicPlayManagerS.f1(this.s);
        this.c.p1(this);
        VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
        this.d = videoPlayManagerX;
        videoPlayManagerX.D1(this.t);
        this.d.U1(this);
        this.h = new c37(this, this.e);
        if (!this.e.isActive()) {
            this.e.setActive(true);
        }
        a0();
        Z();
        h27.c().b(this, 1055);
        h27.c().b(this, 1053);
    }

    @Override
    public void onDestroy() {
        vf.h(this.b);
        LogUtils.j("VishaMediaSessionService", "onDestroy: MediaPlayerAdapter stopped, and MediaSession released");
        this.c.F1(this.s);
        this.d.v2(this.t);
        this.c.p1(null);
        this.d.U1(null);
        MediaSessionCompat mediaSessionCompat = this.e;
        if (mediaSessionCompat != null) {
            mediaSessionCompat.release();
            this.e = null;
        }
        c37 c37Var = this.h;
        if (c37Var != null) {
            c37Var.q();
        }
        f0();
        e0();
        h27.c().f(this, 1055);
        h27.c().f(this, 1053);
    }

    @Override
    public MediaBrowserServiceCompat.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        return new MediaBrowserServiceCompat.BrowserRoot("root", null);
    }

    @Override
    public void onLoadChildren(String str, MediaBrowserServiceCompat.Result result) {
        result.detach();
        ArrayList arrayList = new ArrayList();
        if (this.c.X().size() > 0) {
            AudioItem audioItem = (AudioItem) this.c.X().get(0);
            MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, "" + audioItem.id).putString(MediaMetadataCompat.METADATA_KEY_TITLE, audioItem.displayName).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, audioItem.artistName);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            arrayList.add(L(builderPutString.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, timeUnit.convert(audioItem.duration, timeUnit)).build()));
            Log.d("VishaMediaSessionService", "onLoadChildren mediaId =" + audioItem.id);
        }
        result.sendResult(arrayList);
    }

    @Override
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 2;
    }

    @Override
    public void onTaskRemoved(Intent intent) {
        LogUtils.j("VishaMediaSessionService", "onTaskRemoved");
        try {
            MusicPlayManager musicPlayManager = this.c;
            if (musicPlayManager != null && musicPlayManager.s0()) {
                this.c.M0(true);
            }
        } catch (Exception e) {
            LogUtils.P("VishaMediaSessionService", "onTaskRemoved pause error: " + e.getMessage());
        }
        vf.h(this.b);
        super.onTaskRemoved(intent);
        LogUtils.j("VishaMediaSessionService", "stopSelf");
        stopSelf();
    }
}
