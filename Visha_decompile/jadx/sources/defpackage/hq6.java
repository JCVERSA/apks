package defpackage;

import android.net.Uri;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MediatorLiveData;
import androidx.p004lifecycle.Observer;
import com.alibaba.android.arouter.utils.TextUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.PlayList;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.repository.MediaConvertRepository;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Pair;

public final class hq6 implements du4 {
    public static final hq6 a = new hq6();
    public static final we6 b = we6.a.a();
    public static final AtomicInteger c = new AtomicInteger(0);

    public static final class a implements Observer, e84 {
        public final e74 a;

        public a(e74 e74Var) {
            y45.j(e74Var, "function");
            this.a = e74Var;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Observer) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return this.a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public static xl8 g(hq6 hq6Var, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return hq6Var.f(i, z);
    }

    public static xl8 i(hq6 hq6Var, int i, boolean z, Integer num, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            num = null;
        }
        if ((i2 & 8) != 0) {
            str = null;
        }
        return hq6Var.h(i, z, num, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    private final void n0(String str, List list) {
        vmb.a("ModernAudioDataManager", str + " newMethod(size:" + (list != 0 ? list.size() : 0) + ")");
        vdb.a aVar = vdb.a;
        int size = list != 0 ? list.size() : 0;
        if (list == 0) {
            list = "NULL";
        }
        aVar.c("ModernAudioDataManager", str + " newMethod(size:" + size + "):" + list);
    }

    private final void o0(String str, Object obj) {
        if (obj == null) {
            obj = "NULL";
        }
        vmb.a("ModernAudioDataManager", str + " newMethod:" + obj);
    }

    public static final zfb q0(MediatorLiveData mediatorLiveData, List list) {
        Collection collectionK;
        if (list != null) {
            ArrayList<qe6> arrayList = new ArrayList();
            for (Object obj : list) {
                if (((qe6) obj).i()) {
                    arrayList.add(obj);
                }
            }
            collectionK = new ArrayList(z71.v(arrayList, 10));
            for (qe6 qe6Var : arrayList) {
                collectionK.add(new AudioAlbum(qe6Var.f(), qe6Var.d()));
            }
        } else {
            collectionK = y71.k();
        }
        mediatorLiveData.setValue(collectionK);
        return zfb.a;
    }

    private final List w(String str) {
        int i;
        if (y45.e(str, "filter_size")) {
            i = 769;
        } else {
            if (!y45.e(str, "filter_duration")) {
                vmb.i("ModernAudioDataManager", "getFilteredList(type:" + str + ")，invalid filtering type");
                return y71.k();
            }
            i = 770;
        }
        return u(zj7.d(new xk8.l(i), AudioItem.class), "getFilteredList(type:" + i + ")");
    }

    public final Pair A(long j, String str, boolean z) {
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.u.a().e(j).d(str).b(z).a(), AudioItem.class));
        return pairP == null ? new Pair(0, y71.k()) : pairP;
    }

    public boolean A0(AudioItem audioItem) {
        if (audioItem == null) {
            return false;
        }
        long j = audioItem.id;
        String str = audioItem.data;
        if (str == null) {
            str = "";
        }
        return b.h(DataSourceScope.AUDIO, zj7.b(new b15.d(j, str))) > 0;
    }

    public Pair B(String str) {
        Pair pairV = v(i(this, 517, d0(), null, str, 4, null), "getAllAudioList");
        c.set(((Number) pairV.getFirst()).intValue());
        return pairV;
    }

    public int B0(AudioItem audioItem, String str) {
        y45.j(audioItem, "audioItem");
        y45.j(str, "newPath");
        return MediaConvertRepository.INSTANCE.getInstance().updateConvertedAudioItem(audioItem, str);
    }

    public Pair C(boolean z) {
        long jY = Y();
        return jY <= 0 ? new Pair(0, y71.k()) : AudioFilterKtxKt.filterAudio$default((List) A(jY, null, z).getSecond(), false, false, false, 7, null);
    }

    public int C0(PlayList playList) {
        y45.j(playList, "playList");
        long j = playList.id;
        String str = playList.name;
        y45.i(str, "name");
        return we6.a.a().u(DataSourceScope.AUDIO, zj7.e(new ngb.d(j, str, false)));
    }

    public List D() {
        List<MediaBucket> listX = X(258, "getAllFolderList");
        ArrayList arrayList = new ArrayList(z71.v(listX, 10));
        for (MediaBucket mediaBucket : listX) {
            String str = mediaBucket.parentPath;
            if (str == null) {
                str = "";
            }
            mediaBucket.count = ((List) a.O(mediaBucket.bucketId, str, null, true).getSecond()).size();
            arrayList.add(mediaBucket);
        }
        return arrayList;
    }

