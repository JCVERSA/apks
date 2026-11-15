package com.transsion.dbdata.source.data.repository;

import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.SimpleMediaItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.ListKtxKt;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.repository.PlayListRepository;
import defpackage.b15;
import defpackage.b68;
import defpackage.c74;
import defpackage.d82;
import defpackage.e74;
import defpackage.f68;
import defpackage.i81;
import defpackage.ruc;
import defpackage.vmb;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 w2\u00020\u0001:\u0001wB\u0007¢\u0006\u0004\b\u0002\u0010\u0003Ja\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\"\b\u0002\u0010\u000e\u001a\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0006\u0018\u00010\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011JC\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u001e\u0010\u000e\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u00060\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ;\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0016\u001a\u00020\u00042\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001f\u0010 J/\u0010!\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002¢\u0006\u0004\b!\u0010\"J\u001b\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u00062\u0006\u0010#\u001a\u00020\u0019¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0007¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010,2\u0006\u0010#\u001a\u00020\u0019¢\u0006\u0004\b-\u0010.J-\u00101\u001a\b\u0012\u0004\u0012\u0002000\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010/\u001a\u00020\u0019¢\u0006\u0004\b1\u00102J\u001f\u00104\u001a\u0004\u0018\u0001032\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u0004\u0018\u0001062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b7\u00108J\u001d\u0010:\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b:\u0010;J\u0015\u0010\u001c\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<¢\u0006\u0004\b\u001c\u0010>J\u001b\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010=\u001a\u00020?¢\u0006\u0004\b\u001f\u0010@J\u0015\u0010A\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\bA\u0010BJ\u0015\u0010!\u001a\u00020\u00072\u0006\u0010=\u001a\u00020C¢\u0006\u0004\b!\u0010DJ\u001b\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010=\u001a\u00020E¢\u0006\u0004\bF\u0010GJ\u0015\u0010H\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\bH\u0010IJ\u001d\u0010J\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u000b¢\u0006\u0004\bJ\u0010KJ+\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u00072\u0006\u0010M\u001a\u00020\u000b¢\u0006\u0004\bN\u0010OJ1\u0010R\u001a\b\u0012\u0004\u0012\u00020,0\u00062\b\b\u0002\u0010\u001b\u001a\u00020\u00192\b\b\u0002\u0010P\u001a\u00020\u00192\b\b\u0002\u0010Q\u001a\u00020\u0019¢\u0006\u0004\bR\u0010SJ%\u0010'\u001a\b\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b'\u0010TJ\u001f\u0010V\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010U\u001a\u00020\u000b¢\u0006\u0004\bV\u0010WR\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u001b\u0010b\u001a\u00020^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010Z\u001a\u0004\b`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010Z\u001a\u0004\be\u0010fR\u001b\u0010l\u001a\u00020h8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bi\u0010Z\u001a\u0004\bj\u0010kR\u001b\u0010q\u001a\u00020m8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010Z\u001a\u0004\bo\u0010pR\u001b\u0010v\u001a\u00020r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bs\u0010Z\u001a\u0004\bt\u0010u¨\u0006x"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "", MethodDecl.initName, "()V", "", "playlistId", "", "", "mediaIds", "Lcom/transsion/dbdata/beans/media/MediaItem;", "items", "", "displayName", "Lkotlin/Function1;", "queryByPaths", "Lzfb;", "cleanupInvalidElements", "(JLjava/util/List;Ljava/util/List;Ljava/lang/String;Le74;)V", "missingIds", "", "repairElementsByPath", "(Ljava/util/List;Le74;)Ljava/util/Set;", "playListId", "mediaId", "path", "", "isFavorite", "fromVideo", "addPlayListElement", "(JILjava/lang/String;ZZ)I", "mediaItems", "addPlayListElements", "(JLjava/util/List;ZZ)Ljava/util/List;", "deletePlayListElement", "(IIZZ)I", "isVideo", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "getPlayList", "(Z)Ljava/util/List;", "getVideoPlayListElement", "(J)Ljava/util/List;", "createType", "queryFavoriteListID", "(I)J", "Lcom/transsion/dbdata/database/PlayListFolderItem;", "queryFavoriteList", "(Z)Lcom/transsion/dbdata/database/PlayListFolderItem;", "combineMVList", "Lcom/transsion/dbdata/beans/media/AudioItem;", "getAudioPlayListElement", "(JLjava/lang/String;Z)Ljava/util/List;", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "getAudioPlayMediaListElement", "(II)Lcom/transsion/dbdata/database/PlayListMediaItem;", "Lcom/transsion/dbdata/database/PlayListItem;", "getAudioPlayList", "(J)Lcom/transsion/dbdata/database/PlayListItem;", "name", "createPlayList", "(Ljava/lang/String;Z)I", "Lb15$f;", "action", "(Lb15$f;)I", "Lb15$g;", "(Lb15$g;)Ljava/util/List;", "deletePlayList", "(J)I", "Ld82$h;", "(Ld82$h;)I", "Ld82$i;", "deletePlayListElements", "(Ld82$i;)Ljava/util/List;", "deletePlayListElementById", "(I)I", "updatePlayListName", "(JLjava/lang/String;)I", "newMediaId", "newPath", "updatePlayListElement", "(IILjava/lang/String;)Ljava/util/List;", "includeRecent", "includeFavorite", "getPlayListFolderSet", "(ZZZ)Ljava/util/List;", "(JLjava/lang/String;)Ljava/util/List;", "url", "getVideoOnlinePlayListElement", "(JLjava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository$delegate", "Lyi5;", "getMAudioQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository$delegate", "getMAudioMVRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository", "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository$delegate", "getMVideoQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository", "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository$delegate", "getMFileQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository", "Lb68;", "mPlayListDao$delegate", "getMPlayListDao", "()Lb68;", "mPlayListDao", "Lf68;", "mPlayListMediaDao$delegate", "getMPlayListMediaDao", "()Lf68;", "mPlayListMediaDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlayListRepository {
    private static final int PATH_QUERY_BATCH_SIZE = 100;
    private static final String TAG = "PlayListRepository";

    private final yi5 mAudioQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mAudioQueryRepository_delegate$lambda$0();
        }
    });

    private final yi5 mAudioMVRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mAudioMVRepository_delegate$lambda$1();
        }
    });

    private final yi5 mVideoQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mVideoQueryRepository_delegate$lambda$2();
        }
    });

    private final yi5 mFileQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mFileQueryRepository_delegate$lambda$3();
        }
    });

    private final yi5 mPlayListDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mPlayListDao_delegate$lambda$4();
        }
    });

    private final yi5 mPlayListMediaDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return PlayListRepository.mPlayListMediaDao_delegate$lambda$5();
        }
    });

    private final void cleanupInvalidElements(long playlistId, List<Integer> mediaIds, List<? extends MediaItem> items, String displayName, e74 queryByPaths) {
        Set<Integer> setF;
        if ((displayName == null || displayName.length() == 0) && items.size() < mediaIds.size()) {
            List listE0 = i81.e0(mediaIds);
            if (items.size() >= listE0.size()) {
                return;
            }
            if (items.isEmpty()) {
                vmb.i(TAG, "cleanupInvalidElements: skip cleanup for playlistId=" + playlistId + ", query returned 0 of " + listE0.size() + " record(s), untrusted result");
                return;
            }
            List<Integer> listFindMissingIds = ListKtxKt.findMissingIds(listE0, items);
            if (listFindMissingIds.isEmpty()) {
                return;
            }
            if (queryByPaths == null || (setF = repairElementsByPath(listFindMissingIds, queryByPaths)) == null) {
                setF = ye9.f();
            }
            if (!setF.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : listFindMissingIds) {
                    if (!setF.contains(Integer.valueOf(((Number) obj).intValue()))) {
                        arrayList.add(obj);
                    }
                }
                listFindMissingIds = arrayList;
            }
            if (listFindMissingIds.isEmpty()) {
                return;
            }
            vmb.a(TAG, "cleanupInvalidElements: clean up " + listFindMissingIds.size() + " invalid record(s) for playlistId=" + playlistId + ", survived=" + setF.size());
            getMPlayListMediaDao().deleteByMediaIds(listFindMissingIds);
        }
    }

    public static void cleanupInvalidElements$default(PlayListRepository playListRepository, long j, List list, List list2, String str, e74 e74Var, int i, Object obj) {
        if ((i & 16) != 0) {
            e74Var = null;
        }
        playListRepository.cleanupInvalidElements(j, list, list2, str, e74Var);
    }

    public static final List getAudioPlayListElement$lambda$11$lambda$10(PlayListRepository playListRepository, List list) {
        y45.j(list, "paths");
        return playListRepository.getMAudioQueryRepository().queryBatchByPath(list, list.size());
    }

    private final AudioMVRepository getMAudioMVRepository() {
        return (AudioMVRepository) this.mAudioMVRepository.getValue();
    }

    private final SystemAudioQueryRepository getMAudioQueryRepository() {
        return (SystemAudioQueryRepository) this.mAudioQueryRepository.getValue();
    }

    private final SystemFileQueryRepository getMFileQueryRepository() {
        return (SystemFileQueryRepository) this.mFileQueryRepository.getValue();
    }

    private final b68 getMPlayListDao() {
        return (b68) this.mPlayListDao.getValue();
    }

    private final f68 getMPlayListMediaDao() {
        return (f68) this.mPlayListMediaDao.getValue();
    }

    private final SystemVideoQueryRepository getMVideoQueryRepository() {
        return (SystemVideoQueryRepository) this.mVideoQueryRepository.getValue();
    }

    public static List getPlayListFolderSet$default(PlayListRepository playListRepository, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        if ((i & 4) != 0) {
            z3 = true;
        }
        return playListRepository.getPlayListFolderSet(z, z2, z3);
    }

    public static final AudioMVRepository mAudioMVRepository_delegate$lambda$1() {
        return AudioMVRepository.INSTANCE.getInstance();
    }

    public static final SystemAudioQueryRepository mAudioQueryRepository_delegate$lambda$0() {
        return new SystemAudioQueryRepository();
    }

    public static final SystemFileQueryRepository mFileQueryRepository_delegate$lambda$3() {
        return new SystemFileQueryRepository();
    }

    public static final b68 mPlayListDao_delegate$lambda$4() {
        return MediaRoomDatabase.INSTANCE.d().j();
    }

    public static final f68 mPlayListMediaDao_delegate$lambda$5() {
        return MediaRoomDatabase.INSTANCE.d().k();
    }

    public static final SystemVideoQueryRepository mVideoQueryRepository_delegate$lambda$2() {
        return new SystemVideoQueryRepository();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00eb  */
    private final Set<Integer> repairElementsByPath(List<Integer> missingIds, e74 queryByPaths) {
        List<PlayListMediaItem> byMediaIds = getMPlayListMediaDao().getByMediaIds(missingIds);
        if (byMediaIds.isEmpty()) {
            return ye9.f();
        }
        List<PlayListMediaItem> list = byMediaIds;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str = ((PlayListMediaItem) it.next()).get_data();
            String str2 = str.length() > 0 ? str : null;
            if (str2 != null) {
                arrayList.add(str2);
            }
        }
        List listE0 = i81.e0(arrayList);
        if (listE0.isEmpty()) {
            return ye9.f();
        }
        HashMap map = new HashMap(listE0.size());
        Iterator it2 = i81.c0(listE0, 100).iterator();
        while (it2.hasNext()) {
            for (MediaItem mediaItem : (Iterable) queryByPaths.invoke((List) it2.next())) {
                String str3 = mediaItem.data;
                if (mediaItem.id > 0 && str3 != null && str3.length() != 0) {
                    map.put(str3, Integer.valueOf(mediaItem.id));
                }
            }
        }
        if (map.isEmpty()) {
            return ye9.f();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList2 = new ArrayList();
        for (PlayListMediaItem playListMediaItem : list) {
            Integer num = (Integer) map.get(playListMediaItem.get_data());
            if (num != null) {
                int iIntValue = num.intValue();
                linkedHashSet.add(Integer.valueOf(playListMediaItem.getMediaId()));
                if (playListMediaItem.getMediaId() == iIntValue) {
                    playListMediaItem = null;
                }
                if (playListMediaItem != null) {
                    playListMediaItem.setMediaId(iIntValue);
                } else {
                    playListMediaItem = null;
                }
            } else {
                playListMediaItem = null;
            }
            if (playListMediaItem != null) {
                arrayList2.add(playListMediaItem);
            }
        }
        if (!arrayList2.isEmpty()) {
            getMPlayListMediaDao().updateMultiple(arrayList2);
            vmb.a(TAG, "repairElementsByPath: repaired media_id for " + arrayList2.size() + " record(s) by path");
        }
        return linkedHashSet;
    }

    public final int addPlayListElement(b15.f action) {
        y45.j(action, "action");
        if (action.b().data == null) {
            return 0;
        }
        long jC = action.c();
        int i = action.b().id;
        String str = action.b().data;
        y45.i(str, "data");
        return addPlayListElement(jC, i, str, action.d(), action.a());
    }

    public final List<Integer> addPlayListElements(b15.g action) {
        y45.j(action, "action");
        return addPlayListElements(action.c(), action.b(), action.d(), action.a());
    }

    public final int createPlayList(String name, boolean fromVideo) {
        y45.j(name, "name");
        return (int) getMPlayListDao().insertSingle(new PlayListItem(0L, name, 3, fromVideo ? 2 : 1, 0L, 0L, 49, null));
    }

    public final int deletePlayList(long playListId) {
        return getMPlayListDao().deleteById(playListId);
    }

    public final int deletePlayListElement(d82.h action) {
        y45.j(action, "action");
        return deletePlayListElement(action.c(), action.b(), action.d(), action.a());
    }

    public final int deletePlayListElementById(int mediaId) {
        return getMPlayListMediaDao().deleteByMediaId(mediaId);
    }

    public final List<Integer> deletePlayListElements(d82.i action) {
        int iDeletePlayListElement;
        y45.j(action, "action");
        List listB = action.b();
        ArrayList arrayList = new ArrayList(z71.v(listB, 10));
        Iterator it = listB.iterator();
        while (it.hasNext()) {
            try {
                iDeletePlayListElement = deletePlayListElement(action.c(), ((Number) it.next()).intValue(), action.d(), action.a());
            } catch (Exception unused) {
                iDeletePlayListElement = -1;
            }
            arrayList.add(Integer.valueOf(iDeletePlayListElement));
        }
        return arrayList;
    }

    public final PlayListItem getAudioPlayList(long playlistId) {
        return getMPlayListDao().getByPlayListID(playlistId);
    }

    public final List<AudioItem> getAudioPlayListElement(long playlistId, String displayName, boolean combineMVList) {
        List<Integer> byPlayListId = getMPlayListMediaDao().getByPlayListId(playlistId);
        List<AudioItem> listQueryBatchByIdsAndName = getMAudioQueryRepository().queryBatchByIdsAndName(byPlayListId, displayName);
        if (combineMVList && listQueryBatchByIdsAndName.size() < byPlayListId.size()) {
            listQueryBatchByIdsAndName = i81.J0(listQueryBatchByIdsAndName, getMAudioMVRepository().queryMVList(ListKtxKt.findMissingIds(byPlayListId, listQueryBatchByIdsAndName), displayName));
        }
        cleanupInvalidElements(playlistId, byPlayListId, listQueryBatchByIdsAndName, displayName, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return PlayListRepository.getAudioPlayListElement$lambda$11$lambda$10(this.b, (List) obj);
            }
        });
        return listQueryBatchByIdsAndName;
    }

    public final PlayListMediaItem getAudioPlayMediaListElement(int playListId, int mediaId) {
        return getMPlayListMediaDao().getByIds(playListId, mediaId);
    }

    public final List<MediaBucket> getPlayList(boolean isVideo) {
        List<PlayListFolderItem> playListWithCount = getMPlayListMediaDao().getPlayListWithCount(isVideo ? 2 : 1);
        ArrayList arrayList = new ArrayList(z71.v(playListWithCount, 10));
        for (PlayListFolderItem playListFolderItem : playListWithCount) {
            MediaBucket mediaBucket = new MediaBucket();
            mediaBucket.setBucketId(playListFolderItem.getId());
            mediaBucket.setParentName(playListFolderItem.getName());
            mediaBucket.setCount(playListFolderItem.getCount());
            arrayList.add(mediaBucket);
        }
        return arrayList;
    }

    public final List<PlayListFolderItem> getPlayListFolderSet(boolean fromVideo, boolean includeRecent, boolean includeFavorite) {
        return getMPlayListMediaDao().getPlayListFolderSetConditional(fromVideo ? 2 : 1, includeRecent, includeFavorite);
    }

    public final MediaItem getVideoOnlinePlayListElement(long playlistId, String url) {
        y45.j(url, "url");
        vmb.a(TAG, "getVideoOnlinePlayListElement，playlistId:" + playlistId + ",url:" + url);
        if (getMPlayListMediaDao().getPlayListElementByCombine(playlistId, url).isEmpty()) {
            return null;
        }
        MediaItem mediaItemA = ruc.a(url);
        vmb.a(TAG, "getVideoOnlinePlayListElement result: " + (mediaItemA == null ? "NULL" : mediaItemA));
        return mediaItemA;
    }

    public final List<MediaItem> getVideoPlayListElement(long playlistId) {
        List<Integer> byPlayListId = getMPlayListMediaDao().getByPlayListId(playlistId);
        List<MediaItem> listQueryBatchByIds = getMVideoQueryRepository().queryBatchByIds(byPlayListId);
        if (listQueryBatchByIds.size() < byPlayListId.size()) {
            listQueryBatchByIds = i81.J0(listQueryBatchByIds, getMFileQueryRepository().queryBatchVideoByIds(ListKtxKt.findMissingIds(byPlayListId, listQueryBatchByIds)));
        }
        cleanupInvalidElements$default(this, playlistId, byPlayListId, listQueryBatchByIds, null, null, 16, null);
        return listQueryBatchByIds;
    }

    public final PlayListFolderItem queryFavoriteList(boolean isVideo) {
        PlayListItem favoritePlaylist = getMPlayListDao().getFavoritePlaylist(isVideo ? 2 : 1);
        if (favoritePlaylist != null) {
            return new PlayListFolderItem(favoritePlaylist.getId(), favoritePlaylist.getName(), 0, favoritePlaylist.getCategory());
        }
        return null;
    }

    public final long queryFavoriteListID(int createType) {
        long favoritePlaylistId = getMPlayListDao().getFavoritePlaylistId(createType);
        if (favoritePlaylistId > 0) {
            return favoritePlaylistId;
        }
        return -1L;
    }

    public final List<Integer> updatePlayListElement(int mediaId, int newMediaId, String newPath) {
        y45.j(newPath, "newPath");
        List<PlayListMediaItem> byMediaId = getMPlayListMediaDao().getByMediaId(mediaId);
        if (byMediaId == null) {
            return new ArrayList();
        }
        List<PlayListMediaItem> list = byMediaId;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (PlayListMediaItem playListMediaItem : list) {
            playListMediaItem.setId(newMediaId);
            playListMediaItem.set_data(newPath);
            arrayList.add(Integer.valueOf(getMPlayListMediaDao().updateSingle(playListMediaItem)));
        }
        return arrayList;
    }

    public final int updatePlayListName(long playlistId, String name) {
        y45.j(name, "name");
        return getMPlayListDao().renamePlaylist(playlistId, name);
    }

    private final List<Integer> addPlayListElements(long playListId, List<? extends MediaItem> mediaItems, boolean isFavorite, boolean fromVideo) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : mediaItems) {
            if (getMPlayListMediaDao().getByIds((int) playListId, ((MediaItem) obj).id) == null) {
                arrayList.add(obj);
            }
        }
        List<Long> listInsertMultiple = getMPlayListMediaDao().insertMultiple(MediaDataExtKt.toPlayListMediaItem(arrayList, playListId));
        ArrayList arrayList2 = new ArrayList(z71.v(listInsertMultiple, 10));
        int i = 0;
        for (Object obj2 : listInsertMultiple) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            int iLongValue = (int) ((Number) obj2).longValue();
            if (iLongValue > 0 && isFavorite) {
                MediaItem mediaItem = (MediaItem) arrayList.get(i);
                MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
                int i3 = mediaItem.id;
                String str = mediaItem.data;
                y45.i(str, "data");
                companion.addFavorite(new SimpleMediaItem(i3, str), fromVideo);
            }
            arrayList2.add(Integer.valueOf(iLongValue));
            i = i2;
        }
        return arrayList2;
    }

    private final int deletePlayListElement(int playListId, int mediaId, boolean isFavorite, boolean fromVideo) {
        int iDeleteByPlayListId = getMPlayListMediaDao().deleteByPlayListId(playListId, mediaId);
        if (iDeleteByPlayListId > 0 && isFavorite) {
            MediaCombineCacheManager.INSTANCE.getInstance().removeFavorite(mediaId, fromVideo);
        }
        return iDeleteByPlayListId;
    }

    private final int addPlayListElement(long playListId, int mediaId, String path, boolean isFavorite, boolean fromVideo) {
        long jInsertSingle = getMPlayListMediaDao().insertSingle(new PlayListMediaItem(0L, playListId, mediaId, 0L, path, 9, null));
        if (jInsertSingle > 0 && isFavorite) {
            MediaCombineCacheManager.INSTANCE.getInstance().addFavorite(new SimpleMediaItem(mediaId, path), fromVideo);
        }
        return (int) jInsertSingle;
    }

    public final List<MediaItem> getVideoPlayListElement(long playlistId, String displayName) {
        List<Integer> byPlayListId = getMPlayListMediaDao().getByPlayListId(playlistId);
        List<MediaItem> listQueryBatchByIdsAndName = getMVideoQueryRepository().queryBatchByIdsAndName(byPlayListId, displayName);
        if (listQueryBatchByIdsAndName.size() < byPlayListId.size()) {
            listQueryBatchByIdsAndName = i81.J0(listQueryBatchByIdsAndName, getMFileQueryRepository().queryBatchVideoByIdsAndName(ListKtxKt.findMissingIds(byPlayListId, listQueryBatchByIdsAndName), displayName));
        }
        cleanupInvalidElements$default(this, playlistId, byPlayListId, listQueryBatchByIdsAndName, displayName, null, 16, null);
        return listQueryBatchByIdsAndName;
    }
}
