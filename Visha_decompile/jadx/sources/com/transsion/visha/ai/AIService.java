package com.transsion.visha.ai;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.visha.ai.AIService;
import com.trassion.vishbtrace.R;
import defpackage.ao;
import defpackage.ek4;
import defpackage.fi1;
import defpackage.jf;
import defpackage.m06;
import defpackage.oa1;
import defpackage.p06;
import defpackage.se;
import defpackage.vmb;
import defpackage.x38;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.json.JSONObject;

public class AIService extends Service {
    public x38 b;
    public AudioRoomDatabase c;
    public String d;
    public String e;
    public String f;
    public IAudioPlayCallback g;
    public IAudioPlayStateCallback h;
    public MusicPlayManager.d i = new a();
    public IAIServiceInterface.Stub j = new IAIServiceInterface.Stub() {

        public class a implements c {
            public final IAudioPlayCallback a;

            public a(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
                AIService.this.C(playAudioData);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class b implements c {
            public final IAudioPlayCallback a;

            public b(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 49);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class c implements c {
            public final IAudioPlayCallback a;

            public c(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 50);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class d implements c {
            public final IAudioPlayCallback a;

            public d(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 51);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class e implements c {
            public final IAudioPlayCallback a;
            public final PlayList b;

            public e(IAudioPlayCallback iAudioPlayCallback, PlayList playList) {
                this.a = iAudioPlayCallback;
                this.b = playList;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.y(list, 52, this.b.id);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class f implements c {
            public final IAudioPlayCallback a;

            public f(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 42);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class g implements c {
            public final IAudioPlayCallback a;

            public g(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 43);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class h implements c {
            public final IAudioPlayCallback a;

            public h(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 44);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class i implements c {
            public final IAudioPlayCallback a;

            public i(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 45);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class j implements c {
            public final IAudioPlayCallback a;

            public j(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 46);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class k implements c {
            public final IAudioPlayCallback a;

            public k(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 47);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class l implements c {
            public final IAudioPlayCallback a;

            public l(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
            }

            @Override
            public void b(List list) {
                AIService.this.x(list, 48);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        public class m implements c {
            public final IAudioPlayCallback a;

            public m(IAudioPlayCallback iAudioPlayCallback) {
                this.a = iAudioPlayCallback;
            }

            @Override
            public void a(PlayAudioData playAudioData) {
                AIService.this.C(playAudioData);
            }

            @Override
            public void onError(String str) {
                AIService.this.s(this.a, 1001);
                AIService.this.D();
            }
        }

        @Override
        public void registerAudioPlayListener(IAudioPlayStateCallback iAudioPlayStateCallback) throws RemoteException {
            AIService.this.h = iAudioPlayStateCallback;
        }

        @Override
        public void searchAudioData(String str, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
            AIServiceManager.n().v(str, iAudioPlayCallback);
        }

        @Override
        public void startAudioActivity(AudioData audioData, IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
            AIServiceManager.n().l(audioData, iAudioPlayCallback);
        }

        @Override
        public void startPlay(String str, final IAudioPlayCallback iAudioPlayCallback) throws RemoteException {
            try {
                m06.b();
                AIService.this.g = iAudioPlayCallback;
                AIModel aIModel = !TextUtils.isEmpty(str) ? (AIModel) ek4.d(new JSONObject(str).optString("intent"), AIModel.class) : null;
                if (!TextUtils.isEmpty(str) && aIModel != null && aIModel.getParam() != null && (!TextUtils.isEmpty(aIModel.getParam().getAlbumName()) || !TextUtils.isEmpty(aIModel.getParam().getMusicName()) || !TextUtils.isEmpty(aIModel.getParam().getSingerName()) || !TextUtils.isEmpty(aIModel.getParam().getSource()))) {
                    if (aIModel.getParam() == null) {
                        m06.a("");
                        AIService.this.s(iAudioPlayCallback, 1002);
                        return;
                    }
                    if (!aIModel.getParam().getMusicName().isEmpty() && aIModel.getParam().getSource().isEmpty() && aIModel.getParam().getAlbumName().isEmpty() && aIModel.getParam().getSingerName().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getMusicName(), ""));
                        AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 42, new f(iAudioPlayCallback));
                        return;
                    }
                    if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSingerName().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getMusicName(), aIModel.getParam().getSingerName()));
                        AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 43, new g(iAudioPlayCallback));
                        return;
                    }
                    if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getAlbumName().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getMusicName(), aIModel.getParam().getAlbumName()));
                        AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 44, new h(iAudioPlayCallback));
                        return;
                    }
                    if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSource().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getMusicName(), aIModel.getParam().getSource()));
                        if (aIModel.getParam().getSource().equals(AIService.this.d)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 45, new i(iAudioPlayCallback));
                            return;
                        }
                        if (aIModel.getParam().getSource().equals(AIService.this.e)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 46, new j(iAudioPlayCallback));
                            return;
                        }
                        if (aIModel.getParam().getSource().equals(AIService.this.f)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 47, new k(iAudioPlayCallback));
                            return;
                        }
                        for (PlayList playList : AIService.this.b.getPlayListListForService(oa1.e())) {
                            if (aIModel.getParam().getSource().equals(playList.name)) {
                                AIService.this.v(playList, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 48, new l(iAudioPlayCallback));
                                return;
                            }
                        }
                    }
                    if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSingerName().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getSingerName(), ""));
                        if (MusicPlayManager.S().P() == null || MusicPlayManager.S().P().artistName == null || !aIModel.getParam().getSingerName().equals(MusicPlayManager.S().P().artistName) || MusicPlayManager.S().b0() != 3) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 26, new m(iAudioPlayCallback));
                            return;
                        }
                        PlayAudioData playAudioDataO = MusicPlayManager.S().O();
                        playAudioDataO.autoPlay = true;
                        playAudioDataO.listFlag = 26;
                        AIService.this.C(playAudioDataO);
                        return;
                    }
                    if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getAlbumName().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getAlbumName(), ""));
                        if (!aIModel.getParam().getAlbumName().equals(MusicPlayManager.S().P().albumName) || MusicPlayManager.S().b0() != 3) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 25, new a(iAudioPlayCallback));
                            return;
                        }
                        PlayAudioData playAudioDataO2 = MusicPlayManager.S().O();
                        playAudioDataO2.autoPlay = true;
                        playAudioDataO2.listFlag = 25;
                        AIService.this.C(playAudioDataO2);
                        return;
                    }
                    if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSource().isEmpty()) {
                        m06.a(AIService.this.r(aIModel.getParam().getSource(), ""));
                        if (aIModel.getParam().getSource().equals(AIService.this.d)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 49, new b(iAudioPlayCallback));
                            return;
                        }
                        if (aIModel.getParam().getSource().equals(AIService.this.e)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 50, new c(iAudioPlayCallback));
                            return;
                        }
                        if (aIModel.getParam().getSource().equals(AIService.this.f)) {
                            AIService.this.v(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 51, new d(iAudioPlayCallback));
                            return;
                        }
                        for (PlayList playList2 : AIService.this.b.getPlayListListForService(oa1.e())) {
                            if (aIModel.getParam().getSource().equals(playList2.name)) {
                                AIService.this.v(playList2, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 52, new e(iAudioPlayCallback, playList2));
                                return;
                            }
                        }
                    }
                    AIService.this.s(iAudioPlayCallback, 1002);
                    return;
                }
                m06.a("");
                if (MusicPlayManager.S().b0() == 3) {
                    AIService.this.C(MusicPlayManager.S().O());
                } else {
                    TaskExecutor.c(new TaskExecutor.Task<PlayAudioData>() {
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override
                        public PlayAudioData onBackground() {
                            PlayAudioData playAudioDataO3 = MusicPlayManager.S().O();
                            if (playAudioDataO3 == null) {
                                String strL = MMKV.p().l("music_playing");
                                if (!TextUtils.isEmpty(strL)) {
                                    playAudioDataO3 = PlayAudioData.convertToPlayAudioData((AudioItem) fi1.b(strL, AudioItem.class));
                                }
                            }
                            if (playAudioDataO3 != null) {
                                return playAudioDataO3;
                            }
                            List listU = ao.U().u(null, null, null, 21, null);
                            return !listU.isEmpty() ? PlayAudioData.convertToPlayAudioData((AudioItem) listU.get(0)) : playAudioDataO3;
                        }

                        @Override
                        public void onResult(PlayAudioData playAudioData) {
                            if (playAudioData == null) {
                                AIService.this.s(iAudioPlayCallback, 1001);
                                AIService.this.D();
                            } else {
                                playAudioData.listFlag = 21;
                                playAudioData.autoPlay = true;
                                playAudioData.sourceAction = p06.y(21, ao.U().f0(PlayAudioData.convertToPlayAudioItem(playAudioData)));
                                AIService.this.C(playAudioData);
                            }
                        }
                    });
                }
            } catch (Exception e2) {
                AIService.this.s(iAudioPlayCallback, 1003);
                e2.printStackTrace();
            }
        }

        @Override
        public void startVideoMainActivity() throws RemoteException {
            AIService.this.D();
        }
    };

    public class a implements MusicPlayManager.d {
        public a() {
        }

        @Override
        public void onPlayerStateUpdate(int i) {
            StateValue stateValue = new StateValue();
            stateValue.state = i;
            if (i == 2 || i == 3) {
                stateValue.stateStr = "播放中";
            } else if (i == 4) {
                stateValue.stateStr = "暂停";
            } else if (i != 5) {
                stateValue.stateStr = "未知";
            } else {
                stateValue.stateStr = "停止";
            }
            try {
                if (AIService.this.h != null) {
                    AIService.this.h.onPlayerStateUpdate(stateValue);
                }
            } catch (Exception unused) {
            }
        }

        @Override
        public void onShowError(int i, int i2) {
            StateValue stateValue = new StateValue();
            stateValue.errorCode = i;
            stateValue.errorMessage = "audio播放异常";
            try {
                if (AIService.this.h != null) {
                    AIService.this.h.onError(stateValue);
                }
            } catch (Exception unused) {
            }
        }
    }

    public class b implements c {
        public final c a;
        public final int b;

        public b(c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            if (list == null || list.isEmpty()) {
                c cVar = this.a;
                if (cVar != null) {
                    cVar.onError("");
                    return;
                }
                return;
            }
            PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0));
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.listFlag = this.b;
            c cVar2 = this.a;
            if (cVar2 != null) {
                cVar2.a(playAudioDataConvertToPlayAudioData);
                this.a.b(list);
            }
        }

        @Override
        public void onError(String str) {
            c cVar = this.a;
            if (cVar != null) {
                cVar.onError(str);
            }
        }
    }

    public interface c {
        void a(PlayAudioData playAudioData);

        default void b(List list) {
        }

        void onError(String str);
    }

    public static void A(List list, ArrayList arrayList, final PlayListMedia playListMedia) {
        try {
            arrayList.add((AudioItem) list.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AIService.z(playListMedia, (AudioItem) obj);
                }
            }).findFirst().get());
        } catch (NoSuchElementException unused) {
            if (list.isEmpty()) {
                return;
            }
            AudioRoomDatabase.f(Utils.a()).e().deletePlayListMedia(playListMedia);
        }
    }

    public static boolean z(PlayListMedia playListMedia, AudioItem audioItem) {
        return audioItem.id == playListMedia.media_id;
    }

    public final void C(PlayAudioData playAudioData) {
        if (playAudioData == null) {
            return;
        }
        if (jf.g() instanceof AudioPlayerActivity) {
            ((AudioPlayerActivity) jf.g()).finish();
        }
        t(0, "开始跳转至音频播放页面");
        AudioPlayerActivity.E1(this, playAudioData, true);
    }

    public final void D() {
        Intent intent = new Intent("com.transsion.magicmovie.video_player_main_activity");
        RouterBean.RouterData routerData = new RouterBean.RouterData(1, 0, getResources().getString(R.string.no_song));
        intent.putExtra(RouterUtils.FROM_ROUTER, true);
        Bundle bundle = new Bundle();
        bundle.putParcelable(RouterUtils.ROUTER_DATA, routerData);
        intent.putExtra(RouterUtils.ROUTER_DATA, bundle);
        intent.setFlags(268435456);
        intent.setPackage(se.a().getPackageName());
        startActivity(intent);
    }

    @Override
    public IBinder onBind(Intent intent) {
        return this.j;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        AudioRoomDatabase audioRoomDatabaseF = AudioRoomDatabase.f(Utils.a());
        this.c = audioRoomDatabaseF;
        this.b = audioRoomDatabaseF.d();
        this.d = getResources().getString(R.string.recently_played);
        this.e = getResources().getString(R.string.favorites);
        this.f = getResources().getString(R.string.recent_add);
        MusicPlayManager.S().f1(this.i);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        MusicPlayManager.S().F1(this.i);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    public final String r(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return str + "_" + str2;
    }

    public final void s(IAudioPlayCallback iAudioPlayCallback, int i) {
        try {
            m06.c("fail");
            if (iAudioPlayCallback != null) {
                iAudioPlayCallback.onError(new StateValue(i, ""));
            }
        } catch (Exception unused) {
        }
    }

    public final void t(int i, String str) {
        try {
            m06.c("success");
            StateValue stateValue = new StateValue();
            stateValue.state = i;
            stateValue.stateStr = str;
            IAudioPlayCallback iAudioPlayCallback = this.g;
            if (iAudioPlayCallback != null) {
                iAudioPlayCallback.onSuccess(stateValue);
            }
        } catch (Exception unused) {
        }
    }

    public final void u(final List list, c cVar) {
        try {
            final ArrayList arrayList = new ArrayList();
            ((ArrayList) AudioRoomDatabase.f(Utils.a()).e().getAllAudioViewRecord(oa1.e())).stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AIService.A(list, arrayList, (PlayListMedia) obj);
                }
            });
            if (cVar != null) {
                cVar.b(arrayList);
            }
        } catch (Exception e) {
            vmb.d("AIService", "过滤播放历史异常", e);
            if (cVar != null) {
                cVar.onError("过滤播放历史异常: " + e.getMessage());
            }
        }
    }

    public final void v(final PlayList playList, final String str, final String str2, final String str3, final int i, final c cVar) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.B(playList, str, str2, str3, i, cVar);
            }
        });
    }

    public final void B(PlayList playList, String str, String str2, String str3, int i, c cVar) {
        try {
            List listU = ao.U().u(str, str2, str3, i, Long.valueOf(playList != null ? playList.id : 0L));
            if (listU.isEmpty()) {
                if (cVar != null) {
                    cVar.onError("");
                    return;
                }
                return;
            }
            if (i != 49 && i != 45) {
                PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData((AudioItem) listU.get(0));
                playAudioDataConvertToPlayAudioData.autoPlay = true;
                playAudioDataConvertToPlayAudioData.listFlag = i;
                if (cVar != null) {
                    cVar.a(playAudioDataConvertToPlayAudioData);
                    cVar.b(listU);
                    return;
                }
                return;
            }
            u(listU, new b(cVar, i));
        } catch (Exception e) {
            vmb.d("AIService", "查询音频数据异常", e);
            if (cVar != null) {
                cVar.onError("查询音频数据异常: " + e.getMessage());
            }
        }
    }

    public final void x(List list, int i) {
        PlayAudioData playAudioDataConvertToPlayAudioData;
        if (list == null || list.isEmpty()) {
            D();
            return;
        }
        if (MusicPlayManager.S().b0() == 3) {
            AudioItem audioItemP = MusicPlayManager.S().P();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (audioItem.id == audioItemP.id && (playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem)) != null) {
                    playAudioDataConvertToPlayAudioData.listFlag = i;
                    C(playAudioDataConvertToPlayAudioData);
                    return;
                }
            }
        }
        PlayAudioData playAudioDataConvertToPlayAudioData2 = PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0));
        playAudioDataConvertToPlayAudioData2.listFlag = i;
        C(playAudioDataConvertToPlayAudioData2);
    }

    public final void y(List list, int i, int i2) {
        PlayAudioData playAudioDataConvertToPlayAudioData;
        if (list == null || list.isEmpty()) {
            D();
            return;
        }
        if (MusicPlayManager.S().b0() == 3) {
            AudioItem audioItemP = MusicPlayManager.S().P();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (audioItem.id == audioItemP.id && (playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem)) != null) {
                    playAudioDataConvertToPlayAudioData.listFlag = i;
                    playAudioDataConvertToPlayAudioData.playListId = i2;
                    C(playAudioDataConvertToPlayAudioData);
                    return;
                }
            }
        }
        C(PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0)));
    }
}
