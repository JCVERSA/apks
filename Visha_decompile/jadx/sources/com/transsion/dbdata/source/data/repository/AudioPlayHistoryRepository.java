package com.transsion.dbdata.source.data.repository;

import androidx.room.Transaction;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.AudioPlayHistory;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.ktx.ListKtxKt;
import com.transsion.dbdata.source.data.repository.AudioPlayHistoryRepository;
import defpackage.c74;
import defpackage.d81;
import defpackage.ht;
import defpackage.i81;
import defpackage.oa1;
import defpackage.vmb;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.b;
import kotlin.c;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 22\u00020\u0001:\u00012B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J1\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0016\u001a\u00020\u00152\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u001e\u0010\u001fJ#\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b!\u0010\"J\u001d\u0010$\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u001a¢\u0006\u0004\b$\u0010\u001dJ\u001d\u0010%\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u001a¢\u0006\u0004\b%\u0010\u001dJ\u001d\u0010(\u001a\u00020\n2\u000e\u0010'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\t¢\u0006\u0004\b(\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010+R\u001b\u00101\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100¨\u00063"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "audioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "audioMVRepository", MethodDecl.initName, "(Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;)V", "Lkotlin/Function0;", "", "", "mediaIdProvider", "", "combineMVList", "Lcom/transsion/dbdata/beans/media/AudioItem;", "queryAudioItems", "(Lc74;Z)Ljava/util/List;", "mediaIds", "processMediaIds", "(Ljava/util/List;Z)Ljava/util/List;", "resultList", "Lzfb;", "cleanupNonExistentRecords", "(Ljava/util/List;Ljava/util/List;)V", "", "mediaId", "", Progress.FILE_PATH, "smartUpdatePlayCount", "(JLjava/lang/String;)I", "queryAll", "(Z)Ljava/util/List;", "minPlayCount", "queryFrequently", "(IZ)Ljava/util/List;", "path", "deleteByMediaId", "deletePlayFrequentlyElement", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItems", "deleteMultiple", "(Ljava/util/List;)I", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "Lht;", "mAudioPlayHistoryDao$delegate", "Lyi5;", "getMAudioPlayHistoryDao", "()Lht;", "mAudioPlayHistoryDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioPlayHistoryRepository {
    private static final String TAG = "AudioPlayHistoryRepository";
    private final AudioMVRepository audioMVRepository;
    private final SystemAudioQueryRepository audioQueryRepository;

    private final yi5 mAudioPlayHistoryDao;

    public AudioPlayHistoryRepository(SystemAudioQueryRepository systemAudioQueryRepository, AudioMVRepository audioMVRepository) {
        y45.j(systemAudioQueryRepository, "audioQueryRepository");
        y45.j(audioMVRepository, "audioMVRepository");
        this.audioQueryRepository = systemAudioQueryRepository;
        this.audioMVRepository = audioMVRepository;
        this.mAudioPlayHistoryDao = b.a(new c74() {
            @Override
            public final Object invoke() {
                return AudioPlayHistoryRepository.mAudioPlayHistoryDao_delegate$lambda$0();
            }
        });
    }

    private final void cleanupNonExistentRecords(List<Integer> mediaIds, List<? extends AudioItem> resultList) {
        if (resultList.size() < mediaIds.size()) {
            ListKtxKt.findMissingIds(mediaIds, resultList);
            List<Integer> list = mediaIds;
            List<? extends AudioItem> list2 = resultList;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((AudioItem) it.next()).id));
            }
            List listF0 = i81.F0(list, i81.g1(arrayList));
            ArrayList arrayList2 = new ArrayList(z71.v(listF0, 10));
            Iterator it2 = listF0.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Long.valueOf(((Number) it2.next()).intValue()));
            }
            getMAudioPlayHistoryDao().deleteByMediaIds(arrayList2);
        }
    }

    private final ht getMAudioPlayHistoryDao() {
        return (ht) this.mAudioPlayHistoryDao.getValue();
    }

    public static final ht mAudioPlayHistoryDao_delegate$lambda$0() {
        return MediaRoomDatabase.INSTANCE.d().f();
    }

    private final List<AudioItem> processMediaIds(List<Integer> mediaIds, boolean combineMVList) {
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        List<List> listC0 = i81.c0(mediaIds, 50);
        ArrayList<AudioItem> arrayList = new ArrayList();
        for (List list : listC0) {
            List listQueryBatchByIdsAndName$default = SystemAudioQueryRepository.queryBatchByIdsAndName$default(this.audioQueryRepository, list, null, 2, null);
            d81.C(arrayList, (!combineMVList || listQueryBatchByIdsAndName$default.size() >= list.size()) ? (List) AudioFilterKtxKt.filterAudio$default(listQueryBatchByIdsAndName$default, false, false, false, 7, null).getSecond() : i81.J0((Collection) AudioFilterKtxKt.filterAudio$default(listQueryBatchByIdsAndName$default, false, false, false, 7, null).getSecond(), (Iterable) AudioFilterKtxKt.filterMVAudio$default(AudioMVRepository.queryMVList$default(this.audioMVRepository, ListKtxKt.findMissingIds(list, listQueryBatchByIdsAndName$default), null, 2, null), false, false, 3, null).getSecond()));
        }
        if (arrayList.isEmpty()) {
            return y71.k();
        }
        HashMap map = new HashMap(arrayList.size());
        for (AudioItem audioItem : arrayList) {
            map.put(Integer.valueOf(audioItem.id), audioItem);
        }
        ArrayList arrayList2 = new ArrayList(Math.min(mediaIds.size(), map.size()));
        Iterator<Integer> it = mediaIds.iterator();
        while (it.hasNext()) {
            AudioItem audioItem2 = (AudioItem) map.get(Integer.valueOf(it.next().intValue()));
            if (audioItem2 != null) {
                arrayList2.add(audioItem2);
            }
        }
        return arrayList2;
    }

    public static final List queryAll$lambda$12(AudioPlayHistoryRepository audioPlayHistoryRepository) {
        List<AudioPlayHistory> allPlayRecordMediaIds = audioPlayHistoryRepository.getMAudioPlayHistoryDao().getAllPlayRecordMediaIds(oa1.e());
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = allPlayRecordMediaIds.iterator();
        while (it.hasNext()) {
            Long mediaId = ((AudioPlayHistory) it.next()).getMediaId();
            Integer numValueOf = mediaId != null ? Integer.valueOf((int) mediaId.longValue()) : null;
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        return arrayList;
    }

    private final List<AudioItem> queryAudioItems(c74 mediaIdProvider, boolean combineMVList) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<Integer> list = (List) mediaIdProvider.invoke();
            if (list.isEmpty()) {
                return y71.k();
            }
            List<AudioItem> listProcessMediaIds = processMediaIds(list, combineMVList);
            for (AudioItem audioItem : listProcessMediaIds) {
                MediaCombineCacheManager companion2 = MediaCombineCacheManager.INSTANCE.getInstance();
                String str = audioItem.data;
                y45.i(str, "data");
                audioItem.playCount = companion2.getPlayCount(str);
            }
            cleanupNonExistentRecords(list, listProcessMediaIds);
            objM279constructorimpl = Result.m279constructorimpl(listProcessMediaIds);
            Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
            if (thM282exceptionOrNullimpl != null) {
                vmb.c(TAG, "queryAudioItems error: " + thM282exceptionOrNullimpl.getMessage());
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            List<AudioItem> list2 = (List) objM279constructorimpl;
            return list2 == null ? y71.k() : list2;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
    }

    public static final List queryFrequently$lambda$14(AudioPlayHistoryRepository audioPlayHistoryRepository, int i) {
        List<AudioPlayHistory> frequentPlayedMediaIds = audioPlayHistoryRepository.getMAudioPlayHistoryDao().getFrequentPlayedMediaIds(i, oa1.e());
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = frequentPlayedMediaIds.iterator();
        while (it.hasNext()) {
            Long mediaId = ((AudioPlayHistory) it.next()).getMediaId();
            Integer numValueOf = mediaId != null ? Integer.valueOf((int) mediaId.longValue()) : null;
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        return arrayList;
    }

    public final int deleteByMediaId(long mediaId, String path) {
        Object objM279constructorimpl;
        y45.j(path, "path");
        try {
            Result.Companion companion = Result.INSTANCE;
            int iDeleteByMediaId = getMAudioPlayHistoryDao().deleteByMediaId(mediaId);
            if (iDeleteByMediaId > 0) {
                MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenDelete(path);
            }
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(iDeleteByMediaId));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.c(TAG, "Failed to delete playback history: " + thM282exceptionOrNullimpl.getMessage());
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Integer num = (Integer) objM279constructorimpl;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final int deleteMultiple(List<? extends MediaItem> mediaItems) {
        Object objM279constructorimpl;
        int iDeleteAll;
        try {
            Result.Companion companion = Result.INSTANCE;
            List<? extends MediaItem> list = mediaItems;
            if (list == null || list.isEmpty()) {
                List<AudioPlayHistory> allByPlayCount = getMAudioPlayHistoryDao().getAllByPlayCount();
                ArrayList arrayList = new ArrayList(z71.v(allByPlayCount, 10));
                Iterator<T> it = allByPlayCount.iterator();
                while (it.hasNext()) {
                    arrayList.add(((AudioPlayHistory) it.next()).get_data());
                }
                MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenDelete(arrayList);
                iDeleteAll = getMAudioPlayHistoryDao().deleteAll();
            } else {
                List<? extends MediaItem> list2 = mediaItems;
                ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
                Iterator<T> it2 = list2.iterator();
                while (it2.hasNext()) {
                    String str = ((MediaItem) it2.next()).data;
                    if (str == null) {
                        str = "";
                    }
                    arrayList2.add(str);
                }
                List<? extends MediaItem> list3 = mediaItems;
                ArrayList arrayList3 = new ArrayList(z71.v(list3, 10));
                Iterator<T> it3 = list3.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(Long.valueOf(((MediaItem) it3.next()).id));
                }
                MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenDelete(arrayList2);
                iDeleteAll = getMAudioPlayHistoryDao().deleteByMediaIds(arrayList3);
            }
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(iDeleteAll));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.c(TAG, "Failed to delete playback history: " + thM282exceptionOrNullimpl.getMessage());
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Integer num = (Integer) objM279constructorimpl;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final int deletePlayFrequentlyElement(long mediaId, String path) {
        Object objM279constructorimpl;
        y45.j(path, "path");
        try {
            Result.Companion companion = Result.INSTANCE;
            int iB = ht.a.b(getMAudioPlayHistoryDao(), mediaId, 0L, 2, null);
            if (iB > 0) {
                MediaCombineCacheManager.INSTANCE.getInstance().synCountWhenDelete(path);
            }
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(iB));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.c(TAG, "Failed to delete playback history: " + thM282exceptionOrNullimpl.getMessage());
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Integer num = (Integer) objM279constructorimpl;
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final List<AudioItem> queryAll(boolean combineMVList) {
        return queryAudioItems(new c74() {
            @Override
            public final Object invoke() {
                return AudioPlayHistoryRepository.queryAll$lambda$12(this.b);
            }
        }, combineMVList);
    }

    public final List<AudioItem> queryFrequently(final int minPlayCount, boolean combineMVList) {
        return queryAudioItems(new c74() {
            @Override
            public final Object invoke() {
                return AudioPlayHistoryRepository.queryFrequently$lambda$14(this.b, minPlayCount);
            }
        }, combineMVList);
    }

    @Transaction
    public final int smartUpdatePlayCount(long mediaId, String filePath) {
        y45.j(filePath, Progress.FILE_PATH);
        MediaCombineCacheManager.INSTANCE.getInstance().recordPlayCount(filePath);
        int iA = ht.a.a(getMAudioPlayHistoryDao(), mediaId, 0L, 2, null);
        if (iA != 0) {
            return iA;
        }
        return (int) getMAudioPlayHistoryDao().upsertSingle(new AudioPlayHistory(filePath, Long.valueOf(mediaId), 1, System.currentTimeMillis(), System.currentTimeMillis()));
    }
}
