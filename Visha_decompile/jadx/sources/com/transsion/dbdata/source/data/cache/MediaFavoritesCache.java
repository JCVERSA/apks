package com.transsion.dbdata.source.data.cache;

import android.util.Log;
import androidx.annotation.MainThread;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.SimpleMediaItem;
import com.transsion.dbdata.source.data.cache.MediaFavoritesCache;
import defpackage.abb;
import defpackage.c74;
import defpackage.e74;
import defpackage.f68;
import defpackage.hp3;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
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

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\u0018\u0000 32\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0006*\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\u0003J\r\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\u0003J\u001f\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0011\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0015\u0010\u0013J\u001d\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u001dJ%\u0010!\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b!\u0010\"R\u0014\u0010$\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010%R\u001b\u0010,\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R8\u00100\u001a&\u0012\f\u0012\n .*\u0004\u0018\u00010\b0\b .*\u0012\u0012\f\u0012\n .*\u0004\u0018\u00010\b0\b\u0018\u00010/0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R8\u00102\u001a&\u0012\f\u0012\n .*\u0004\u0018\u00010\b0\b .*\u0012\u0012\f\u0012\n .*\u0004\u0018\u00010\b0\b\u0018\u00010/0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00101¨\u00064"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaFavoritesCache;", "", MethodDecl.initName, "()V", "Lzfb;", "syncMediaFavorites", "", "Lhp3;", "Lcom/transsion/dbdata/database/SimpleMediaItem;", "groupByToSimpleItems", "(Ljava/util/List;)Ljava/util/List;", "init", "clear", "", "path", "", "fromVideo", "isFavorite", "(Ljava/lang/String;Z)Z", "(Ljava/lang/String;)Z", "isVideoFavorite", "isAudioFavorite", "mediaItem", "addFavorite", "(Lcom/transsion/dbdata/database/SimpleMediaItem;Z)V", "removeFavorite", "(Ljava/lang/String;Z)V", "", "mediaId", "(IZ)V", "Lcom/transsion/dbdata/beans/media/MediaItem;", "oldMediaItem", "newMediaItem", "updateFavorite", "(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mVideoFavoritesLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "mAudioFavoritesLock", "Lf68;", "mPlayListMediaDao$delegate", "Lyi5;", "getMPlayListMediaDao", "()Lf68;", "mPlayListMediaDao", "", "kotlin.jvm.PlatformType", "", "mVideoFavorites", "Ljava/util/Set;", "mAudioFavorites", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaFavoritesCache {
    private static final String TAG = "MediaFavoritesCacheManager";
    private final ReentrantReadWriteLock mVideoFavoritesLock = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock mAudioFavoritesLock = new ReentrantReadWriteLock();

    private final yi5 mPlayListMediaDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaFavoritesCache.mPlayListMediaDao_delegate$lambda$0();
        }
    });
    private final Set<SimpleMediaItem> mVideoFavorites = Collections.newSetFromMap(new ConcurrentHashMap());
    private final Set<SimpleMediaItem> mAudioFavorites = Collections.newSetFromMap(new ConcurrentHashMap());

    private final f68 getMPlayListMediaDao() {
        return (f68) this.mPlayListMediaDao.getValue();
    }

    private final List<SimpleMediaItem> groupByToSimpleItems(List<hp3> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Long lValueOf = Long.valueOf(((hp3) obj).c());
            Object arrayList = linkedHashMap.get(lValueOf);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(lValueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        List list2 = (List) i81.p0(linkedHashMap.values());
        if (list2 == null) {
            return y71.k();
        }
        List<hp3> list3 = list2;
        ArrayList arrayList2 = new ArrayList(z71.v(list3, 10));
        for (hp3 hp3Var : list3) {
            arrayList2.add(new SimpleMediaItem(hp3Var.a(), hp3Var.b()));
        }
        return arrayList2;
    }

    public static final f68 mPlayListMediaDao_delegate$lambda$0() {
        return MediaRoomDatabase.INSTANCE.d().k();
    }

    public static final boolean removeFavorite$lambda$14$lambda$12(String str, SimpleMediaItem simpleMediaItem) {
        return y45.e(simpleMediaItem.getMediaPath(), str);
    }

    public static final boolean removeFavorite$lambda$14$lambda$13(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final boolean removeFavorite$lambda$17$lambda$15(int i, SimpleMediaItem simpleMediaItem) {
        return simpleMediaItem.getMediaId() == i;
    }

    public static final boolean removeFavorite$lambda$17$lambda$16(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    private final void syncMediaFavorites() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Log.d(TAG, "Start sync favorites info from db(media_playlist_item)");
            List<Pair> listN = y71.n(abb.a(groupByToSimpleItems(getMPlayListMediaDao().getFavoriteAudioMediaPathsGroup()), Boolean.TRUE), abb.a(groupByToSimpleItems(getMPlayListMediaDao().getFavoriteVideoMediaPathsGroup()), Boolean.FALSE));
            Log.d(TAG, "Finish sync favorites,and start updating the cache");
            for (Pair pair : listN) {
                List list = (List) pair.component1();
                Pair pairA = ((Boolean) pair.component2()).booleanValue() ? abb.a(this.mAudioFavorites, this.mAudioFavoritesLock) : abb.a(this.mVideoFavorites, this.mVideoFavoritesLock);
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
                    set.clear();
                    set.addAll(list);
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
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th2));
        }
        if (Result.m286isSuccessimpl(objM279constructorimpl)) {
            Log.d(TAG, "Success to sync favorites");
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            Log.e(TAG, "Failed to sync favorites", thM282exceptionOrNullimpl);
        }
    }

    public static final boolean updateFavorite$lambda$21$lambda$19(MediaItem mediaItem, SimpleMediaItem simpleMediaItem) {
        return y45.e(simpleMediaItem.getMediaPath(), mediaItem.data);
    }

    public static final boolean updateFavorite$lambda$21$lambda$20(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public final void addFavorite(SimpleMediaItem mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoFavorites, this.mVideoFavoritesLock) : abb.a(this.mAudioFavorites, this.mAudioFavoritesLock);
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
        } finally {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    public final void clear() {
        this.mVideoFavorites.clear();
        this.mAudioFavorites.clear();
    }

    public final void init() {
        syncMediaFavorites();
    }

    @MainThread
    public final boolean isAudioFavorite(String path) {
        y45.j(path, "path");
        Set<SimpleMediaItem> set = this.mAudioFavorites;
        y45.i(set, "mAudioFavorites");
        Set<SimpleMediaItem> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (y45.e(((SimpleMediaItem) it.next()).getMediaPath(), path)) {
                return true;
            }
        }
        return false;
    }

    @MainThread
    public final boolean isFavorite(String path, boolean fromVideo) {
        y45.j(path, "path");
        return fromVideo ? isVideoFavorite(path) : isAudioFavorite(path);
    }

    @MainThread
    public final boolean isVideoFavorite(String path) {
        y45.j(path, "path");
        Set<SimpleMediaItem> set = this.mVideoFavorites;
        y45.i(set, "mVideoFavorites");
        Set<SimpleMediaItem> set2 = set;
        if ((set2 instanceof Collection) && set2.isEmpty()) {
            return false;
        }
        Iterator<T> it = set2.iterator();
        while (it.hasNext()) {
            if (y45.e(((SimpleMediaItem) it.next()).getMediaPath(), path)) {
                return true;
            }
        }
        return false;
    }

    public final void removeFavorite(SimpleMediaItem mediaItem, boolean fromVideo) {
        y45.j(mediaItem, "mediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoFavorites, this.mVideoFavoritesLock) : abb.a(this.mAudioFavorites, this.mAudioFavoritesLock);
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
        } finally {
            while (i < readHoldCount) {
                lock.lock();
                i++;
            }
            writeLock.unlock();
        }
    }

    public final void updateFavorite(final MediaItem oldMediaItem, MediaItem newMediaItem, boolean fromVideo) {
        y45.j(oldMediaItem, "oldMediaItem");
        y45.j(newMediaItem, "newMediaItem");
        Pair pairA = fromVideo ? abb.a(this.mVideoFavorites, this.mVideoFavoritesLock) : abb.a(this.mAudioFavorites, this.mAudioFavoritesLock);
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
                    if (y45.e(((SimpleMediaItem) it.next()).getMediaPath(), oldMediaItem.data)) {
                        final e74 e74Var = new e74() {
                            @Override
                            public final Object invoke(Object obj) {
                                return Boolean.valueOf(MediaFavoritesCache.updateFavorite$lambda$21$lambda$19(oldMediaItem, (SimpleMediaItem) obj));
                            }
                        };
                        set.removeIf(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return MediaFavoritesCache.updateFavorite$lambda$21$lambda$20(e74Var, obj);
                            }
                        });
                        int i3 = newMediaItem.id;
                        String str = newMediaItem.data;
                        y45.i(str, "data");
                        set.add(new SimpleMediaItem(i3, str));
                        break;
                    }
                }
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

    @MainThread
    public final boolean isFavorite(String path) {
        y45.j(path, "path");
        return isVideoFavorite(path) || isAudioFavorite(path);
    }

    public final void removeFavorite(final String path, boolean fromVideo) {
        Pair pairA;
        y45.j(path, "path");
        if (fromVideo) {
            pairA = abb.a(this.mVideoFavorites, this.mVideoFavoritesLock);
        } else {
            pairA = abb.a(this.mAudioFavorites, this.mAudioFavoritesLock);
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
                    return Boolean.valueOf(MediaFavoritesCache.removeFavorite$lambda$14$lambda$12(path, (SimpleMediaItem) obj));
                }
            };
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return MediaFavoritesCache.removeFavorite$lambda$14$lambda$13(e74Var, obj);
                }
            });
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

    public final void removeFavorite(final int mediaId, boolean fromVideo) {
        Pair pairA;
        if (fromVideo) {
            pairA = abb.a(this.mVideoFavorites, this.mVideoFavoritesLock);
        } else {
            pairA = abb.a(this.mAudioFavorites, this.mAudioFavoritesLock);
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
                    return Boolean.valueOf(MediaFavoritesCache.removeFavorite$lambda$17$lambda$15(mediaId, (SimpleMediaItem) obj));
                }
            };
            set.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return MediaFavoritesCache.removeFavorite$lambda$17$lambda$16(e74Var, obj);
                }
            });
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
}