    public boolean D0(AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        return b.u(DataSourceScope.AUDIO, zj7.e(new ngb.b(audioItem, false))) > 0;
    }

    public List E() {
        Pair pairP = b.p(DataSourceScope.AUDIO, zj7.d(new xk8.n(null, null, false, 3, null), qe6.class));
        if (pairP != null) {
            return (List) pairP.getSecond();
        }
        return null;
    }

    public List F() {
        List<MediaBucket> listX = X(259, "getArtistFolderList");
        ArrayList arrayList = new ArrayList(z71.v(listX, 10));
        for (MediaBucket mediaBucket : listX) {
            String str = mediaBucket.parentName;
            if (str == null) {
                str = "";
            }
            mediaBucket.count = a.N(str, null).size();
            arrayList.add(mediaBucket);
        }
        return arrayList;
    }

    public List G(int i) {
        List list;
        if (i <= 0) {
            return y71.k();
        }
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.e(i), AudioItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    public AudioAlbum H(int i) {
        qe6 qe6VarB0 = b0(i);
        if (qe6VarB0 != null) {
            return new AudioAlbum(qe6VarB0.f(), qe6VarB0.d());
        }
        return null;
    }

    public AudioItem I(String str) {
        y45.j(str, "displayName");
        AudioItem audioItem = (AudioItem) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.x.a().b(str).a(), AudioItem.class));
        a.o0("getAudioItemByDisplayName", audioItem);
        return audioItem;
    }

    public AudioItem J(int i) {
        AudioItem audioItem = (AudioItem) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.x.a().d(i).a(), AudioItem.class));
        a.o0("getAudioItemById", audioItem);
        return audioItem;
    }

    public AudioItem K(String str) {
        y45.j(str, "path");
        AudioItem audioItem = (AudioItem) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.x.a().f(str).a(), AudioItem.class));
        a.o0("getAudioItemByPath", audioItem);
        return audioItem;
    }

    public AudioItem L(Uri uri) {
        y45.j(uri, "uri");
        AudioItem audioItem = (AudioItem) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.x.a().g(uri).a(), AudioItem.class));
        a.o0("getAudioItemByUri", audioItem);
        return audioItem;
    }

    public List M(String str, String str2) {
        y45.j(str, "albumName");
        return u(zj7.d(new xk8.b.a().a(str).d(str2).c(), AudioItem.class), "getAudioListByAlbum");
    }

    public List N(String str, String str2) {
        y45.j(str, "artistName");
        return u(zj7.d(new xk8.b.a().b(str).d(str2).c(), AudioItem.class), "getAudioListByArtistName");
    }

    public Pair O(long j, String str, String str2, boolean z) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        Pair pairP = b.p(DataSourceScope.AUDIO, zj7.d(new xk8.i.a().b(j).f(str).e(str2).d(false).c(z).a(), AudioItem.class));
        List listK = pairP != null ? (List) pairP.getSecond() : null;
        int i = c.get();
        Integer numValueOf = Integer.valueOf(i);
        if (listK == null) {
            listK = y71.k();
        }
        Pair pair = new Pair(numValueOf, listK);
        vmb.a("ModernAudioDataManager", "getAudioListByBucketIdAndParentPath newMethod(size:" + i + "):" + pair.getSecond());
        return pair;
    }

    public List P(List list, boolean z) {
        y45.j(list, "mediaIds");
        if (list.isEmpty()) {
            return y71.k();
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
        }
        return Q(arrayList, null, z, false);
    }

    public final List Q(List list, String str, boolean z, boolean z2) {
        List list2;
        Pair pairP = b.p(DataSourceScope.AUDIO, zj7.d(new xk8.o.a().d(list).c(str).b(z).e(z2).a(), AudioItem.class));
        return (pairP == null || (list2 = (List) pairP.getSecond()) == null) ? y71.k() : list2;
    }

    public List R(String str, boolean z) {
        List list;
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.p.a().c(str).b(z).a(), AudioItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    public List S(List list, String str, boolean z) {
        y45.j(list, "mediaIds");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
        }
        return Q(arrayList, str, z, true);
    }

    public List T() {
        return w("filter_duration");
    }

    public List U() {
        return w("filter_size");
    }

    public List V(String str, boolean z) {
        return u(i(this, 519, z, null, str, 4, null), "getAudioListWithAllFiltersApplied");
    }

    public LyricData W(int i) {
        String str = (String) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.f(i), String.class));
        if (str != null) {
            return (LyricData) ek4.d(str, LyricData.class);
        }
        return null;
    }

    public final List X(int i, String str) {
        Pair pairP = b.p(DataSourceScope.AUDIO, g(this, i, false, 2, null));
        List list = pairP != null ? (List) pairP.getSecond() : null;
        n0(str + "(type:" + i + ")", list);
        return list == null ? y71.k() : list;
    }

    public final long Y() {
        PlayListFolderItem playListFolderItem = (PlayListFolderItem) we6.a.a().r(DataSourceScope.AUDIO, zj7.d(new xk8.k(1), PlayListFolderItem.class));
        if (playListFolderItem != null) {
            return playListFolderItem.getId();
        }
        return -1L;
    }

    public List Z(long j, String str) {
        return u(zj7.d(new xk8.i.a().b(j).f(str).a(), AudioItem.class), "getFilterSettingsFolderPreviewList");
    }

    @Override
    public List a(String str) {
        return u(i(this, 520, false, null, str, 6, null), "getAudioPlayRecordList");
    }

    public List a0() {
        List<MediaBucket> listX = X(263, "getFolderListForFilterSettings");
        ArrayList arrayList = new ArrayList(z71.v(listX, 10));
        for (MediaBucket mediaBucket : listX) {
            mediaBucket.count = a.Z(mediaBucket.bucketId, mediaBucket.parentPath).size();
            arrayList.add(mediaBucket);
        }
        return arrayList;
    }

    @Override
    public List b(String str) {
        return u(i(this, 518, false, null, str, 6, null), "getAudioMVList");
    }

    public qe6 b0(int i) {
        return (qe6) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.n(Integer.valueOf(i), null, false, 2, null), qe6.class));
    }

    public List c0(boolean z, String str) {
        return u(i(this, 521, false, 1, str, 2, null), "getMostFrequentlyPlayedAudioList");
    }

    public int d(int i, String str) {
        y45.j(str, "path");
        return b.h(DataSourceScope.AUDIO, zj7.b(new b15.a(i, str, System.currentTimeMillis())));
    }

    public boolean d0() {
        return du4.a.c(this);
    }

    public boolean e(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return b.h(DataSourceScope.AUDIO, zj7.b(new b15.j(mediaItem))) > 0;
    }

    public List e0(long j, String str) {
        return (List) AudioFilterKtxKt.filterAudio$default((List) A(j, str, true).getSecond(), false, false, false, 7, null).getSecond();
    }

    public final xl8 f(int i, boolean z) {
        return zj7.d(new xk8.h.a().a(i).c(z).b(), MediaBucket.class);
    }

    public List f0() {
        List list;
        Pair pairP = b.p(DataSourceScope.AUDIO, zj7.d(new xk8.d(1, false, false, 6, null), PlayListFolderItem.class));
        if (pairP == null || (list = (List) pairP.getSecond()) == null) {
            return y71.k();
        }
        List<PlayListFolderItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (PlayListFolderItem playListFolderItem : list2) {
            PlayList playList = new PlayList(playListFolderItem.getName());
            playList.id = (int) playListFolderItem.getId();
            playList.uri = playListFolderItem.getUri();
            playList.listFlag = playListFolderItem.getListFlag();
            playList.uriType = playListFolderItem.getUriType();
            playList.isCustomCover = playListFolderItem.getIsCustomCover();
            playList.mCategory = playListFolderItem.getCategory();
            int category = playListFolderItem.getCategory();
            playList.count = category != 1 ? category != 2 ? a.e0(playListFolderItem.getId(), null).size() : ((List) a.C(true).getSecond()).size() : a.h0(true, null).size();
            arrayList.add(playList);
        }
        return arrayList;
    }

    public PlayListMediaItem g0(int i, int i2, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        return (PlayListMediaItem) we6.a.a().r(DataSourceScope.AUDIO, zj7.d(new xk8.t(i, i2), PlayListMediaItem.class));
    }

    public final xl8 h(int i, boolean z, Integer num, String str) {
        xk8.c.a aVar = new xk8.c.a();
        aVar.f(i);
        aVar.c(z);
        aVar.e(str);
        if (num != null) {
            aVar.g(num.intValue());
        }
        return zj7.d(aVar.a(), AudioItem.class);
    }

    public List h0(boolean z, String str) {
        List listK;
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.u.a().c(true).b(z).a(), AudioItem.class));
        if (pairP == null || (listK = (List) pairP.getSecond()) == null) {
            listK = y71.k();
        }
        return (List) AudioFilterKtxKt.filterAudio$default(listK, false, false, false, 7, null).getSecond();
    }

    public final AudioItem i0(MediaItem mediaItem) {
        return (AudioItem) b.r(DataSourceScope.AUDIO, zj7.d(new xk8.m(mediaItem.id, mediaItem.data, mediaItem.title, mediaItem.displayName), AudioItem.class));
    }

    public boolean j() {
        return !b.c(DataSourceScope.AUDIO, zj7.a(new d82.f(null, false))).isEmpty();
    }

    public boolean j0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        if (TextUtils.isEmpty(audioItem.data)) {
            return false;
        }
        we6 we6VarA = we6.a.a();
        String str = audioItem.data;
        y45.i(str, "data");
        return we6VarA.j(str);
    }

    public int k(int i, String str) {
        y45.j(str, "path");
        return b.d(DataSourceScope.AUDIO, zj7.a(new d82.a(i, str)));
    }

    public boolean k0(MediaItem mediaItem) {
        y45.j(mediaItem, "data");
        return i0(mediaItem) != null;
    }

    public boolean l(List list) {
        y45.j(list, "items");
        return !b.c(DataSourceScope.AUDIO, zj7.a(new d82.f(list, false))).isEmpty();
    }

    public boolean l0(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return ge6.a.e(str);
    }

    public boolean m(int i, String str) {
        y45.j(str, "path");
        return we6.a.a().d(DataSourceScope.AUDIO, zj7.a(new d82.c((long) i, str))) > 0;
    }

    public boolean m0(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return we6.a.a().k(mediaItem, false);
    }

    public boolean n(AudioItem audioItem) {
        y45.j(audioItem, "item");
        long j = audioItem.id;
        String str = audioItem.data;
        y45.i(str, "data");
        return b.d(DataSourceScope.AUDIO, zj7.a(new d82.e(j, str, false))) > 0;
    }

    public int o(long j) {
        return we6.a.a().d(DataSourceScope.AUDIO, zj7.a(new d82.g(j, false)));
    }

    public int p(int i, AudioItem audioItem, boolean z) {
        y45.j(audioItem, "audioItem");
        return we6.a.a().d(DataSourceScope.AUDIO, zj7.a(new d82.h(i, audioItem.id, false, z)));
    }

    public LiveData p0() {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(b.q(DataSourceScope.AUDIO, zj7.c(new rl8.d(false), qe6.class)), new a(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return hq6.q0(mediatorLiveData, (List) obj);
            }
        }));
        return mediatorLiveData;
    }

    public int q(int i, List list, boolean z) {
        y45.j(list, "mediaIds");
        return we6.a.a().c(DataSourceScope.AUDIO, zj7.a(new d82.i(i, list, false, z))).size();
    }

    public int r(AudioItem audioItem, int i, int i2, boolean z) {
        y45.j(audioItem, "audioItem");
        return we6.a.a().d(DataSourceScope.AUDIO, zj7.a(new d82.h(i, i2, false, true)));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    public List r0() {
        boolean z;
        List list;
        if (pp3.y) {
            z = MMKV.p().e("music_video", true);
        }
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.c.a().c(z).f(517).a(), AudioItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    public void s(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
        b.d(DataSourceScope.AUDIO, zj7.a(new d82.k(mediaItem, false, e74Var)));
    }

    public void s0(boolean z, AudioItem audioItem) {
        y45.j(audioItem, "item");
        long jY = Y();
        if (jY <= 0) {
            return;
        }
        if (z) {
            we6.a.a().h(DataSourceScope.AUDIO, zj7.b(new b15.f(jY, audioItem, false, true)));
        } else {
            we6.a.a().d(DataSourceScope.AUDIO, zj7.a(new d82.h((int) jY, audioItem.id, false, true)));
        }
    }

    public void t(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
        b.d(DataSourceScope.AUDIO, zj7.a(new d82.l(list, false, e74Var)));
    }

    public long t0(String str, boolean z) {
        y45.j(str, "name");
        return we6.a.a().h(DataSourceScope.AUDIO, zj7.b(new b15.e(str, z)));
    }

    public final List u(xl8 xl8Var, String str) {
        Pair pairP = b.p(DataSourceScope.AUDIO, xl8Var);
        List list = pairP != null ? (List) pairP.getSecond() : null;
        n0(str, list);
        return list == null ? y71.k() : list;
    }

    public int u0(String str, long j, AudioItem audioItem) {
        y45.j(str, "playlistName");
        y45.j(audioItem, "mediaItem");
        return we6.a.a().h(DataSourceScope.AUDIO, zj7.b(new b15.f(j, audioItem, false, false)));
    }

    public final Pair v(xl8 xl8Var, String str) {
        Pair pairP = b.p(DataSourceScope.AUDIO, xl8Var);
        n0(str, pairP != null ? (List) pairP.getSecond() : null);
        return pairP == null ? new Pair(0, y71.k()) : pairP;
    }

    public List v0(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        return we6.a.a().g(DataSourceScope.AUDIO, zj7.b(new b15.g(j, arrayList, false, z)));
    }

    public void w0(int i) {
        b.s(i, false);
    }

    public List x(String str, String str2, String str3, int i, Long l) {
        List list;
        if (i != 25 && i != 26) {
            switch (i) {
                case 42:
                case 43:
                case 44:
                    break;
                case 45:
                case 49:
                    List listA = a(null);
                    if (str3 == null || str3.length() == 0 || i != 45) {
                        return listA;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listA) {
                        String str4 = ((AudioItem) obj).displayName;
                        if (str4 != null && j1a.V(str4, str3, true)) {
                            arrayList.add(obj);
                        }
                    }
                    return arrayList;
                case 46:
                case 50:
                    List list2 = (List) C(false).getSecond();
                    if (str3 == null || str3.length() == 0 || i != 46) {
                        return list2;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : list2) {
                        String str5 = ((AudioItem) obj2).displayName;
                        if (str5 != null && j1a.V(str5, str3, true)) {
                            arrayList2.add(obj2);
                        }
                    }
                    return arrayList2;
                case 47:
                case 51:
                    List listH0 = h0(false, null);
                    if (str3 == null || str3.length() == 0 || i != 47) {
                        return listH0;
                    }
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj3 : listH0) {
                        String str6 = ((AudioItem) obj3).displayName;
                        if (str6 != null && j1a.V(str6, str3, true)) {
                            arrayList3.add(obj3);
                        }
                    }
                    return arrayList3;
                case 48:
                case 52:
                    if (l == null || l.longValue() <= 0) {
                        return y71.k();
                    }
                    List listE0 = e0(l.longValue(), null);
                    if (str3 == null || str3.length() == 0 || i != 48) {
                        return listE0;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj4 : listE0) {
                        String str7 = ((AudioItem) obj4).displayName;
                        if (str7 != null && j1a.V(str7, str3, true)) {
                            arrayList4.add(obj4);
                        }
                    }
                    return arrayList4;
                default:
                    return (List) B(null).getSecond();
            }
        }
        Pair pairP = b.p(DataSourceScope.AUDIO, zj7.d(new xk8.a(str, str2, str3, i, l), AudioItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    public int x0(int i, String str, int i2) {
        return b.h(DataSourceScope.AUDIO, zj7.b(new b15.b(i, str, i2)));
    }

    public List y() {
        List<MediaBucket> listX = X(260, "getAlbumFolderList");
        ArrayList arrayList = new ArrayList(z71.v(listX, 10));
        for (MediaBucket mediaBucket : listX) {
            String str = mediaBucket.parentName;
            if (str == null) {
                str = "";
            }
            mediaBucket.count = a.M(str, null).size();
            arrayList.add(mediaBucket);
        }
        return arrayList;
    }

    public List y0(String str) {
        List list;
        List listE0;
        Pair pairP = we6.a.a().p(DataSourceScope.AUDIO, zj7.d(new xk8.w.a().c(str).b(true).a(), AudioItem.class));
        if (pairP == null || (list = (List) pairP.getSecond()) == null || (listE0 = i81.e0(list)) == null) {
            return y71.k();
        }
        List<AudioItem> list2 = listE0;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (AudioItem audioItem : list2) {
            SearchBean searchBean = new SearchBean();
            searchBean.setItemType(3);
            searchBean.setMediaItem(audioItem);
            arrayList.add(searchBean);
        }
        return arrayList;
    }

    public List z() {
        List listE = E();
        if (listE == null) {
            return y71.k();
        }
        List<qe6> list = listE;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (qe6 qe6Var : list) {
            arrayList.add(new AudioAlbum(qe6Var.f(), qe6Var.d()));
        }
        return arrayList;
    }

    public boolean z0(int i, String str, String str2) {
        y45.j(str, "mediaPath");
        y45.j(str2, "customCoverPath");
        AudioItem audioItem = new AudioItem();
        audioItem.id = i;
        audioItem.data = str;
        audioItem.mCustomCoverPath = str2;
        return D0(audioItem);
    }
}
