package com.transsion.dbdata.source.data.repository;

import android.net.Uri;
import android.util.Log;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import com.transsion.dbdata.database.MusicVideoDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.repository.AudioMVRepository;
import defpackage.abb;
import defpackage.bw6;
import defpackage.c74;
import defpackage.e74;
import defpackage.f1a;
import defpackage.ge6;
import defpackage.i81;
import defpackage.j1a;
import defpackage.x71;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.function.Predicate;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.b;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 h2\u00020\u0001:\u0001hB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\f\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¢\u0006\u0004\b\f\u0010\tJ\u001d\u0010\r\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¢\u0006\u0004\b\r\u0010\tJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0019\u0010\u0018J'\u0010\u001b\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00040\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u001f\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\b\b\u0002\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\b\b\u0002\u0010#\u001a\u00020\u0007H\u0002¢\u0006\u0004\b&\u0010%J+\u0010)\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070'H\u0002¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005¢\u0006\u0004\b+\u0010\u0013J\u0015\u0010,\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b,\u0010\u0018J\u001b\u0010.\u001a\u00020\u00072\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00150\u0004¢\u0006\u0004\b.\u0010\tJ\u0017\u00100\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020/¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u0004\u0018\u00010\n2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b2\u0010\"J\u001d\u00103\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\b\b\u0002\u0010#\u001a\u00020\u0007¢\u0006\u0004\b3\u0010%J-\u00107\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00150\u00042\n\b\u0002\u00106\u001a\u0004\u0018\u000105¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u00106\u001a\u000205¢\u0006\u0004\b9\u0010:J\u001b\u0010<\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010;\u001a\u00020\u0015¢\u0006\u0004\b<\u0010=J)\u0010@\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\b\u0010>\u001a\u0004\u0018\u0001052\b\u0010?\u001a\u0004\u0018\u000105¢\u0006\u0004\b@\u0010AJ-\u0010E\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\n\b\u0002\u0010C\u001a\u0004\u0018\u00010B2\n\b\u0002\u0010D\u001a\u0004\u0018\u000105¢\u0006\u0004\bE\u0010FJ\u001f\u0010G\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\b\u0010D\u001a\u0004\u0018\u000105¢\u0006\u0004\bG\u0010:J\u001f\u0010I\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00042\b\u0010H\u001a\u0004\u0018\u000105¢\u0006\u0004\bI\u0010:J\u0013\u0010J\u001a\b\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\u0004\bJ\u0010\u001eJ\u0015\u0010M\u001a\u00020\u000e2\u0006\u0010L\u001a\u00020K¢\u0006\u0004\bM\u0010NR\u001b\u0010T\u001a\u00020O8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010SR\u001b\u0010Y\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010Q\u001a\u0004\bW\u0010XR\u001a\u0010[\u001a\b\u0012\u0004\u0012\u00020\n0Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u001a\u0010]\u001a\b\u0012\u0004\u0012\u00020\n0Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010\\R#\u0010c\u001a\n _*\u0004\u0018\u00010^0^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010Q\u001a\u0004\ba\u0010bR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010fR\u0014\u0010g\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010f¨\u0006i"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "", MethodDecl.initName, "()V", "", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItemList", "", "insertBatchByUser", "(Ljava/util/List;)Z", "Lcom/transsion/dbdata/beans/media/AudioItem;", "mediaItems", "updateAllUserAddCache", "updateAllScanCache", "Lzfb;", "clearAllUserAddCache", "clearAllScanCache", "mediaItem", "addToUserAddCache", "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z", "addToScanCache", "", "mediaId", "removeFromUserAddCache", "(I)Z", "removeFromScanCache", "Lkotlin/Pair;", "getCacheSnapshot", "()Lkotlin/Pair;", "getAllCacheList", "()Ljava/util/List;", "Lxk8$x;", "action", "querySingleMVFromDB", "(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;", "isForceUpdate", "queryAllMVListFromSystem", "(Z)Ljava/util/List;", "queryAllMVListFromUser", "Lkotlin/Function1;", "predicate", "queryFromCache", "(Le74;)Ljava/util/List;", "insertSingleByUser", "deleteSingleByUser", "mediaIdList", "deleteBatchByUser", "Lxk8$g;", "querySingleMVFromCache", "(Lxk8$g;)Lcom/transsion/dbdata/beans/media/AudioItem;", "querySingleMV", "queryAllMVList", "mediaIds", "", "displayName", "queryMVList", "(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;", "searchMVList", "(Ljava/lang/String;)Ljava/util/List;", "minPlayCount", "queryTopPlayedMVList", "(I)Ljava/util/List;", "albumName", "artistName", "queryAlbumArtistMVList", "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;", "", "bucketId", PlayAudioData.TAG_PARENT_PATH, "queryBucketMVList", "(Ljava/lang/Long;Ljava/lang/String;)Ljava/util/List;", "queryParentPathMVList", "title", "queryTitleMVList", "queryRecentMVList", "Landroid/net/Uri;", "uri", "refreshCacheAndUserTable", "(Landroid/net/Uri;)V", "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository$delegate", "Lyi5;", "getMVideoQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository", "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository$delegate", "getMFileQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository", "Ljava/util/concurrent/CopyOnWriteArrayList;", "musicVideoAddByUserCache", "Ljava/util/concurrent/CopyOnWriteArrayList;", "scanMusicVideoCache", "Lbw6;", "kotlin.jvm.PlatformType", "mUserMusicVideoDao$delegate", "getMUserMusicVideoDao", "()Lbw6;", "mUserMusicVideoDao", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "scanMusicVideoCacheRWLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "musicVideoAddByUserCacheRWLock", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioMVRepository {

    public static final Companion INSTANCE = new Companion(null);
    private static final yi5 manager$delegate = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return AudioMVRepository.manager_delegate$lambda$55();
        }
    });

    private final yi5 mVideoQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioMVRepository.mVideoQueryRepository_delegate$lambda$0();
        }
    });

    private final yi5 mFileQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioMVRepository.mFileQueryRepository_delegate$lambda$1();
        }
    });
    private final CopyOnWriteArrayList<AudioItem> musicVideoAddByUserCache = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<AudioItem> scanMusicVideoCache = new CopyOnWriteArrayList<>();

    private final yi5 mUserMusicVideoDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return AudioMVRepository.mUserMusicVideoDao_delegate$lambda$2();
        }
    });
    private final ReentrantReadWriteLock scanMusicVideoCacheRWLock = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock musicVideoAddByUserCacheRWLock = new ReentrantReadWriteLock();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/AudioMVRepository$Companion;", "", MethodDecl.initName, "()V", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "getInstance", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "manager$delegate", "Lyi5;", "getManager", "manager", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final AudioMVRepository getManager() {
            return (AudioMVRepository) AudioMVRepository.manager$delegate.getValue();
        }

        public final AudioMVRepository getInstance() {
            return getManager();
        }

        private Companion() {
        }
    }

    private AudioMVRepository() {
    }

    private final boolean addToScanCache(MediaItem mediaItem) {
        AudioItem audioItem = new AudioItem(mediaItem);
        this.scanMusicVideoCacheRWLock.readLock().lock();
        try {
            CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.scanMusicVideoCache;
            boolean zAdd = false;
            if (copyOnWriteArrayList == null || !copyOnWriteArrayList.isEmpty()) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    if (((AudioItem) it.next()).id == audioItem.id) {
                        this.scanMusicVideoCacheRWLock.readLock().unlock();
                        return false;
                    }
                }
            }
            this.scanMusicVideoCacheRWLock.readLock().unlock();
            this.scanMusicVideoCacheRWLock.writeLock().lock();
            try {
                CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList2 = this.scanMusicVideoCache;
                if (copyOnWriteArrayList2 == null || !copyOnWriteArrayList2.isEmpty()) {
                    Iterator<T> it2 = copyOnWriteArrayList2.iterator();
                    while (it2.hasNext()) {
                        if (((AudioItem) it2.next()).id == audioItem.id) {
                            return zAdd;
                        }
                    }
                }
                zAdd = this.scanMusicVideoCache.add(audioItem);
                return zAdd;
            } finally {
                this.scanMusicVideoCacheRWLock.writeLock().unlock();
            }
        } catch (Throwable th) {
            this.scanMusicVideoCacheRWLock.readLock().unlock();
            throw th;
        }
    }

    private final boolean addToUserAddCache(MediaItem mediaItem) {
        AudioItem audioItem = new AudioItem(mediaItem);
        this.musicVideoAddByUserCacheRWLock.readLock().lock();
        try {
            CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.musicVideoAddByUserCache;
            boolean zAdd = false;
            if (copyOnWriteArrayList == null || !copyOnWriteArrayList.isEmpty()) {
                Iterator<T> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    if (((AudioItem) it.next()).id == audioItem.id) {
                        this.musicVideoAddByUserCacheRWLock.readLock().unlock();
                        return false;
                    }
                }
            }
            this.musicVideoAddByUserCacheRWLock.readLock().unlock();
            this.musicVideoAddByUserCacheRWLock.writeLock().lock();
            try {
                CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList2 = this.musicVideoAddByUserCache;
                if (copyOnWriteArrayList2 == null || !copyOnWriteArrayList2.isEmpty()) {
                    Iterator<T> it2 = copyOnWriteArrayList2.iterator();
                    while (it2.hasNext()) {
                        if (((AudioItem) it2.next()).id == audioItem.id) {
                            return zAdd;
                        }
                    }
                }
                zAdd = this.musicVideoAddByUserCache.add(audioItem);
                return zAdd;
            } finally {
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
            }
        } catch (Throwable th) {
            this.musicVideoAddByUserCacheRWLock.readLock().unlock();
            throw th;
        }
    }

    private final void clearAllScanCache() {
        this.scanMusicVideoCacheRWLock.writeLock().lock();
        try {
            this.scanMusicVideoCache.clear();
        } finally {
            this.scanMusicVideoCacheRWLock.writeLock().unlock();
        }
    }

    private final void clearAllUserAddCache() {
        this.musicVideoAddByUserCacheRWLock.writeLock().lock();
        try {
            this.musicVideoAddByUserCache.clear();
        } finally {
            this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
        }
    }

    public static final boolean deleteBatchByUser$lambda$10$lambda$9$lambda$7(int i, AudioItem audioItem) {
        return audioItem.id == i;
    }

    public static final boolean deleteBatchByUser$lambda$10$lambda$9$lambda$8(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    private final List<AudioItem> getAllCacheList() {
        return i81.J0(this.scanMusicVideoCache, this.musicVideoAddByUserCache);
    }

    private final Pair<List<AudioItem>, List<AudioItem>> getCacheSnapshot() {
        return abb.a(this.scanMusicVideoCache, this.musicVideoAddByUserCache);
    }

    public static final AudioMVRepository getInstance() {
        return INSTANCE.getInstance();
    }

    private final SystemFileQueryRepository getMFileQueryRepository() {
        return (SystemFileQueryRepository) this.mFileQueryRepository.getValue();
    }

    private final bw6 getMUserMusicVideoDao() {
        return (bw6) this.mUserMusicVideoDao.getValue();
    }

    private final SystemVideoQueryRepository getMVideoQueryRepository() {
        return (SystemVideoQueryRepository) this.mVideoQueryRepository.getValue();
    }

    private final boolean insertBatchByUser(List<? extends MediaItem> mediaItemList) {
        Object objM279constructorimpl;
        if (mediaItemList.isEmpty()) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.musicVideoAddByUserCacheRWLock.writeLock().lock();
            try {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = mediaItemList.iterator();
                while (it.hasNext()) {
                    AudioItem audioItem = new AudioItem((MediaItem) it.next());
                    CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.musicVideoAddByUserCache;
                    if (copyOnWriteArrayList == null || !copyOnWriteArrayList.isEmpty()) {
                        Iterator<T> it2 = copyOnWriteArrayList.iterator();
                        do {
                            if (it2.hasNext()) {
                            }
                        } while (((AudioItem) it2.next()).id != audioItem.id);
                        MusicVideoDataBean musicVideoDataBeanConvertToMusicVideoDataBean = audioItem.convertToMusicVideoDataBean();
                        y45.g(musicVideoDataBeanConvertToMusicVideoDataBean);
                        arrayList.add(musicVideoDataBeanConvertToMusicVideoDataBean);
                    }
                    this.musicVideoAddByUserCache.add(audioItem);
                    MusicVideoDataBean musicVideoDataBeanConvertToMusicVideoDataBean2 = audioItem.convertToMusicVideoDataBean();
                    y45.g(musicVideoDataBeanConvertToMusicVideoDataBean2);
                    arrayList.add(musicVideoDataBeanConvertToMusicVideoDataBean2);
                }
                getMUserMusicVideoDao().insertAll(arrayList);
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
                objM279constructorimpl = Result.m279constructorimpl(Boolean.TRUE);
            } catch (Throwable th) {
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th2));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            Log.e("MVRepository", "insertBatchByUser error: " + thM282exceptionOrNullimpl.getMessage());
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }

    public static final SystemFileQueryRepository mFileQueryRepository_delegate$lambda$1() {
        return new SystemFileQueryRepository();
    }

    public static final bw6 mUserMusicVideoDao_delegate$lambda$2() {
        return MusicVideoDatabase.a().b();
    }

    public static final SystemVideoQueryRepository mVideoQueryRepository_delegate$lambda$0() {
        return new SystemVideoQueryRepository();
    }

    public static final AudioMVRepository manager_delegate$lambda$55() {
        return new AudioMVRepository();
    }

    public static List queryAllMVList$default(AudioMVRepository audioMVRepository, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return audioMVRepository.queryAllMVList(z);
    }

    private final List<AudioItem> queryAllMVListFromSystem(boolean isForceUpdate) {
        if (!isForceUpdate) {
            this.scanMusicVideoCacheRWLock.readLock().lock();
            try {
                if (!this.scanMusicVideoCache.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.scanMusicVideoCache);
                    this.scanMusicVideoCacheRWLock.readLock().unlock();
                    return arrayList;
                }
                this.scanMusicVideoCacheRWLock.readLock().unlock();
            } catch (Throwable th) {
                this.scanMusicVideoCacheRWLock.readLock().unlock();
                throw th;
            }
        }
        clearAllScanCache();
        List listJ0 = i81.J0(getMVideoQueryRepository().queryAllMVList(), getMFileQueryRepository().queryAllMVList());
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listJ0) {
            if (hashSet.add(((MediaItem) obj).data)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(z71.v(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(new AudioItem((MediaItem) it.next()));
        }
        updateAllScanCache(arrayList3);
        return arrayList3;
    }

    public static List queryAllMVListFromSystem$default(AudioMVRepository audioMVRepository, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return audioMVRepository.queryAllMVListFromSystem(z);
    }

    private final List<AudioItem> queryAllMVListFromUser(boolean isForceUpdate) {
        if (!isForceUpdate) {
            this.musicVideoAddByUserCacheRWLock.readLock().lock();
            try {
                if (!this.musicVideoAddByUserCache.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.musicVideoAddByUserCache);
                    this.musicVideoAddByUserCacheRWLock.readLock().unlock();
                    return arrayList;
                }
                this.musicVideoAddByUserCacheRWLock.readLock().unlock();
            } catch (Throwable th) {
                this.musicVideoAddByUserCacheRWLock.readLock().unlock();
                throw th;
            }
        }
        clearAllUserAddCache();
        List<MusicVideoDataBean> all = getMUserMusicVideoDao().getAll();
        y45.g(all);
        List<MusicVideoDataBean> list = all;
        ArrayList arrayList2 = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(new AudioItem((MusicVideoDataBean) it.next()));
        }
        updateAllUserAddCache(arrayList2);
        return arrayList2;
    }

    public static List queryAllMVListFromUser$default(AudioMVRepository audioMVRepository, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return audioMVRepository.queryAllMVListFromUser(z);
    }

    public static List queryBucketMVList$default(AudioMVRepository audioMVRepository, Long l, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return audioMVRepository.queryBucketMVList(l, str);
    }

    private final List<AudioItem> queryFromCache(e74 predicate) {
        Pair<List<AudioItem>, List<AudioItem>> cacheSnapshot = getCacheSnapshot();
        List<AudioItem> listComponent1 = cacheSnapshot.component1();
        List<AudioItem> listComponent2 = cacheSnapshot.component2();
        if (listComponent1.isEmpty() && listComponent2.isEmpty()) {
            return null;
        }
        List listJ0 = i81.J0(listComponent1, listComponent2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listJ0) {
            if (((Boolean) predicate.invoke((AudioItem) obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static List queryMVList$default(AudioMVRepository audioMVRepository, List list, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return audioMVRepository.queryMVList(list, str);
    }

    public static final boolean queryMVList$lambda$34(String str, List list, AudioItem audioItem) {
        y45.j(audioItem, "it");
        if (str == null || str.length() == 0) {
            return list.contains(Integer.valueOf(audioItem.id));
        }
        return list.contains(Integer.valueOf(audioItem.id)) && y45.e(audioItem.displayName, str);
    }

    private final AudioItem querySingleMVFromDB(xk8.x action) {
        MusicVideoDataBean musicVideoListByDisplayName;
        if (action.c() > 0) {
            MusicVideoDataBean musicVideoById = getMUserMusicVideoDao().getMusicVideoById(action.c());
            if (musicVideoById != null) {
                return new AudioItem(musicVideoById);
            }
            return null;
        }
        if (action.d() != null) {
            MusicVideoDataBean musicVideoListByPath = getMUserMusicVideoDao().getMusicVideoListByPath(action.d());
            if (musicVideoListByPath != null) {
                return new AudioItem(musicVideoListByPath);
            }
            return null;
        }
        if (action.a() == null || (musicVideoListByDisplayName = getMUserMusicVideoDao().getMusicVideoListByDisplayName(action.a())) == null) {
            return null;
        }
        return new AudioItem(musicVideoListByDisplayName);
    }

    public static final AudioItem queryTopPlayedMVList$lambda$43(MediaItem mediaItem) {
        y45.j(mediaItem, "it");
        return new AudioItem(mediaItem);
    }

    public static final zfb queryTopPlayedMVList$lambda$44(AudioItem audioItem) {
        y45.j(audioItem, "it");
        MediaCombineCacheManager companion = MediaCombineCacheManager.INSTANCE.getInstance();
        String str = audioItem.data;
        y45.i(str, "data");
        audioItem.playCount = companion.getPlayCount(str);
        return zfb.a;
    }

    public static final boolean queryTopPlayedMVList$lambda$45(int i, AudioItem audioItem) {
        y45.j(audioItem, "it");
        return audioItem.playCount >= i;
    }

    public static final boolean refreshCacheAndUserTable$lambda$51(MediaItem mediaItem, AudioItem audioItem) {
        return audioItem.id == mediaItem.id;
    }

    public static final boolean refreshCacheAndUserTable$lambda$52(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean refreshCacheAndUserTable$lambda$53(AudioItem audioItem, AudioItem audioItem2) {
        return audioItem2.id == audioItem.id || y45.e(audioItem2.data, audioItem.data);
    }

    public static final boolean refreshCacheAndUserTable$lambda$54(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    private final boolean removeFromScanCache(final int mediaId) {
        this.scanMusicVideoCacheRWLock.writeLock().lock();
        try {
            CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.scanMusicVideoCache;
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(AudioMVRepository.removeFromScanCache$lambda$18(mediaId, (AudioItem) obj));
                }
            };
            return copyOnWriteArrayList.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AudioMVRepository.removeFromScanCache$lambda$19(e74Var, obj);
                }
            });
        } finally {
            this.scanMusicVideoCacheRWLock.writeLock().unlock();
        }
    }

    public static final boolean removeFromScanCache$lambda$18(int i, AudioItem audioItem) {
        return audioItem.id == i;
    }

    public static final boolean removeFromScanCache$lambda$19(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    private final boolean removeFromUserAddCache(final int mediaId) {
        this.musicVideoAddByUserCacheRWLock.writeLock().lock();
        try {
            CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.musicVideoAddByUserCache;
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(AudioMVRepository.removeFromUserAddCache$lambda$16(mediaId, (AudioItem) obj));
                }
            };
            return copyOnWriteArrayList.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AudioMVRepository.removeFromUserAddCache$lambda$17(e74Var, obj);
                }
            });
        } finally {
            this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
        }
    }

    public static final boolean removeFromUserAddCache$lambda$16(int i, AudioItem audioItem) {
        return audioItem.id == i;
    }

    public static final boolean removeFromUserAddCache$lambda$17(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean searchMVList$lambda$39(String str, AudioItem audioItem) {
        y45.j(audioItem, "it");
        String str2 = audioItem.displayName;
        y45.i(str2, "displayName");
        if (j1a.V(str2, str, true)) {
            return true;
        }
        String str3 = audioItem.title;
        y45.i(str3, "title");
        return j1a.V(str3, str, true);
    }

    private final boolean updateAllScanCache(List<? extends AudioItem> mediaItems) {
        this.scanMusicVideoCacheRWLock.writeLock().lock();
        try {
            this.scanMusicVideoCache.clear();
            return this.scanMusicVideoCache.addAll(mediaItems);
        } finally {
            this.scanMusicVideoCacheRWLock.writeLock().unlock();
        }
    }

    private final boolean updateAllUserAddCache(List<? extends AudioItem> mediaItems) {
        this.musicVideoAddByUserCacheRWLock.writeLock().lock();
        try {
            this.musicVideoAddByUserCache.clear();
            return this.musicVideoAddByUserCache.addAll(mediaItems);
        } finally {
            this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
        }
    }

    public final boolean deleteBatchByUser(List<Integer> mediaIdList) {
        Object objM279constructorimpl;
        y45.j(mediaIdList, "mediaIdList");
        if (mediaIdList.isEmpty()) {
            return false;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.musicVideoAddByUserCacheRWLock.writeLock().lock();
            try {
                Iterator<T> it = mediaIdList.iterator();
                while (it.hasNext()) {
                    final int iIntValue = ((Number) it.next()).intValue();
                    CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.musicVideoAddByUserCache;
                    final e74 e74Var = new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Boolean.valueOf(AudioMVRepository.deleteBatchByUser$lambda$10$lambda$9$lambda$7(iIntValue, (AudioItem) obj));
                        }
                    };
                    copyOnWriteArrayList.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return AudioMVRepository.deleteBatchByUser$lambda$10$lambda$9$lambda$8(e74Var, obj);
                        }
                    });
                    getMUserMusicVideoDao().deleteById(iIntValue);
                }
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
                objM279constructorimpl = Result.m279constructorimpl(Boolean.TRUE);
            } catch (Throwable th) {
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th2));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            Log.e("MVRepository", "deleteBatchByUser error: " + thM282exceptionOrNullimpl.getMessage());
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = bool;
        }
        return ((Boolean) objM279constructorimpl).booleanValue();
    }

    public final boolean deleteSingleByUser(int mediaId) {
        return deleteBatchByUser(x71.e(Integer.valueOf(mediaId)));
    }

    public final boolean insertSingleByUser(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return insertBatchByUser(x71.e(mediaItem));
    }

    public final List<AudioItem> queryAlbumArtistMVList(String albumName, String artistName) {
        List<MediaItem> listQueryAlbumArtistMVList = getMVideoQueryRepository().queryAlbumArtistMVList(albumName, artistName);
        if (listQueryAlbumArtistMVList == null) {
            return null;
        }
        List<MediaItem> list = listQueryAlbumArtistMVList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final List<AudioItem> queryAllMVList(boolean isForceUpdate) {
        return i81.J0(queryAllMVListFromSystem(isForceUpdate), queryAllMVListFromUser(isForceUpdate));
    }

    public final List<AudioItem> queryBucketMVList(Long bucketId, String parentPath) {
        List<MediaItem> list;
        List<MediaItem> listQueryBucketMVList = getMVideoQueryRepository().queryBucketMVList(bucketId, parentPath);
        List<MediaItem> listQueryBucketMVList2 = getMFileQueryRepository().queryBucketMVList(bucketId, parentPath);
        List<MediaItem> list2 = listQueryBucketMVList;
        if (list2 != null && !list2.isEmpty() && (list = listQueryBucketMVList2) != null && !list.isEmpty()) {
            listQueryBucketMVList = i81.J0(list2, listQueryBucketMVList2);
        } else if (listQueryBucketMVList == null) {
            listQueryBucketMVList = listQueryBucketMVList2;
        }
        if (listQueryBucketMVList == null) {
            return null;
        }
        List<MediaItem> list3 = listQueryBucketMVList;
        ArrayList arrayList = new ArrayList(z71.v(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final List<AudioItem> queryMVList(final List<Integer> mediaIds, final String displayName) {
        Collection collectionK;
        y45.j(mediaIds, "mediaIds");
        if (mediaIds.isEmpty()) {
            return y71.k();
        }
        List<AudioItem> listQueryFromCache = queryFromCache(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioMVRepository.queryMVList$lambda$34(displayName, mediaIds, (AudioItem) obj));
            }
        });
        if (listQueryFromCache != null) {
            return listQueryFromCache;
        }
        List<MediaItem> listQueryMVList = getMVideoQueryRepository().queryMVList(mediaIds, displayName);
        List<MediaItem> listQueryMVList2 = getMFileQueryRepository().queryMVList(mediaIds, displayName);
        List<MusicVideoDataBean> allByIds = (displayName == null || displayName.length() == 0) ? getMUserMusicVideoDao().getAllByIds(mediaIds) : getMUserMusicVideoDao().getAllByTitleAndIds(displayName, mediaIds);
        if (allByIds != null) {
            List<MusicVideoDataBean> list = allByIds;
            collectionK = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                collectionK.add(new AudioItem((MusicVideoDataBean) it.next()));
            }
        } else {
            collectionK = y71.k();
        }
        List listJ0 = i81.J0(listQueryMVList, listQueryMVList2);
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listJ0) {
            if (hashSet.add(((MediaItem) obj).data)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new AudioItem((MediaItem) it2.next()));
        }
        return i81.J0(arrayList2, collectionK);
    }

    public final List<AudioItem> queryParentPathMVList(String parentPath) {
        List<MediaItem> listQueryParentPathMVList = getMVideoQueryRepository().queryParentPathMVList(parentPath);
        if (listQueryParentPathMVList == null) {
            return null;
        }
        List<MediaItem> list = listQueryParentPathMVList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final List<AudioItem> queryRecentMVList() {
        List listJ0 = i81.J0(getMVideoQueryRepository().queryRecentMVList(), getMFileQueryRepository().queryRecentMVList());
        ArrayList arrayList = new ArrayList(z71.v(listJ0, 10));
        Iterator it = listJ0.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final AudioItem querySingleMV(xk8.x action) {
        y45.j(action, "action");
        AudioItem audioItemQuerySingleMVFromCache = querySingleMVFromCache(action);
        if (audioItemQuerySingleMVFromCache == null) {
            MediaItem mediaItemQuerySingleMV = getMVideoQueryRepository().querySingleMV(action);
            audioItemQuerySingleMVFromCache = mediaItemQuerySingleMV != null ? new AudioItem(mediaItemQuerySingleMV) : null;
        }
        if (audioItemQuerySingleMVFromCache == null) {
            MediaItem mediaItemQuerySingleMV2 = getMFileQueryRepository().querySingleMV(action);
            audioItemQuerySingleMVFromCache = mediaItemQuerySingleMV2 != null ? new AudioItem(mediaItemQuerySingleMV2) : null;
        }
        return audioItemQuerySingleMVFromCache == null ? querySingleMVFromDB(action) : audioItemQuerySingleMVFromCache;
    }

    public final AudioItem querySingleMVFromCache(xk8.g action) {
        y45.j(action, "action");
        List<AudioItem> allCacheList = getAllCacheList();
        Object obj = null;
        if (action.c() > 0) {
            for (Object obj2 : allCacheList) {
                if (((AudioItem) obj2).id == action.c()) {
                    obj = obj2;
                    break;
                }
            }
            return (AudioItem) obj;
        }
        if (action.d() != null) {
            for (Object obj3 : allCacheList) {
                if (y45.e(((AudioItem) obj3).data, action.d())) {
                    obj = obj3;
                    break;
                }
            }
            return (AudioItem) obj;
        }
        if (action.b() != null) {
            for (Object obj4 : allCacheList) {
                String str = ((AudioItem) obj4).data;
                y45.i(str, "data");
                if (j1a.X(str, action.b(), false, 2, null)) {
                    obj = obj4;
                    break;
                }
            }
            return (AudioItem) obj;
        }
        if (action.a() == null) {
            return null;
        }
        for (Object obj5 : allCacheList) {
            if (y45.e(((AudioItem) obj5).displayName, action.a())) {
                obj = obj5;
                break;
            }
        }
        return (AudioItem) obj;
    }

    public final List<AudioItem> queryTitleMVList(String title) {
        List<MediaItem> listQueryTitleMVList = getMVideoQueryRepository().queryTitleMVList(title);
        if (listQueryTitleMVList == null) {
            return null;
        }
        List<MediaItem> list = listQueryTitleMVList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new AudioItem((MediaItem) it.next()));
        }
        return arrayList;
    }

    public final List<AudioItem> queryTopPlayedMVList(final int minPlayCount) {
        return SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.F(SequencesKt___SequencesKt.U(SequencesKt___SequencesKt.R(i81.b0(i81.J0(getMVideoQueryRepository().queryAllMVList(), getMFileQueryRepository().queryAllMVList())), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return AudioMVRepository.queryTopPlayedMVList$lambda$43((MediaItem) obj);
            }
        }), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return AudioMVRepository.queryTopPlayedMVList$lambda$44((AudioItem) obj);
            }
        }), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioMVRepository.queryTopPlayedMVList$lambda$45(minPlayCount, (AudioItem) obj));
            }
        }));
    }

    public final void refreshCacheAndUserTable(Uri uri) {
        Integer numR;
        y45.j(uri, "uri");
        String lastPathSegment = uri.getLastPathSegment();
        int iIntValue = (lastPathSegment == null || (numR = f1a.r(lastPathSegment)) == null) ? 0 : numR.intValue();
        final MediaItem mediaItemQuerySingle$dbdata_release = getMVideoQueryRepository().querySingle$dbdata_release(uri);
        if (mediaItemQuerySingle$dbdata_release == null) {
            removeFromScanCache(iIntValue);
            deleteSingleByUser(iIntValue);
            return;
        }
        String str = mediaItemQuerySingle$dbdata_release.data;
        if (str == null) {
            return;
        }
        int i = mediaItemQuerySingle$dbdata_release.mediaType;
        if (i == 0) {
            ge6 ge6Var = ge6.a;
            if (ge6Var.f(str, true) && ge6Var.e(str)) {
                this.scanMusicVideoCacheRWLock.writeLock().lock();
                try {
                    CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList = this.scanMusicVideoCache;
                    final e74 e74Var = new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Boolean.valueOf(AudioMVRepository.refreshCacheAndUserTable$lambda$51(mediaItemQuerySingle$dbdata_release, (AudioItem) obj));
                        }
                    };
                    copyOnWriteArrayList.removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return AudioMVRepository.refreshCacheAndUserTable$lambda$52(e74Var, obj);
                        }
                    });
                    this.scanMusicVideoCache.add(new AudioItem(mediaItemQuerySingle$dbdata_release));
                    return;
                } finally {
                    this.scanMusicVideoCacheRWLock.writeLock().unlock();
                }
            }
            return;
        }
        if (i == 3 && ge6.a.e(str)) {
            this.musicVideoAddByUserCacheRWLock.writeLock().lock();
            try {
                final AudioItem audioItem = new AudioItem(mediaItemQuerySingle$dbdata_release);
                CopyOnWriteArrayList<AudioItem> copyOnWriteArrayList2 = this.musicVideoAddByUserCache;
                final e74 e74Var2 = new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return Boolean.valueOf(AudioMVRepository.refreshCacheAndUserTable$lambda$53(audioItem, (AudioItem) obj));
                    }
                };
                if (copyOnWriteArrayList2.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AudioMVRepository.refreshCacheAndUserTable$lambda$54(e74Var2, obj);
                    }
                })) {
                    this.musicVideoAddByUserCache.add(audioItem);
                }
                getMUserMusicVideoDao().update(audioItem.convertToMusicVideoDataBean());
            } finally {
                this.musicVideoAddByUserCacheRWLock.writeLock().unlock();
            }
        }
    }

    public final List<AudioItem> searchMVList(final String displayName) {
        Collection collectionK;
        y45.j(displayName, "displayName");
        if (displayName.length() == 0) {
            return y71.k();
        }
        List<AudioItem> listQueryFromCache = queryFromCache(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(AudioMVRepository.searchMVList$lambda$39(displayName, (AudioItem) obj));
            }
        });
        if (listQueryFromCache != null) {
            return listQueryFromCache;
        }
        List<MediaItem> listSearchMVList = getMVideoQueryRepository().searchMVList(displayName);
        List<MediaItem> listSearchMVList2 = getMFileQueryRepository().searchMVList(displayName);
        List<MusicVideoDataBean> musicVideoByTitleOrDisplay = getMUserMusicVideoDao().getMusicVideoByTitleOrDisplay(displayName);
        if (musicVideoByTitleOrDisplay != null) {
            List<MusicVideoDataBean> list = musicVideoByTitleOrDisplay;
            collectionK = new ArrayList(z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                collectionK.add(new AudioItem((MusicVideoDataBean) it.next()));
            }
        } else {
            collectionK = y71.k();
        }
        List listJ0 = i81.J0(listSearchMVList, listSearchMVList2);
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listJ0) {
            if (hashSet.add(((MediaItem) obj).data)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new AudioItem((MediaItem) it2.next()));
        }
        return i81.J0(arrayList2, collectionK);
    }
}
