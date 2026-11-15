package com.transsion.dbdata.source.data.repository;

import android.util.Log;
import androidx.room.Transaction;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.UserBehaviorItem;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.repository.UserBehaviorRepository;
import defpackage.c74;
import defpackage.d82;
import defpackage.e74;
import defpackage.njb;
import defpackage.x71;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ3\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00100\u00152\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0018¢\u0006\u0004\b\u0011\u0010\u0019J'\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0010¢\u0006\u0004\b \u0010!J\u001d\u0010\"\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\"\u0010#J\u001b\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0\u00152\u0006\u0010$\u001a\u00020\u0010¢\u0006\u0004\b%\u0010&J\u001d\u0010*\u001a\u00020)2\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020\u001b¢\u0006\u0004\b*\u0010+J%\u0010.\u001a\u00020)2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b.\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00102R\u001b\u00108\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00105\u001a\u0004\b;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00105\u001a\u0004\b@\u0010A¨\u0006C"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/UserBehaviorRepository;", "", "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "playListRepository", "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "videoRecordRepository", "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "mAudioPlayRecordRepository", MethodDecl.initName, "(Lcom/transsion/dbdata/source/data/repository/PlayListRepository;Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;)V", "Lcom/transsion/dbdata/beans/media/MediaItem;", "item", "", "fromVideo", "Lkotlin/Function1;", "delete", "", "deleteSystemMediaItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)I", "Ld82$l;", "action", "", "deleteSystemMediaItems", "(Ld82$l;)Ljava/util/List;", "Ld82$k;", "(Ld82$k;)I", "mediaId", "", Progress.FILE_PATH, "coverPath", "smartUpdateAudioCustomCover", "(ILjava/lang/String;Ljava/lang/String;)I", "getAudioCustomCover", "(I)Ljava/lang/String;", "recordVideo2Audio", "(ILjava/lang/String;)I", "limitCount", "getConvertedAudioPaths", "(I)Ljava/util/List;", "newPath", "oldPath", "Lzfb;", "updateInMediaStore", "(Ljava/lang/String;Ljava/lang/String;)V", "oldMediaItem", "newMediaItem", "updateSystemMediaItemName", "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V", "Lcom/transsion/dbdata/source/data/repository/PlayListRepository;", "Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "Lcom/transsion/dbdata/source/data/repository/AudioPlayHistoryRepository;", "Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;", "mMediaStoreOperateRepository$delegate", "Lyi5;", "getMMediaStoreOperateRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;", "mMediaStoreOperateRepository", "Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mediaDataMissingRepository$delegate", "getMediaDataMissingRepository", "()Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "mediaDataMissingRepository", "Lnjb;", "mUserBehaviorItemDao$delegate", "getMUserBehaviorItemDao", "()Lnjb;", "mUserBehaviorItemDao", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UserBehaviorRepository {
    private final AudioPlayHistoryRepository mAudioPlayRecordRepository;

    private final yi5 mMediaStoreOperateRepository;

    private final yi5 mUserBehaviorItemDao;

    private final yi5 mediaDataMissingRepository;
    private final PlayListRepository playListRepository;
    private final VideoPlayHistoryRepository videoRecordRepository;

    public UserBehaviorRepository(PlayListRepository playListRepository, VideoPlayHistoryRepository videoPlayHistoryRepository, AudioPlayHistoryRepository audioPlayHistoryRepository) {
        y45.j(playListRepository, "playListRepository");
        y45.j(videoPlayHistoryRepository, "videoRecordRepository");
        y45.j(audioPlayHistoryRepository, "mAudioPlayRecordRepository");
        this.playListRepository = playListRepository;
        this.videoRecordRepository = videoPlayHistoryRepository;
        this.mAudioPlayRecordRepository = audioPlayHistoryRepository;
        this.mMediaStoreOperateRepository = b.a(new c74() {
            @Override
            public final Object invoke() {
                return UserBehaviorRepository.mMediaStoreOperateRepository_delegate$lambda$0();
            }
        });
        this.mediaDataMissingRepository = b.a(new c74() {
            @Override
            public final Object invoke() {
                return UserBehaviorRepository.mediaDataMissingRepository_delegate$lambda$1();
            }
        });
        this.mUserBehaviorItemDao = b.a(new c74() {
            @Override
            public final Object invoke() {
                return UserBehaviorRepository.mUserBehaviorItemDao_delegate$lambda$2();
            }
        });
    }

    private final MediaStoreOperateRepository getMMediaStoreOperateRepository() {
        return (MediaStoreOperateRepository) this.mMediaStoreOperateRepository.getValue();
    }

    private final njb getMUserBehaviorItemDao() {
        return (njb) this.mUserBehaviorItemDao.getValue();
    }

    private final MediaDataMissingRepository getMediaDataMissingRepository() {
        return (MediaDataMissingRepository) this.mediaDataMissingRepository.getValue();
    }

    public static final MediaStoreOperateRepository mMediaStoreOperateRepository_delegate$lambda$0() {
        return new MediaStoreOperateRepository();
    }

    public static final njb mUserBehaviorItemDao_delegate$lambda$2() {
        return MediaRoomDatabase.INSTANCE.d().l();
    }

    public static final MediaDataMissingRepository mediaDataMissingRepository_delegate$lambda$1() {
        return new MediaDataMissingRepository();
    }

    public final int deleteSystemMediaItem(d82.k action) {
        y45.j(action, "action");
        return deleteSystemMediaItem(action.c(), action.b(), action.a());
    }

    public final List<Integer> deleteSystemMediaItems(d82.l action) {
        y45.j(action, "action");
        List listC = action.c();
        ArrayList arrayList = new ArrayList(z71.v(listC, 10));
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(deleteSystemMediaItem((MediaItem) it.next(), action.b(), action.a())));
        }
        return arrayList;
    }

    public final String getAudioCustomCover(int mediaId) {
        UserBehaviorItem byMediaId = getMUserBehaviorItemDao().getByMediaId(mediaId);
        if (byMediaId != null) {
            return byMediaId.getCustomCover();
        }
        return null;
    }

    public final List<String> getConvertedAudioPaths(int limitCount) {
        return getMUserBehaviorItemDao().getConvertedAudioPathsOrderByTime(limitCount);
    }

    public final int recordVideo2Audio(int mediaId, String filePath) {
        y45.j(filePath, Progress.FILE_PATH);
        return (int) getMUserBehaviorItemDao().insertSingle(new UserBehaviorItem(0L, Integer.valueOf(mediaId), 1, true, System.currentTimeMillis(), filePath, null, false, false, false, 961, null));
    }

    @Transaction
    public final int smartUpdateAudioCustomCover(int mediaId, String filePath, String coverPath) {
        y45.j(filePath, Progress.FILE_PATH);
        y45.j(coverPath, "coverPath");
        int iUpdateCoverPath = getMUserBehaviorItemDao().updateCoverPath(mediaId, coverPath);
        if (iUpdateCoverPath != 0) {
            return iUpdateCoverPath;
        }
        return (int) getMUserBehaviorItemDao().insertSingle(new UserBehaviorItem(0L, Integer.valueOf(mediaId), 1, false, 0L, filePath, coverPath, false, false, false, 921, null));
    }

    public final void updateInMediaStore(String newPath, String oldPath) {
        y45.j(newPath, "newPath");
        y45.j(oldPath, "oldPath");
        getMMediaStoreOperateRepository().updateInMediaStore(newPath, oldPath);
    }

    public final void updateSystemMediaItemName(MediaItem oldMediaItem, MediaItem newMediaItem, boolean fromVideo) {
        int iUpdateMediaIdAndPath;
        y45.j(oldMediaItem, "oldMediaItem");
        y45.j(newMediaItem, "newMediaItem");
        PlayListRepository playListRepository = this.playListRepository;
        int i = oldMediaItem.id;
        int i2 = newMediaItem.id;
        String str = newMediaItem.data;
        y45.i(str, "data");
        playListRepository.updatePlayListElement(i, i2, str);
        if (!fromVideo) {
            if (getMUserBehaviorItemDao().getByMediaId(oldMediaItem.id) != null) {
                njb mUserBehaviorItemDao = getMUserBehaviorItemDao();
                int i3 = oldMediaItem.id;
                int i4 = newMediaItem.id;
                String str2 = newMediaItem.data;
                y45.i(str2, "data");
                iUpdateMediaIdAndPath = mUserBehaviorItemDao.updateMediaIdAndPath(i3, i4, str2);
            } else {
                njb mUserBehaviorItemDao2 = getMUserBehaviorItemDao();
                String str3 = oldMediaItem.data;
                y45.i(str3, "data");
                if (mUserBehaviorItemDao2.getByMediaPath(str3) != null) {
                    njb mUserBehaviorItemDao3 = getMUserBehaviorItemDao();
                    String str4 = oldMediaItem.data;
                    y45.i(str4, "data");
                    int i5 = newMediaItem.id;
                    String str5 = newMediaItem.data;
                    y45.i(str5, "data");
                    iUpdateMediaIdAndPath = mUserBehaviorItemDao3.updateMediaIdAndPath(str4, i5, str5);
                } else {
                    iUpdateMediaIdAndPath = -1;
                }
            }
            Log.d("ItemExt", "behaviorItemUpdate: " + iUpdateMediaIdAndPath);
        }
        if (fromVideo) {
            this.videoRecordRepository.updateByRename(oldMediaItem, newMediaItem);
        }
        MediaCombineCacheManager.Companion companion = MediaCombineCacheManager.INSTANCE;
        companion.getInstance().updateFavorite(oldMediaItem, newMediaItem, fromVideo);
        MediaCombineCacheManager companion2 = companion.getInstance();
        String str6 = oldMediaItem.data;
        y45.i(str6, "data");
        String str7 = newMediaItem.data;
        y45.i(str7, "data");
        companion2.synCountWhenReName(str6, str7);
        companion.getInstance().updateRecentId(oldMediaItem.id, newMediaItem.id, fromVideo);
    }

    private final int deleteSystemMediaItem(MediaItem item, boolean fromVideo, e74 delete) {
        boolean zBooleanValue = ((Boolean) delete.invoke(item)).booleanValue();
        if (zBooleanValue) {
            if (fromVideo) {
                this.videoRecordRepository.delete(item);
            } else {
                AudioPlayHistoryRepository audioPlayHistoryRepository = this.mAudioPlayRecordRepository;
                long j = item.id;
                String str = item.data;
                y45.i(str, "data");
                audioPlayHistoryRepository.deleteByMediaId(j, str);
            }
            getMMediaStoreOperateRepository().deleteFileInMediaStore(x71.e(item.data));
            this.playListRepository.deletePlayListElementById(item.id);
            getMUserBehaviorItemDao().deleteByMediaId(item.id);
            MediaDataMissingRepository mediaDataMissingRepository = getMediaDataMissingRepository();
            String str2 = item.data;
            y45.i(str2, "data");
            mediaDataMissingRepository.deleteSingleMissingData(str2, fromVideo);
            MediaCombineCacheManager.Companion companion = MediaCombineCacheManager.INSTANCE;
            MediaCombineCacheManager companion2 = companion.getInstance();
            String str3 = item.data;
            y45.i(str3, "data");
            companion2.removeFavorite(str3, fromVideo);
            MediaCombineCacheManager companion3 = companion.getInstance();
            String str4 = item.data;
            y45.i(str4, "data");
            companion3.synCountWhenDelete(str4);
            companion.getInstance().deleteRecentId(item.id, fromVideo);
        }
        return zBooleanValue ? 1 : -1;
    }
}
