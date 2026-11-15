package defpackage;

import android.app.Application;
import android.net.Uri;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.AudioResultModel;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListMedia;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import com.transsion.dbdata.engine.DataEngine;
import com.transsion.dbdata.engine.base.scope.DataScope;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.repository.MediaConvertRepository;
import com.transsion.dbdata.utils.PlayCountDataManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;
import kotlin.collections.a;

public final class wj5 implements du4 {
    public static final wj5 a = new wj5();
    public static final AudioRoomDatabase b = AudioRoomDatabase.f(Utils.a());
    public static final Application c = se.a();

    public static List V(wj5 wj5Var, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return wj5Var.U(i, z);
    }

    public Pair A(boolean z) {
        ArrayList arrayListO = b00.o(null);
        y45.h(arrayListO, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem?>");
        return AudioFilterKtxKt.filterAudio$default(arrayListO, false, false, false, 7, null);
    }

    public List B() {
        return V(this, 27, false, 2, null);
    }

    public List C() {
        return null;
    }

    public List D() {
        return V(this, 26, false, 2, null);
    }

    public List E(int i) {
        if (i <= 0) {
            return y71.k();
        }
        List<String> convertPathListOrderTime = AudioRoomDatabase.f(Utils.a()).b().getConvertPathListOrderTime();
        if (convertPathListOrderTime == null || convertPathListOrderTime.isEmpty()) {
            return y71.k();
        }
        cr crVarE = new cr.a().f(false).z(new ArrayList(convertPathListOrderTime)).g(i).e();
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
    }

    public AudioAlbum F(int i) {
        return AudioRoomDatabase.f(se.a()).a().getAudioAlbum(i);
    }

    public AudioItem G(String str) {
        y45.j(str, "displayName");
        cr crVarE = new cr.a().f(true).h(str).e();
        Application application = c;
        y45.i(application, "app");
        AudioItem audioItem = (AudioItem) DataEngine.a.a(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        a.k0("getAudioItemByDisplayName", audioItem);
        return audioItem;
    }

    public AudioItem H(int i) {
        cr crVarE = new cr.a().s(i).e();
        Application application = c;
        y45.i(application, "app");
        AudioItem audioItem = (AudioItem) DataEngine.a.a(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        a.k0("getAudioItemById", audioItem);
        return audioItem;
    }

    public AudioItem I(String str) {
        y45.j(str, "path");
        cr crVarE = new cr.a().f(true).y(str).e();
        Application application = c;
        y45.i(application, "app");
        AudioItem audioItem = (AudioItem) DataEngine.a.a(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        a.k0("getAudioItemByPath", audioItem);
        return audioItem;
    }

    public AudioItem J(Uri uri) {
        y45.j(uri, "uri");
        cr crVarE = new cr.a().f(true).D(uri).e();
        Application application = c;
        y45.i(application, "app");
        AudioItem audioItem = (AudioItem) DataEngine.a.a(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        a.k0("getAudioItemByUri", audioItem);
        return audioItem;
    }

    public List K(String str, String str2) {
        y45.j(str, "albumName");
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setParentName(str);
        cr crVarE = g(str2).f(false).u(mediaBucket).k(25).c(true).e();
        Application application = c;
        y45.i(application, "access$getApp$p(...)");
        return s(os1.a(crVarE, application, AudioItem.class), "getAudioListByAlbum");
    }

    public List L(String str, String str2) {
        y45.j(str, "artistName");
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setParentName(str);
        cr crVarE = g(str2).f(false).u(mediaBucket).k(26).c(true).e();
        Application application = c;
        y45.i(application, "access$getApp$p(...)");
        return s(os1.a(crVarE, application, AudioItem.class), "getAudioListByArtistName");
    }

    public Pair M(long j, String str, String str2, boolean z) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setBucketId(j);
        mediaBucket.setParentPath(str);
        cr crVarE = g(str2).f(z).u(mediaBucket).k(22).c(true).e();
        Application application = c;
        y45.i(application, "access$getApp$p(...)");
        ns1 ns1VarA = os1.a(crVarE, application, AudioResultModel.class);
        cr crVarE2 = g(str2).f(true).e();
        Application application2 = c;
        y45.i(application2, "app");
        ns1 ns1VarA2 = os1.a(crVarE2, application2, AudioResultModel.class);
        DataEngine dataEngine = DataEngine.a;
        DataScope dataScope = DataScope.AUDIO;
        AudioResultModel audioResultModel = (AudioResultModel) dataEngine.a(dataScope, ns1VarA2);
        long filterCount = audioResultModel != null ? audioResultModel.getFilterCount() : 0L;
        AudioResultModel audioResultModel2 = (AudioResultModel) dataEngine.a(dataScope, ns1VarA);
        Pair pair = audioResultModel2 != null ? new Pair(Integer.valueOf((int) filterCount), audioResultModel2.getListData()) : new Pair(0, y71.k());
        vmb.a("LegacyAudioDataManager", "getAudioListByBucketIdAndParentPath oldMethod(size:" + pair.getFirst() + "):" + pair.getSecond());
        return pair;
    }

    public List N(List list, boolean z) {
        y45.j(list, "mediaIds");
        if (list.isEmpty()) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = ((AudioItem) it.next()).data;
            if (str != null) {
                arrayList.add(str);
            }
        }
        cr crVarE = new cr.a().f(true).z(new ArrayList(arrayList)).g(arrayList.size()).e();
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
    }

    public List O(String str, boolean z) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        cr crVarE = new cr.a().x(str).f(z).k(34).e();
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
    }

    public List P(List list, String str, boolean z) {
        y45.j(list, "mediaIds");
        cr crVarE = new cr.a().f(true).B(new ArrayList(list)).e();
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
    }

    public List Q() {
        return u("filter_duration");
    }

    public List R() {
        return u("filter_size");
    }

    public List S(String str, boolean z) {
        cr crVarE = g(str).f(z).j(true).e();
        Application application = c;
        y45.i(application, "app");
        return s(os1.a(crVarE, application, AudioItem.class), "getAudioListWithAllFiltersApplied");
    }

    public LyricData T(int i) {
        return AudioRoomDatabase.f(se.a()).c().queryLyricData(i);
    }

    public final List U(int i, boolean z) {
        xb6 xb6Var = new xb6(i, z);
        Application application = c;
        y45.i(application, "app");
        List listC = DataEngine.a.c(DataScope.AUDIO, os1.a(xb6Var, application, MediaBucket.class));
        vmb.a("LegacyAudioDataManager", "getBucketList(type:" + i + ") oldMethod(size:" + listC.size() + "): " + listC);
        return listC;
    }

    public List W(long j, String str) {
        MediaBucket mediaBucket = new MediaBucket();
        mediaBucket.setBucketId(j);
        if (str != null) {
            mediaBucket.setParentPath(str);
        }
        cr crVarE = g(null).f(false).u(mediaBucket).k(23).c(false).e();
        Application application = c;
        y45.i(application, "access$getApp$p(...)");
        return s(os1.a(crVarE, application, AudioItem.class), "getFilterSettingsFolderPreviewList");
    }

    public List X() {
        return U(27, false);
    }

    public List Y(boolean z, String str) {
        cr crVarE = g(str).f(z).A(1).e();
        Application application = c;
        y45.i(application, "app");
        List listC = DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        List<PlayListMedia> allAudioViewRecord = b.e().getAllAudioViewRecord(oa1.e());
        List list = listC;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(Integer.valueOf(((AudioItem) obj).id), obj);
        }
        Map mapC = a.C(linkedHashMap);
        ArrayList arrayList = new ArrayList();
        y45.g(allAudioViewRecord);
        Iterator<T> it = allAudioViewRecord.iterator();
        while (it.hasNext()) {
            AudioItem audioItem = (AudioItem) mapC.remove(Integer.valueOf(((PlayListMedia) it.next()).media_id));
            if (audioItem != null) {
                arrayList.add(audioItem);
            }
        }
        arrayList.addAll(mapC.values());
        ns9.z(arrayList, true);
        vmb.a("LegacyAudioDataManager", "getMostFrequentlyPlayedAudioList oldMethod: " + arrayList);
        return arrayList;
    }

    public boolean Z() {
        return du4.a.c(this);
    }

    @Override
    public List a(String str) {
        ArrayList arrayListQ = b00.q(str);
        vmb.a("LegacyAudioDataManager", "getAudioPlayRecordList oldMethod(" + arrayListQ.size() + "): " + arrayListQ);
        y45.g(arrayListQ);
        return arrayListQ;
    }

    public List a0(long j, String str) {
        ArrayList arrayListN = b00.n((int) j, str);
        y45.g(arrayListN);
        return (List) AudioFilterKtxKt.filterAudio$default(arrayListN, false, false, false, 7, null).getSecond();
    }

    @Override
    public List b(String str) {
        List listJ = dw6.c.a().j(false, str);
        a.j0("getAudioMVList", listJ);
        return listJ;
    }

    public List b0() {
        ArrayList arrayList = new ArrayList();
        dp3.e().k(se.a());
        PlayList playList = new PlayList("最近添加");
        cr crVarE = new cr.a().C(true).e();
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        List listC = DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, applicationA, AudioItem.class));
        Application applicationA2 = se.a();
        y45.i(applicationA2, "getApp(...)");
        playList.count = uo8.a(applicationA2, listC);
        playList.uri = RecentAddDataManager.a().i;
        if (RecentAddDataManager.a().j != null) {
            playList.uri = RecentAddDataManager.a().j;
            playList.isCustomCover = true;
        }
        playList.listFlag = 41;
        playList.id = -1;
        if (playList.count > 0 && MMKV.p().e("redshots_recently_added_music", true)) {
            h27.c().e(1096, new Object[0]);
        }
        arrayList.add(playList);
        PlayList playList2 = new PlayList("收藏");
        playList2.count = ((List) A(true).getSecond()).size();
        playList2.listFlag = 33;
        playList2.uri = dp3.e().e;
        if (dp3.e().f != null) {
            playList2.isCustomCover = true;
            playList2.uri = dp3.e().f;
        }
        playList2.id = 0;
        arrayList.add(playList2);
        List<PlayList> playList3 = AudioRoomDatabase.f(se.a()).d().getPlayList(oa1.e());
        b00.p(playList3);
        y45.g(playList3);
        for (PlayList playList4 : playList3) {
            playList4.count = a.a0(playList4.id, null).size();
        }
        arrayList.addAll(playList3);
        return arrayList;
    }

    public PlayListMediaItem c0(int i, int i2, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        boolean zF = true;
        if (z) {
            zF = true ^ dp3.e().f(audioItem.data);
        } else {
            List<PlayListMedia> playListMediaByIds = AudioRoomDatabase.f(Utils.a()).e().getPlayListMediaByIds(i, audioItem.id);
            y45.i(playListMediaByIds, "getPlayListMediaByIds(...)");
            if (!playListMediaByIds.isEmpty()) {
                zF = false;
            }
        }
        if (zF) {
            return null;
        }
        String str = audioItem.data;
        y45.i(str, "data");
        return new PlayListMediaItem(0L, i, i2, 0L, str, 9, null);
    }

    public List d0(boolean z, String str) {
        cr crVarE = new cr.a().t(str).C(true).f(z).e();
        Application application = c;
        y45.i(application, "app");
        return (List) AudioFilterKtxKt.filterAudio$default(new ArrayList(DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class))), false, false, false, 7, null).getSecond();
    }

    public int e(int i, String str) {
        y45.j(str, "path");
        return (int) AudioRoomDatabase.f(Utils.a()).b().insert(new ConvertAudio(i, str, System.currentTimeMillis()));
    }

    public boolean e0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        boolean zF = dp3.e().f(audioItem.data);
        if (z) {
            dp3.e().a(!zF, audioItem);
        }
        return zF;
    }

    public boolean f(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return dw6.c.a().e(mediaItem);
    }

    public boolean f0(MediaItem mediaItem) {
        y45.j(mediaItem, "data");
        return dw6.c.a().f(mediaItem, true);
    }

    public final cr.a g(String str) {
        cr.a aVar = new cr.a();
        aVar.t(str);
        return aVar;
    }

    public boolean g0(String str) {
        return dw6.c.a().g(str);
    }

    public boolean h() {
        return AudioRoomDatabase.f(c).e().deleteAllAudioPlayRecord() > 0;
    }

    public boolean h0(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return RecentAddDataManager.a().e(mediaItem, false);
    }

    public int i(int i, String str) {
        y45.j(str, "path");
        try {
            AudioRoomDatabase.f(Utils.a()).b().deleteAudioByMediaId(i);
            return 1;
        } catch (Exception e) {
            vmb.d("LegacyAudioDataManager", "deleteAudioConvertedElement error", e);
            return -1;
        }
    }

    public final boolean i0(String str) {
        return str.length() > 0 && (y45.e(str, "filter_size") || y45.e(str, "filter_duration"));
    }

    public boolean j(List list) {
        y45.j(list, "items");
        d68 d68VarE = AudioRoomDatabase.f(c).e();
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
        }
        return d68VarE.deleteAudioPlayRecordByIds(i81.a1(arrayList)) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.String] */
    public final void j0(String str, List list) {
        int size = list != 0 ? list.size() : 0;
        if (list == 0) {
            list = "NULL";
        }
        vmb.a("LegacyAudioDataManager", str + " oldMethod(size:" + size + "):" + list);
    }

    public boolean k(int i, String str) {
        Object objM279constructorimpl;
        y45.j(str, "path");
        try {
            Result.Companion companion = Result.INSTANCE;
            PlayCountDataManager.b().d(str);
            objM279constructorimpl = Result.m279constructorimpl(Boolean.TRUE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }

    public final void k0(String str, Object obj) {
        if (obj == null) {
            obj = "NULL";
        }
        vmb.a("LegacyAudioDataManager", str + " oldMethod:" + obj);
    }

    public boolean l(AudioItem audioItem) {
        y45.j(audioItem, "item");
        AudioRoomDatabase.f(Utils.a()).e().deleteAudioPlayRecordById(audioItem.id);
        PlayCountDataManager.b().d(audioItem.data);
        return true;
    }

    public LiveData l0() {
        try {
            LiveData<List<AudioAlbum>> all = AudioRoomDatabase.f(se.a()).a().getAll(oa1.f());
            y45.g(all);
            return all;
        } catch (Exception e) {
            vmb.d("LegacyAudioDataManager", "observeAllMediaDataMissing failed", e);
            return new MutableLiveData(y71.k());
        }
    }

    public int m(long j) {
        Application application = c;
        int i = (int) j;
        AudioRoomDatabase.f(application).e().deletePlayListMediaByPlayListId(i);
        return AudioRoomDatabase.f(application).d().deletePlayListById(i);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    public List m0() {
        boolean z;
        if (pp3.y) {
            z = MMKV.p().e("music_video", true);
        }
        cr crVarE = new cr.a().f(z).e();
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
    }

    public int n(int i, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        return AudioRoomDatabase.f(Utils.a()).e().deletePlayListMedia(i, audioItem.id);
    }

    public void n0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        b00.s(audioItem, z);
    }

    public int o(int i, List list, boolean z) {
        y45.j(list, "mediaIds");
        d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
        if (d68VarE == null) {
            return -1;
        }
        return d68VarE.deletePlayListMedia(i, i81.a1(list));
    }

    public long o0(String str, boolean z) {
        y45.j(str, "name");
        if (Utils.a() == null) {
            return -1L;
        }
        PlayList playList = new PlayList(str);
        playList.setup_time = System.currentTimeMillis();
        return AudioRoomDatabase.f(Utils.a()).d().insertPlayList(playList);
    }

    public int p(AudioItem audioItem, int i, int i2, boolean z) {
        y45.j(audioItem, "audioItem");
        if (!z) {
            return MediaRoomDatabase.INSTANCE.d().k().deleteByPlayListId(i, i2);
        }
        d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
        dp3.e().a(false, audioItem);
        d68VarE.deleteFavoriteItemById(audioItem.id);
        return 0;
    }

    public int p0(String str, long j, AudioItem audioItem) {
        y45.j(str, "playlistName");
        y45.j(audioItem, "mediaItem");
        try {
            return (int) AudioRoomDatabase.f(Utils.a()).e().insertPlayListMedia(rv8.a((int) j, str, audioItem.data, audioItem.id, 0, 0, System.currentTimeMillis()));
        } catch (Exception unused) {
            return -1;
        }
    }

    public void q(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
    }

    public List q0(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        try {
            d68 d68VarE = AudioRoomDatabase.f(Utils.a()).e();
            if (!z) {
                long[] jArrF = b00.f((int) j, str, arrayList);
                y45.g(jArrF);
                ArrayList arrayList2 = new ArrayList(jArrF.length);
                for (long j2 : jArrF) {
                    arrayList2.add(Integer.valueOf((int) j2));
                }
                return arrayList2;
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                y45.i(next, "next(...)");
                AudioItem audioItem = (AudioItem) next;
                PlayListMedia playListMediaC = rv8.c(audioItem.data, audioItem.id, 2, 0, System.currentTimeMillis());
                y45.i(playListMediaC, "initPlayListMedia(...)");
                arrayList3.add(playListMediaC);
                dp3.e().a(true, audioItem);
            }
            d68VarE.insertPlayListMedia(arrayList3);
            return new ArrayList();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public void r(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
    }

    public void r0(int i) {
        RecentAddDataManager.a().i(i, false);
    }

    public final List s(ns1 ns1Var, String str) {
        List listC = DataEngine.a.c(DataScope.AUDIO, ns1Var);
        j0(str, listC);
        return listC;
    }

    public int s0(int i, String str, int i2) {
        try {
            LyricData lyricData = new LyricData();
            lyricData._data = str;
            lyricData.offset = i2;
            lyricData.media_id = i;
            AudioRoomDatabase.f(se.a()).c().insert(lyricData);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public final AudioResultModel t(ns1 ns1Var, String str) {
        AudioResultModel audioResultModel = (AudioResultModel) DataEngine.a.a(DataScope.AUDIO, ns1Var);
        if (audioResultModel != null) {
            a.j0(str, audioResultModel.getListData());
        }
        return audioResultModel;
    }

    public List t0(String str) {
        Application application = c;
        y45.i(application, "app");
        return DataEngine.a.c(DataScope.AUDIO, os1.a(str, application, SearchBean.class));
    }

    public final List u(String str) {
        vmb.a("LegacyAudioDataManager", "start execute getFilteredMediaList(type:" + str + ")");
        if (!i0(str)) {
            vmb.a("LegacyAudioDataManager", "getFilteredList(type:" + str + ")，invalid filtering type");
            return y71.k();
        }
        cr crVarE = new cr.a().i(str).e();
        Application application = c;
        y45.i(application, "app");
        return s(os1.a(crVarE, application, AudioItem.class), "getFilteredList(type:" + str + ")");
    }

    public boolean u0(int i, String str, String str2) {
        y45.j(str, "mediaPath");
        y45.j(str2, "customCoverPath");
        AudioRoomDatabase.f(se.a()).a().insert(new AudioAlbum(i, str2));
        return true;
    }

    public final List v(List list) {
        Object next;
        ArrayList arrayList = new ArrayList();
        List<PlayListMedia> allAudioViewRecord = b.e().getAllAudioViewRecord(oa1.e());
        y45.g(allAudioViewRecord);
        for (PlayListMedia playListMedia : allAudioViewRecord) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((AudioItem) next).id != playListMedia.media_id);
            AudioItem audioItem = (AudioItem) next;
            if (audioItem != null) {
                arrayList.add(audioItem);
            } else if (!list.isEmpty()) {
                b.e().deletePlayListMedia(playListMedia);
            }
        }
        return arrayList;
    }

    public boolean v0(AudioItem audioItem) {
        return audioItem != null && b00.r(audioItem) > 0;
    }

    public List w(String str, String str2, String str3, int i, Long l) {
        if (i == 25) {
            cr crVarE = new cr.a().u(new MediaBucket()).x(str).k(i).e();
            Application application = c;
            y45.i(application, "app");
            return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE, application, AudioItem.class));
        }
        if (i == 26) {
            if (str2 == null) {
                return y71.k();
            }
            cr crVarE2 = new cr.a().u(new MediaBucket()).x(str2).k(i).e();
            Application application2 = c;
            y45.i(application2, "app");
            return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE2, application2, AudioItem.class));
        }
        switch (i) {
            case 42:
                cr crVarE3 = new cr.a().u(new MediaBucket()).x(str3).d(0L).k(i).e();
                Application application3 = c;
                y45.i(application3, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE3, application3, AudioItem.class));
            case 43:
                cr crVarE4 = new cr.a().u(null).h(str3).b(str2).k(i).e();
                Application application4 = c;
                y45.i(application4, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE4, application4, AudioItem.class));
            case 44:
                cr crVarE5 = new cr.a().u(null).h(str3).a(str).k(i).e();
                Application application5 = c;
                y45.i(application5, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE5, application5, AudioItem.class));
            case 45:
                List<Integer> audioPlayRecordMediaIds = b.e().getAudioPlayRecordMediaIds(oa1.e());
                if (audioPlayRecordMediaIds == null || audioPlayRecordMediaIds.isEmpty()) {
                    return y71.k();
                }
                cr crVarE6 = new cr.a().v(new ArrayList(audioPlayRecordMediaIds)).h(str3).e();
                Application application6 = c;
                y45.i(application6, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE6, application6, AudioItem.class));
            case 46:
                List<Integer> favoriteItemMediaIds = b.e().getFavoriteItemMediaIds(oa1.e());
                if (favoriteItemMediaIds == null || favoriteItemMediaIds.isEmpty()) {
                    return y71.k();
                }
                cr crVarE7 = new cr.a().v(new ArrayList(favoriteItemMediaIds)).h(str3).e();
                Application application7 = c;
                y45.i(application7, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE7, application7, AudioItem.class));
            case 47:
                cr crVarE8 = new cr.a().C(true).h(str3).e();
                Application application8 = c;
                y45.i(application8, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE8, application8, AudioItem.class));
            case 48:
                if (l == null) {
                    return y71.k();
                }
                List<Integer> playListMediaIdByPlayListId = b.e().getPlayListMediaIdByPlayListId((int) l.longValue());
                if (playListMediaIdByPlayListId == null || playListMediaIdByPlayListId.isEmpty()) {
                    return y71.k();
                }
                cr crVarE9 = new cr.a().v(new ArrayList(playListMediaIdByPlayListId)).h(str3).e();
                Application application9 = c;
                y45.i(application9, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE9, application9, AudioItem.class));
            case 49:
                List<Integer> audioPlayRecordMediaIds2 = b.e().getAudioPlayRecordMediaIds(oa1.e());
                if (audioPlayRecordMediaIds2 == null || audioPlayRecordMediaIds2.isEmpty()) {
                    return y71.k();
                }
                cr crVarE10 = new cr.a().v(new ArrayList(audioPlayRecordMediaIds2)).e();
                Application application10 = c;
                y45.i(application10, "app");
                return v(DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE10, application10, AudioItem.class)));
            case 50:
                List<Integer> favoriteItemMediaIds2 = b.e().getFavoriteItemMediaIds(oa1.e());
                if (favoriteItemMediaIds2 == null || favoriteItemMediaIds2.isEmpty()) {
                    return y71.k();
                }
                cr crVarE11 = new cr.a().v(new ArrayList(favoriteItemMediaIds2)).e();
                Application application11 = c;
                y45.i(application11, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE11, application11, AudioItem.class));
            case 51:
                cr crVarE12 = new cr.a().C(true).e();
                Application application12 = c;
                y45.i(application12, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE12, application12, AudioItem.class));
            case 52:
                if (l == null) {
                    return y71.k();
                }
                List<Integer> playListMediaIdByPlayListId2 = b.e().getPlayListMediaIdByPlayListId((int) l.longValue());
                if (playListMediaIdByPlayListId2 == null || playListMediaIdByPlayListId2.isEmpty()) {
                    return y71.k();
                }
                cr crVarE13 = new cr.a().v(new ArrayList(playListMediaIdByPlayListId2)).e();
                Application application13 = c;
                y45.i(application13, "app");
                return DataEngine.a.c(DataScope.AUDIO, os1.a(crVarE13, application13, AudioItem.class));
            default:
                return y71.k();
        }
    }

    public int w0(AudioItem audioItem, String str) {
        y45.j(audioItem, "audioItem");
        y45.j(str, "newPath");
        return MediaConvertRepository.INSTANCE.getInstance().updateConvertedAudioItem(audioItem, str);
    }

    public List x() {
        return V(this, 25, false, 2, null);
    }

    public int x0(PlayList playList) {
        y45.j(playList, "playList");
        return AudioRoomDatabase.f(c).d().updatePlayList(playList);
    }

    public List y() {
        List<AudioAlbum> allAudioAlbum = AudioRoomDatabase.f(se.a()).a().getAllAudioAlbum();
        y45.i(allAudioAlbum, "getAllAudioAlbum(...)");
        return allAudioAlbum;
    }

    public boolean y0(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return false;
    }

    public Pair z(String str) {
        cr crVarE = g(str).f(Z()).e();
        Application application = c;
        y45.i(application, "app");
        AudioResultModel audioResultModelT = t(os1.a(crVarE, application, AudioResultModel.class), "getAllAudioList");
        if (audioResultModelT == null) {
            return new Pair(0, y71.k());
        }
        vdb.a.c("LegacyAudioDataManager", "getAllAudioList " + audioResultModelT.getListData());
        return new Pair(Integer.valueOf((int) audioResultModelT.getFilterCount()), audioResultModelT.getListData());
    }
}
