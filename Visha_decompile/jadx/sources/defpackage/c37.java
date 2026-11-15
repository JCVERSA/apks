package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.service.MusicService;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.mediasession.MediaSessionService;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.utils.a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.mozilla.javascript.ES6Iterator;

public class c37 {
    public final Service b;
    public Notification c;
    public NotificationManager d;
    public NotificationCompat.Builder e;
    public PendingIntent f;
    public PendingIntent g;
    public PendingIntent h;
    public PendingIntent i;
    public final MediaSessionCompat k;
    public boolean m;
    public Bitmap n;
    public Bitmap o;
    public Bitmap p;
    public boolean r;
    public long s;
    public long t;
    public final String a = "NotifyBuilderManager";
    public boolean j = false;
    public final Object l = new Object();
    public final int q = a.d(se.a(), 58.0f);
    public final Handler u = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.M(message);
        }
    });

    public c37(Service service, MediaSessionCompat mediaSessionCompat) {
        this.b = service;
        this.k = mediaSessionCompat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bitmap A(AudioItem audioItem) {
        try {
            Uri uri = audioItem.uri;
            String uriStringSafely = uri == null ? MediaItem.getUriStringSafely(audioItem.id, audioItem.fromInternal) : uri.toString();
            String strO = o(uriStringSafely + "#" + audioItem.dateModified);
            Bitmap bitmapS = s(strO);
            return bitmapS != null ? bitmapS : p(strO, S((Bitmap) Glide.with(this.b).asBitmap().load2(uriStringSafely).override(a.d(this.b, 58.0f), a.d(this.b, 58.0f)).signature(new z7c.a(uriStringSafely, audioItem.dateModified)).submit().get()));
        } catch (Exception e) {
            Log.e("NotifyBuilderManager", "Error loading bitmap", e);
            return S(t(R.drawable.def_music_cover));
        }
    }

    public final void B(Bitmap bitmap) {
        Log.d("NotifyBuilderManager", "loadAudioPlayBackground " + bitmap);
        this.n = bitmap;
        if (this.m) {
            return;
        }
        X(false, bitmap);
        if (this.j) {
            V(false, bitmap);
        }
    }

    public final void C(Throwable th) {
        Log.d("NotifyBuilderManager", "loadAudioPlayBackground " + th);
        if (this.m) {
            return;
        }
        X(false, null);
        if (this.j) {
            V(false, null);
        }
    }

    public final Bitmap D(AudioItem audioItem, AudioItem audioItem2) {
        Bitmap bitmapQ;
        AudioAlbum audioAlbumD = ao.U().D(audioItem2.id);
        String strO = o((audioAlbumD == null || r0a.g(audioAlbumD.imgPath)) ? audioItem2.data : audioAlbumD.imgPath);
        Bitmap bitmapS = s(strO);
        if (bitmapS != null) {
            return bitmapS;
        }
        Bitmap bitmapT = (audioAlbumD == null || (bitmapQ = Q(audioAlbumD.imgPath)) == null) ? tn.t(this.b, Uri.parse(audioItem2.data), true) : bitmapQ;
        if (bitmapT == null) {
            int iJ = tn.j(audioItem);
            Service service = this.b;
            if (service != null) {
                bitmapT = BitmapFactory.decodeResource(service.getResources(), iJ);
            }
        }
        return p(strO, S(bitmapT));
    }

    public final void E(Bitmap bitmap) {
        Log.d("NotifyBuilderManager", "loadAudioPlayBackground " + bitmap);
        this.n = bitmap;
        if (this.m) {
            return;
        }
        X(false, bitmap);
        if (this.j) {
            V(false, bitmap);
        }
    }

    public final void F(Throwable th) {
        Log.d("NotifyBuilderManager", "loadAudioPlayBackground " + th);
        if (this.m) {
            return;
        }
        X(false, null);
        if (this.j) {
            V(false, null);
        }
    }

    public final void G(Throwable th) {
        Log.d("NotifyBuilderManager", "loadAudioCoverByPath " + th);
        if (this.m || !this.j) {
            return;
        }
        X(false, this.n);
        V(false, this.n);
    }

    public final Bitmap H(String str, String str2) {
        return S(Q(str));
    }

    public final void I(Bitmap bitmap) {
        Log.d("NotifyBuilderManager", "loadAudioCoverByPath " + bitmap);
        this.n = bitmap;
        if (this.m || !this.j) {
            return;
        }
        X(false, bitmap);
        V(false, bitmap);
    }

    public final Bitmap J(Uri uri, Uri uri2) {
        Bitmap bitmapV = v(uri);
        if (bitmapV == null) {
            bitmapV = t(R.drawable.def_music_cover);
        }
        return S(bitmapV);
    }

    public final void K(Bitmap bitmap) {
        Log.d("NotifyBuilderManager", "loadAudioCoverByPath " + bitmap);
        this.o = bitmap;
        if (this.m && this.j) {
            X(true, bitmap);
            V(true, bitmap);
        }
    }

    public final void L(Throwable th) {
        Log.d("NotifyBuilderManager", "loadAudioCoverByPath " + th);
        if (this.m && this.j) {
            X(true, this.o);
            V(true, this.o);
        }
    }

    public final boolean M(Message message) {
        int i = message.what;
        if (i == 2) {
            Y(this.m);
            return true;
        }
        if (i != 100) {
            return true;
        }
        Z();
        return true;
    }

    public final void N(Notification notification) {
        try {
            this.d.notify(MediaPlayer.Event.Subtitle, notification);
            this.r = true;
        } catch (Exception e) {
            Log.e("NotifyBuilderManager", "notifyNowIfAllowed error: " + e.getMessage());
        }
    }

    public void O() {
        final AudioItem audioItemA0 = MusicPlayManager.S().a0();
        if (audioItemA0 == null) {
            return;
        }
        LogUtils.j("NotifyBuilderManager", "updateAudioMetaData: " + audioItemA0);
        if (audioItemA0.isMusicVideo) {
            mc7.K(audioItemA0).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.A((AudioItem) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.B((Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.C((Throwable) obj);
                }
            });
        } else {
            mc7.K(audioItemA0).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.D(audioItemA0, (AudioItem) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.E((Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.F((Throwable) obj);
                }
            });
        }
    }

    public void P(final String str) {
        if (r0a.g(str)) {
            return;
        }
        mc7.K(str).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.H(str, (String) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.I((Bitmap) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.G((Throwable) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Bitmap Q(String str) {
        String strO = o(str);
        Bitmap bitmapS = s(strO);
        if (bitmapS != null) {
            return bitmapS;
        }
        Bitmap bitmap = null;
        try {
            Bitmap bitmap2 = (Bitmap) Glide.with(this.b).asBitmap().centerCrop().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(a.d(this.b, 58.0f), a.d(this.b, 58.0f)).get();
            try {
                return p(strO, S(bitmap2));
            } catch (InterruptedException | ExecutionException e) {
                e = e;
                bitmap = bitmap2;
                if (e.getMessage() == null) {
                    Log.e("NotifyBuilderManager", e.getMessage());
                }
                return bitmap;
            }
        } catch (InterruptedException | ExecutionException e2) {
            e = e2;
        }
    }

    public void R(final Uri uri) {
        Log.d("NotifyBuilderManager", "getCoverBitmap " + uri);
        if (uri == null) {
            return;
        }
        mc7.K(uri).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.J(uri, (Uri) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.K((Bitmap) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.L((Throwable) obj);
            }
        });
    }

    public final Bitmap S(Bitmap bitmap) {
        if (bitmap != null && this.q > 0) {
            if (bitmap.getWidth() == this.q && bitmap.getHeight() == this.q) {
                return bitmap;
            }
            try {
                int i = this.q;
                return Bitmap.createScaledBitmap(bitmap, i, i, true);
            } catch (Exception e) {
                Log.e("NotifyBuilderManager", "normalizeCoverBitmap error", e);
            }
        }
        return bitmap;
    }

    public final boolean T() {
        if (this.d == null || !this.j || this.c == null) {
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.t;
        if ((j > 0 && jElapsedRealtime - j < C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) || jElapsedRealtime - this.s < 500) {
            return false;
        }
        LogUtils.j("NotifyBuilderManager", "updatePlayingNotification, show notification");
        this.s = jElapsedRealtime;
        final Notification notification = this.c;
        ThreadUtils.n().execute(new Runnable() {
            @Override
            public final void run() {
                this.b.N(notification);
            }
        });
        return true;
    }

    public final void U() {
        if (T()) {
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jMax = Math.max(200L, Math.max(500 - (jElapsedRealtime - this.s), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS - (jElapsedRealtime - this.t)));
        this.u.removeMessages(100);
        this.u.sendEmptyMessageDelayed(100, jMax);
    }

    public final void V(boolean z, Bitmap bitmap) {
        if (this.e != null) {
            boolean zA0 = z ? VideoPlayManager.X().A0() : MusicPlayManager.S().s0();
            LogUtils.N("NotifyBuilderManager", "update notification is Playing,isListenVideoMode:" + z, "play:" + zA0, "album:" + bitmap);
            int i = zA0 ? R.drawable.ic_notification_play : R.drawable.ic_notification_pause;
            if (!this.e.mActions.isEmpty()) {
                this.e.mActions.clear();
            }
            int i2 = Build.VERSION.SDK_INT;
            boolean z2 = false;
            if (i2 == 31 || i2 == 32) {
                this.e.addAction(i, "play_pause", this.f).addAction(R.drawable.ic_notification_next, ES6Iterator.NEXT_METHOD, this.h).addAction(R.drawable.ic_system_notification_close_down_t, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, this.i).setStyle(new androidx.media.app.NotificationCompat.MediaStyle().setShowActionsInCompactView(0, 1, 2).setMediaSession(this.k.getSessionToken()));
            } else {
                this.e.addAction(R.drawable.ic_notification_previous, "prev", this.g).addAction(i, "play_pause", this.f).addAction(R.drawable.ic_notification_next, ES6Iterator.NEXT_METHOD, this.h).addAction(R.drawable.ic_system_notification_close_down_t, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, this.i).setStyle(new androidx.media.app.NotificationCompat.MediaStyle().setShowActionsInCompactView(0, 1, 2, 3).setMediaSession(this.k.getSessionToken()));
            }
            if (bitmap != null) {
                this.e.setLargeIcon(bitmap);
            }
            String str = (String) (z ? VideoPlayManager.X().Z() : MusicPlayManager.S().W());
            String str2 = z ? "" : (String) MusicPlayManager.S().L();
            this.e.setContentTitle(str);
            this.e.setContentText(str2);
            this.e.setContentIntent(u());
            Notification notificationBuild = this.e.build();
            this.c = notificationBuild;
            if (!this.j) {
                try {
                    this.b.startForeground(MediaPlayer.Event.Subtitle, notificationBuild);
                    this.j = true;
                    try {
                        this.t = SystemClock.elapsedRealtime();
                        try {
                            this.b.startService(new Intent(this.b, (Class<?>) MediaSessionService.class));
                        } catch (Exception unused) {
                        }
                        z2 = true;
                    } catch (Exception e) {
                        e = e;
                        z2 = true;
                        Log.e("NotifyBuilderManager", "sendNotification " + e);
                        this.u.sendEmptyMessageDelayed(2, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
            if (!this.j || z2) {
                return;
            }
            U();
        }
    }

    public final void W(boolean z) {
        if (z) {
            X(true, this.o);
        } else {
            X(false, this.n);
        }
    }

    public final void X(boolean z, Bitmap bitmap) {
        String str = (String) (z ? VideoPlayManager.X().U() : MusicPlayManager.S().W());
        String str2 = z ? "" : (String) MusicPlayManager.S().L();
        int iV = z ? VideoPlayManager.X().V() : MusicPlayManager.S().R();
        int iS = z ? VideoPlayManager.X().S() : MusicPlayManager.S().Q();
        MediaMetadataCompat.Builder builderPutString = new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_TITLE, str).putString(MediaMetadataCompat.METADATA_KEY_ARTIST, str2);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            this.k.setMetadata(builderPutString.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, timeUnit.convert(iV, timeUnit)).build());
        } catch (Exception e) {
            Log.w("NotifyBuilderManager", "updateMetadata setMetadata failed", e);
        }
        if (!this.k.isActive()) {
            this.k.setActive(true);
        }
        String str3 = "notification update metadata, title:" + str;
        String str4 = "album:" + bitmap;
        StringBuilder sb = new StringBuilder();
        sb.append("isPlaying:");
        sb.append(z ? VideoPlayManager.X().A0() : MusicPlayManager.S().s0());
        String string = sb.toString();
        String str5 = "currentPosition:" + iS;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("hasNext:");
        sb2.append(z ? VideoPlayManager.X().p0() : MusicPlayManager.S().g0());
        String string2 = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append("hasPrev:");
        sb3.append(z ? VideoPlayManager.X().r0() : MusicPlayManager.S().h0());
        LogUtils.N("NotifyBuilderManager", str3, str4, string, str5, string2, sb3.toString());
        int i = (!z ? MusicPlayManager.S().s0() : VideoPlayManager.X().A0()) ? 2 : 3;
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        builder.setState(i, iS, 1.0f);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 33) {
            builder.setActions(823L);
        } else {
            builder.setActions(823L);
            int i3 = i2 == 33 ? R.drawable.ic_system_notification_fovarite_android_t_16dp : R.drawable.ic_system_notification_favorite;
            int i4 = i2 == 33 ? R.drawable.ic_system_notification_fovarited_android_t_16dp : R.drawable.ic_system_notification_favorited;
            PlaybackStateCompat.CustomAction customActionBuild = new PlaybackStateCompat.CustomAction.Builder("com.transsion.play.notify.favorite", PlayVideoData.TAG_FAVORITE, i3).build();
            if ((z && PlayListData.getInstance().playMediaItem() != null && tpb.j0().T(PlayListData.getInstance().playMediaItem().data)) || (!z && PlayAudioListData.getInstance().playMediaItem() != null && ao.U().c0(false, PlayAudioListData.getInstance().playMediaItem()))) {
                LogUtils.N("NotifyBuilderManager", "updateCustomAction: favorite");
                customActionBuild = new PlaybackStateCompat.CustomAction.Builder("com.transsion.play.notify.favorite", PlayVideoData.TAG_FAVORITE, i4).build();
            }
            builder.addCustomAction(customActionBuild);
            builder.addCustomAction(new PlaybackStateCompat.CustomAction.Builder("com.transsion.play.notify.close", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, i2 == 33 ? R.drawable.ic_system_notification_close_android_t_16dp : R.drawable.ic_system_notification_close).build());
        }
        this.k.setPlaybackState(builder.build());
    }

    public void Y(boolean z) {
        synchronized (this.l) {
            try {
                try {
                    this.u.removeMessages(2);
                    this.m = z;
                    if (this.c == null) {
                        y();
                    }
                    W(z);
                    V(z, z ? this.o : this.n);
                } catch (Exception e) {
                    Log.e("NotifyBuilderManager", "updateNotification error:" + e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Z() {
        synchronized (this.l) {
            T();
        }
    }

    public final String o(String str) {
        if (r0a.g(str) || this.q <= 0) {
            return null;
        }
        return "notify_cover:" + this.q + StringUtils.PROCESS_POSTFIX_DELIMITER + str;
    }

    public final Bitmap p(String str, Bitmap bitmap) {
        if (!r0a.g(str) && bitmap != null && tn.i(str) == null) {
            tn.z(str, bitmap);
        }
        return bitmap;
    }

    public void q() {
        this.u.removeCallbacksAndMessages(null);
        synchronized (this.l) {
            try {
                if (this.j && this.d != null) {
                    Log.e("NotifyBuilderManager", "visha cancel notification");
                    this.b.stopForeground(true);
                    this.d.cancel(MediaPlayer.Event.Subtitle);
                    this.j = false;
                    this.c = null;
                }
                this.r = false;
                this.n = null;
                this.o = null;
                this.k.setMetadata(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PendingIntent r() {
        PlayAudioData playAudioDataO = MusicPlayManager.S().O();
        Intent intent = new Intent(this.b, (Class<?>) AudioPlayerActivity.class);
        intent.setAction("com.transsion.magicshow.OPEN_AUDIO");
        intent.setPackage(se.a().getPackageName());
        if (playAudioDataO != null) {
            playAudioDataO.toIntent(intent);
        }
        return PendingIntent.getActivity(this.b, 0, intent, 201326592);
    }

    public final Bitmap s(String str) {
        if (r0a.g(str)) {
            return null;
        }
        return tn.i(str);
    }

    public Bitmap t(int i) {
        Bitmap bitmap = this.p;
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = null;
        try {
            Drawable drawable = AppCompatResources.getDrawable(this.b, i);
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
            drawable.draw(canvas);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.p = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    public PendingIntent u() {
        return this.m ? w() : r();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Bitmap v(Uri uri) {
        Log.d("NotifyBuilderManager", "getCoverBitmap " + uri);
        Bitmap bitmap = null;
        if (uri == null) {
            return null;
        }
        String strO = o(uri.toString());
        Bitmap bitmapS = s(strO);
        if (bitmapS != null) {
            return bitmapS;
        }
        try {
            Bitmap bitmap2 = (Bitmap) Glide.with(this.b).asBitmap().centerCrop().load2(uri).diskCacheStrategy(DiskCacheStrategy.NONE).submit(a.d(this.b, 58.0f), a.d(this.b, 58.0f)).get();
            try {
                return p(strO, S(bitmap2));
            } catch (InterruptedException | ExecutionException e) {
                e = e;
                bitmap = bitmap2;
                if (e.getMessage() != null) {
                    Log.e("NotifyBuilderManager", e.getMessage());
                }
                return bitmap;
            }
        } catch (InterruptedException | ExecutionException e2) {
            e = e2;
        }
    }

    public final PendingIntent w() {
        PlayVideoData playVideoDataT = VideoPlayManager.X().T();
        if (playVideoDataT == null) {
            return null;
        }
        playVideoDataT.fromBackgroundPlay = true;
        PlayVideoData.ePlayFrom eplayfrom = PlayVideoData.ePlayFrom.SYSTEM_MEDIA_NOTICE;
        playVideoDataT.mPlayFrom = eplayfrom.from;
        Intent intent = new Intent(this.b, (Class<?>) VideoPlayerActivity.class);
        intent.setAction("com.transsion.magicshow.OPEN_VIDEO");
        intent.setPackage(se.a().getPackageName());
        intent.putExtra(PlayVideoData.TAG_LISTEN_VIDEO_MODE, true);
        intent.putExtra(PlayVideoData.TAG_BACK_PLAY, true);
        intent.putExtra("TAG_PLAY_FROM", eplayfrom.from);
        playVideoDataT.toIntent(intent);
        LogUtils.j("NotifyBuilderManager", "getVideoListenPendingIntent:" + playVideoDataT.toString());
        return PendingIntent.getActivity(this.b, 0, intent, 201326592);
    }

    public final String x() {
        String string = this.b.getString(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player);
        NotificationChannel notificationChannel = new NotificationChannel("visha_notification_channel", string, 2);
        notificationChannel.setDescription(string);
        notificationChannel.enableLights(false);
        notificationChannel.enableVibration(false);
        this.d.createNotificationChannel(notificationChannel);
        return "visha_notification_channel";
    }

    public final void y() {
        Class<MusicService> cls;
        this.d = (NotificationManager) se.a().getSystemService("notification");
        try {
            cls = MusicService.class;
            int i = MusicService.y;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            cls = null;
        }
        int i2 = Build.VERSION.SDK_INT >= 31 ? 67108864 : C.BUFFER_FLAG_FIRST_SAMPLE;
        PendingIntent activity = PendingIntent.getActivity(this.b, 0, new Intent(this.b, cls), i2);
        Intent intent = new Intent();
        intent.setAction("com.transsion.play.notify.prev");
        this.g = PendingIntent.getBroadcast(this.b, 1, intent, i2);
        Intent intent2 = new Intent();
        intent2.setAction("com.transsion.play.notify.play_state");
        this.f = PendingIntent.getBroadcast(this.b, 2, intent2, i2);
        Intent intent3 = new Intent();
        intent3.setAction("com.transsion.play.notify.next");
        this.h = PendingIntent.getBroadcast(this.b, 3, intent3, i2);
        Intent intent4 = new Intent();
        intent4.setAction("com.transsion.play.notify.close");
        this.i = PendingIntent.getBroadcast(this.b, 4, intent4, i2);
        this.e = new NotificationCompat.Builder(this.b, x()).setSmallIcon(com.transsion.playercommon.R.drawable.ic_notification_logo_transparent).setPriority(2).setContentIntent(activity).setVisibility(1);
    }

    public boolean z() {
        return this.j;
    }
}
