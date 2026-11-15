package com.transsion.visha.ai;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.audio.activities.AudioPlayerActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.visha.ai.AIServiceManager;
import com.trassion.vishbtrace.R;
import defpackage.ao;
import defpackage.ek4;
import defpackage.fi1;
import defpackage.jf;
import defpackage.m06;
import defpackage.oa1;
import defpackage.p06;
import defpackage.vmb;
import defpackage.x38;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.json.JSONObject;

public class AIServiceManager {
    public static volatile AIServiceManager f;
    public String a = Utils.a().getResources().getString(R.string.recently_played);
    public String b = Utils.a().getResources().getString(R.string.favorites);
    public String c = Utils.a().getResources().getString(R.string.recent_add);
    public x38 d;
    public AudioRoomDatabase e;

    public class a implements AIService.c {
        public final IAudioPlayCallback a;

        public a(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
            AIServiceManager.this.i(this.a, playAudioData);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class b implements AIService.c {
        public final IAudioPlayCallback a;

        public b(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 49);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class c implements AIService.c {
        public final IAudioPlayCallback a;

        public c(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 50);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class d implements AIService.c {
        public final IAudioPlayCallback a;

        public d(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 51);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class e implements AIService.c {
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
            AIServiceManager.this.r(this.a, list, 52, this.b.id);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class f implements AIService.c {
        public final AIService.c a;
        public final int b;

        public f(AIService.c cVar, int i) {
            this.a = cVar;
            this.b = i;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            if (list == null || list.isEmpty()) {
                AIService.c cVar = this.a;
                if (cVar != null) {
                    cVar.onError("");
                    return;
                }
                return;
            }
            PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0));
            playAudioDataConvertToPlayAudioData.autoPlay = true;
            playAudioDataConvertToPlayAudioData.listFlag = this.b;
            AIService.c cVar2 = this.a;
            if (cVar2 != null) {
                cVar2.a(playAudioDataConvertToPlayAudioData);
                this.a.b(list);
            }
        }

        @Override
        public void onError(String str) {
            AIService.c cVar = this.a;
            if (cVar != null) {
                cVar.onError(str);
            }
        }
    }

    public class g implements AIService.c {
        public final IAudioPlayCallback a;

        public g(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 42);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class h implements AIService.c {
        public final IAudioPlayCallback a;

        public h(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 43);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class i implements AIService.c {
        public final IAudioPlayCallback a;

        public i(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 44);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class j implements AIService.c {
        public final IAudioPlayCallback a;

        public j(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 45);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class k implements AIService.c {
        public final IAudioPlayCallback a;

        public k(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 46);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class l implements AIService.c {
        public final IAudioPlayCallback a;

        public l(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 47);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class m implements AIService.c {
        public final IAudioPlayCallback a;

        public m(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
        }

        @Override
        public void b(List list) {
            AIServiceManager.this.q(this.a, list, 48);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public class n implements AIService.c {
        public final IAudioPlayCallback a;

        public n(IAudioPlayCallback iAudioPlayCallback) {
            this.a = iAudioPlayCallback;
        }

        @Override
        public void a(PlayAudioData playAudioData) {
            AIServiceManager.this.i(this.a, playAudioData);
        }

        @Override
        public void onError(String str) {
            AIServiceManager.this.g(this.a);
        }
    }

    public AIServiceManager() {
        AudioRoomDatabase audioRoomDatabaseF = AudioRoomDatabase.f(Utils.a());
        this.e = audioRoomDatabaseF;
        this.d = audioRoomDatabaseF.d();
    }

    public static AIServiceManager n() {
        if (f == null) {
            synchronized (AIServiceManager.class) {
                try {
                    if (f == null) {
                        f = new AIServiceManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f;
    }

    public static boolean s(PlayListMedia playListMedia, AudioItem audioItem) {
        return audioItem.id == playListMedia.media_id;
    }

    public static void t(List list, ArrayList arrayList, final PlayListMedia playListMedia) {
        try {
            arrayList.add((AudioItem) list.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AIServiceManager.s(playListMedia, (AudioItem) obj);
                }
            }).findFirst().get());
        } catch (NoSuchElementException unused) {
            if (list.isEmpty()) {
                return;
            }
            AudioRoomDatabase.f(Utils.a()).e().deletePlayListMedia(playListMedia);
        }
    }

    public final String f(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return str + "_" + str2;
    }

    public void g(IAudioPlayCallback iAudioPlayCallback) {
        if (iAudioPlayCallback != null) {
            try {
                iAudioPlayCallback.onSearched(new StateValue(1001, "没有找到对应的音频资源"), null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void h(IAudioPlayCallback iAudioPlayCallback, int i2) {
        if (iAudioPlayCallback != null) {
            try {
                iAudioPlayCallback.onSearched(new StateValue(i2, "没有找到对应的音频资源"), null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void i(IAudioPlayCallback iAudioPlayCallback, PlayAudioData playAudioData) {
        if (iAudioPlayCallback != null) {
            try {
                iAudioPlayCallback.onSearched(new StateValue(0, ""), new AudioData(playAudioData));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void j(IAudioPlayCallback iAudioPlayCallback) {
        if (iAudioPlayCallback != null) {
            try {
                iAudioPlayCallback.onSuccess(new StateValue(0, "开始跳转至音频播放页面"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void k(IAudioPlayCallback iAudioPlayCallback) {
        if (iAudioPlayCallback != null) {
            try {
                iAudioPlayCallback.onSearched(new StateValue(1002, "传入的参数错误"), null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void l(AudioData audioData, IAudioPlayCallback iAudioPlayCallback) {
        if (audioData == null || audioData.getData() == null) {
            k(iAudioPlayCallback);
        }
        w(audioData.getData(), iAudioPlayCallback);
    }

    public final void m(final List list, AIService.c cVar) {
        try {
            final ArrayList arrayList = new ArrayList();
            ((ArrayList) AudioRoomDatabase.f(Utils.a()).e().getAllAudioViewRecord(oa1.e())).stream().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AIServiceManager.t(list, arrayList, (PlayListMedia) obj);
                }
            });
            if (cVar != null) {
                cVar.b(arrayList);
            }
        } catch (Exception e2) {
            vmb.d("AIServiceManager", "过滤播放历史异常", e2);
            if (cVar != null) {
                cVar.onError("过滤播放历史异常: " + e2.getMessage());
            }
        }
    }

    public final void o(final PlayList playList, final String str, final String str2, final String str3, final int i2, final AIService.c cVar) {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                this.b.u(playList, str, str2, str3, i2, cVar);
            }
        });
    }

    public final void u(PlayList playList, String str, String str2, String str3, int i2, AIService.c cVar) {
        try {
            List listU = ao.U().u(str, str2, str3, i2, Long.valueOf(playList != null ? playList.id : 0L));
            if (listU.isEmpty()) {
                if (cVar != null) {
                    cVar.onError("");
                    return;
                }
                return;
            }
            if (i2 != 49 && i2 != 45) {
                PlayAudioData playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData((AudioItem) listU.get(0));
                playAudioDataConvertToPlayAudioData.autoPlay = true;
                playAudioDataConvertToPlayAudioData.listFlag = i2;
                if (cVar != null) {
                    cVar.a(playAudioDataConvertToPlayAudioData);
                    cVar.b(listU);
                    return;
                }
                return;
            }
            m(listU, new f(cVar, i2));
        } catch (Exception e2) {
            vmb.d("AIServiceManager", "查询音频数据异常", e2);
            if (cVar != null) {
                cVar.onError("查询音频数据异常: " + e2.getMessage());
            }
        }
    }

    public final void q(IAudioPlayCallback iAudioPlayCallback, List list, int i2) {
        PlayAudioData playAudioDataConvertToPlayAudioData;
        if (list == null || list.isEmpty()) {
            g(iAudioPlayCallback);
            return;
        }
        if (MusicPlayManager.S().b0() == 3) {
            AudioItem audioItemP = MusicPlayManager.S().P();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (audioItem.id == audioItemP.id && (playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem)) != null) {
                    playAudioDataConvertToPlayAudioData.listFlag = i2;
                    i(iAudioPlayCallback, playAudioDataConvertToPlayAudioData);
                    return;
                }
            }
        }
        PlayAudioData playAudioDataConvertToPlayAudioData2 = PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0));
        playAudioDataConvertToPlayAudioData2.listFlag = i2;
        i(iAudioPlayCallback, playAudioDataConvertToPlayAudioData2);
    }

    public final void r(IAudioPlayCallback iAudioPlayCallback, List list, int i2, int i3) {
        PlayAudioData playAudioDataConvertToPlayAudioData;
        if (list == null || list.isEmpty()) {
            g(iAudioPlayCallback);
            return;
        }
        if (MusicPlayManager.S().b0() == 3) {
            AudioItem audioItemP = MusicPlayManager.S().P();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AudioItem audioItem = (AudioItem) it.next();
                if (audioItem.id == audioItemP.id && (playAudioDataConvertToPlayAudioData = PlayAudioData.convertToPlayAudioData(audioItem)) != null) {
                    playAudioDataConvertToPlayAudioData.listFlag = i2;
                    playAudioDataConvertToPlayAudioData.playListId = i3;
                    i(iAudioPlayCallback, playAudioDataConvertToPlayAudioData);
                    return;
                }
            }
        }
        PlayAudioData playAudioDataConvertToPlayAudioData2 = PlayAudioData.convertToPlayAudioData((AudioItem) list.get(0));
        playAudioDataConvertToPlayAudioData2.listFlag = i2;
        i(iAudioPlayCallback, playAudioDataConvertToPlayAudioData2);
    }

    public void v(String str, final IAudioPlayCallback iAudioPlayCallback) {
        try {
            m06.b();
            AIModel aIModel = !TextUtils.isEmpty(str) ? (AIModel) ek4.d(new JSONObject(str).optString("intent"), AIModel.class) : null;
            if (!TextUtils.isEmpty(str) && aIModel != null && aIModel.getParam() != null && (!TextUtils.isEmpty(aIModel.getParam().getAlbumName()) || !TextUtils.isEmpty(aIModel.getParam().getMusicName()) || !TextUtils.isEmpty(aIModel.getParam().getSingerName()) || !TextUtils.isEmpty(aIModel.getParam().getSource()))) {
                if (aIModel.getParam() == null) {
                    m06.a("");
                    g(iAudioPlayCallback);
                    return;
                }
                if (!aIModel.getParam().getMusicName().isEmpty() && aIModel.getParam().getSource().isEmpty() && aIModel.getParam().getAlbumName().isEmpty() && aIModel.getParam().getSingerName().isEmpty()) {
                    m06.a(f(aIModel.getParam().getMusicName(), ""));
                    o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 42, new g(iAudioPlayCallback));
                    return;
                }
                if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSingerName().isEmpty()) {
                    m06.a(f(aIModel.getParam().getMusicName(), aIModel.getParam().getSingerName()));
                    o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 43, new h(iAudioPlayCallback));
                    return;
                }
                if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getAlbumName().isEmpty()) {
                    m06.a(f(aIModel.getParam().getMusicName(), aIModel.getParam().getAlbumName()));
                    o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 44, new i(iAudioPlayCallback));
                    return;
                }
                if (!aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSource().isEmpty()) {
                    m06.a(f(aIModel.getParam().getMusicName(), aIModel.getParam().getSource()));
                    if (aIModel.getParam().getSource().equals(this.a)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 45, new j(iAudioPlayCallback));
                        return;
                    }
                    if (aIModel.getParam().getSource().equals(this.b)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 46, new k(iAudioPlayCallback));
                        return;
                    }
                    if (aIModel.getParam().getSource().equals(this.c)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 47, new l(iAudioPlayCallback));
                        return;
                    }
                    for (PlayList playList : this.d.getPlayListListForService(oa1.e())) {
                        if (aIModel.getParam().getSource().equals(playList.name)) {
                            o(playList, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 48, new m(iAudioPlayCallback));
                            return;
                        }
                    }
                }
                if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSingerName().isEmpty()) {
                    m06.a(f(aIModel.getParam().getSingerName(), ""));
                    if (MusicPlayManager.S().P() == null || MusicPlayManager.S().P().artistName == null || !aIModel.getParam().getSingerName().equals(MusicPlayManager.S().P().artistName) || MusicPlayManager.S().b0() != 3) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 26, new n(iAudioPlayCallback));
                        return;
                    }
                    PlayAudioData playAudioDataO = MusicPlayManager.S().O();
                    playAudioDataO.autoPlay = true;
                    playAudioDataO.listFlag = 26;
                    i(iAudioPlayCallback, playAudioDataO);
                    return;
                }
                if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getAlbumName().isEmpty()) {
                    m06.a(f(aIModel.getParam().getAlbumName(), ""));
                    if (!aIModel.getParam().getAlbumName().equals(MusicPlayManager.S().P().albumName) || MusicPlayManager.S().b0() != 3) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 25, new a(iAudioPlayCallback));
                        return;
                    }
                    PlayAudioData playAudioDataO2 = MusicPlayManager.S().O();
                    playAudioDataO2.autoPlay = true;
                    playAudioDataO2.listFlag = 25;
                    i(iAudioPlayCallback, playAudioDataO2);
                    return;
                }
                if (aIModel.getParam().getMusicName().isEmpty() && !aIModel.getParam().getSource().isEmpty()) {
                    m06.a(f(aIModel.getParam().getSource(), ""));
                    if (aIModel.getParam().getSource().equals(this.a)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 49, new b(iAudioPlayCallback));
                        return;
                    }
                    if (aIModel.getParam().getSource().equals(this.b)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 50, new c(iAudioPlayCallback));
                        return;
                    }
                    if (aIModel.getParam().getSource().equals(this.c)) {
                        o(null, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 51, new d(iAudioPlayCallback));
                        return;
                    }
                    for (PlayList playList2 : this.d.getPlayListListForService(oa1.e())) {
                        if (aIModel.getParam().getSource().equals(playList2.name)) {
                            o(playList2, aIModel.getParam().getAlbumName(), aIModel.getParam().getSingerName(), aIModel.getParam().getMusicName(), 52, new e(iAudioPlayCallback, playList2));
                            return;
                        }
                    }
                }
                h(iAudioPlayCallback, 1002);
                return;
            }
            m06.a("");
            if (MusicPlayManager.S().b0() == 3) {
                i(iAudioPlayCallback, MusicPlayManager.S().O());
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
                            AIServiceManager.this.g(iAudioPlayCallback);
                            return;
                        }
                        playAudioData.listFlag = 21;
                        playAudioData.autoPlay = true;
                        playAudioData.sourceAction = p06.y(21, ao.U().f0(PlayAudioData.convertToPlayAudioItem(playAudioData)));
                        AIServiceManager.this.i(iAudioPlayCallback, playAudioData);
                    }
                });
            }
        } catch (Exception e2) {
            h(iAudioPlayCallback, 1003);
            e2.printStackTrace();
        }
    }

    public final void w(PlayAudioData playAudioData, IAudioPlayCallback iAudioPlayCallback) {
        if (playAudioData == null) {
            return;
        }
        if (jf.g() instanceof AudioPlayerActivity) {
            ((AudioPlayerActivity) jf.g()).finish();
        }
        if (iAudioPlayCallback != null) {
            j(iAudioPlayCallback);
        }
        AudioPlayerActivity.E1(Utils.a(), playAudioData, true);
    }
}
