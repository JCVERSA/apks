package com.transsion.dbdata.source.data.repository;

import android.database.Cursor;
import android.util.Log;
import androidx.annotation.WorkerThread;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.database.VideoRecord;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.repository.VideoPlayHistoryRepository;
import com.transsion.dbdata.utils.LoadDataUtils;
import defpackage.c74;
import defpackage.e74;
import defpackage.g5c;
import defpackage.h27;
import defpackage.i81;
import defpackage.j05;
import defpackage.ky5;
import defpackage.ly0;
import defpackage.ruc;
import defpackage.se;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.b;
import kotlin.c;
import kotlin.comparisons.a;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 M2\u00020\u0001:\u0001MB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\u0003J>\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00042\u0014\b\u0004\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\n0\u0013H\u0082\b¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u00192\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001e\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001f\u0010 J'\u0010#\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!H\u0007¢\u0006\u0004\b#\u0010$J\u001f\u0010'\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\b2\u0006\u0010&\u001a\u00020\bH\u0007¢\u0006\u0004\b'\u0010(J\u0017\u0010)\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b)\u0010*J+\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u00192\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b/\u00100J\u001f\u0010\u000b\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u000b\u00102J\u001d\u00103\u001a\u00020\u001a2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u001aH\u0007¢\u0006\u0004\b5\u00106R\u001b\u0010<\u001a\u0002078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u00109\u001a\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR \u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000e0E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u001b\u0010L\u001a\u00020H8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u00109\u001a\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/VideoPlayHistoryRepository;", "", MethodDecl.initName, "()V", "", "isOnlineVideo", "Lcom/transsion/dbdata/beans/media/PlayVideoData;", "videoData", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItem", "Lzfb;", "deleteRecord", "(ZLcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;)V", "updateCache", "Lcom/transsion/dbdata/database/VideoRecord;", "videoRecord", "", "data", "canDelete", "Lkotlin/Function1;", "predicate", "processYoutubeItem", "(Lcom/transsion/dbdata/database/VideoRecord;Ljava/lang/String;ZLe74;)V", "updateMediaItemWithRecordData", "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/database/VideoRecord;)V", "", "", "mediaIds", "queryBatchByIds", "(Ljava/util/List;)Ljava/util/List;", "mediaId", "query", "(I)Lcom/transsion/dbdata/database/VideoRecord;", "Lcom/transsion/dbdata/beans/PlayerStates;", "playStates", "insertOrUpdate", "(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z", "oldMediaItem", "newMediaItem", "updateByRename", "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;)Z", "delete", "(Lcom/transsion/dbdata/beans/media/MediaItem;)V", "count", "fromPlayer", "queryAll", "(IZZ)Ljava/util/List;", "queryOnline", "(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;", Progress.FILE_PATH, "(ILjava/lang/String;)I", "deleteBatchRecords", "(Ljava/util/List;)I", "deleteAllRecords", "()I", "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository$delegate", "Lyi5;", "getMVideoQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository", "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository$delegate", "getMFileQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mVideoRecordCacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/concurrent/ConcurrentHashMap;", "mVideoRecordCache", "Ljava/util/concurrent/ConcurrentHashMap;", "Lg5c;", "mVideoRecordDao$delegate", "getMVideoRecordDao", "()Lg5c;", "mVideoRecordDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoPlayHistoryRepository {
    private static final String TAG = "VideoRecordRepository";

    private final yi5 mVideoQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoPlayHistoryRepository.mVideoQueryRepository_delegate$lambda$0();
        }
    });

    private final yi5 mFileQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoPlayHistoryRepository.mFileQueryRepository_delegate$lambda$1();
        }
    });
    private final ReentrantReadWriteLock mVideoRecordCacheLock = new ReentrantReadWriteLock();
    private final ConcurrentHashMap<Integer, VideoRecord> mVideoRecordCache = new ConcurrentHashMap<>();

    private final yi5 mVideoRecordDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return VideoPlayHistoryRepository.mVideoRecordDao_delegate$lambda$2();
        }
    });

    private final void deleteRecord(boolean isOnlineVideo, PlayVideoData videoData, MediaItem mediaItem) {
        try {
            if (isOnlineVideo) {
                getMVideoRecordDao().deleteVideoRecordByData(videoData.mYoutubeId);
            } else {
                getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(mediaItem.data, mediaItem.id);
            }
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.remove(Integer.valueOf(mediaItem.id));
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
            } finally {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        } catch (Exception e) {
            Log.e(TAG, "deleteRecord error", e);
        }
    }

    private final SystemFileQueryRepository getMFileQueryRepository() {
        return (SystemFileQueryRepository) this.mFileQueryRepository.getValue();
    }

    private final SystemVideoQueryRepository getMVideoQueryRepository() {
        return (SystemVideoQueryRepository) this.mVideoQueryRepository.getValue();
    }

    private final g5c getMVideoRecordDao() {
        Object value = this.mVideoRecordDao.getValue();
        y45.i(value, "getValue(...)");
        return (g5c) value;
    }

    public static final SystemFileQueryRepository mFileQueryRepository_delegate$lambda$1() {
        return new SystemFileQueryRepository();
    }

    public static final SystemVideoQueryRepository mVideoQueryRepository_delegate$lambda$0() {
        return new SystemVideoQueryRepository();
    }

    public static final g5c mVideoRecordDao_delegate$lambda$2() {
        return VideoRoomDatabase.h(se.a()).f();
    }

    private final void processYoutubeItem(VideoRecord videoRecord, String data, boolean canDelete, e74 predicate) {
        MediaItem mediaItemA = ruc.a(data);
        if (mediaItemA != null) {
            updateMediaItemWithRecordData(mediaItemA, videoRecord);
            MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
            String str = mediaItemA.data;
            y45.i(str, "data");
            mediaItemA.isFavorite = companion.isFavorite(str);
            predicate.invoke(mediaItemA);
            return;
        }
        if (canDelete) {
            getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(data, videoRecord._id);
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.remove(Integer.valueOf(videoRecord._id));
            } finally {
                j05.b(1);
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
                j05.a(1);
            }
        }
    }

    private final List<MediaItem> queryBatchByIds(List<Integer> mediaIds) {
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList();
        List<MediaItem> listQueryWhatsAppMedias = getMVideoQueryRepository().queryWhatsAppMedias(mediaIds);
        List<MediaItem> list = listQueryWhatsAppMedias;
        if (!list.isEmpty()) {
            arrayList.addAll(list);
            List<Integer> list2 = mediaIds;
            List<MediaItem> list3 = listQueryWhatsAppMedias;
            ArrayList arrayList2 = new ArrayList(z71.v(list3, 10));
            Iterator<T> it = list3.iterator();
            while (it.hasNext()) {
                arrayList2.add(Integer.valueOf(((MediaItem) it.next()).id));
            }
            mediaIds = i81.F0(list2, i81.g1(arrayList2));
        }
        if (mediaIds.isEmpty()) {
            return arrayList;
        }
        List<MediaItem> listQueryBatchByIds = getMVideoQueryRepository().queryBatchByIds(mediaIds);
        List<MediaItem> list4 = listQueryBatchByIds;
        if (!list4.isEmpty()) {
            arrayList.addAll(list4);
            List<Integer> list5 = mediaIds;
            List<MediaItem> list6 = listQueryBatchByIds;
            ArrayList arrayList3 = new ArrayList(z71.v(list6, 10));
            Iterator<T> it2 = list6.iterator();
            while (it2.hasNext()) {
                arrayList3.add(Integer.valueOf(((MediaItem) it2.next()).id));
            }
            mediaIds = i81.F0(list5, i81.g1(arrayList3));
        }
        if (mediaIds.isEmpty()) {
            return arrayList;
        }
        List<MediaItem> listQueryBatchVideoByIds = getMFileQueryRepository().queryBatchVideoByIds(mediaIds);
        if (!listQueryBatchVideoByIds.isEmpty()) {
            arrayList.addAll(listQueryBatchVideoByIds);
        }
        return arrayList;
    }

    @WorkerThread
    private final void updateCache() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            this.mVideoRecordCache.clear();
            List<VideoRecord> allRecordOrderRecordDate = getMVideoRecordDao().getAllRecordOrderRecordDate();
            y45.i(allRecordOrderRecordDate, "getAllRecordOrderRecordDate(...)");
            if (allRecordOrderRecordDate.isEmpty()) {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
                return;
            }
            List<VideoRecord> list = allRecordOrderRecordDate;
            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
            for (Object obj : list) {
                linkedHashMap.put(Integer.valueOf(((VideoRecord) obj)._id), obj);
            }
            this.mVideoRecordCache.putAll(linkedHashMap);
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    private final void updateMediaItemWithRecordData(MediaItem mediaItem, VideoRecord videoRecord) {
        mediaItem.setVirtualFolder(videoRecord.isVirtualFolder == 1);
        mediaItem.setVirtualFolderMatchName(videoRecord.virtualFolder_matchName);
        mediaItem.setPlayPosition(videoRecord.position);
        mediaItem.isPlayComplete = videoRecord.isPlayCompleted == 1;
        mediaItem.setSubtitleIndex(videoRecord.subtitle_index);
        mediaItem.dateToken = mediaItem.dateModified;
        mediaItem.dateModified = videoRecord.record_date_modified / ((long) 1000);
        mediaItem.duration = videoRecord.duration;
    }

    @WorkerThread
    public final void delete(MediaItem mediaItem) {
        Object objM279constructorimpl;
        y45.j(mediaItem, "mediaItem");
        int i = mediaItem.id;
        if (i <= 0) {
            Log.w(TAG, "Invalid media item id: " + i);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Cursor videoRecordByMediaIdAndBuickId = getMVideoRecordDao().getVideoRecordByMediaIdAndBuickId(mediaItem.id, (int) mediaItem.bucketId);
            if (videoRecordByMediaIdAndBuickId != null) {
                Cursor cursor = videoRecordByMediaIdAndBuickId;
                try {
                    if (cursor.moveToFirst()) {
                        getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(mediaItem.data, mediaItem.id);
                        ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
                        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
                        int i2 = 0;
                        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                        for (int i3 = 0; i3 < readHoldCount; i3++) {
                            lock.unlock();
                        }
                        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                        writeLock.lock();
                        try {
                            this.mVideoRecordCache.remove(Integer.valueOf(mediaItem.id));
                            while (i2 < readHoldCount) {
                                lock.lock();
                                i2++;
                            }
                            writeLock.unlock();
                        } catch (Throwable th) {
                            while (i2 < readHoldCount) {
                                lock.lock();
                                i2++;
                            }
                            writeLock.unlock();
                            throw th;
                        }
                    }
                    zfb zfbVar = zfb.a;
                    ly0.a(cursor, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        ly0.a(cursor, th2);
                        throw th3;
                    }
                }
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th4));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            Log.e(TAG, "deleteVideoRecord error", thM282exceptionOrNullimpl);
        }
    }

    @WorkerThread
    public final int deleteAllRecords() {
        int iDeleteAllVideoRecord = getMVideoRecordDao().deleteAllVideoRecord();
        if (iDeleteAllVideoRecord > 0) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.clear();
                zfb zfbVar = zfb.a;
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
            } finally {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        }
        return iDeleteAllVideoRecord;
    }

    @WorkerThread
    public final int deleteBatchRecords(List<Integer> mediaIds) {
        y45.j(mediaIds, "mediaIds");
        int i = 0;
        if (mediaIds.isEmpty()) {
            return 0;
        }
        int iDeleteBatchVideoRecordsByMediaIds = getMVideoRecordDao().deleteBatchVideoRecordsByMediaIds(mediaIds);
        if (iDeleteBatchVideoRecordsByMediaIds > 0) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                Iterator<T> it = mediaIds.iterator();
                while (it.hasNext()) {
                    this.mVideoRecordCache.remove(Integer.valueOf(((Number) it.next()).intValue()));
                }
                zfb zfbVar = zfb.a;
            } finally {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        }
        return iDeleteBatchVideoRecordsByMediaIds;
    }

    @WorkerThread
    public final boolean insertOrUpdate(PlayVideoData videoData, MediaItem mediaItem, PlayerStates playStates) {
        y45.j(videoData, "videoData");
        y45.j(mediaItem, "mediaItem");
        y45.j(playStates, "playStates");
        boolean z = videoData.isFromNet;
        if (!z && !LoadDataUtils.m(mediaItem.id)) {
            Log.w(TAG, "recordVideoStates not isLegalID");
            return false;
        }
        VideoRecord theVideoRecordMediaCountByData = z ? getMVideoRecordDao().getTheVideoRecordMediaCountByData(videoData.mYoutubeId) : getMVideoRecordDao().getTheVideoRecordMediaCountById(mediaItem.id);
        boolean z2 = theVideoRecordMediaCountByData != null;
        int i = playStates.currentPosition;
        if (i <= 1000 && playStates.state == -1) {
            Log.w(TAG, "not recordVideoStates the video can't play，isExistRecord:" + z2);
            if (z2) {
                deleteRecord(z, videoData, mediaItem);
            }
            return false;
        }
        int i2 = (playStates.state == 6 || ((long) i) >= (z ? videoData.duration * ((long) 1000) : mediaItem.duration)) ? 1 : 0;
        VideoRecord videoRecord = theVideoRecordMediaCountByData == null ? new VideoRecord() : theVideoRecordMediaCountByData;
        videoRecord.data = z ? videoData.mYoutubeId : mediaItem.data;
        videoRecord.position = (!z || i2 == 0) ? playStates.currentPosition : (int) videoData.duration;
        videoRecord.duration = (int) mediaItem.duration;
        videoRecord.isPlayCompleted = i2;
        videoRecord.isVirtualFolder = videoData.isVirtualFolder ? 1 : 0;
        String str = videoData.virtualFolderMatchName;
        if (str == null) {
            str = "";
        }
        videoRecord.virtualFolder_matchName = str;
        videoRecord.bucket_id = (int) mediaItem.bucketId;
        videoRecord._id = mediaItem.id;
        videoRecord.record_date_modified = System.currentTimeMillis();
        videoRecord.subtitle_index = playStates.subtitleIndex;
        videoRecord.playCount = z2 ? (theVideoRecordMediaCountByData != null ? theVideoRecordMediaCountByData.playCount : 0) + 1 : 1;
        boolean z3 = !z2 ? getMVideoRecordDao().insertVideoRecord(videoRecord) <= 0 : getMVideoRecordDao().updateVideoRecord(videoRecord) <= 0;
        if (z3) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i3 = 0; i3 < readHoldCount; i3++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.put(Integer.valueOf(videoRecord._id), videoRecord);
                zfb zfbVar = zfb.a;
                for (int i4 = 0; i4 < readHoldCount; i4++) {
                    lock.lock();
                }
                writeLock.unlock();
                String str2 = videoRecord.data;
                if (str2 != null && str2.length() != 0) {
                    MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
                    String str3 = videoRecord.data;
                    y45.i(str3, "data");
                    companion.syncPlayCount(str3, videoRecord.playCount);
                    h27.c().e(1188, new Object[0]);
                }
            } catch (Throwable th) {
                for (int i5 = 0; i5 < readHoldCount; i5++) {
                    lock.lock();
                }
                writeLock.unlock();
                throw th;
            }
        }
        return z3;
    }

    @WorkerThread
    public final VideoRecord query(int mediaId) {
        ReentrantReadWriteLock.ReadLock lock = this.mVideoRecordCacheLock.readLock();
        lock.lock();
        try {
            VideoRecord videoRecord = this.mVideoRecordCache.get(Integer.valueOf(mediaId));
            lock.unlock();
            if (videoRecord != null) {
                return videoRecord;
            }
            VideoRecord theVideoRecordMediaCountById = getMVideoRecordDao().getTheVideoRecordMediaCountById(mediaId);
            if (theVideoRecordMediaCountById == null) {
                return null;
            }
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.put(Integer.valueOf(mediaId), theVideoRecordMediaCountById);
                zfb zfbVar = zfb.a;
                while (i < readHoldCount) {
                    lock2.lock();
                    i++;
                }
                return theVideoRecordMediaCountById;
            } finally {
                while (i < readHoldCount) {
                    lock2.lock();
                    i++;
                }
                writeLock.unlock();
            }
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    public final List<MediaItem> queryAll(int count, boolean canDelete, boolean fromPlayer) {
        Map mapL;
        updateCache();
        ReentrantReadWriteLock.ReadLock lock = this.mVideoRecordCacheLock.readLock();
        lock.lock();
        try {
            Collection<VideoRecord> collectionValues = this.mVideoRecordCache.values();
            y45.i(collectionValues, "<get-values>(...)");
            List listT0 = i81.T0(i81.b1(collectionValues), new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t, T t2) {
                    return a.d(Long.valueOf(((VideoRecord) t2).record_date_modified), Long.valueOf(((VideoRecord) t).record_date_modified));
                }
            });
            lock.unlock();
            if (listT0.isEmpty()) {
                return y71.k();
            }
            List list = listT0;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Integer.valueOf(((VideoRecord) it.next())._id));
            }
            if (arrayList.isEmpty()) {
                mapL = kotlin.collections.a.l();
            } else {
                List<MediaItem> listQueryBatchByIds = queryBatchByIds(arrayList);
                mapL = new LinkedHashMap(wn8.d(ky5.g(z71.v(listQueryBatchByIds, 10)), 16));
                for (Object obj : listQueryBatchByIds) {
                    mapL.put(((MediaItem) obj).data, obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            HashSet hashSet = new HashSet();
            for (Object obj2 : listT0) {
                y45.i(obj2, "next(...)");
                VideoRecord videoRecord = (VideoRecord) obj2;
                if (arrayList2.size() >= count) {
                    break;
                }
                String str = videoRecord.data;
                if (str != null && str.length() != 0) {
                    if (hashSet.contains(str)) {
                        Log.w(TAG, "queryAllVideoStates have duplicate:" + videoRecord);
                    } else {
                        hashSet.add(str);
                        MediaItem mediaItem = (MediaItem) mapL.get(str);
                        if (mediaItem != null) {
                            updateMediaItemWithRecordData(mediaItem, videoRecord);
                            arrayList2.add(mediaItem);
                        } else if (fromPlayer) {
                            continue;
                        } else {
                            MediaItem mediaItemA = ruc.a(str);
                            if (mediaItemA != null) {
                                updateMediaItemWithRecordData(mediaItemA, videoRecord);
                                MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
                                String str2 = mediaItemA.data;
                                y45.i(str2, "data");
                                mediaItemA.isFavorite = companion.isFavorite(str2);
                                arrayList2.add(mediaItemA);
                            } else if (canDelete) {
                                getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(str, videoRecord._id);
                                ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
                                ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock.readLock();
                                int i = 0;
                                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                                for (int i2 = 0; i2 < readHoldCount; i2++) {
                                    lock2.unlock();
                                }
                                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                                writeLock.lock();
                                try {
                                    this.mVideoRecordCache.remove(Integer.valueOf(videoRecord._id));
                                    while (i < readHoldCount) {
                                        lock2.lock();
                                        i++;
                                    }
                                    writeLock.unlock();
                                } catch (Throwable th) {
                                    while (i < readHoldCount) {
                                        lock2.lock();
                                        i++;
                                    }
                                    writeLock.unlock();
                                    throw th;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
            }
            return arrayList2;
        } catch (Throwable th2) {
            lock.unlock();
            throw th2;
        }
    }

    public final MediaItem queryOnline(String data) {
        y45.j(data, "data");
        VideoRecord theVideoRecordMediaCountByData = getMVideoRecordDao().getTheVideoRecordMediaCountByData(data);
        if (theVideoRecordMediaCountByData == null) {
            return null;
        }
        MediaItem mediaItemA = ruc.a(data);
        if (mediaItemA != null) {
            mediaItemA.isPlayComplete = theVideoRecordMediaCountByData.isPlayCompleted == 1;
            mediaItemA.setPlayPosition(theVideoRecordMediaCountByData.position);
            mediaItemA.dateToken = mediaItemA.dateModified;
            mediaItemA.dateModified = theVideoRecordMediaCountByData.record_date_modified / ((long) 1000);
        } else {
            getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(data, theVideoRecordMediaCountByData._id);
        }
        return mediaItemA;
    }

    @WorkerThread
    public final boolean updateByRename(MediaItem oldMediaItem, MediaItem newMediaItem) {
        VideoRecord videoRecord;
        y45.j(oldMediaItem, "oldMediaItem");
        y45.j(newMediaItem, "newMediaItem");
        List<VideoRecord> videoRecordListByMediaIdAndBuickId = getMVideoRecordDao().getVideoRecordListByMediaIdAndBuickId(oldMediaItem.id, (int) oldMediaItem.bucketId);
        int i = 0;
        if (videoRecordListByMediaIdAndBuickId == null || (videoRecord = (VideoRecord) i81.q0(videoRecordListByMediaIdAndBuickId)) == null) {
            return false;
        }
        videoRecord.data = newMediaItem.data;
        videoRecord._id = newMediaItem.id;
        boolean z = getMVideoRecordDao().updateVideoRecord(videoRecord) > 0;
        if (z) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.remove(Integer.valueOf(oldMediaItem.id));
                this.mVideoRecordCache.put(Integer.valueOf(newMediaItem.id), videoRecord);
                zfb zfbVar = zfb.a;
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
            } finally {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        }
        return z;
    }

    @WorkerThread
    public final int deleteRecord(int mediaId, String filePath) {
        y45.j(filePath, Progress.FILE_PATH);
        int iDeleteVideoRecordByMediaIdAndData = getMVideoRecordDao().deleteVideoRecordByMediaIdAndData(filePath, mediaId);
        if (iDeleteVideoRecordByMediaIdAndData > 0) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoRecordCacheLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mVideoRecordCache.remove(Integer.valueOf(mediaId));
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
            } finally {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        }
        return iDeleteVideoRecordByMediaIdAndData;
    }
}
