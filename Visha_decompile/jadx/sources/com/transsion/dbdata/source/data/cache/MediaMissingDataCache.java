package com.transsion.dbdata.source.data.cache;

import androidx.annotation.MainThread;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaMissingDataCache;
import defpackage.abb;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.oe6;
import defpackage.qe6;
import defpackage.vmb;
import defpackage.y45;
import defpackage.yi5;
import defpackage.ze9;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.function.Predicate;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.b;
import kotlin.c;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\u0018\u0000 <2\u00020\u0001:\u0001<B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u0003J\u001f\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\u000eJ\u001f\u0010\f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\f\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0012\u0010\u000eJ\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u0013\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0014J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\u001bJ%\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u0004¢\u0006\u0004\b \u0010\u0003J\u0019\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0!¢\u0006\u0004\b\"\u0010#J!\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b$\u0010%J\u0019\u0010$\u001a\u0004\u0018\u00010\u00152\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b$\u0010&J!\u0010'\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b'\u0010(J\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00150)2\u0006\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b*\u0010+R\u0014\u0010-\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010.R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R8\u00109\u001a&\u0012\f\u0012\n 7*\u0004\u0018\u00010\u00150\u0015 7*\u0012\u0012\f\u0012\n 7*\u0004\u0018\u00010\u00150\u0015\u0018\u000108068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R8\u0010;\u001a&\u0012\f\u0012\n 7*\u0004\u0018\u00010\u00150\u0015 7*\u0012\u0012\f\u0012\n 7*\u0004\u0018\u00010\u00150\u0015\u0018\u000108068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010:¨\u0006="}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaMissingDataCache;", "", MethodDecl.initName, "()V", "Lzfb;", "syncMissingData", "init", "clear", "", "path", "", "fromVideo", "isMissing", "(Ljava/lang/String;Z)Z", "(Ljava/lang/String;)Z", "", "mediaId", "(IZ)Z", "isVideoMissing", "isAudioMissing", "(I)Z", "Lqe6;", "mediaItem", "addMissing", "(Lqe6;Z)V", "removeMissing", "(Ljava/lang/String;Z)V", "(IZ)V", "oldPath", "newMediaItem", "updateMissing", "(Ljava/lang/String;Lqe6;Z)V", "forceRefresh", "Lkotlin/Pair;", "getCacheStats", "()Lkotlin/Pair;", "getMissingItemByPath", "(Ljava/lang/String;Z)Lqe6;", "(Ljava/lang/String;)Lqe6;", "getMissingItemById", "(IZ)Lqe6;", "", "getAllMissingItems", "(Z)Ljava/util/List;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mVideoMissingLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mAudioMissingLock", "Loe6;", "mMediaDataMissingDao$delegate", "Lyi5;", "getMMediaDataMissingDao", "()Loe6;", "mMediaDataMissingDao", "", "kotlin.jvm.PlatformType", "", "mVideoMissingData", "Ljava/util/Set;", "mAudioMissingData", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaMissingDataCache {
    private static final String TAG = "MediaMissingDataCache";
    private final ReentrantReadWriteLock mVideoMissingLock = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock mAudioMissingLock = new ReentrantReadWriteLock();

    private final yi5 mMediaDataMissingDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaMissingDataCache.mMediaDataMissingDao_delegate$lambda$0();
        }
    });
    private final Set<qe6> mVideoMissingData = Collections.newSetFromMap(new ConcurrentHashMap());
    private final Set<qe6> mAudioMissingData = Collections.newSetFromMap(new ConcurrentHashMap());

    private final oe6 getMMediaDataMissingDao() {
        return (oe6) this.mMediaDataMissingDao.getValue();
    }

    public static final oe6 mMediaDataMissingDao_delegate$lambda$0() {
        return MediaRoomDatabase.INSTANCE.d().h();
    }

    public static final boolean removeMissing$lambda$17$lambda$15(String str, qe6 qe6Var) {
        return y45.e(qe6Var.g(), str);
    }

    public static final boolean removeMissing$lambda$17$lambda$16(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean removeMissing$lambda$20$lambda$18(int i, qe6 qe6Var) {
        return qe6Var.f() == i;
    }

    public static final boolean removeMissing$lambda$20$lambda$19(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    private final void syncMissingData() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            vmb.a(TAG, "Start sync missing data from db(media_data_missing)");
            List<MediaDataMissingItem> allMissingData = getMMediaDataMissingDao().getAllMissingData();
            vmb.a(TAG, "Finish sync missing data, total count: " + allMissingData.size() + ", start updating cache");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (MediaDataMissingItem mediaDataMissingItem : allMissingData) {
                qe6 qe6VarA = qe6.m.a(mediaDataMissingItem);
                int mediaType = mediaDataMissingItem.getMediaType();
                if (mediaType == 1) {
                    arrayList.add(qe6VarA);
                } else if (mediaType == 2) {
                    arrayList2.add(qe6VarA);
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock = this.mAudioMissingLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                this.mAudioMissingData.clear();
                this.mAudioMissingData.addAll(arrayList);
                for (int i3 = 0; i3 < readHoldCount; i3++) {
                    lock.lock();
                }
                writeLock.unlock();
                ReentrantReadWriteLock reentrantReadWriteLock2 = this.mVideoMissingLock;
                ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock2.readLock();
                int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i4 = 0; i4 < readHoldCount2; i4++) {
                    lock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
                writeLock2.lock();
                try {
                    this.mVideoMissingData.clear();
                    boolean zAddAll = this.mVideoMissingData.addAll(arrayList2);
                    while (i < readHoldCount2) {
                        lock2.lock();
                        i++;
                    }
                    writeLock2.unlock();
                    objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(zAddAll));
                } catch (Throwable th) {
                    while (i < readHoldCount2) {
                        lock2.lock();
                        i++;
                    }
                    writeLock2.unlock();
                    throw th;
                }
            } catch (Throwable th2) {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th3));
        }
        if (Result.m286isSuccessimpl(objM279constructorimpl)) {
            ((Boolean) objM279constructorimpl).booleanValue();
            vmb.a(TAG, "Success to sync missing data");
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            vmb.d(TAG, "Failed to sync missing data", thM282exceptionOrNullimpl);
        }
    }

    public static final boolean updateMissing$lambda$24$lambda$22(String str, qe6 qe6Var) {
        return y45.e(qe6Var.g(), str);
    }

    public static final boolean updateMissing$lambda$24$lambda$23(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public final void addMissing(qe6 mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoMissingData, this.mVideoMissingLock) : abb.a(this.mAudioMissingData, this.mAudioMissingLock);
        Set set = (Set) pairA.component1();
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) pairA.component2();
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            set.add(mediaItem);
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            vmb.a(TAG, "Added missing data to cache: " + mediaItem.g() + ", fromVideo: " + fromVideo);
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    public final void clear() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.mVideoMissingLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            this.mVideoMissingData.clear();
            zfb zfbVar = zfb.a;
            for (int i3 = 0; i3 < readHoldCount; i3++) {
                lock.lock();
            }
            writeLock.unlock();
            ReentrantReadWriteLock reentrantReadWriteLock2 = this.mAudioMissingLock;
            ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i4 = 0; i4 < readHoldCount2; i4++) {
                lock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                this.mAudioMissingData.clear();
                zfb zfbVar2 = zfb.a;
                while (i < readHoldCount2) {
                    lock2.lock();
                    i++;
                }
            } finally {
                while (i < readHoldCount2) {
                    lock2.lock();
                    i++;
                }
                writeLock2.unlock();
            }
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    public final void forceRefresh() {
        vmb.a(TAG, "Force refreshing cache...");
        syncMissingData();
    }

    @MainThread
    public final List<qe6> getAllMissingItems(boolean fromVideo) {
        Set<qe6> set = fromVideo ? this.mVideoMissingData : this.mAudioMissingData;
        y45.g(set);
        return i81.b1(set);
    }

    public final Pair<Integer, Integer> getCacheStats() {
        return new Pair<>(Integer.valueOf(this.mAudioMissingData.size()), Integer.valueOf(this.mVideoMissingData.size()));
    }

    @MainThread
    public final qe6 getMissingItemById(int mediaId, boolean fromVideo) {
        Object next;
        Set<qe6> set = fromVideo ? this.mVideoMissingData : this.mAudioMissingData;
        y45.g(set);
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((qe6) next).f() == mediaId) {
                return (qe6) next;
            }
        }
        next = null;
        return (qe6) next;
    }

    @MainThread
    public final qe6 getMissingItemByPath(String path, boolean fromVideo) {
        Object next;
        y45.j(path, "path");
        Set<qe6> set = fromVideo ? this.mVideoMissingData : this.mAudioMissingData;
        y45.g(set);
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (y45.e(((qe6) next).g(), path)) {
                return (qe6) next;
            }
        }
        next = null;
        return (qe6) next;
    }

    public final void init() {
        syncMissingData();
    }

    @MainThread
    public final boolean isAudioMissing(String path) {
        y45.j(path, "path");
        Set<qe6> set = this.mAudioMissingData;
        y45.i(set, "mAudioMissingData");
        Set<qe6> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (y45.e(((qe6) it.next()).g(), path)) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public final boolean isMissing(String path, boolean fromVideo) {
        y45.j(path, "path");
        return fromVideo ? isVideoMissing(path) : isAudioMissing(path);
    }

    @MainThread
    public final boolean isVideoMissing(String path) {
        y45.j(path, "path");
        Set<qe6> set = this.mVideoMissingData;
        y45.i(set, "mVideoMissingData");
        Set<qe6> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (y45.e(((qe6) it.next()).g(), path)) {
                return true;
            }
        }
        return false;
    }

    public final void removeMissing(qe6 mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoMissingData, this.mVideoMissingLock) : abb.a(this.mAudioMissingData, this.mAudioMissingLock);
        Set set = (Set) pairA.component1();
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) pairA.component2();
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            set.remove(mediaItem);
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            vmb.a(TAG, "Removed missing data from cache: " + mediaItem.g() + ", fromVideo: " + fromVideo);
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    public final void updateMissing(final String oldPath, qe6 newMediaItem, boolean fromVideo) {
        y45.j(oldPath, "oldPath");
        y45.j(newMediaItem, "newMediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoMissingData, this.mVideoMissingLock) : abb.a(this.mAudioMissingData, this.mAudioMissingLock);
        Set set = (Set) pairA.component1();
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) pairA.component2();
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            y45.g(set);
            Set set2 = set;
            if (!(set2 instanceof Collection) || !set2.isEmpty()) {
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    if (y45.e(((qe6) it.next()).g(), oldPath)) {
                        final e74 e74Var = new e74() {
                            @Override
                            public final Object invoke(Object obj) {
                                return Boolean.valueOf(MediaMissingDataCache.updateMissing$lambda$24$lambda$22(oldPath, (qe6) obj));
                            }
                        };
                        set.removeIf(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return MediaMissingDataCache.updateMissing$lambda$24$lambda$23(e74Var, obj);
                            }
                        });
                        set.add(newMediaItem);
                        break;
                    }
                }
            }
            zfb zfbVar = zfb.a;
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            vmb.a(TAG, "Updated missing data in cache: " + oldPath + " -> " + newMediaItem.g() + ", fromVideo: " + fromVideo);
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    @MainThread
    public final qe6 getMissingItemByPath(String path) {
        Object next;
        y45.j(path, "path");
        Set<qe6> set = this.mVideoMissingData;
        y45.i(set, "mVideoMissingData");
        Set<qe6> set2 = this.mAudioMissingData;
        y45.i(set2, "mAudioMissingData");
        Iterator it = ze9.m(set, set2).iterator();
        while (it.hasNext()) {
            next = it.next();
            if (y45.e(((qe6) next).g(), path)) {
                return (qe6) next;
            }
        }
        next = null;
        return (qe6) next;
    }

    @MainThread
    public final boolean isMissing(String path) {
        y45.j(path, "path");
        return isVideoMissing(path) || isAudioMissing(path);
    }

    @MainThread
    public final boolean isMissing(int mediaId, boolean fromVideo) {
        if (fromVideo) {
            return isVideoMissing(mediaId);
        }
        return isAudioMissing(mediaId);
    }

    @MainThread
    public final boolean isAudioMissing(int mediaId) {
        Set<qe6> set = this.mAudioMissingData;
        y45.i(set, "mAudioMissingData");
        Set<qe6> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (((qe6) it.next()).f() == mediaId) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public final boolean isVideoMissing(int mediaId) {
        Set<qe6> set = this.mVideoMissingData;
        y45.i(set, "mVideoMissingData");
        Set<qe6> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (((qe6) it.next()).f() == mediaId) {
                return true;
            }
        }
        return false;
    }

    public final void removeMissing(final String path, boolean fromVideo) {
        Pair pairA;
        y45.j(path, "path");
        if (fromVideo) {
            pairA = abb.a(this.mVideoMissingData, this.mVideoMissingLock);
        } else {
            pairA = abb.a(this.mAudioMissingData, this.mAudioMissingLock);
        }
        Set set = (Set) pairA.component1();
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) pairA.component2();
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(MediaMissingDataCache.removeMissing$lambda$17$lambda$15(path, (qe6) obj));
                }
            };
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return MediaMissingDataCache.removeMissing$lambda$17$lambda$16(e74Var, obj);
                }
            });
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            vmb.a(TAG, "Removed missing data from cache by path: " + path + ", fromVideo: " + fromVideo);
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }

    public final void removeMissing(final int mediaId, boolean fromVideo) {
        Pair pairA;
        if (fromVideo) {
            pairA = abb.a(this.mVideoMissingData, this.mVideoMissingLock);
        } else {
            pairA = abb.a(this.mAudioMissingData, this.mAudioMissingLock);
        }
        Set set = (Set) pairA.component1();
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) pairA.component2();
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(MediaMissingDataCache.removeMissing$lambda$20$lambda$18(mediaId, (qe6) obj));
                }
            };
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return MediaMissingDataCache.removeMissing$lambda$20$lambda$19(e74Var, obj);
                }
            });
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            vmb.a(TAG, "Removed missing data from cache by mediaId: " + mediaId + ", fromVideo: " + fromVideo);
        } catch (Throwable th) {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
            throw th;
        }
    }
}
