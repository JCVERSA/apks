package com.transsion.dbdata.source.data.cache;

import android.util.Log;
import androidx.annotation.MainThread;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.MediaItem;
import defpackage.fi1;
import defpackage.it1;
import defpackage.y45;
import defpackage.zfb;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 92\u00020\u0001:\u00029:B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00042\u0006\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u000fJ\r\u0010\u0018\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0003J\r\u0010\u0019\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u0003J#\u0010\u001d\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00070\u001a2\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b\u001d\u0010\u001eJ%\u0010!\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b!\u0010\"J\u001d\u0010$\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b$\u0010%J\u001d\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b'\u0010%J\u0015\u0010(\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u0007¢\u0006\u0004\b(\u0010)J%\u0010'\u001a\u00020\r2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u0010¢\u0006\u0004\b'\u0010\u001eJ\u001f\u0010+\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0010H\u0007¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0010H\u0007¢\u0006\u0004\b-\u0010,R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R&\u00101\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R&\u00103\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00102R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00106R\u0014\u00108\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00106¨\u0006;"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache;", "", MethodDecl.initName, "()V", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;", "", "", "map", "type", "getOrCreateThreadSafeSet", "(Ljava/util/concurrent/ConcurrentHashMap;Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)Ljava/util/Set;", "mediaType", "Lzfb;", "initPreviewedRecordsByMediaType", "(Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;)V", "", "shouldRecord", "()Z", "Lcom/transsion/dbdata/beans/media/MediaItem;", "item", "isValidMediaItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z", "savePreviewedMediaIds", "init", "clear", "", "mediaIds", "isVideo", "updateScanRecentAdd", "(Ljava/util/List;Z)V", "oldMediaId", "newMediaId", "updateRecentId", "(IIZ)V", "mediaId", "deleteRecentId", "(IZ)V", TtmlNode.ATTR_ID, "recordPreviewedId", "recordPreviewedIdOther", "(I)V", "items", "isRecentAdd", "(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z", "isRecentAddOther", "Ljava/util/concurrent/atomic/AtomicLong;", "lastRecordTime", "Ljava/util/concurrent/atomic/AtomicLong;", "mPreviewedIds", "Ljava/util/concurrent/ConcurrentHashMap;", "mScanRecentIds", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mPreviewedLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mRecentLock", "mMkvLock", "Companion", "MediaType", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaRecentAddCache {
    private static final long RECORD_DEBOUNCE_TIME_MS = 1000;
    private static final String TAG = "MediaRecentCacheManager";
    private final AtomicLong lastRecordTime = new AtomicLong(0);
    private final ConcurrentHashMap<MediaType, Set<Integer>> mPreviewedIds = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<MediaType, Set<Integer>> mScanRecentIds = new ConcurrentHashMap<>();
    private final ReentrantReadWriteLock mPreviewedLock = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock mRecentLock = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock mMkvLock = new ReentrantReadWriteLock();

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\b\t\nB\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0003\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;", "", "mmkvKey", "", MethodDecl.initName, "(Ljava/lang/String;)V", "getMmkvKey", "()Ljava/lang/String;", "Video", "Audio", "File", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class MediaType {
        private final String mmkvKey;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Audio;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;", MethodDecl.initName, "()V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Audio extends MediaType {
            public static final Audio INSTANCE = new Audio();

            private Audio() {
                super("recentFilterMusic", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$File;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;", MethodDecl.initName, "()V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class File extends MediaType {
            public static final File INSTANCE = new File();

            private File() {
                super("recentFilterPath", null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType$Video;", "Lcom/transsion/dbdata/source/data/cache/MediaRecentAddCache$MediaType;", MethodDecl.initName, "()V", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Video extends MediaType {
            public static final Video INSTANCE = new Video();

            private Video() {
                super("recentFilterVideo", null);
            }
        }

        public MediaType(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        public final String getMmkvKey() {
            return this.mmkvKey;
        }

        private MediaType(String str) {
            this.mmkvKey = str;
        }
    }

    private final Set<Integer> getOrCreateThreadSafeSet(ConcurrentHashMap<MediaType, Set<Integer>> map, MediaType type) {
        Set<Integer> setNewSetFromMap = map.get(type);
        if (setNewSetFromMap == null) {
            synchronized (map) {
                setNewSetFromMap = map.get(type);
                if (setNewSetFromMap == null) {
                    setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                    map.put(type, setNewSetFromMap);
                }
            }
            y45.i(setNewSetFromMap, "synchronized(...)");
        }
        return setNewSetFromMap;
    }

    private final void initPreviewedRecordsByMediaType(MediaType mediaType) {
        Set<Integer> setNewSetFromMap;
        Log.d(TAG, "Start loading the preview record from mmkv for " + mediaType.getClass().getSimpleName());
        if (!this.mPreviewedIds.containsKey(mediaType)) {
            ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
            ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
            int i = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i2 = 0; i2 < readHoldCount; i2++) {
                lock.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                if (!this.mPreviewedIds.containsKey(mediaType)) {
                    try {
                        ReentrantReadWriteLock.ReadLock lock2 = this.mMkvLock.readLock();
                        lock2.lock();
                        try {
                            String string = MMKV.p().getString(mediaType.getMmkvKey(), "");
                            lock2.unlock();
                            if (string == null || string.length() == 0 || (setNewSetFromMap = (Set) fi1.c(string, new TypeToken<Set<? extends Integer>>() {
                            }.getType())) == null) {
                                setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                            }
                            this.mPreviewedIds.put(mediaType, setNewSetFromMap);
                        } catch (Throwable th) {
                            lock2.unlock();
                            throw th;
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "Failed to init " + mediaType.getClass().getSimpleName(), e);
                        this.mPreviewedIds.put(mediaType, Collections.newSetFromMap(new ConcurrentHashMap()));
                    }
                }
                zfb zfbVar = zfb.a;
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
            } catch (Throwable th2) {
                while (i < readHoldCount) {
                    lock.lock();
                    i++;
                }
                writeLock.unlock();
                throw th2;
            }
        }
        Log.d(TAG, "Finish loading the preview record from mmkv for " + mediaType.getClass().getSimpleName());
    }

    private final boolean isValidMediaItem(MediaItem item) {
        String str = item.data;
        return !(str == null || str.length() == 0);
    }

    private final void savePreviewedMediaIds(MediaType mediaType) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.mMkvLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            Set<Integer> set = this.mPreviewedIds.get(mediaType);
            if (set != null) {
                MMKV.p().w(mediaType.getMmkvKey(), fi1.e(set));
            }
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

    private final boolean shouldRecord() {
        return System.currentTimeMillis() - this.lastRecordTime.get() >= 1000;
    }

    public final void clear() {
        this.mPreviewedIds.clear();
        this.mScanRecentIds.clear();
    }

    public final void deleteRecentId(int mediaId, boolean isVideo) {
        MediaType mediaType = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
        ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            Set<Integer> set = this.mPreviewedIds.get(mediaType);
            if (set != null) {
                HashSet hashSet = new HashSet(set);
                if (hashSet.remove(Integer.valueOf(mediaId))) {
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mPreviewedIds;
                    Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                    setNewSetFromMap.addAll(hashSet);
                    concurrentHashMap.put(mediaType, setNewSetFromMap);
                    savePreviewedMediaIds(mediaType);
                }
                zfb zfbVar = zfb.a;
            }
            for (int i3 = 0; i3 < readHoldCount; i3++) {
                lock.lock();
            }
            writeLock.unlock();
            ReentrantReadWriteLock reentrantReadWriteLock2 = this.mRecentLock;
            ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i4 = 0; i4 < readHoldCount2; i4++) {
                lock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                Set<Integer> set2 = this.mScanRecentIds.get(mediaType);
                if (set2 != null) {
                    HashSet hashSet2 = new HashSet(set2);
                    if (hashSet2.remove(Integer.valueOf(mediaId))) {
                        ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap2 = this.mScanRecentIds;
                        Set<Integer> setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
                        setNewSetFromMap2.addAll(hashSet2);
                        concurrentHashMap2.put(mediaType, setNewSetFromMap2);
                    }
                    zfb zfbVar2 = zfb.a;
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

    public final void init() {
        initPreviewedRecordsByMediaType(MediaType.Video.INSTANCE);
        initPreviewedRecordsByMediaType(MediaType.Audio.INSTANCE);
        initPreviewedRecordsByMediaType(MediaType.File.INSTANCE);
    }

    @MainThread
    public final boolean isRecentAdd(MediaItem item, boolean isVideo) {
        Set<Integer> set;
        y45.j(item, "item");
        if (!isValidMediaItem(item)) {
            return false;
        }
        Object obj = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
        Set<Integer> set2 = this.mScanRecentIds.get(obj);
        return (set2 == null || !set2.contains(Integer.valueOf(item.id)) || (set = this.mPreviewedIds.get(obj)) == null || set.contains(Integer.valueOf(item.id))) ? false : true;
    }

    @MainThread
    public final boolean isRecentAddOther(MediaItem item, boolean isVideo) {
        Set<Integer> set;
        y45.j(item, "item");
        return isValidMediaItem(item) && it1.e(new File(item.data).lastModified()) && (set = this.mPreviewedIds.get(MediaType.File.INSTANCE)) != null && !set.contains(Integer.valueOf(item.id));
    }

    public final void recordPreviewedId(int id, boolean isVideo) {
        if (shouldRecord()) {
            MediaType mediaType = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
            try {
                ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
                ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
                int i = 0;
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i2 = 0; i2 < readHoldCount; i2++) {
                    lock.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    Set<Integer> orCreateThreadSafeSet = getOrCreateThreadSafeSet(this.mPreviewedIds, mediaType);
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mPreviewedIds;
                    MediaType.File file = MediaType.File.INSTANCE;
                    Set<Integer> orCreateThreadSafeSet2 = getOrCreateThreadSafeSet(concurrentHashMap, file);
                    HashSet hashSet = new HashSet(orCreateThreadSafeSet);
                    HashSet hashSet2 = new HashSet(orCreateThreadSafeSet2);
                    hashSet.add(Integer.valueOf(id));
                    hashSet2.add(Integer.valueOf(id));
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap2 = this.mPreviewedIds;
                    Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                    setNewSetFromMap.addAll(hashSet);
                    concurrentHashMap2.put(mediaType, setNewSetFromMap);
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap3 = this.mPreviewedIds;
                    Set<Integer> setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
                    setNewSetFromMap2.addAll(hashSet2);
                    concurrentHashMap3.put(file, setNewSetFromMap2);
                    savePreviewedMediaIds(mediaType);
                    savePreviewedMediaIds(file);
                    zfb zfbVar = zfb.a;
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
            } catch (Exception e) {
                Log.e(TAG, "Failed to record id", e);
            }
            this.lastRecordTime.set(System.currentTimeMillis());
        }
    }

    public final void recordPreviewedIdOther(int id) {
        if (shouldRecord()) {
            try {
                ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
                ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
                int i = 0;
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i2 = 0; i2 < readHoldCount; i2++) {
                    lock.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mPreviewedIds;
                    MediaType.File file = MediaType.File.INSTANCE;
                    HashSet hashSet = new HashSet(getOrCreateThreadSafeSet(concurrentHashMap, file));
                    hashSet.add(Integer.valueOf(id));
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap2 = this.mPreviewedIds;
                    Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                    setNewSetFromMap.addAll(hashSet);
                    concurrentHashMap2.put(file, setNewSetFromMap);
                    savePreviewedMediaIds(file);
                    zfb zfbVar = zfb.a;
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
            } catch (Exception e) {
                Log.e(TAG, "Failed to record other id", e);
            }
            this.lastRecordTime.set(System.currentTimeMillis());
        }
    }

    public final void updateRecentId(int oldMediaId, int newMediaId, boolean isVideo) {
        MediaType mediaType = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
        ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            Set<Integer> set = this.mPreviewedIds.get(mediaType);
            if (set != null) {
                HashSet hashSet = new HashSet(set);
                if (hashSet.remove(Integer.valueOf(oldMediaId))) {
                    hashSet.add(Integer.valueOf(newMediaId));
                    ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mPreviewedIds;
                    Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                    setNewSetFromMap.addAll(hashSet);
                    concurrentHashMap.put(mediaType, setNewSetFromMap);
                    savePreviewedMediaIds(mediaType);
                }
                zfb zfbVar = zfb.a;
            }
            for (int i3 = 0; i3 < readHoldCount; i3++) {
                lock.lock();
            }
            writeLock.unlock();
            ReentrantReadWriteLock reentrantReadWriteLock2 = this.mRecentLock;
            ReentrantReadWriteLock.ReadLock lock2 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i4 = 0; i4 < readHoldCount2; i4++) {
                lock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                Set<Integer> set2 = this.mScanRecentIds.get(mediaType);
                if (set2 != null) {
                    HashSet hashSet2 = new HashSet(set2);
                    if (hashSet2.remove(Integer.valueOf(oldMediaId))) {
                        hashSet2.add(Integer.valueOf(newMediaId));
                        ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap2 = this.mScanRecentIds;
                        Set<Integer> setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
                        setNewSetFromMap2.addAll(hashSet2);
                        concurrentHashMap2.put(mediaType, setNewSetFromMap2);
                    }
                    zfb zfbVar2 = zfb.a;
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

    public final void updateScanRecentAdd(List<Integer> mediaIds, boolean isVideo) {
        y45.j(mediaIds, "mediaIds");
        MediaType mediaType = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
        ReentrantReadWriteLock reentrantReadWriteLock = this.mRecentLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mScanRecentIds;
            Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            setNewSetFromMap.addAll(mediaIds);
            concurrentHashMap.put(mediaType, setNewSetFromMap);
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

    public final void recordPreviewedId(List<? extends MediaItem> items, boolean isVideo) {
        List<? extends MediaItem> list = items;
        if (list == null || list.isEmpty()) {
            return;
        }
        MediaType mediaType = isVideo ? MediaType.Video.INSTANCE : MediaType.Audio.INSTANCE;
        ReentrantReadWriteLock reentrantReadWriteLock = this.mPreviewedLock;
        ReentrantReadWriteLock.ReadLock lock = reentrantReadWriteLock.readLock();
        int i = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i2 = 0; i2 < readHoldCount; i2++) {
            lock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            Set<Integer> orCreateThreadSafeSet = getOrCreateThreadSafeSet(this.mPreviewedIds, mediaType);
            Set<Integer> orCreateThreadSafeSet2 = getOrCreateThreadSafeSet(this.mPreviewedIds, MediaType.File.INSTANCE);
            HashSet hashSet = new HashSet(orCreateThreadSafeSet);
            HashSet hashSet2 = new HashSet(orCreateThreadSafeSet2);
            for (MediaItem mediaItem : items) {
                hashSet.add(Integer.valueOf(mediaItem.id));
                hashSet2.add(Integer.valueOf(mediaItem.id));
            }
            ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap = this.mPreviewedIds;
            Set<Integer> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            setNewSetFromMap.addAll(hashSet);
            concurrentHashMap.put(mediaType, setNewSetFromMap);
            ConcurrentHashMap<MediaType, Set<Integer>> concurrentHashMap2 = this.mPreviewedIds;
            MediaType.File file = MediaType.File.INSTANCE;
            Set<Integer> setNewSetFromMap2 = Collections.newSetFromMap(new ConcurrentHashMap());
            setNewSetFromMap2.addAll(hashSet2);
            concurrentHashMap2.put(file, setNewSetFromMap2);
            savePreviewedMediaIds(mediaType);
            savePreviewedMediaIds(file);
            zfb zfbVar = zfb.a;
        } finally {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }
}
