package com.transsion.magicvideo.player;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.athena.data.TrackData;
import com.transsion.cloudcore.cache.CloudTaskFinishCacheManager;
import com.transsion.cloudcore.cloudapi.manager.CloudVideoPlayInfoManager;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.MediaItemClone;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayItemInfo;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.dbhelpder.VideoCloudCacheHelper;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.data.VideoOpStatus;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.data.CloudHistoryRequestData;
import com.transsion.playercommon.mimedia.CloudMediaPlayInfoManager;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import com.transsion.playercommon.utils.VideoOrientationHelper;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.tools.fragments.SettingFragment;
import com.transsion.utils.ToastUtils;
import defpackage.af9;
import defpackage.ao;
import defpackage.av3;
import defpackage.bya;
import defpackage.di1;
import defpackage.e07;
import defpackage.euc;
import defpackage.fz5;
import defpackage.h27;
import defpackage.hk3;
import defpackage.hsb;
import defpackage.ifc;
import defpackage.jb8;
import defpackage.jrb;
import defpackage.k29;
import defpackage.kh5;
import defpackage.m16;
import defpackage.m27;
import defpackage.mc7;
import defpackage.oz5;
import defpackage.p06;
import defpackage.pp3;
import defpackage.qpb;
import defpackage.qqb;
import defpackage.r0a;
import defpackage.rtb;
import defpackage.se;
import defpackage.srb;
import defpackage.suc;
import defpackage.t74;
import defpackage.tpb;
import defpackage.uq3;
import defpackage.vb;
import defpackage.vdb;
import defpackage.w6c;
import defpackage.yp;
import defpackage.zdc;
import defpackage.zf1;
import defpackage.zs7;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class VideoPlayManager implements com.transsion.playercommon.player.b.a, LoadDataUtils.a, h27.b, MountPointManager.a {
    public static volatile VideoPlayManager W;
    public static boolean X;
    public int A;
    public boolean B;
    public int C;
    public long D;
    public long E;
    public volatile long F;
    public boolean G;
    public boolean I;
    public boolean J;
    public boolean K;
    public String L;
    public boolean M;
    public WeakReference N;
    public com.transsion.playercommon.player.b.InterfaceC0245b V;
    public VideosService b;
    public Intent c;
    public boolean d;
    public boolean e;
    public com.transsion.playercommon.player.b l;
    public zs7 m;
    public LoadDataUtils n;
    public Context o;
    public boolean p;
    public boolean q;
    public boolean r;
    public volatile boolean s;
    public volatile String u;
    public boolean w;
    public PlayVideoData x;
    public Uri y;
    public int z;
    public int f = 0;
    public final CopyOnWriteArrayList g = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList h = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList i = new CopyOnWriteArrayList();
    public final PlayListData j = PlayListData.getInstance();
    public MediaItem k = new MediaItem();
    public volatile int t = -1;
    public int v = 0;
    public VideoOpStatus H = new VideoOpStatus();
    public boolean O = false;
    public int P = 100;
    public final ServiceConnection Q = new a();
    public final Handler R = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return this.b.I0(message);
        }
    });
    public Runnable S = new Runnable() {
        @Override
        public final void run() {
            this.b.K0();
        }
    };
    public final AudioManager.OnAudioFocusChangeListener T = new AudioManager.OnAudioFocusChangeListener() {
        @Override
        public final void onAudioFocusChange(int i) {
            this.b.L0(i);
        }
    };
    public final Runnable U = new Runnable() {
        @Override
        public final void run() {
            this.b.J0();
        }
    };

    public class AnonymousClass4 extends TaskExecutor.Task<Void> {
        final MediaItem val$mediaItem;
        final PlayerStates val$playStates;
        final PlayVideoData val$videoData;

        public AnonymousClass4(PlayVideoData playVideoData, PlayerStates playerStates, MediaItem mediaItem) {
            this.val$videoData = playVideoData;
            this.val$playStates = playerStates;
            this.val$mediaItem = mediaItem;
        }

        public static void lambda$onBackground$0(PlayerStates playerStates, MIMediaInfo mIMediaInfo) {
            kh5.a(new CloudHistoryRequestData(String.valueOf(playerStates.currentPosition / 1000), mIMediaInfo.getVideoId(), mIMediaInfo.getMediaLibraryId(), 2));
        }

        public static void lambda$onBackground$1(PlayerStates playerStates, PlayVideoData playVideoData) {
            kh5.a(new CloudHistoryRequestData(String.valueOf(playerStates.currentPosition / 1000), playVideoData.mKtFileId, null, 1));
        }

        @Override
        public Void onBackground() {
            try {
                if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.val$videoData)) {
                    final MIMediaInfo miMediaInfo = this.val$videoData.getMiMediaInfo();
                    if (miMediaInfo == null || miMediaInfo.getVideoId() == null) {
                        Log.w("VideoPlayManager", "recordVideoStates " + this.val$videoData.getMiMediaInfo());
                    } else {
                        CloudMediaPlayInfoManager.k().w(miMediaInfo.getVideoId(), this.val$playStates.currentPosition);
                        CloudVideoPlayInfoManager cloudVideoPlayInfoManager = CloudVideoPlayInfoManager.a;
                        String videoId = miMediaInfo.getVideoId();
                        final PlayerStates playerStates = this.val$playStates;
                        cloudVideoPlayInfoManager.W(videoId, playerStates.currentPosition, new Runnable() {
                            @Override
                            public final void run() {
                                VideoPlayManager.AnonymousClass4.lambda$onBackground$0(playerStates, miMediaInfo);
                            }
                        });
                    }
                } else {
                    PlayVideoData playVideoData = this.val$videoData;
                    if (playVideoData != null && playVideoData.isKt() && !this.val$videoData.isKtShare()) {
                        CloudVideoPlayInfoManager cloudVideoPlayInfoManager2 = CloudVideoPlayInfoManager.a;
                        final PlayVideoData playVideoData2 = this.val$videoData;
                        String str = playVideoData2.mKtFileId;
                        final PlayerStates playerStates2 = this.val$playStates;
                        cloudVideoPlayInfoManager2.W(str, playerStates2.currentPosition, new Runnable() {
                            @Override
                            public final void run() {
                                VideoPlayManager.AnonymousClass4.lambda$onBackground$1(playerStates2, playVideoData2);
                            }
                        });
                    } else if (this.val$videoData != null && this.val$mediaItem != null) {
                        tpb.j0().B(this.val$videoData, this.val$mediaItem, this.val$playStates);
                    }
                }
                return null;
            } catch (Exception e) {
                Log.e("VideoPlayManager", "recordVideoStates", e);
                return null;
            }
        }
    }

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder instanceof VideosService.ServiceBinder) {
                VideoPlayManager.this.b = ((VideosService.ServiceBinder) iBinder).getService();
                Log.d("VideoPlayManager", "onServiceConnected " + VideoPlayManager.this.b);
                VideoPlayManager.this.b.onPlayerStateUpdate(VideoPlayManager.this.v);
                VideoPlayManager.this.d = true;
                return;
            }
            Log.e("VideoPlayManager", "onServiceConnected unexpected binder type:" + iBinder + ", component:" + componentName);
            VideoPlayManager.this.b = null;
            VideoPlayManager.this.d = false;
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("VideoPlayManager", "onServiceDisconnected ");
            VideoPlayManager.this.b = null;
        }
    }

    public class b implements CloudMediaPlayInfoManager.b {
        public final MediaItem a;
        public final boolean b;
        public final boolean c;

        public b(MediaItem mediaItem, boolean z, boolean z2) {
            this.a = mediaItem;
            this.b = z;
            this.c = z2;
        }

        @Override
        public void a(MIMediaVideoPlayInfo mIMediaVideoPlayInfo) {
            Log.i("VideoPlayManager", "requestMIMediaVideoPlayInfo onSuccess " + mIMediaVideoPlayInfo);
            VideoPlayManager.this.m1(mIMediaVideoPlayInfo, this.a, this.b, this.c);
        }

        @Override
        public void onFailed(int i, String str) {
            VideoPlayManager.this.m1(null, this.a, this.b, this.c);
            Log.w("VideoPlayManager", "requestMIMediaVideoPlayInfo onFailed " + i + StringUtils.COMMA + str);
        }
    }

    public interface c {
        void onPlayItemChanged(MediaItem mediaItem);
    }

    public interface d {
        default void forceExit() {
        }

        default void loadMiMediaVideData(MIMediaVideoPlayInfo mIMediaVideoPlayInfo, boolean z) {
        }

        default boolean onInfo(int i, int i2) {
            return false;
        }

        default void onLoadingOnlineVideo(boolean z, boolean z2) {
        }

        default void onMusicPlayerProgressUpdate(int i, int i2) {
        }

        default void onPlayItemChanged(MediaItem mediaItem) {
        }

        default void onPlayListLoadFinished(ArrayList arrayList) {
        }

        default void onPlayerStateUpdate(int i) {
        }

        default void onShowError(int i, int i2) {
        }

        default void onStartChangedPlayItem(MediaItem mediaItem, boolean z) {
        }

        default void onUpdateAll(VideoPlayManager videoPlayManager) {
        }

        default void onUpdateNotification(int i) {
        }

        default void onVideoSizeChanged(int i, int i2) {
        }

        default void onVolumeChange(int i) {
        }

        default void seekTo(int i) {
        }

        default void videoPlayOrPause() {
        }
    }

    public interface e {
        void onSubtitleText(String str);
    }

    public VideoPlayManager() {
        t0();
    }

    private void B2(boolean z) {
        VideosService videosService = this.b;
        if (videosService == null || !this.r) {
            return;
        }
        videosService.K(z);
    }

    private void D(Context context) {
        Log.d("VideoPlayManager", "bindService " + this.b);
        Intent intent = new Intent(context, (Class<?>) VideosService.class);
        this.c = intent;
        try {
            context.startService(intent);
        } catch (Exception e2) {
            Log.d("VideoPlayManager", "bindService " + e2);
        }
        this.e = context.bindService(this.c, this.Q, 1);
    }

    public static AudioTrack F0(int i, Integer num) {
        AudioTrack audioTrack = tpb.j0().getAudioTrack(i);
        LogUtils.v("VideoPlayManager", "has audio track result:" + audioTrack);
        return audioTrack;
    }

    private void H() {
        if (uq3.a()) {
            Log.w("VideoPlayManager", "checkPlayData isRenaming");
            return;
        }
        final MediaItem mediaItemR = R();
        Log.d("VideoPlayManager", "checkPlayData " + mediaItemR);
        if (B0() && mediaItemR != null && LoadDataUtils.m(mediaItemR.id)) {
            TaskExecutor.c(new TaskExecutor.Task<Boolean>() {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean onBackground() {
                    MediaItem mediaItemH = tpb.j0().h(mediaItemR.id);
                    if (mediaItemH == null) {
                        return Boolean.TRUE;
                    }
                    if (mediaItemH.bucketId != mediaItemR.bucketId) {
                        return Boolean.TRUE;
                    }
                    String str = mediaItemH.data;
                    return (str == null || qpb.w(str)) ? Boolean.FALSE : Boolean.TRUE;
                }

                @Override
                public void onResult(Boolean bool) {
                    if (bool.booleanValue()) {
                        Log.w("VideoPlayManager", "the video is no longer exist ");
                        VideoPlayManager videoPlayManager = VideoPlayManager.this;
                        if (videoPlayManager.G) {
                            videoPlayManager.W1(false);
                            h27.c().e(AnalyticsListener.EVENT_PLAYER_RELEASED, new Object[0]);
                        }
                        VideoPlayManager.this.H1(true);
                        VideoPlayManager.this.E1(false);
                    }
                }
            });
        }
    }

    public static void H0(Throwable th) {
        LogUtils.v("VideoPlayManager", "loadAudioTrackRecord:" + th);
    }

    public void K0() {
        MediaItem mediaItemN2 = n2();
        if (mediaItemN2 != null) {
            w1(mediaItemN2, true, false);
            return;
        }
        M();
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.forceExit();
            }
        }
    }

    public void L0(int i) {
        Log.d("VideoPlayManager", "onAudioFocusChange " + i);
        Z0(i);
    }

    public static MediaItem N0(MediaItem mediaItem, MediaItem mediaItem2) {
        mediaItem.uri = Uri.parse(VideoCloudCacheHelper.b(mediaItem.data).a);
        return mediaItem;
    }

    public static void P0(Throwable th) {
        LogUtils.l("playVideoItemDirect: " + th);
    }

    public static Object Q0(AudioTrack audioTrack, AudioTrack audioTrack2) {
        tpb.j0().k(audioTrack.id, audioTrack.audioId, audioTrack.name);
        return null;
    }

    public static VideoPlayManager X() {
        if (W == null) {
            synchronized (VideoPlayManager.class) {
                try {
                    if (W == null) {
                        W = new VideoPlayManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return W;
    }

    private boolean j1(boolean z) {
        int iH = w6c.h(this.o);
        Log.d("VideoPlayManager", "playForRepeatMode " + iH);
        if (z) {
            int i = this.C;
            if (i > 4) {
                Log.e("VideoPlayManager", "playForRepeatMode repeat error max");
                return false;
            }
            this.C = i + 1;
        } else {
            this.C = 0;
        }
        if (iH == 2) {
            if (z) {
                v1(this.j.playIndex(), false, false);
            } else {
                p2(true, true);
            }
        } else if (iH != 0) {
            if (!this.j.hasNext()) {
                return z;
            }
            o1();
        }
        return true;
    }

    private void l1(ArrayList arrayList) {
        x2();
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onPlayListLoadFinished(arrayList);
            }
        }
    }

    private void t0() {
        Log.d("VideoPlayManager", "init: vlc support:" + pp3.w() + " bsp support:" + pp3.j());
        this.o = Utils.a();
        com.transsion.playercommon.player.b ifcVar = pp3.j() ? new ifc(this.o, true) : new com.transsion.playercommon.player.c(this.o, true);
        this.l = ifcVar;
        ifcVar.n(this);
        this.n = new LoadDataUtils(this.o);
        MediaItemClone mediaItemClone = (MediaItemClone) w6c.f(this.o, "play_item");
        if (mediaItemClone != null) {
            this.k = new MediaItem(mediaItemClone.id, mediaItemClone.bucketId, mediaItemClone.isVirtualFolder, mediaItemClone.virtualFolderMatchName);
        }
        MountPointManager.f().q(this, 0);
        this.m = new zs7(this.o, this.T);
        h27.c().b(this, 1066);
        h27.c().b(this, 1138);
        h27.c().b(this, 1117);
        h27.c().b(this, 1145);
        h27.c().b(this, 1164);
        h27.c().b(this, 1146);
        h27.c().b(this, AnalyticsListener.EVENT_DRM_SESSION_RELEASED);
    }

    private void x2() {
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.I();
        }
    }

    public void A(e eVar) {
        if (eVar == null) {
            return;
        }
        for (int i = 0; i < this.i.size(); i++) {
            if (((WeakReference) this.i.get(i)).get() == eVar) {
                return;
            }
        }
        this.i.add(new WeakReference(eVar));
    }

    public boolean A0() {
        return this.v == 3;
    }

    public void A1() {
        if (!this.w || this.m == null) {
            return;
        }
        vdb.j("VideoPlayManager", "refreshAudioFocus");
        this.m.f();
    }

    public final void A2() {
        MediaItem mediaItemPlayMediaItem = this.j.playMediaItem();
        if (mediaItemPlayMediaItem != null) {
            int iS = (this.v == 6 || S() >= V()) ? 0 : S();
            this.j.updateCurrentPlayPosition(iS);
            Log.i("VideoPlayManager", "updatePlayListData " + iS + ", " + mediaItemPlayMediaItem);
        }
    }

    public void B(boolean z, Activity activity) {
        Log.d("VideoPlayManager", "autoActivityPauseOrResume " + z);
        W0(this.k, z);
        if (z) {
            this.B = true;
            WeakReference weakReference = this.N;
            if (weakReference != null) {
                weakReference.clear();
                this.N = null;
            }
            this.N = new WeakReference(activity);
            return;
        }
        WeakReference weakReference2 = this.N;
        if (weakReference2 == null || weakReference2.get() == null || !((Activity) this.N.get()).equals(activity)) {
            return;
        }
        this.N.clear();
        this.N = null;
        this.B = false;
    }

    public boolean B0() {
        return this.r;
    }

    public void B1() {
        this.l.f(false);
    }

    public void C(boolean z) {
        Log.d("VideoPlayManager", "autoPauseOrResume mShowNotification:" + this.r + ",isPlaying:" + A0() + ",resume:" + z);
        if (z) {
            this.l.i(true);
            return;
        }
        ThreadUtils.o().removeCallbacks(this.U);
        if (this.r) {
            return;
        }
        this.l.i(false);
    }

    public boolean C0(SurfaceView surfaceView) {
        return this.l.G(surfaceView);
    }

    public void C1(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int i = 0; i < this.h.size(); i++) {
            if (((WeakReference) this.h.get(i)).get() == cVar) {
                return;
            }
        }
        this.h.add(new WeakReference(cVar));
        cVar.onPlayItemChanged(this.k);
    }

    public void C2(float f, int i, boolean z) {
        if (z) {
            fz5.c(this.H.mAudioVolume, f);
        }
        VideoOpStatus videoOpStatus = this.H;
        videoOpStatus.mAudioVolume = f;
        videoOpStatus.mMusicVolume = Math.round(i * f);
        this.H.mMusicMaxVolume = i;
    }

    public boolean D0(PlayVideoData playVideoData) {
        PlayVideoData playVideoData2;
        return playVideoData != null && (playVideoData2 = this.x) != null && playVideoData2.isSameUri(playVideoData2.playUri) && this.x.isMusicMode == playVideoData.isMusicMode;
    }

    public void D1(d dVar) {
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

    public void D2(int i) {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onVolumeChange(i);
            }
        }
    }

    public void E(Context context) {
        Log.d("VideoPlayManager", "bindVideoService " + this.f);
        this.f = this.f + 1;
        if (this.b != null) {
            return;
        }
        this.R.removeMessages(1);
        D(context);
    }

    public final boolean E0(MediaItem mediaItem) {
        PlayVideoData playVideoData = this.x;
        if (playVideoData.isFromNet) {
            return playVideoData.videoWidth > playVideoData.videoHeight;
        }
        return VideoOrientationHelper.c(this.o, mediaItem.uri);
    }

    public void E1(boolean z) {
        this.l.u(z);
    }

    public void E2(int i) {
        this.l.v(i);
    }

    public final void F(MediaItem mediaItem) {
        PlayVideoData playVideoData;
        if (mediaItem != null && (playVideoData = this.x) != null) {
            mediaItem.setVirtualFolder(playVideoData.isVirtualFolder);
            mediaItem.setVirtualFolderMatchName(this.x.virtualFolderMatchName);
        }
        PlayVideoData playVideoDataConvertToPlayVideoData = PlayVideoData.convertToPlayVideoData(mediaItem);
        if (playVideoDataConvertToPlayVideoData != null) {
            playVideoDataConvertToPlayVideoData.listFlag = this.z;
        }
        this.x = playVideoDataConvertToPlayVideoData;
        playVideoDataConvertToPlayVideoData.isMusicMode = y0();
        if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem)) {
            MIMediaInfo miMediaInfo = mediaItem.getMiMediaInfo();
            MIMediaVideoPlayItemInfo miMediaVideoPlayItemInfo = mediaItem.getMiMediaInfo().getMiMediaVideoPlayItemInfo();
            if (miMediaVideoPlayItemInfo != null) {
                this.x.playUri = Uri.parse(miMediaVideoPlayItemInfo.getVideoUrl());
                this.x.duration = miMediaVideoPlayItemInfo.getDuration() * 1000;
                this.x.playPosition = CloudMediaPlayInfoManager.k().l(miMediaInfo.getVideoId()) * 1000;
                this.x.setMiMediaInfo(mediaItem.getMiMediaInfo());
                this.x.getMiMediaInfo().setMIMediaVideoPlayItemInfo(miMediaVideoPlayItemInfo);
            }
        }
        Log.d("VideoPlayManager", "buildCurrentPlayVideoData " + playVideoDataConvertToPlayVideoData);
    }

    public void F1(String str) {
        String str2;
        Log.w("VideoPlayManager", "releasePlayerForMount ");
        MediaItem mediaItem = this.k;
        if (mediaItem == null || (str2 = mediaItem.data) == null || !str2.contains(str)) {
            return;
        }
        this.l.u(false);
        if (this.v == 3) {
            this.F = System.currentTimeMillis();
            ToastUtils.s(R.string.net_media_play_error);
        }
    }

    public int G() {
        if (B0() && this.G) {
            return 4;
        }
        if (this.G) {
            return 3;
        }
        if (this.I) {
            return 0;
        }
        return this.K ? 1 : 2;
    }

    public final void G0(AudioTrack audioTrack) {
        LogUtils.v("VideoPlayManager", "select audio track result:" + audioTrack.audioId + " " + this.l.x(audioTrack.audioId));
    }

    public void G1() {
        H1(false);
    }

    public void H1(boolean z) {
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.C(z);
        }
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.V;
        if (interfaceC0245b != null) {
            interfaceC0245b.a(true, z);
        }
    }

    public void I(Context context) {
        Log.d("VideoPlayManager", "checkVideoService " + this.b);
        if (this.b == null) {
            D(context);
        }
    }

    public final boolean I0(Message message) {
        int i = message.what;
        if (i == 1) {
            VideosService videosService = this.b;
            if (videosService != null && !videosService.w() && this.f == 0) {
                Log.w("VideoPlayManager", "service stopSelf");
                this.b.stopSelf();
            }
        } else if (i == 2) {
            int iG0 = g0();
            Log.i("VideoPlayManager", "CHECK_PREPARE_TIMEOUT: current state = " + iG0 + ", isMusicMode = " + this.G);
            if (this.G && (iG0 == 0 || iG0 == 1)) {
                o0();
            }
        }
        return true;
    }

    public void I1(e eVar) {
        if (eVar == null) {
            return;
        }
        for (int size = this.i.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.i.get(size)).get() == eVar) {
                this.i.remove(size);
            }
        }
    }

    public final void J() {
        this.t = -1;
        this.u = null;
    }

    public final void J0() {
        this.l.i(true);
    }

    public void J1() {
        this.j.setRepeat(w6c.a(this.o) == 1);
        this.l.g();
    }

    public synchronized boolean K() {
        boolean z;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.F;
        z = jCurrentTimeMillis >= 0 && jCurrentTimeMillis <= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
        if (z) {
            this.F = 0L;
        }
        return z;
    }

    public void K1(MIMediaInfo mIMediaInfo, MediaItem mediaItem, boolean z, boolean z2) {
        if (mIMediaInfo == null) {
            Log.e("VideoPlayManager", "requestMIMediaVideoPlayInfo meidaInfo null");
            m1(null, mediaItem, z, z2);
            return;
        }
        String videoId = mIMediaInfo.getVideoId();
        if (videoId != null) {
            CloudMediaPlayInfoManager.k().m(videoId, new b(mediaItem, z, z2));
        } else {
            Log.e("VideoPlayManager", "requestMIMediaVideoPlayInfo videoId null");
            m1(null, mediaItem, z, z2);
        }
    }

    public Object L(int i, Object obj) {
        return this.l.k(i, obj);
    }

    public void L1() {
        this.l.reset();
        Y1(false);
        this.G = false;
    }

    public void M() {
        W0(this.k, false);
        H1(true);
        this.l.pause(true);
    }

    public final void M0() {
        A1();
        this.l.d(true);
    }

    public void M1(List list) {
        PlayListData playListData;
        if (this.x == null && (playListData = this.j) != null && playListData.playMediaItem() != null) {
            MediaItem mediaItemPlayMediaItem = this.j.playMediaItem();
            if (mediaItemPlayMediaItem.playPosition <= 0 && list != null && !list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    MediaItem mediaItem = (MediaItem) it.next();
                    if (mediaItem.equals(mediaItemPlayMediaItem)) {
                        Log.i("VideoPlayManager", "restorePlayVideoData position: " + mediaItem.playPosition);
                        mediaItemPlayMediaItem.playPosition = mediaItem.playPosition;
                        break;
                    }
                }
            }
            F(mediaItemPlayMediaItem);
        }
        Log.i("VideoPlayManager", "restorePlayVideoData " + this.x);
    }

    public int N() {
        int iB = this.l.B();
        LogUtils.v("VideoPlayManager", "getAudioTrack:" + iB);
        return iB;
    }

    public void N1(final AudioTrack audioTrack) {
        String str;
        if (("saveAudioTrackInfo:" + audioTrack) == null) {
            str = "AudioTrack is null";
        } else {
            str = audioTrack.name + " " + audioTrack.audioId + " " + audioTrack.id;
        }
        LogUtils.v("VideoPlayManager", str);
        mc7.K(audioTrack).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayManager.Q0(audioTrack, (AudioTrack) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public int O() {
        return this.l.j();
    }

    public final void O0(MediaItem mediaItem, boolean z, boolean z2, MediaItem mediaItem2) {
        LogUtils.v("playVideoItemDirect: " + mediaItem2);
        Uri uri = mediaItem.uri;
        if ((uri == null || r0a.i(uri.toString())) && !hk3.a(mediaItem.title)) {
            ToastUtils.s(R.string.video_format_not_support);
        } else {
            srb.a.b(this.o.getString(R.string.visha_playing_cloud_file));
        }
        x1(mediaItem2, z, z2);
    }

    public final void O1(MediaItem mediaItem) {
        if (mediaItem != null) {
            int i = mediaItem.id;
            long j = mediaItem.bucketId;
            PlayVideoData playVideoData = this.x;
            final MediaItemClone mediaItemClone = new MediaItemClone(i, j, playVideoData.isVirtualFolder, playVideoData.virtualFolderMatchName);
            ThreadUtils.f(new ThreadUtils.Task<Void>() {
                @Override
                public void onCancel() {
                }

                @Override
                public void onFail(Throwable th) {
                }

                @Override
                public void onSuccess(Void r1) {
                }

                @Override
                public Void doInBackground() throws Throwable {
                    w6c.w(VideoPlayManager.this.o, "play_item", mediaItemClone);
                    return null;
                }
            });
        }
    }

    public List P() {
        return this.l.A();
    }

    public void P1(long j) {
        MediaItem mediaItem = this.k;
        if (mediaItem != null) {
            mediaItem.playPosition = (int) j;
        }
    }

    public final void Q(Uri uri) {
        com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b = this.V;
        if (interfaceC0245b != null) {
            interfaceC0245b.b(uri);
        }
    }

    public void Q1(int i) {
        this.l.seekTo(i);
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.seekTo(i);
            }
        }
    }

    public MediaItem R() {
        return this.j.playMediaItem();
    }

    public final void R0(final int i) {
        Log.d("VideoPlayManager", "loadAudioTrackRecord " + i);
        mc7.K(Integer.valueOf(i)).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return VideoPlayManager.F0(i, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.G0((AudioTrack) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                VideoPlayManager.H0((Throwable) obj);
            }
        });
    }

    public boolean R1(int i) {
        LogUtils.v("VideoPlayManager", "setAudioTrack:" + i);
        return this.l.x(i);
    }

    public int S() {
        return this.l.getCurrentPosition();
    }

    public void S0() {
        this.s = true;
        MediaItem mediaItemR = R();
        if (mediaItemR == null || (mediaItemR.id <= 0 && TextUtils.isEmpty(mediaItemR.data))) {
            mediaItemR = this.j.playMediaItem();
        }
        if (mediaItemR == null) {
            J();
        } else {
            this.t = mediaItemR.id;
            this.u = mediaItemR.data;
        }
    }

    public void S1(SurfaceHolder surfaceHolder, boolean z) {
        Log.e("VideoPlayManager", "setDisplay " + surfaceHolder + ", " + z);
        this.l.O(surfaceHolder, z);
    }

    public PlayVideoData T() {
        PlayVideoData playVideoData = this.x;
        if (playVideoData == null) {
            return null;
        }
        playVideoData.playPosition = this.l.getCurrentPosition();
        playVideoData.setShowPicInPic(x0());
        if (!playVideoData.isKt() && !MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData)) {
            playVideoData.setNeedRecordVideoStates(true);
        }
        playVideoData.isMusicMode = y0();
        return playVideoData;
    }

    public final void T0(boolean z) {
        if (z) {
            this.E = System.currentTimeMillis();
        } else if (this.E != 0) {
            oz5.a.c(this.x, ((int) (System.currentTimeMillis() - this.E)) / 1000);
            this.E = 0L;
        }
    }

    public void T1(boolean z) {
        this.l.N(z);
    }

    public String U() {
        PlayVideoData playVideoData = this.x;
        return playVideoData == null ? "" : playVideoData.mDisplayName;
    }

    public void U0(MediaItem mediaItem) {
        if (mediaItem != null) {
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            double d2 = mediaItem.size;
            int i = ((int) mediaItem.duration) / 1000;
            String strE = !TextUtils.isEmpty(this.L) ? this.L : p06.e(this.z);
            bundle.putString("name", mediaItem.displayName);
            bundle.putString("play_source", "inner");
            bundle.putDouble("vd_size", d2);
            bundle.putInt("vd_length", i);
            bundle.putString("path", this.x.isFromNet ? mediaItem.originUrl : mediaItem.data);
            bundle.putString("from", strE);
            String str = strE;
            bundle.putInt("play_status_timer", j0());
            bundle.putString("play_status_loop", p06.f());
            bundle.putString("listname", mediaItem.bucketDisplayName);
            bundle.putString("vd_format", mediaItem.mineType);
            bundle.putInt("play_type", this.x.isFromNet ? 1 : 0);
            bundle.putString("asp_ratio", mediaItem.getVideoRatio());
            bundle.putInt("rotate_status", !E0(mediaItem) ? 1 : 0);
            bundle.putInt(PlayVideoData.TAG_FAVORITE, suc.a(this.x.mYoutubeId));
            bundle.putString("equalizer_statue", jrb.e().a ? "on" : "off");
            bundle.putString("resolution", mediaItem.width + "x" + mediaItem.height);
            StringBuilder sb = new StringBuilder();
            sb.append(l0());
            sb.append("");
            bundle.putString("fps", sb.toString());
            bundle.putString("codec", k0());
            bundle.putString("Player core", pp3.d());
            bundle.putString("orisetting", qqb.a(this.o) == 0 ? "system" : "video");
            bundle.putInt("mv_statue", ao.U().e0(mediaItem.displayName) ? 1 : 0);
            VideosService videosService = this.b;
            bundle.putInt("earphone_status", videosService != null ? videosService.q() : 0);
            bundle.putBoolean("new_label", tpb.j0().G(mediaItem));
            trackData.add("name", mediaItem.displayName);
            trackData.add("play_source", "inner");
            trackData.add("vd_size", d2);
            trackData.add("vd_length", i);
            trackData.add("path", this.x.isFromNet ? mediaItem.originUrl : mediaItem.data);
            trackData.add("from", str);
            trackData.add("play_status_timer", j0());
            trackData.add("play_status_loop", p06.f());
            trackData.add("listname", mediaItem.bucketDisplayName);
            trackData.add("vd_format", mediaItem.mineType);
            trackData.add("play_type", this.x.isFromNet ? 1 : 0);
            trackData.add("asp_ratio", mediaItem.getVideoRatio());
            trackData.add("rotate_status", !E0(mediaItem) ? 1 : 0);
            trackData.add(PlayVideoData.TAG_FAVORITE, suc.a(this.x.mYoutubeId));
            VideosService videosService2 = this.b;
            trackData.add("earphone_status", videosService2 != null ? videosService2.q() : 0);
            trackData.add("new_label", tpb.j0().G(mediaItem));
            trackData.add("equalizer_statue", jrb.e().a ? "on" : "off");
            trackData.add("mute_status", this.O ? "on" : "off");
            trackData.add("resolution", mediaItem.width + "x" + mediaItem.height);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(l0());
            sb2.append("");
            trackData.add("fps", sb2.toString());
            trackData.add("codec", k0());
            trackData.add("Player core", pp3.d());
            trackData.add("orisetting", qqb.a(this.o) == 0 ? "system" : "video");
            trackData.add("mv_statue", ao.U().e0(mediaItem.displayName) ? 1 : 0);
            p06.q0(trackData, bundle, "vd_video_play_show", 9324L);
        }
    }

    public void U1(com.transsion.playercommon.player.b.InterfaceC0245b interfaceC0245b) {
        this.V = interfaceC0245b;
    }

    public int V() {
        return this.l.getDuration();
    }

    public final void V0(final MediaItem mediaItem) {
        if (mediaItem == null) {
            Log.e("VideoPlayManager", "markPointMediaItemInBackground null");
        } else {
            TaskExecutor.c(new TaskExecutor.Task<MediaItem>() {
                @Override
                public void onResult(MediaItem mediaItem2) {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public MediaItem onBackground() {
                    VideoPlayManager.this.U0(mediaItem);
                    return null;
                }
            });
        }
    }

    public void V1(boolean z) {
        this.K = z;
        this.l.D(G());
    }

    public int W() {
        return this.l.P();
    }

    public void W0(MediaItem mediaItem, boolean z) {
        if (mediaItem == null) {
            return;
        }
        if (z) {
            this.D = System.currentTimeMillis();
            return;
        }
        if (this.D != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Bundle bundle = new Bundle();
            TrackData trackData = new TrackData();
            int i = ((int) (jCurrentTimeMillis - this.D)) / 1000;
            int i2 = (int) (mediaItem.duration / 1000);
            int iS = S() / 1000;
            int iG = G();
            String strE = !TextUtils.isEmpty(this.L) ? this.L : p06.e(this.z);
            bundle.putInt("org_duration", i2);
            bundle.putInt("stay_duration", i);
            bundle.putInt("end_duration", iS);
            bundle.putString("video_name", mediaItem.title);
            bundle.putString("from", strE);
            bundle.putInt("rotate_status", iG);
            trackData.add("org_duration", i2);
            trackData.add("stay_duration", i);
            trackData.add("end_duration", iS);
            trackData.add("video_name", mediaItem.title);
            trackData.add("from", strE);
            trackData.add("rotate_status", iG);
            p06.q0(trackData, bundle, "vd_video_play_duration", 9324L);
            this.D = System.currentTimeMillis();
        }
    }

    public void W1(boolean z) {
        Log.i("VideoPlayManager", "setIsMusicMode newMode:" + z + StringUtils.COMMA + this.G);
        if (this.G != z) {
            this.G = z;
            m27.d(z && A0());
            com.transsion.playercommon.player.b bVar = this.l;
            if (bVar != null) {
                bVar.h(z);
                this.l.D(G());
            }
            SearchResultAdapter.u = this.G ? this.k : null;
            w6c.r(MainApp.f(), "finished_video_guide", true);
            X().T1(true);
        }
    }

    public void X0() {
        MediaItem mediaItemPlayMediaItem = this.j.playMediaItem();
        x2();
        z2(mediaItemPlayMediaItem);
    }

    public void X1(boolean z) {
        X = z;
    }

    public boolean Y() {
        com.transsion.playercommon.player.b bVar = this.l;
        if (bVar != null) {
            return bVar.F();
        }
        return false;
    }

    public void Y0(boolean z) {
        com.transsion.playercommon.player.b bVar = this.l;
        if (bVar != null) {
            bVar.q(z);
        }
    }

    public void Y1(boolean z) {
        if (this.p != z) {
            this.p = z;
            if (this.G && z) {
                l2();
            }
        }
    }

    public CharSequence Z() {
        MediaItem mediaItemPlayMediaItem = this.j.playMediaItem();
        return mediaItemPlayMediaItem == null ? "" : mediaItemPlayMediaItem.displayName;
    }

    public final void Z0(int i) {
        ThreadUtils.o().removeCallbacks(this.U);
        if (!B0() && (this.v == 6 || !this.B)) {
            Log.w("VideoPlayManager", "onAudioFocusChange return >> mPlayViewResume:" + this.B + ",mPlayerState:" + this.v + ",isRunInBackground:" + B0());
            return;
        }
        if (i != -2 && i != -1) {
            if (i != 1) {
                return;
            }
            if (this.J) {
                ThreadUtils.o().postDelayed(this.U, 200L);
                return;
            } else {
                this.l.i(true);
                return;
            }
        }
        if (!this.w || w6c.c(se.a(), "audio_focus_allow_may_duck", false)) {
            if (this.w) {
                vdb.j("VideoPlayManager", "Player playing with other app, onAudioFocusChange: " + i);
                return;
            }
            return;
        }
        if (i == -1) {
            this.l.pause(true);
        } else {
            this.l.i(false);
        }
        vdb.j("VideoPlayManager", "Player be stopped, onAudioFocusChange: " + i);
        yp.i().q(new Runnable() {
            @Override
            public final void run() {
                this.b.M0();
            }
        });
    }

    public void Z1(boolean z) {
        this.l.Q(z);
        this.l.H(z, this.P);
        this.O = z;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0011  */
    @Override
    public void a(ArrayList arrayList, boolean z) {
        long j;
        MediaItem mediaItem;
        MediaItem mediaItem2;
        PlayVideoData playVideoData = this.x;
        if (playVideoData.isPlayComplete) {
            j = 0;
        } else {
            j = playVideoData.playPosition;
            if (j == playVideoData.duration) {
                j = 0;
            }
        }
        long j2 = j;
        Log.w("VideoPlayManager", "onLoadResult: " + arrayList.size() + ", playVideoData=" + z);
        if (arrayList.isEmpty()) {
            mediaItem = null;
        } else {
            mediaItem = (MediaItem) arrayList.get(0);
            if (mediaItem != null) {
                mediaItem.setPlayPosition((int) j2);
                mediaItem.setUri(mediaItem.getUri());
                Log.d("VideoPlayManager", "onLoadResult: " + mediaItem);
            }
        }
        if (mediaItem == null) {
            Uri uri = this.x.playUri;
            MediaItem mediaItem3 = new MediaItem();
            mediaItem3.setUri(uri);
            PlayVideoData playVideoData2 = this.x;
            mediaItem3.id = playVideoData2.mediaId;
            mediaItem3.data = playVideoData2.path;
            mediaItem3.displayName = playVideoData2.mDisplayName;
            mediaItem3.setMiMediaInfo(playVideoData2.getMiMediaInfo());
            mediaItem2 = mediaItem3;
        } else {
            mediaItem2 = mediaItem;
        }
        this.j.setPlayMediaItem(mediaItem2).selectedPlayMediaItem();
        l1(arrayList);
        J1();
        W0(mediaItem2, true);
        V0(mediaItem2);
        t1(mediaItem2, true, j2, z, false);
    }

    public boolean a0() {
        return this.I;
    }

    public void a1() {
        Log.w("VideoPlayManager", "onDestroy " + this.b);
        this.b = null;
    }

    public void a2(boolean z) {
        Log.d("VideoPlayManager", "setNotificationState " + z);
        this.r = z;
        int iG = G();
        this.l.z(z, iG);
        this.l.D(iG);
    }

    @Override
    public void b(ArrayList arrayList, PlayVideoData playVideoData) {
        Log.w("VideoPlayManager", "onLoadBucketsResult:" + arrayList.size() + ", from=" + playVideoData.getFromSource());
        if (arrayList.isEmpty() && af9.h) {
            h27.c().e(1121, new Object[0]);
        }
        af9.h = false;
        if (!playVideoData.isFromMiniBar || this.j.getPlayList() == null || this.j.getPlayList().isEmpty() || hsb.b() != 4) {
            this.j.setPlayList(arrayList, playVideoData.getFromSource());
        }
        J1();
        B2(true);
        l1(arrayList);
    }

    public PlayListData b0() {
        return this.j;
    }

    public void b1() {
        c1(null);
    }

    public void b2(boolean z) {
        this.I = z;
        int iG = G();
        this.l.D(iG);
        this.l.K(z);
        this.l.z(B0(), iG);
        W0(this.k, false);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003a  */
    @Override
    public void c(Uri uri, boolean z) {
        long j;
        Log.d("VideoPlayManager", "preLoadPlayVideoData: " + this.x);
        A2();
        boolean z2 = (MainApp.k || this.z == 1) ? z : false;
        PlayVideoData playVideoData = this.x;
        if (playVideoData.isPlayComplete) {
            j = 0;
        } else {
            j = playVideoData.playPosition;
            if (j == playVideoData.duration) {
                j = 0;
            }
        }
        Log.d("VideoPlayManager", "preLoadPlayVideoData: " + j);
        long j2 = z2 ? j : 0L;
        PlayVideoData playVideoData2 = this.x;
        n1(new jb8(uri, j2, playVideoData2.isFromNet, playVideoData2.mediaId, playVideoData2.duration));
    }

    public MediaItem c0() {
        return this.k;
    }

    public void c1(final MediaItem mediaItem) {
        if (this.G) {
            final boolean z = this.v == 3;
            TaskExecutor.c(new TaskExecutor.Task<Boolean>() {
                private boolean mHiddenCurrentByArg;
                private boolean mShouldStopMusicMode;
                private boolean mShouldSwitchToNext;

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public Boolean onBackground() {
                    VideoPlayManager.X().b0().filterData();
                    MediaItem mediaItemC0 = VideoPlayManager.this.c0();
                    MediaItem mediaItem2 = mediaItem;
                    if (mediaItem2 != null && mediaItemC0 != null) {
                        int i = mediaItem2.id;
                        boolean z2 = i > 0 && mediaItemC0.id == i;
                        String str = mediaItem2.data;
                        this.mHiddenCurrentByArg = z2 || (str != null && str.equals(mediaItemC0.data));
                    }
                    if (this.mHiddenCurrentByArg) {
                        if (VideoPlayManager.this.j == null || VideoPlayManager.this.j.getPlayList() == null || VideoPlayManager.this.j.getPlayList().size() <= 1 || !VideoPlayManager.this.p0()) {
                            this.mShouldStopMusicMode = true;
                        } else {
                            this.mShouldSwitchToNext = true;
                        }
                        return Boolean.valueOf(this.mShouldSwitchToNext || this.mShouldStopMusicMode);
                    }
                    if (VideoPlayManager.this.k != null && VideoPlayManager.this.k.data != null && !av3.x(VideoPlayManager.this.k.data)) {
                        Log.w("VideoPlayManager", "onHide " + VideoPlayManager.this.k);
                        this.mShouldStopMusicMode = true;
                    }
                    return Boolean.valueOf(this.mShouldSwitchToNext || this.mShouldStopMusicMode);
                }

                @Override
                public void onResult(Boolean bool) {
                    if (!this.mShouldSwitchToNext) {
                        if (this.mShouldStopMusicMode) {
                            h27.c().e(AnalyticsListener.EVENT_PLAYER_RELEASED, new Object[0]);
                            return;
                        }
                        return;
                    }
                    if (z) {
                        VideoPlayManager.this.o1();
                        if (mediaItem != null) {
                            VideoPlayManager.this.j.removeMediaItem(mediaItem, null);
                            return;
                        }
                        return;
                    }
                    MediaItem next = VideoPlayManager.this.j != null ? VideoPlayManager.this.j.getNext() : null;
                    if (mediaItem != null) {
                        VideoPlayManager.this.j.removeMediaItem(mediaItem, null);
                    }
                    if (next == null && VideoPlayManager.this.j != null && VideoPlayManager.this.j.getPlayList() != null && !VideoPlayManager.this.j.getPlayList().isEmpty()) {
                        next = VideoPlayManager.this.j.getPlayList().get(0);
                    }
                    if (next == null) {
                        h27.c().e(AnalyticsListener.EVENT_PLAYER_RELEASED, new Object[0]);
                        return;
                    }
                    VideoPlayManager.this.j.setPlayMediaItem(next).selectedPlayMediaItem();
                    VideoPlayManager.this.z2(next);
                    VideoPlayManager.this.i1(true);
                }
            });
        }
    }

    public void c2(boolean z) {
        this.l.z(z, G());
    }

    public int d0() {
        MediaItem mediaItem = this.k;
        if (mediaItem != null) {
            return mediaItem.playPosition;
        }
        return 0;
    }

    public void d1() {
        Log.d("VideoPlayManager", "onMediaStoreChange");
        PlayVideoData playVideoData = this.x;
        if (playVideoData != null && playVideoData.bucketId < 0) {
            playVideoData.bucketId = this.A;
        }
        this.n.k(playVideoData);
        H();
    }

    public void d2(float f) {
        this.l.l(f);
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        VideosService videosService;
        if (i != 1066 || R() == null) {
            if (i == 1117) {
                if (!this.r || (videosService = this.b) == null) {
                    return;
                }
                videosService.E();
                return;
            }
            if (i == 1138) {
                Z1(this.O);
                return;
            }
            if (i == 1145) {
                VideosService videosService2 = this.b;
                if (videosService2 != null) {
                    videosService2.n();
                    this.l.K(false);
                    return;
                }
                return;
            }
            if (i == 1164) {
                j2(((Integer) objArr[0]).intValue());
                return;
            }
            if (i == 1146) {
                o2(this.x);
            } else if (i == 1027 && this.p && this.G && this.w) {
                p2(true, false);
            }
        }
    }

    @Override
    public void e() {
        PlayVideoData playVideoData = this.x;
        if (playVideoData == null || !LoadDataUtils.m(playVideoData.mediaId)) {
            return;
        }
        R0(this.x.mediaId);
    }

    public PlayVideoData e0() {
        return this.x;
    }

    public void e1() {
        Log.e("VideoPlayManager", "onPlayStatusEnd " + B0() + StringUtils.COMMA + this.G);
        if (B0() || (Build.VERSION.SDK_INT < 31 && this.I)) {
            j1(false);
        }
    }

    public void e2(boolean z) {
        this.J = z;
        this.l.p(z);
    }

    public com.transsion.playercommon.player.b f0() {
        return this.l;
    }

    public void f1(MediaItem mediaItem, boolean z) {
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.B(mediaItem);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onStartChangedPlayItem(mediaItem, z);
            }
        }
    }

    public void f2(long j) {
        this.l.m(j);
    }

    public int g0() {
        return this.l.a();
    }

    public final void g1(jb8 jb8Var, boolean z, boolean z2) {
        Log.i("VideoPlayManager", "openPlayer " + jb8Var);
        f1(PlayListData.getInstance().playMediaItem(), z2);
        if (z) {
            if (!MainApp.k && this.z != 1) {
                jb8Var.b = 0L;
            }
            n1(jb8Var);
        }
        X0();
        B2(true);
        zdc.t(zdc.a);
    }

    public void g2(SurfaceView surfaceView, boolean z) {
        this.l.L(surfaceView, z);
    }

    public ArrayList h0() {
        return this.l.r();
    }

    public void h1(MediaItem mediaItem) {
        ThreadUtils.o().removeCallbacks(this.S);
        if (this.G && mediaItem.isYoutubeUrl && euc.a(this.o)) {
            if (!B0()) {
                ToastUtils.w(this.o.getResources().getString(com.transsion.playercommon.R.string.youtube_listen_toast));
            }
            ThreadUtils.o().postDelayed(this.S, 1500L);
        }
    }

    public void h2(int i) {
        Log.e("VideoPlayManager", "setSubtitleTrack " + i);
        this.l.e(i);
    }

    public AudioTrack i0() {
        return this.l.s();
    }

    public void i1(boolean z) {
        this.l.pause(z);
    }

    public void i2(float f, float f2) {
        this.P = (int) (100.0f * f);
        this.l.setVolume(f, f2);
    }

    public int j0() {
        long jL = w6c.l(Utils.a()) - System.currentTimeMillis();
        if (jL > 0) {
            return (int) (jL / 1000);
        }
        return 0;
    }

    public void j2(int i) {
        this.l.M(i);
        D2(i);
    }

    public String k0() {
        com.transsion.playercommon.player.b bVar = this.l;
        return bVar != null ? bVar.w() : "";
    }

    public final void k1(PlayVideoData playVideoData) {
        Log.d("VideoPlayManager", "playForVideo " + playVideoData + "\nVideosService:" + this.b);
        J();
        this.s = false;
        this.x = playVideoData;
        int i = playVideoData.listFlag;
        this.z = i;
        this.A = (int) playVideoData.bucketId;
        this.l.setFrom(p06.e(i));
        this.L = playVideoData.videoFrom;
        this.j.setPlayListTitle(playVideoData.folderName);
        this.q = playVideoData.needRecordVideoStates;
        this.n.u(this);
        if (!playVideoData.isPrivate) {
            this.n.j(playVideoData);
        } else {
            w1(playVideoData.getMediaItem(), true, true);
            this.j.setPlayMediaItem(playVideoData.getMediaItem());
        }
    }

    public final boolean k2(MediaItem mediaItem, PlayVideoData playVideoData) {
        if (this.t <= 0 && TextUtils.isEmpty(this.u)) {
            return false;
        }
        int i = mediaItem != null ? mediaItem.id : -1;
        String str = mediaItem != null ? mediaItem.data : null;
        if ((i <= 0 || TextUtils.isEmpty(str)) && playVideoData != null) {
            if (i <= 0) {
                i = playVideoData.mediaId;
            }
            if (TextUtils.isEmpty(str)) {
                str = playVideoData.path;
            }
        }
        return (this.t > 0 && i == this.t) || (!TextUtils.isEmpty(this.u) && TextUtils.equals(this.u, str));
    }

    public float l0() {
        com.transsion.playercommon.player.b bVar = this.l;
        if (bVar != null) {
            return bVar.J();
        }
        return 0.0f;
    }

    public void l2() {
        W0(this.k, false);
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.E();
        }
    }

    public Intent m0(Context context, boolean z, boolean z2, boolean z3) {
        return n0(context, z, z2, z3, 0);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x004d A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0002, B:5:0x000c, B:7:0x0043, B:11:0x0055, B:10:0x004d), top: B:15:0x0002 }] */
    public final void m1(MIMediaVideoPlayInfo mIMediaVideoPlayInfo, MediaItem mediaItem, boolean z, boolean z2) {
        if (mIMediaVideoPlayInfo != null) {
            try {
                if (mIMediaVideoPlayInfo.getDataList().isEmpty()) {
                    mediaItem.uri = Uri.parse("no uri");
                } else {
                    MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo = mIMediaVideoPlayInfo.getDataList().get(0);
                    mediaItem.uri = Uri.parse(mIMediaVideoPlayItemInfo.getVideoUrl());
                    mediaItem.duration = mIMediaVideoPlayItemInfo.getDuration() * 1000;
                    mediaItem.playPosition = Math.toIntExact(CloudMediaPlayInfoManager.k().l(mIMediaVideoPlayInfo.getSourceId()) * 1000);
                    if (mediaItem.getMiMediaInfo() != null) {
                        mediaItem.getMiMediaInfo().setMIMediaVideoPlayItemInfo(mIMediaVideoPlayItemInfo);
                    }
                }
            } catch (Exception e2) {
                Log.e("VideoPlayManager", "playMIMediaVideo " + e2);
                return;
            }
        } else {
            mediaItem.uri = Uri.parse("no uri");
        }
        x1(mediaItem, z, z2);
    }

    public final boolean m2(int i) {
        if (s2()) {
            ToastUtils.s(i);
            return true;
        }
        boolean z = S() > 1000 && j1(true);
        Log.i("VideoPlayManager", "skipTheErrorVideo skip:" + z);
        return z;
    }

    public Intent n0(Context context, boolean z, boolean z2, boolean z3, int i) {
        Intent intent = new Intent(context, (Class<?>) VideoPlayerActivity.class);
        intent.setAction("com.transsion.magicshow.OPEN_VIDEO");
        intent.setPackage(se.a().getPackageName());
        PlayVideoData playVideoDataT = T();
        if (playVideoDataT != null) {
            if (i != 0) {
                playVideoDataT.listFlag = i;
            } else if (z2 && playVideoDataT.listFlag != 2) {
                playVideoDataT.listFlag = 2;
            }
            if (z) {
                playVideoDataT.fromBackgroundPlay = false;
                playVideoDataT.isMusicMode = false;
                playVideoDataT.fromPlayAll = false;
                playVideoDataT.mPlayFrom = PlayVideoData.ePlayFrom.INTERNAL.from;
                playVideoDataT.needRecordVideoStates = true;
            }
            playVideoDataT.forceResetPlay = z;
            playVideoDataT.isFromMiniBar = z3;
            playVideoDataT.toIntent(intent);
            LogUtils.j("VideoPlayManager", "getVideoIntent: " + playVideoDataT.toString());
        }
        return intent;
    }

    public final void n1(jb8 jb8Var) {
        if (di1.f().h(this.x)) {
            jb8Var.h = true;
        }
        if (this.G) {
            this.R.removeMessages(2);
            this.R.sendEmptyMessageDelayed(2, 5000L);
            Log.i("VideoPlayManager", "playMedia: Started prepare timeout check for music mode");
        }
        Log.i("VideoPlayManager", "playMedia:" + jb8Var);
        bya.h();
        this.l.R(jb8Var);
        if (jb8Var.d && e07.g(this.o)) {
            ToastUtils.s(R.string.visha_using_data_warning);
        }
    }

    public MediaItem n2() {
        for (int i = 0; i < this.j.mCurrentPlayList.size(); i++) {
            MediaItem mediaItemPlayNext = this.j.playNext();
            if (!mediaItemPlayNext.isYoutubeUrl) {
                return mediaItemPlayNext;
            }
        }
        return null;
    }

    public final void o0() {
        Log.e("VideoPlayManager", "handlePrepareTimeout: Prepare timeout detected in music mode");
        if (!this.j.hasNext()) {
            Log.i("VideoPlayManager", "handlePrepareTimeout: No next track available");
            ToastUtils.s(R.string.cannot_play_video);
            G1();
            return;
        }
        if (S() > 1000) {
            Log.i("VideoPlayManager", "handlePrepareTimeout: Current position > REPLAY_MS, not skipping");
            ToastUtils.s(R.string.cannot_play_video);
            return;
        }
        if (w6c.h(this.o) == 0) {
            Log.i("VideoPlayManager", "handlePrepareTimeout: Repeat mode is auto pause, not skipping");
            ToastUtils.s(R.string.cannot_play_video);
        } else {
            if (this.C > 4) {
                Log.e("VideoPlayManager", "handlePrepareTimeout: Repeat error max reached");
                this.C = 0;
                ToastUtils.s(R.string.cannot_play_video);
                G1();
                return;
            }
            Log.i("VideoPlayManager", "handlePrepareTimeout: Skipping to next track");
            this.C++;
            ToastUtils.s(R.string.cannot_play_video);
            p1(false);
        }
    }

    public void o1() {
        p1(false);
    }

    public void o2(PlayVideoData playVideoData) {
        Log.d("VideoPlayManager", "startPip " + playVideoData);
        if (playVideoData != null) {
            if (X) {
                u1(playVideoData);
                return;
            }
            if (this.b != null) {
                this.l.O(null, false);
                this.b.G(playVideoData);
                this.l.K(true);
                com.transsion.playercommon.player.b bVar = this.l;
                bVar.seekTo(bVar.getCurrentPosition());
                LogUtils.v("VideoPlayManager", "startPip " + this.l.getCurrentPosition());
            }
            l2();
        }
    }

    @Override
    public void onEjected(String str) {
        F1(str);
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
        if (!z && z2) {
            p06.E(this.j.playMediaItem(), 1);
        }
        if (this.G && R().isYoutubeUrl && euc.a(this.o)) {
            i1(true);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onLoadingOnlineVideo(z, z2);
            }
        }
    }

    @Override
    public void onMounted(String str) {
    }

    @Override
    public void onPlayerStateUpdate(int i) {
        this.v = i;
        if (i == 3) {
            this.C = 0;
        }
        if (i != 0 && i != 1) {
            this.R.removeMessages(2);
        }
        boolean z = i == 3;
        Log.d("VideoPlayManager", "onPlayerStateUpdate " + i + " mIsPlaying " + this.w + " isPlaying " + z);
        m27.d(z && this.G);
        if (this.w != z) {
            this.w = z;
            if (z) {
                this.m.f();
                Y1(true);
                com.transsion.playercommon.player.a.a().e(true);
            }
            if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(this.x)) {
                T0(this.w);
            }
            B2(false);
        }
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.onPlayerStateUpdate(i);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onPlayerStateUpdate(i);
            }
        }
        if (i == 6) {
            e1();
        }
    }

    @Override
    public void onSdSwap() {
    }

    @Override
    public void onShowError(int i, int i2) {
        String strE;
        boolean zM2 = m2(i2);
        if ((B0() || this.I) && !zM2) {
            G1();
            ToastUtils.s(i2);
        }
        PlayVideoData playVideoData = this.x;
        boolean z = false;
        if (playVideoData != null && playVideoData.isFromNet) {
            p06.E(this.j.playMediaItem(), 0);
        }
        PlayVideoData playVideoData2 = this.x;
        if (playVideoData2 != null) {
            strE = !TextUtils.isEmpty(playVideoData2.videoFrom) ? this.x.videoFrom : p06.e(this.x.listFlag);
        } else {
            strE = "";
        }
        String str = strE;
        PlayVideoData playVideoData3 = this.x;
        if (playVideoData3 != null && playVideoData3.isFromNet) {
            z = true;
        }
        p06.F(this.j.playMediaItem(), i, k0(), l0(), z, str, this.G ? SettingFragment.SHAKE_ITEM_LISTEN : "video", true);
        if (zM2) {
            return;
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onShowError(i, i2);
            }
        }
    }

    @Override
    public void onSubtitleText(String str) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            e eVar = (e) ((WeakReference) it.next()).get();
            if (eVar != null) {
                eVar.onSubtitleText(str);
            }
        }
    }

    @Override
    public void onUnMounted(String str) {
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        Log.v("VideoPlayManager", "onVideoSizeChanged, width = " + i + ", height = " + i2);
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.onVideoSizeChanged(i, i2);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onVideoSizeChanged(i, i2);
            }
        }
    }

    public boolean p0() {
        return this.j.hasNext();
    }

    public void p1(boolean z) {
        y1();
        W0(this.j.playMediaItem(), false);
        A2();
        if (this.j.hasNext()) {
            MediaItem mediaItemPlayNext = this.j.playNext();
            this.j.setPlayMediaItem(mediaItemPlayNext).selectedPlayMediaItem();
            w1(mediaItemPlayNext, true, z);
        }
    }

    public void p2(boolean z, boolean z2) {
        if (this.x == null) {
            LogUtils.O("triggerPlayOrPause mVideoData is null");
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("triggerPlayOrPause ");
        sb.append(z);
        sb.append("---");
        sb.append(z2);
        sb.append("--");
        MediaItem mediaItem = this.k;
        sb.append(mediaItem == null ? "" : mediaItem.displayName);
        Log.d("VideoPlayManager", sb.toString());
        LogUtils.v("triggerPlayOrPause position: " + this.x.playPosition);
        PlayVideoData playVideoDataT = T();
        if (!z2 || playVideoDataT == null || (!(MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoDataT) || playVideoDataT.isKt()) || V() - S() >= 1000)) {
            this.l.t(z, z2);
        } else {
            this.x.playPosition = 0L;
            this.l.f(true);
        }
    }

    public boolean q0() {
        return this.j.hasNextInList();
    }

    public void q1(boolean z, boolean z2) {
        y1();
        W0(this.j.playMediaItem(), false);
        A2();
        if (this.j.hasNext()) {
            MediaItem mediaItemPlayNext = this.j.playNext();
            if (z2 && this.j.getPlayList().size() == 1) {
                mediaItemPlayNext.playPosition = 0;
            }
            this.j.setPlayMediaItem(mediaItemPlayNext).selectedPlayMediaItem();
            w1(mediaItemPlayNext, true, z);
        }
    }

    public void q2() {
        int iH = w6c.h(this.o);
        if (this.v == 6 && this.j.hasNext() && (iH == 1 || iH == 3)) {
            o1();
        } else if (this.v == -1) {
            r2();
        } else {
            p2(true, !A0());
        }
    }

    public boolean r0() {
        return this.j.hasPrevious();
    }

    public void r1() {
        y1();
        W0(this.j.playMediaItem(), false);
        A2();
        if (this.j.hasPrevious()) {
            MediaItem mediaItemPlayPrevious = this.j.playPrevious();
            this.j.setPlayMediaItem(mediaItemPlayPrevious).selectedPlayMediaItem();
            w1(mediaItemPlayPrevious, true, false);
        }
    }

    public void r2() {
        int iH = w6c.h(this.o);
        Log.d("VideoPlayManager", "triggerPlayPauseFromError " + iH);
        if (iH == 2) {
            v1(this.j.playIndex(), false, false);
        } else if (this.j.hasNext()) {
            o1();
        } else {
            v1(this.j.playIndex(), false, false);
        }
    }

    public boolean s0() {
        return this.j.hasPreviousInList();
    }

    public void s1(boolean z) {
        y1();
        W0(this.j.playMediaItem(), false);
        A2();
        if (this.j.hasPrevious()) {
            MediaItem mediaItemPlayPrevious = this.j.playPrevious();
            if (z && this.j.getPlayList().size() == 1) {
                mediaItemPlayPrevious.playPosition = 0;
            }
            this.j.setPlayMediaItem(mediaItemPlayPrevious).selectedPlayMediaItem();
            w1(mediaItemPlayPrevious, true, false);
        }
    }

    public final boolean s2() {
        if (!this.G || g0() != -1 || S() > 1000 || !this.j.hasNext() || w6c.h(this.o) == 0) {
            return false;
        }
        int i = this.C;
        if (i > 4) {
            Log.e("VideoPlayManager", "trySkipUnplayableTrackInMusicMode repeat error max");
            this.C = 0;
            return false;
        }
        this.C = i + 1;
        p1(false);
        return true;
    }

    public void t1(MediaItem mediaItem, boolean z, long j, boolean z2, boolean z3) {
        Uri uri;
        if (mediaItem == null || (uri = mediaItem.uri) == null) {
            Log.w("VideoPlayManager", "playUri null " + mediaItem);
            return;
        }
        this.y = uri;
        MediaItem mediaItem2 = this.k;
        if (mediaItem2 != null) {
            if (mediaItem2.isYoutubeUrl) {
                uri = Uri.parse(mediaItem2.thumbnailUrl);
            }
            Q(uri);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("playUri playPosition:");
        long j2 = j;
        sb.append(j2);
        sb.append(StringUtils.COMMA);
        sb.append(z);
        sb.append(StringUtils.COMMA);
        sb.append(z2);
        sb.append(", ");
        sb.append(this.y);
        Log.i("VideoPlayManager", sb.toString());
        Uri uri2 = this.y;
        if (!z) {
            j2 = 0;
        }
        g1(new jb8(uri2, j2, this.x.isFromNet, mediaItem.id, mediaItem.duration), z2, z3);
    }

    public void t2(Context context) {
        int i = this.f - 1;
        this.f = i;
        if (i != 0) {
            return;
        }
        if (context.bindService(this.c, this.Q, 1)) {
            context.unbindService(this.Q);
            this.e = false;
        }
        this.R.removeMessages(1);
        this.R.sendEmptyMessageDelayed(1, 300000L);
    }

    public void u0(float f, int i) {
        VideoOpStatus videoOpStatus = this.H;
        videoOpStatus.mAudioVolume = f;
        videoOpStatus.mMusicVolume = Math.round(i * f);
        VideoOpStatus videoOpStatus2 = this.H;
        videoOpStatus2.mMusicMaxVolume = i;
        rtb.k(this.o, videoOpStatus2);
    }

    public void u1(PlayVideoData playVideoData) {
        if (playVideoData == null) {
            Log.e("VideoPlayManager", "playVideo failed, video data is empty");
            return;
        }
        PlayVideoData playVideoData2 = this.x;
        String fromSource = playVideoData2 != null ? playVideoData2.getFromSource() : "";
        Log.d("VideoPlayManager", "playVideo " + playVideoData.toString() + "\nforceResetPlay = " + playVideoData.forceResetPlay + ",mShowNotification = " + this.r + ",isSamePlayVideoData = " + playVideoData.isSamePlayVideoData(this.x) + ",last_list_flag=" + this.z + ",last_list_flag=" + playVideoData.listFlag + ",isInPictureInPictureMode=" + x0() + ",last_video_source=" + fromSource + ",this_video_source=" + playVideoData.getFromSource());
        if (playVideoData.forceResetPlay || !this.r || !playVideoData.isSamePlayVideoData(this.x)) {
            if (this.r) {
                if (this.s) {
                    this.s = false;
                    Log.i("VideoPlayManager", "skip pre-switch record after clear history");
                } else {
                    y1();
                }
            }
            L1();
            k1(playVideoData);
            return;
        }
        if (fromSource.equals(playVideoData.getFromSource())) {
            return;
        }
        Log.d("VideoPlayManager", "playVideo - videoData.listFlag != mListFlag, mListFlag = " + this.z + ",videoData.listFlag = " + playVideoData.listFlag);
        this.z = playVideoData.listFlag;
        this.A = (int) playVideoData.bucketId;
        this.n.k(playVideoData);
    }

    public void u2(c cVar) {
        if (cVar == null) {
            return;
        }
        for (int size = this.h.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.h.get(size)).get() == cVar) {
                this.h.remove(size);
            }
        }
    }

    public boolean v0() {
        return this.B;
    }

    public void v1(int i, boolean z, boolean z2) {
        W0(this.j.playMediaItem(), false);
        A2();
        w1(this.j.setPlayMediaItem(i).selectedPlayMediaItem().playMediaItem(), z, z2);
    }

    public void v2(d dVar) {
        if (dVar == null) {
            return;
        }
        for (int size = this.g.size() - 1; size >= 0; size--) {
            if (((WeakReference) this.g.get(size)).get() == dVar) {
                this.g.remove(size);
            }
        }
    }

    public boolean w0(Activity activity) {
        WeakReference weakReference = this.N;
        return weakReference == null || weakReference.get() == null || ((Activity) this.N.get()).equals(activity);
    }

    public void w1(final MediaItem mediaItem, final boolean z, final boolean z2) {
        if (mediaItem == null) {
            Log.w("VideoPlayManager", "playVideoItem mediaItem null");
            return;
        }
        Log.d("VideoPlayManager", "playVideoItem " + mediaItem);
        if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem)) {
            K1(mediaItem.getMiMediaInfo(), mediaItem, z, z2);
            return;
        }
        if (!mediaItem.isKtFile) {
            if (mediaItem.uri == null && !TextUtils.isEmpty(mediaItem.data)) {
                mediaItem.uri = Uri.parse(mediaItem.data);
            }
            x1(mediaItem, z, z2);
            return;
        }
        String strJ = CloudTaskFinishCacheManager.a.j(mediaItem.data);
        if (strJ == null) {
            mc7.K(mediaItem).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return VideoPlayManager.N0(mediaItem, (MediaItem) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.O0(mediaItem, z, z2, (MediaItem) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    VideoPlayManager.P0((Throwable) obj);
                }
            });
            return;
        }
        LogUtils.v("playVideoItem KtFile localFilePath: " + strJ);
        mediaItem.uri = Uri.parse(strJ);
        ToastUtils.s(R.string.visha_playing_local_file);
        x1(mediaItem, z, z2);
    }

    public void w2(float f) {
        this.H.mScreenBrightness = f;
        VideoOpStatus.defScreenBrightness = f;
    }

    public boolean x0() {
        return X;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0035  */
    public void x1(MediaItem mediaItem, boolean z, boolean z2) {
        long j;
        if (mediaItem == null) {
            Log.w("VideoPlayManager", "playVideoItem mediaItem null");
            return;
        }
        m16.a = System.currentTimeMillis();
        Log.d("VideoPlayManager", "playVideoItemDirect " + mediaItem);
        if (mediaItem.isPlayComplete) {
            j = 0;
        } else {
            int i = mediaItem.playPosition;
            if (i == mediaItem.duration) {
                j = 0;
            } else {
                j = i;
            }
        }
        long j2 = j;
        h1(mediaItem);
        F(mediaItem);
        t1(mediaItem, z, j2, true, z2);
        V0(mediaItem);
    }

    public boolean y0() {
        return this.G;
    }

    public void y1() {
        z1(false);
    }

    public void y2() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onUpdateNotification(this.v);
            }
        }
    }

    public boolean z(String str) {
        return this.l.y(str, true);
    }

    public boolean z0() {
        return this.p;
    }

    public void z1(boolean z) {
        MediaItem mediaItemPlayMediaItem;
        Log.i("VideoPlayManager", "recordVideoStates " + this.x);
        if (this.q) {
            PlayerStates playerStates = new PlayerStates();
            playerStates.currentPosition = this.l.getCurrentPosition();
            playerStates.state = this.v;
            playerStates.subtitles = this.l.r();
            playerStates.subtitleIndex = this.l.C();
            if (z) {
                mediaItemPlayMediaItem = this.k;
                if (mediaItemPlayMediaItem == null || (mediaItemPlayMediaItem.id <= 0 && TextUtils.isEmpty(mediaItemPlayMediaItem.data))) {
                    mediaItemPlayMediaItem = this.j.playMediaItem();
                }
                if (mediaItemPlayMediaItem != null && mediaItemPlayMediaItem.duration == 0) {
                    mediaItemPlayMediaItem.duration = this.l.getDuration();
                }
                h27.c().e(1178, Integer.valueOf(S()));
                P1(playerStates.currentPosition);
            } else {
                mediaItemPlayMediaItem = this.k;
            }
            PlayVideoData playVideoData = this.x;
            if (!k2(mediaItemPlayMediaItem, playVideoData)) {
                TaskExecutor.c(new AnonymousClass4(playVideoData, playerStates, mediaItemPlayMediaItem));
                VishaQuestionnaireManager.c().n();
                return;
            }
            Log.i("VideoPlayManager", "skip old minibBar history record once clear-history target, mediaItem=" + mediaItemPlayMediaItem + ", videoData=" + playVideoData);
        }
    }

    public void z2(MediaItem mediaItem) {
        this.k = mediaItem;
        SearchResultAdapter.u = this.G ? mediaItem : null;
        O1(mediaItem);
        VideosService videosService = this.b;
        if (videosService != null) {
            videosService.A(mediaItem);
        }
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            d dVar = (d) ((WeakReference) it.next()).get();
            if (dVar != null) {
                dVar.onPlayItemChanged(mediaItem);
            }
        }
        Iterator it2 = this.h.iterator();
        while (it2.hasNext()) {
            c cVar = (c) ((WeakReference) it2.next()).get();
            if (cVar != null) {
                cVar.onPlayItemChanged(mediaItem);
            }
        }
    }
}
