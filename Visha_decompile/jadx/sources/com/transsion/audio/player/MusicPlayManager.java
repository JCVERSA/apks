package com.transsion.audio.player;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.AudioManager;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.SurfaceHolder;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.service.MusicService;
import com.transsion.audio.utils.AudioLoadDataUtils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.MediaItemClone;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.player.MusicFade.MusicFade;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import defpackage.af9;
import defpackage.ao;
import defpackage.av3;
import defpackage.h27;
import defpackage.ifc;
import defpackage.iz;
import defpackage.jb8;
import defpackage.lc3;
import defpackage.m27;
import defpackage.p06;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rt6;
import defpackage.se;
import defpackage.uq3;
import defpackage.uy5;
import defpackage.vdb;
import defpackage.vf;
import defpackage.vy5;
import defpackage.w6c;
import defpackage.yp;
import defpackage.zdc;
import defpackage.zs7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Pattern;
import org.mozilla.javascript.ES6Iterator;

public class MusicPlayManager implements com.transsion.playercommon.player.b.a, AudioLoadDataUtils.a, h27.b, MountPointManager.a {
    public static final Pattern H = Pattern.compile(".*%[0-9A-Fa-f]{2}.*");
    public static volatile MusicPlayManager I;
    public com.transsion.playercommon.player.b.InterfaceC0245b G;
    public MusicService b;
    public Intent c;
    public boolean d;
    public Context e;
    public com.transsion.playercommon.player.b k;
    public AudioLoadDataUtils l;
    public zs7 m;
    public boolean n;
    public boolean o;
    public int q;
    public long r;
    public boolean t;
    public boolean u;
    public Uri v;
    public boolean w;
    public boolean x;
    public int f = 0;
    public CopyOnWriteArrayList g = new CopyOnWriteArrayList();
    public CopyOnWriteArrayList h = new CopyOnWriteArrayList();
    public PlayAudioListData i = PlayAudioListData.getInstance();
    public AudioItem j = new AudioItem();
    public PlayAudioData p = new PlayAudioData();
    public int s = 0;
    public Handler y = new Handler();
    public rt6 z = null;
    public MusicFade A = null;
    public Boolean B = Boolean.TRUE;
    public final ServiceConnection C = new a();
    public Runnable D = new Runnable() {
        @Override
        public void run() {
            MusicPlayManager.this.y.postDelayed(MusicPlayManager.this.D, 1000L);
            MusicPlayManager.this.d1();
        }
    };
    public final AudioManager.OnAudioFocusChangeListener E = new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public final void onAudioFocusChange(int i) {
            this.b.y0(i);
        }
    };
    public Handler F = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.z0(message);
        }
    });

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                MusicPlayManager.this.b = ((MusicService.ServiceBinder) iBinder).getService();
                LogUtils.i("MusicPlayManager", "onServiceConnected " + MusicPlayManager.this.b, "mIsPlaying " + MusicPlayManager.this.d);
                vf.f(MusicPlayManager.this.e);
                boolean booleanExtra = MusicPlayManager.this.c.getBooleanExtra("fromwidget", false);
                int intExtra = MusicPlayManager.this.c.getIntExtra("fromwidgetType", -1);
                if (booleanExtra && !MusicPlayManager.this.d) {
                    MusicPlayManager.this.b.D(true, intExtra);
                }
                if (MusicPlayManager.this.d) {
                    MusicPlayManager.this.y1();
                    MusicPlayManager.this.N();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtils.i("MusicPlayManager", "onServiceDisconnected ");
            MusicPlayManager.this.b = null;
        }
    }

    public class b implements MusicFade.a {
        public b() {
        }

        @Override
        public void a(float f) {
            try {
                MusicPlayManager.this.B0(f);
            } catch (Exception e) {
                Log.e("MusicPlayManager", "onFade error " + e.getMessage());
            }
        }
    }

    public interface c {
        void onPlayItemChanged(AudioItem audioItem);
    }

    public interface d {
        default void hideBottomOperateBar() {
        }

        default void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
        }

        default boolean onInfo(int i, int i2) {
            return false;
        }

        default void onPlayItemChanged(AudioItem audioItem) {
        }

        default void onPlayListLoadFinished(ArrayList arrayList) {
        }

        default void onPlayerStateUpdate(int i) {
        }

        default void onShowError(int i, int i2) {
        }

        default void onTimerShow(long j) {
        }

        default void onUpdateAll(MusicPlayManager musicPlayManager) {
        }

        default void onVideoSizeChanged(int i, int i2) {
        }

        default void seekTo(int i) {
        }
    }

    public MusicPlayManager() {
        j0();
    }

    private void G0() {
        AudioItem audioItem = this.j;
        if (audioItem != null) {
            b1(audioItem);
        }
        H1(this.j);
    }

    private void J() {
        if (this.j == null) {
            H1(null);
        } else {
            ThreadUtils.n().execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.w0();
                }
            });
        }
    }

    private void K1() {
        MusicService musicService = this.b;
        if (musicService != null && this.o) {
            musicService.K();
        }
        G1(false);
    }

    public static MusicPlayManager S() {
        if (I == null) {
            synchronized (MusicPlayManager.class) {
                try {
                    if (I == null) {
                        I = new MusicPlayManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return I;
    }

    public static Uri e0(AudioItem audioItem) {
        if (audioItem == null) {
            LogUtils.O("MusicPlayManager", "playAudioItem mediaItem null");
            return null;
        }
        Uri uri = audioItem.uri;
        if (uri != null) {
            return uri;
        }
        Uri uri2 = audioItem.getUri();
        return (uri2 != null || r0a.g(audioItem.data)) ? uri2 : Uri.parse(audioItem.data);
    }

    private void j0() {
        this.e = Utils.a();
        this.k = pp3.j() ? new ifc(this.e, false) : new com.transsion.playercommon.player.c(this.e, false);
        w6c.t(this.e, "music_timer_choice", 0);
        w6c.v(this.e, "music_timer", 0L);
        this.k.n(this);
        AudioLoadDataUtils audioLoadDataUtils = new AudioLoadDataUtils(this.e);
        this.l = audioLoadDataUtils;
        audioLoadDataUtils.n(this);
        J();
        this.m = new zs7(this.e, this.E);
        if (w6c.e(this.e, "music_timer", 0L) - System.currentTimeMillis() > 0) {
            this.y.post(this.D);
        }
        MountPointManager.f().p(this);
        h27.c().b(this, 1065);
        h27.c().b(this, 1071);
        h27.c().b(this, 1072);
        h27.c().b(this, 1073);
        h27.c().b(this, AnalyticsListener.EVENT_DRM_SESSION_RELEASED);
        h27.c().b(this, 1107);
        h27.c().b(this, 1117);
        h27.c().b(this, 1152);
        h27.c().b(this, 1164);
        l0();
    }

    public void A(boolean z) {
        this.k.i(z);
    }

    public void A1(boolean z, boolean z2) {
        if (this.s == -1) {
            ToastUtils.s(R.string.cannot_play_music);
            X0();
            return;
        }
        F();
        this.k.t(z, z2);
        if (this.k.isPlaying()) {
            h27.c().e(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, Boolean.valueOf(z2));
        }
    }

    public void B(Context context, Intent intent) {
        this.c = intent;
        try {
            context.startService(intent);
        } catch (Exception e) {
            LogUtils.i("MusicPlayManager", "bindMusicService " + e);
        }
        context.bindService(this.c, this.C, 1);
    }

    public void B1() {
        int iD = w6c.d(this.e, "audio_play_repeat_mode", 1);
        if (this.s == 6 && g0() && (iD == 1 || iD == 3)) {
            W0();
        } else if (this.s == -1) {
            C1();
        } else {
            A1(true, !s0());
        }
    }

    public void C(Context context) {
        LogUtils.i("MusicPlayManager", "bindMusicService");
        this.f++;
        if (this.b != null) {
            return;
        }
        this.F.removeMessages(1);
        D(context);
    }

    public final void C0() {
        if (PlayAudioListData.getInstance().isAllDemaged()) {
            return;
        }
        j1();
        this.F.sendEmptyMessageDelayed(2, 800L);
    }

    public void C1() {
        int iD = w6c.d(this.e, "audio_play_repeat_mode", 1);
        LogUtils.i("MusicPlayManager", "triggerPlayPauseFromError " + iD);
        if (iD == 2) {
            O0(this.i.playIndex(), false);
        } else if (g0()) {
            W0();
        } else {
            O0(this.i.playIndex(), false);
        }
    }

    public final void D(Context context) {
        LogUtils.i("MusicPlayManager", "bindService " + this.b);
        Intent intent = new Intent(context, (Class<?>) MusicService.class);
        this.c = intent;
        try {
            context.startService(intent);
        } catch (Exception e) {
            LogUtils.i("MusicPlayManager", "bindMusicService " + e);
        }
        context.bindService(this.c, this.C, 1);
    }

    public void D0(AudioItem audioItem, int i, String str, BaseConstant.SCREEN_TYPE screen_type, boolean z) {
        String str2;
        String str3;
        if (audioItem != null) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            int i2 = ((int) audioItem.duration) / 1000;
            String strE = uy5.e(MMKV.p().g("filter_size", 0));
            PlayAudioData playAudioData = this.p;
            if (playAudioData == null || (str2 = playAudioData.sourceAction) == null) {
                str2 = "0";
            }
            bundle.putString("from", str2);
            bundle.putString("name", audioItem.displayName);
            bundle.putLong("vd_size", audioItem.size);
            bundle.putLong("vd_length", i2);
            bundle.putString("listName", audioItem.bucketDisplayName);
            bundle.putString("play_source", "inner");
            bundle.putString("path", audioItem.data);
            bundle.putString("play_status", p06.c());
            bundle.putString("vd_format", audioItem.mineType);
            bundle.putString("au_speed", w6c.b(this.e) + "");
            bundle.putString(ES6Iterator.VALUE_PROPERTY, strE);
            bundle.putString("value_1", uy5.f(MMKV.p().g("filter_duration", 0)));
            bundle.putInt("value_2", uy5.d());
            bundle.putInt("value_3", uy5.c());
            bundle.putInt("equalizer_status", i);
            MusicService musicService = this.b;
            bundle.putInt("earphone_status", musicService != null ? musicService.q() : 0);
            bundle.putBoolean("new_label", ao.U().f0(audioItem));
            com.transsion.playercommon.player.b bVar = this.k;
            if (bVar != null) {
                bundle.putString("codec", bVar.w());
            }
            if (this.p.isMusicVideo) {
                bundle.putInt("mv_statue", 1);
            } else {
                bundle.putInt("mv_statue", 0);
            }
            PlayAudioData playAudioData2 = this.p;
            if (playAudioData2 == null || (str3 = playAudioData2.sourceAction) == null) {
                str3 = "0";
            }
            trackData.add("from", str3);
            trackData.add("name", audioItem.displayName);
            trackData.add("vd_size", audioItem.size);
            trackData.add("vd_length", i2);
            trackData.add("listName", audioItem.bucketDisplayName);
            trackData.add("play_source", "inner");
            trackData.add("path", audioItem.data);
            trackData.add("play_status", p06.c());
            trackData.add("vd_format", audioItem.mineType);
            trackData.add("au_speed", w6c.b(this.e) + "");
            trackData.add(ES6Iterator.VALUE_PROPERTY, strE);
            trackData.add("value_1", uy5.f(MMKV.p().g("filter_duration", 0)));
            trackData.add("value_2", uy5.d());
            trackData.add("value_3", uy5.c());
            trackData.add("equalizer_status", i);
            trackData.add("new_label", ao.U().f0(audioItem));
            MusicService musicService2 = this.b;
            trackData.add("earphone_status", musicService2 != null ? musicService2.q() : 0);
            com.transsion.playercommon.player.b bVar2 = this.k;
            if (bVar2 != null) {
                trackData.add("codec", bVar2.w());
            }
            if (this.p.isMusicVideo) {
                trackData.add("mv_statue", 1);
            } else {
                trackData.add("mv_statue", 0);
            }
            p06.q0(trackData, bundle, "vd_audio_play_show", 932460000050L);
        }
    }

    public void D1(Context context) {
        int i = this.f - 1;
        this.f = i;
        if (i != 0) {
            return;
        }
        if (context.bindService(this.c, this.C, 1)) {
            context.unbindService(this.C);
        }
        this.F.removeMessages(1);
        this.F.sendEmptyMessageDelayed(1, 300000L);
    }

    public final void E() {
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(this.i.playMediaItem());
        this.p = playAudioDataConvertToPlayAudioData;
        if (playAudioDataConvertToPlayAudioData != null) {
            playAudioDataConvertToPlayAudioData.listFlag = this.q;
        }
        LogUtils.i("MusicPlayManager", "buildCurrentPlayData " + playAudioDataConvertToPlayAudioData);
    }

    public final void E0(AudioItem audioItem) {
        if (audioItem == null) {
            Log.e("MusicPlayManager", "markPointMediaItemInBackground null");
        } else {
            TaskExecutor.c(new TaskExecutor.Task<MediaItem>() {
                @Override
                public void onResult(MediaItem mediaItem) {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public MediaItem onBackground() {
                    AudioItem audioItemConvertToPlayAudioItem = PlayAudioData.convertToPlayAudioItem(MusicPlayManager.this.p);
                    if (audioItemConvertToPlayAudioItem == null) {
                        return null;
                    }
                    MusicPlayManager.this.D0(audioItemConvertToPlayAudioItem, !lc3.d() ? 1 : 0, "vd_audio_play_show", BaseConstant.l, false);
                    return null;
                }
            });
        }
    }

    public void E1(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int size = this.h.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.h.get(size)).get() == cVar) {
                this.h.remove(size);
            }
        }
    }

    public boolean F() {
        if (!this.w) {
            return false;
        }
        this.w = false;
        L1(0L);
        w6c.t(this.e, "music_timer_choice", 0);
        this.k.g();
        return true;
    }

    public final void F0(AudioItem audioItem) {
        if (audioItem == null) {
            return;
        }
        if (n0(audioItem.displayName)) {
            audioItem.displayName = Uri.decode(audioItem.displayName);
        }
        if (!TextUtils.isEmpty(audioItem.displayName) || TextUtils.isEmpty(audioItem.data)) {
            return;
        }
        String strQ = av3.q(Uri.decode(audioItem.data));
        if (TextUtils.isEmpty(strQ)) {
            return;
        }
        audioItem.displayName = av3.l(strQ);
    }

    public void F1(d dVar) {
        if (dVar == null) {
            return;
        }
        for (int size = this.g.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.g.get(size)).get() == dVar) {
                this.g.remove(size);
            }
        }
    }

    public void G(String str) {
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.G;
        if (interfaceC0245b != null) {
            interfaceC0245b.d(str, true);
        }
    }

    public void G1(boolean z) {
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.G;
        if (interfaceC0245b != null) {
            interfaceC0245b.c(z);
        }
    }

    public void H(boolean z) {
        this.y.removeCallbacks(this.D);
        if (z) {
            this.y.post(this.D);
        } else {
            L1(0L);
            F();
        }
    }

    public final void t0(AudioItem audioItem, AudioItem audioItem2) {
        LogUtils.j("MusicPlayManager", "onCurrentMediaChanged: " + audioItem2);
        if (audioItem2 == null) {
            f0(audioItem);
            return;
        }
        boolean z = (audioItem == null || TextUtils.isEmpty(audioItem2.data) || TextUtils.isEmpty(audioItem.data) || TextUtils.equals(audioItem2.data, audioItem.data)) ? false : true;
        if (audioItem == null || !TextUtils.equals(audioItem2.displayName, audioItem.displayName) || !TextUtils.equals(audioItem2.title, audioItem.title) || z) {
            H1(audioItem2);
        }
    }

    public void H1(AudioItem audioItem) {
        if (audioItem != null) {
            z1(audioItem);
        }
        J0(audioItem);
        if (audioItem != null) {
            MediaItemClone mediaItemClone = new MediaItemClone(audioItem.id, audioItem.bucketId, audioItem.displayName, audioItem.artistName, audioItem.albumName, this.q, this.r);
            mediaItemClone.parentPath = audioItem.parentPath;
            w6c.w(this.e, "play_audio_item", mediaItemClone);
        } else {
            w6c.w(this.e, "play_audio_item", null);
            LogUtils.O("MusicPlayManager", "notifyPlayItemChanged null," + this.v);
        }
    }

    public final void I() {
        if (uq3.a()) {
            LogUtils.O("MusicPlayManager", "checkPlayData isRenaming");
            return;
        }
        final AudioItem audioItem = this.j;
        LogUtils.i("MusicPlayManager", "checkPlayData " + audioItem);
        if (audioItem != null && AudioLoadDataUtils.j(audioItem.id)) {
            ThreadUtils.n().execute(new Runnable() {
                @Override
                public final void run() {
                    this.b.u0(audioItem);
                }
            });
        } else if (audioItem == null && s0()) {
            f0(null);
        }
    }

    public void I0() {
        LogUtils.O("MusicPlayManager", "onDestroy " + this.b);
        this.b = null;
    }

    public void I1() {
        LogUtils.l("MusicPlayManager", "updatePlayList");
        PlayAudioData playAudioData = this.p;
        if (playAudioData != null && playAudioData.playListId == -1) {
            playAudioData.playListId = this.r;
        }
        z();
        I();
        if (af9.h) {
            h27.c().e(1120, new Object[0]);
        }
        af9.i = 0;
        af9.h = false;
    }

    public void J0(AudioItem audioItem) {
        if (audioItem != null && this.j != null) {
            if (!TextUtils.isEmpty(audioItem.artistName) && !TextUtils.isEmpty(this.j.artistName) && !TextUtils.equals(audioItem.artistName, this.j.artistName)) {
                this.j = audioItem;
                z();
            }
            int i = audioItem.id;
            AudioItem audioItem2 = this.j;
            if (i == audioItem2.id) {
                audioItem.isDamaged = audioItem2.isDamaged;
            }
        }
        this.j = audioItem;
        if (audioItem != null) {
            SearchResultAdapter.t = audioItem.data;
            h27.c().e(1088, new Object[0]);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onPlayItemChanged(audioItem);
            }
        }
        Iterator it2 = this.h.iterator();
        while (it2.hasNext()) {
            c cVar = (c) ((WeakReference) it2.next()).get();
            if (cVar != null) {
                cVar.onPlayItemChanged(audioItem);
            }
        }
        K1();
        vf.f(this.e);
    }

    public final void J1(boolean z) {
        this.n = z;
    }

    public void K() {
        i1(true);
        this.k.pause(true);
    }

    public void K0() {
        if (F() || !this.n || this.x) {
            return;
        }
        S0(false);
    }

    public CharSequence L() {
        AudioItem audioItemPlayMediaItem = this.i.playMediaItem();
        return audioItemPlayMediaItem == null ? "" : audioItemPlayMediaItem.artistName;
    }

    public void L0(boolean z) {
        if (this.n && z) {
            J1(false);
            K();
        }
    }

    public void L1(long j) {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onTimerShow(j);
            }
        }
    }

    public int M() {
        return this.k.b();
    }

    public void M0(boolean z) {
        this.k.pause(z);
    }

    public void N() {
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.G;
        if (interfaceC0245b != null) {
            interfaceC0245b.d(null, false);
        }
    }

    public void N0(PlayAudioData playAudioData) {
        int i;
        int i2;
        LogUtils.j("MusicPlayManager", "item:" + playAudioData, "list index:" + this.i.playIndex());
        this.q = playAudioData.listFlag;
        this.r = playAudioData.playListId;
        this.i.setPlayListTitle(playAudioData.folderName);
        if (!AudioLoadDataUtils.j(playAudioData.mediaId) && playAudioData.playPosition != 0) {
            LogUtils.P("MusicPlayManager", "invalid mediaId:" + playAudioData.mediaId);
        } else if (AudioLoadDataUtils.j(playAudioData.mediaId)) {
            Log.d("MusicPlayManager", "playAudio old :" + this.p);
            if (playAudioData.isSamePlayAudioData(this.p) && playAudioData.autoPlay && (i2 = this.s) != -1 && i2 != 0 && i2 != 3) {
                A1(true, true);
            }
            if (!playAudioData.isSamePlayAudioData(this.p) || (i = this.s) == -1 || i == 0) {
                a1(playAudioData.playUri, true, playAudioData.playPosition, true);
                this.p = playAudioData;
            }
            if (m0(playAudioData)) {
                this.l.n(this);
                if (playAudioData.from != 3) {
                    this.l.g(playAudioData);
                }
            }
        } else {
            this.p = playAudioData;
            this.i.clearPlayList();
            this.l.n(this);
            this.l.f(playAudioData);
        }
        zdc.t(zdc.b);
    }

    public PlayAudioData O() {
        AudioItem audioItemPlayMediaItem = this.i.playMediaItem();
        if (audioItemPlayMediaItem == null) {
            return null;
        }
        PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItemPlayMediaItem);
        if (playAudioDataConvertToPlayAudioData == null) {
            playAudioDataConvertToPlayAudioData = this.p;
        } else {
            playAudioDataConvertToPlayAudioData.playPosition = Q();
        }
        if (!AudioLoadDataUtils.j(playAudioDataConvertToPlayAudioData.mediaId) && playAudioDataConvertToPlayAudioData.playUri == null) {
            playAudioDataConvertToPlayAudioData.setData(audioItemPlayMediaItem.uri);
        }
        playAudioDataConvertToPlayAudioData.listFlag = this.q;
        playAudioDataConvertToPlayAudioData.playListId = this.r;
        return playAudioDataConvertToPlayAudioData;
    }

    public void O0(int i, boolean z) {
        P0(this.i.setPlayMediaItem(i).selectedPlayMediaItem().playMediaItem(), z);
    }

    public AudioItem P() {
        return this.i.playMediaItem();
    }

    public void P0(AudioItem audioItem, boolean z) {
        Q0(audioItem, z, true);
    }

    public int Q() {
        return this.k.getCurrentPosition();
    }

    public final void Q0(AudioItem audioItem, boolean z, boolean z2) {
        Uri uriE0 = e0(audioItem);
        if (uriE0 == null) {
            LogUtils.m("MusicPlayManager", "playAudioItem uri null");
            return;
        }
        F0(audioItem);
        LogUtils.j("MusicPlayManager", "playAudioItem-->autoPlay:" + z2, "item:" + audioItem, "uri:" + uriE0);
        this.j = audioItem;
        PlayAudioListData.getInstance().setPlayMediaItem(audioItem);
        a1(uriE0, this.q == 1, audioItem.isPlayComplete ? 0L : audioItem.playPosition, z2);
        E();
        zdc.t(zdc.b);
    }

    public int R() {
        return this.k.getDuration();
    }

    public void R0() {
        if (S0(true)) {
            return;
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.hideBottomOperateBar();
            }
        }
    }

    public final boolean S0(boolean z) {
        int iD = w6c.d(this.e, "audio_play_repeat_mode", 1);
        LogUtils.i("MusicPlayManager", "playForRepeatMode " + iD);
        if (z && PlayAudioListData.getInstance().isAllDemaged()) {
            LogUtils.l("MusicPlayManager", "playForRepeatMode repeat error max");
            return false;
        }
        vdb.g("MusicPlayManager", "playForRepeatMode repeatMode " + iD);
        if (iD == 2) {
            if (!z) {
                vdb.g("MusicPlayManager", "triggerPlayOrPause");
                A1(true, true);
            } else {
                if (Q() <= 1000) {
                    return false;
                }
                O0(this.i.playIndex(), false);
            }
        } else if (iD == 1) {
            if (this.i.getPlayList().size() <= 1) {
                return false;
            }
            if (!z && this.i.hasNext()) {
                W0();
            }
        } else if (iD == 3) {
            if (this.i.getPlayList().size() <= 1) {
                return false;
            }
            if (!z && this.i.hasNext()) {
                W0();
            }
        }
        return true;
    }

    public int T() {
        return this.q;
    }

    public void T0(ArrayList arrayList) {
        try {
            Iterator it = this.g.iterator();
            while (it.hasNext()) {
                d dVar = (d) ((WeakReference) it.next()).get();
                if (dVar != null) {
                    dVar.onPlayListLoadFinished(arrayList);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public MusicService U() {
        return this.b;
    }

    public void U0() {
        if (this.i.hasNext()) {
            AudioItem audioItemPlayNextByBtn = this.i.playNextByBtn();
            this.i.setPlayMediaItem(audioItemPlayNextByBtn).selectedPlayMediaItem();
            P0(audioItemPlayNextByBtn, false);
        }
    }

    public ArrayList V() {
        return this.i.getNewShuffleList();
    }

    public final void V0() {
        Log.i("MusicPlayManager", "playNextForError " + q0() + StringUtils.COMMA + i0());
        if ((!q0() || p0()) && !o0()) {
            Log.i("MusicPlayManager", "playNextForError return");
            return;
        }
        LogUtils.i("MusicPlayManager", "playNextForError :" + this.k.I());
        if (this.i.hasNext()) {
            AudioItem audioItemRemoveAndPlayNextNotSafe = this.i.removeAndPlayNextNotSafe();
            this.i.setPlayMediaItem(audioItemRemoveAndPlayNextNotSafe).selectedPlayMediaItem();
            Q0(audioItemRemoveAndPlayNextNotSafe, false, i0() && this.k.I() != 4);
        }
    }

    public CharSequence W() {
        AudioItem audioItemPlayMediaItem = this.i.playMediaItem();
        return audioItemPlayMediaItem == null ? "" : audioItemPlayMediaItem.displayName;
    }

    public void W0() {
        LogUtils.i("MusicPlayManager", "playNextItem");
        if (this.i.hasNext()) {
            AudioItem audioItemPlayNext = this.i.playNext();
            this.i.setPlayMediaItem(audioItemPlayNext).selectedPlayMediaItem();
            P0(audioItemPlayNext, false);
        }
    }

    public ArrayList X() {
        return this.i.getPlayList();
    }

    public void X0() {
        AudioItem audioItemRemoveAndPlayNext;
        LogUtils.i("MusicPlayManager", "playNextItemAfterRemove " + this.j);
        if (!this.i.hasNext() || (audioItemRemoveAndPlayNext = this.i.removeAndPlayNext(this.j)) == null || TextUtils.isEmpty(audioItemRemoveAndPlayNext.data) || !new File(audioItemRemoveAndPlayNext.data).exists()) {
            return;
        }
        this.i.setPlayMediaItem(audioItemRemoveAndPlayNext).selectedPlayMediaItem();
        P0(audioItemRemoveAndPlayNext, false);
    }

    public PlayAudioListData Y() {
        return this.i;
    }

    public void Y0() {
        if (this.i.hasPrevious()) {
            AudioItem audioItemPlayPreviousByBtn = this.i.playPreviousByBtn();
            this.i.setPlayMediaItem(audioItemPlayPreviousByBtn).selectedPlayMediaItem();
            P0(audioItemPlayPreviousByBtn, false);
        }
    }

    public long Z() {
        return this.r;
    }

    public void Z0() {
        if (this.i.hasPrevious()) {
            AudioItem audioItemPlayPrevious = this.i.playPrevious();
            this.i.setPlayMediaItem(audioItemPlayPrevious).selectedPlayMediaItem();
            P0(audioItemPlayPrevious, false);
        }
    }

    @Override
    public void a(ArrayList arrayList) {
        LogUtils.O("MusicPlayManager", "onLoadBucketsResult");
        uq3.b(false);
        if ((arrayList == null || arrayList.size() == 0) && this.j != null) {
            arrayList = new ArrayList();
            arrayList.add(this.j);
        }
        this.i.setPlayList(arrayList, null);
        this.i.setPlayMediaItem(this.j);
        K1();
        T0(arrayList);
        if (arrayList == null || arrayList.isEmpty()) {
            i1(true);
        }
        I();
    }

    public AudioItem a0() {
        return this.j;
    }

    public final void a1(Uri uri, boolean z, long j, boolean z2) {
        F();
        if (uri == null) {
            LogUtils.O("MusicPlayManager", "playUri uri null");
            return;
        }
        LogUtils.N("MusicPlayManager", "url:" + uri, "playPosition:" + j);
        this.v = uri;
        if (this.j != null) {
            LogUtils.j("MusicPlayManager", "playAudioItem-->isMusicVideo");
            if (this.j.isMusicVideo) {
                this.k.h(false);
                this.k.o(true);
            } else {
                this.k.o(false);
            }
        }
        if (!z) {
            j = 0;
        }
        this.k.R(new jb8(uri, j, false, z2));
        G0();
        N();
        K1();
        E0(this.i.playMediaItem());
    }

    @Override
    public void b(ArrayList arrayList) {
        Uri uri;
        LogUtils.O("MusicPlayManager", "onLoadResult");
        this.i.setPlayList(arrayList, null);
        AudioItem audioItem = arrayList.size() > 0 ? (AudioItem) arrayList.get(0) : null;
        LogUtils.O("MusicPlayManager", "onLoadResult " + audioItem);
        if (audioItem != null) {
            this.i.setPlayMediaItem(audioItem).selectedPlayMediaItem();
            uri = AudioLoadDataUtils.j(audioItem.id) ? audioItem.getUri() : this.p.playUri;
        } else {
            uri = this.p.playUri;
        }
        Uri uri2 = uri;
        T0(arrayList);
        a1(uri2, true, this.p.playPosition, true);
    }

    public int b0() {
        return this.k.a();
    }

    public void b1(final AudioItem audioItem) {
        TaskExecutor.c(new TaskExecutor.Task<Void>() {
            @Override
            public Void onBackground() {
                ao.U().t0(audioItem);
                return null;
            }
        });
    }

    @Override
    public void c(Uri uri, boolean z) {
        a1(uri, z, this.p.playPosition, true);
    }

    public String c0() {
        return this.i.getPlayListTitle();
    }

    public void c1() {
        if (!this.d || this.m == null) {
            return;
        }
        vdb.j("MusicPlayManager", "refreshAudioFocus");
        this.m.f();
    }

    @Override
    public void d(int i, int i2) {
        MusicFade musicFade;
        if (pp3.B) {
            if (i != 3) {
                if (i != 6 || (musicFade = this.A) == null) {
                    return;
                }
                musicFade.b(new MusicFade.a() {
                    @Override
                    public final void a(float f) {
                        this.a.B0(f);
                    }
                });
                return;
            }
            if (!this.z.c() || this.z.a() < 500) {
                return;
            }
            if (this.A == null) {
                l0();
            }
            this.A.b(new MusicFade.a() {
                @Override
                public final void a(float f) {
                    this.a.A0(f);
                }
            });
            this.A.c(0.0f, 1.0f, this.z.a(), System.currentTimeMillis(), Q(), R(), new b());
        }
    }

    public long d0() {
        return w6c.e(this.e, "music_timer", 0L) - System.currentTimeMillis();
    }

    public final void d1() {
        long jD0 = d0();
        if (jD0 >= 1000) {
            L1(jD0);
            return;
        }
        vy5.c(((int) w6c.e(this.e, "music_timer_for_mark", 0L)) / 1000);
        boolean zC = w6c.c(this.e, "music_timer_finish_current", true);
        int iD = w6c.d(this.e, "music_timer_choice", 0);
        if (s0() && zC && iD != 0) {
            t1(true);
            L1(-1L);
        } else {
            L1(0L);
            M0(true);
            w6c.t(this.e, "music_timer_choice", 0);
        }
        this.y.removeCallbacks(this.D);
        w6c.v(this.e, "music_timer", 0L);
        w6c.v(this.e, "music_timer_for_mark", 0L);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        String str;
        MusicService musicService;
        String str2;
        if (i == 1065) {
            return;
        }
        if (i == 1071 || i == 1152) {
            AudioItem audioItem = this.j;
            if (audioItem != null && (str = audioItem.data) != null && objArr.length > 0 && str.equals(objArr[0])) {
                if (PlayAudioListData.getInstance().getPlayList().isEmpty()) {
                    SearchResultAdapter.t = "";
                    h27.c().e(1070, new Object[0]);
                    M0(false);
                } else {
                    X0();
                }
            }
            if (objArr.length <= 0 || objArr[0] == null) {
                return;
            }
            PlayAudioListData.getInstance().deleteItem((String) objArr[0]);
            return;
        }
        if (i == 1072) {
            PlayAudioListData.getInstance().synDelete();
            return;
        }
        if (i == 1073) {
            PlayAudioListData.getInstance().synFilter(this.e);
            return;
        }
        if (i == 1027) {
            if (this.n && this.d) {
                A1(true, false);
                return;
            }
            return;
        }
        if (i == 1107) {
            AudioItem audioItem2 = this.j;
            if (audioItem2 == null || (str2 = audioItem2.data) == null || !str2.equals(objArr[0])) {
                return;
            }
            vf.f(this.e);
            return;
        }
        if (i != 1117) {
            if (i == 1164) {
                x1(((Integer) objArr[0]).intValue());
            }
        } else {
            if (!this.o || (musicService = this.b) == null) {
                return;
            }
            musicService.K();
        }
    }

    public void e1(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int i = 0; i < this.h.size(); i++) {
            if (((WeakReference) this.h.get(i)).get() == cVar) {
                return;
            }
        }
        this.h.add(new WeakReference(cVar));
        cVar.onPlayItemChanged(this.j);
    }

    public final void f0(AudioItem audioItem) {
        LogUtils.j("MusicPlayManager", "onCurrentMediaChanged: " + audioItem);
        if (this.i.getPlayList().contains(audioItem)) {
            Log.d("MusicPlayManager", "mPlayListData remove not exist audioItem");
            this.i.getPlayList().remove(audioItem);
        }
        int iD = w6c.d(this.e, "audio_play_repeat_mode", 1);
        if (iD == 2 || iD == 1 ? !this.i.getPlayList().isEmpty() : !(iD == 3 && this.i.getPlayList().isEmpty())) {
            j1();
            this.F.sendEmptyMessageDelayed(3, 600L);
            return;
        }
        LogUtils.j("MusicPlayManager", "current media invalid,and current playMode = " + iD + " no next item,so stop playback");
        i1(true);
        l1();
        g1(false);
        this.i.clearPlayList();
        this.i.setPlayMediaItem((AudioItem) null);
        H1(null);
        h27.c().e(1070, new Object[0]);
    }

    public void f1(d dVar) {
        if (dVar == null) {
            return;
        }
        for (int i = 0; i < this.g.size(); i++) {
            if (((WeakReference) this.g.get(i)).get() == dVar) {
                return;
            }
        }
        this.g.add(new WeakReference(dVar));
        dVar.onUpdateAll(this);
    }

    public boolean g0() {
        return this.i.hasNext();
    }

    public void g1(boolean z) {
        this.k.u(z);
    }

    public boolean h0() {
        return this.i.hasPrevious();
    }

    public void h1(String str) {
        String str2;
        Log.e("MusicPlayManager", "releasePlayerForMount ");
        AudioItem audioItem = this.j;
        if (audioItem == null || (str2 = audioItem.data) == null || !str2.contains(str)) {
            return;
        }
        this.k.u(false);
        if (this.s == 3) {
            ToastUtils.s(R.string.cannot_play_music);
        }
    }

    public boolean i0() {
        return this.t;
    }

    public void i1(boolean z) {
        MusicService musicService = this.b;
        if (musicService != null) {
            musicService.F(z);
            D1(this.e);
        }
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.G;
        if (interfaceC0245b != null) {
            interfaceC0245b.a(false, z);
        }
    }

    public final void j1() {
        Log.e("MusicPlayManager", "removePlayNextItemErrorInfo");
        this.F.removeMessages(2);
        this.F.removeMessages(3);
    }

    public final void k0() {
        int iG = MMKV.p().g("mmkv_key_listen_music_count", 0);
        if (!this.B.booleanValue() || iG >= 3) {
            return;
        }
        int i = iG + 1;
        MMKV.p().t("mmkv_key_listen_music_count", i);
        if (i >= 3) {
            MMKV.p().y("mmkv_key_show_filter_tip", true);
        }
        this.B = Boolean.FALSE;
    }

    public void k1(iz izVar) {
        this.i.setRepeatMode(izVar);
        if (this.w) {
            return;
        }
        this.k.g();
    }

    public void l0() {
        if (!pp3.B) {
            Log.d("MusicPlayManager", "[music fade] not supported");
            return;
        }
        rt6 rt6VarB = rt6.b(this.e);
        this.z = rt6VarB;
        if (rt6VarB.c()) {
            this.A = new MusicFade();
        }
    }

    public void l1() {
        this.k.reset();
    }

    public boolean m0(PlayAudioData playAudioData) {
        return playAudioData != null && playAudioData.listFlag >= 21;
    }

    public void m1(int i) {
        this.k.seekTo(i);
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.seekTo(i);
            }
        }
    }

    public final boolean n0(String str) {
        return !TextUtils.isEmpty(str) && H.matcher(str).matches();
    }

    public void n1(int i, boolean z) {
        m1(i);
        if (z && this.s == 6) {
            this.k.pause(true);
        }
    }

    public final boolean o0() {
        AudioItem audioItem = this.j;
        return audioItem != null && audioItem.isDamaged;
    }

    public void o1(SurfaceHolder surfaceHolder, boolean z) {
        Log.e("MusicPlayManager", "setDisplay " + surfaceHolder + ", " + z);
        this.k.O(surfaceHolder, z);
    }

    @Override
    public void onEjected(String str) {
        h1(str);
        I1();
    }

    @Override
    public boolean onInfo(int i, int i2) {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onInfo(i, i2);
            }
        }
        return false;
    }

    @Override
    public void onLoadingOnlineVideo(boolean z, boolean z2) {
    }

    @Override
    public void onMounted(String str) {
    }

    @Override
    public void onPlayerStateUpdate(int i) {
        if (i != 0) {
            k0();
        }
        this.s = i;
        m27.c(i);
        boolean z = i == 3;
        MusicService musicService = this.b;
        if (musicService != null) {
            musicService.C(i);
        }
        if (i == 3) {
            j1();
        }
        if (this.d != z) {
            this.d = z;
            if (z) {
                this.t = this.m.f() == 1;
                J1(true);
                com.transsion.playercommon.player.a.a().e(false);
                y1();
            }
            K1();
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onPlayerStateUpdate(i);
            }
        }
        vf.f(this.e);
        if (i == 6) {
            K0();
        }
    }

    @Override
    public void onSdSwap() {
    }

    @Override
    public void onShowError(int i, int i2) {
        Log.e("MusicPlayManager", "onShowError " + i + " , " + i2);
        AudioItem audioItem = this.j;
        if (audioItem != null) {
            audioItem.setDamaged(true);
            AudioItem audioItemPlayMediaItem = this.i.playMediaItem();
            if (audioItemPlayMediaItem != null) {
                audioItemPlayMediaItem.setDamaged(true);
            }
        }
        I();
        PlayAudioListData.getInstance().setPlayMediaItem(this.j);
        ToastUtils.s(i2);
        p06.F(this.i.playMediaItem(), i, "", 0.0f, false, "", "audio", true);
        this.F.postDelayed(new Runnable() {
            @Override
            public final void run() {
                this.b.C0();
            }
        }, 200L);
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onShowError(i, i2);
            }
        }
    }

    @Override
    public void onUnMounted(String str) {
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        Log.d("MusicPlayManager", "onVideoSizeChanged, width = " + i + ", height = " + i2);
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onVideoSizeChanged(i, i2);
            }
        }
    }

    public boolean p0() {
        return this.w;
    }

    public void p1(com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b) {
        this.G = interfaceC0245b;
    }

    public boolean q0() {
        return this.n;
    }

    public void q1(boolean z) {
        this.x = z;
    }

    public boolean r0() {
        return this.k.E();
    }

    public void r1(boolean z) {
        this.k.h(z);
    }

    public boolean s0() {
        return this.s == 3;
    }

    public void s1(boolean z) {
        this.o = z;
    }

    public void t1(boolean z) {
        this.w = z;
        this.k.c(false);
    }

    public final void u0(final AudioItem audioItem) {
        final AudioItem audioItemF = ao.U().F(audioItem.id);
        Log.i("MusicPlayManager", "checkPlayData: item = " + audioItemF);
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                this.b.t0(audioItem, audioItemF);
            }
        });
    }

    public void u1(AudioItem audioItem) {
        this.j = audioItem;
    }

    public final void v0(AudioItem audioItem) {
        AudioItem audioItem2;
        if (audioItem == null || !((audioItem2 = this.j) == null || TextUtils.equals(audioItem.displayName, audioItem2.displayName))) {
            Log.d("MusicPlayManager", "the mPlayMediaItem is no longer exist");
            H1(null);
            return;
        }
        this.j = audioItem;
        H1(audioItem);
        this.l.g(PlayAudioData.convertToPlayAudioData(this.j));
        Log.d("MusicPlayManager", "checkPlayMediaItem " + this.j);
    }

    public void v1(float f) {
        this.k.l(f);
    }

    public final void w0() {
        final AudioItem audioItemF = ao.U().F(this.j.id);
        ThreadUtils.o().post(new Runnable() {
            @Override
            public final void run() {
                this.b.v0(audioItemF);
            }
        });
    }

    public void B0(float f) {
        this.k.setVolume(f, f);
    }

    public final void x0() {
        c1();
        this.k.d(true);
    }

    public void x1(int i) {
        this.k.M(i);
    }

    public final void y() {
        zs7 zs7Var = this.m;
        if (zs7Var != null) {
            zs7Var.b();
        }
    }

    public final void y0(int i) {
        LogUtils.i("MusicPlayManager", "onAudioFocusChange " + i);
        this.t = (i == -1 || i == -2) ? false : true;
        int i2 = this.s;
        if (i2 == 6 || !this.n) {
            LogUtils.O("MusicPlayManager", "onAudioFocusChange return ");
            return;
        }
        if (i != -2 && i != -1) {
            if (i != 1) {
                return;
            }
            if (this.u && i2 == 4) {
                this.k.d(true);
            } else {
                A(true);
            }
            this.u = false;
            return;
        }
        if (!this.d) {
            this.u = false;
            y();
            return;
        }
        if (w6c.c(se.a(), "audio_focus_allow_may_duck", false)) {
            this.u = false;
            vdb.j("MusicPlayManager", "Player playing with other app, onAudioFocusChange: " + i);
            return;
        }
        if (i == -1) {
            this.u = false;
            M0(true);
        } else {
            this.u = true;
            A(false);
        }
        vdb.j("MusicPlayManager", "Player be stopped, onAudioFocusChange: " + i);
        yp.i().q(new Runnable() {
            @Override
            public final void run() {
                this.b.x0();
            }
        });
    }

    public void y1() {
        MusicService musicService = this.b;
        if (musicService == null) {
            C(this.e);
        } else {
            musicService.H();
        }
    }

    public final void z() {
        AudioItem audioItem = this.j;
        if (audioItem != null) {
            this.p.artistName = audioItem.artistName;
        }
        this.l.g(this.p);
    }

    public final boolean z0(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2 || i == 3) {
                V0();
            }
        } else if (this.b != null && !this.o && this.f == 0) {
            LogUtils.O("MusicPlayManager", "service stopSelf");
            this.b.stopSelf();
        }
        return true;
    }

    public final void z1(AudioItem audioItem) {
        ArrayList<AudioItem> playList = this.i.getPlayList();
        if (playList == null || playList.isEmpty()) {
            return;
        }
        for (AudioItem audioItem2 : playList) {
            if (audioItem2 != null && audioItem2.id == audioItem.id) {
                AudioItem.copy(audioItem, audioItem2);
                this.i.setPlayMediaItem(audioItem);
                return;
            }
        }
    }
}
