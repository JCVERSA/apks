package com.transsion.dbdata.source.data.cache;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaPlayCountCache;
import defpackage.abb;
import defpackage.c74;
import defpackage.g5c;
import defpackage.ht;
import defpackage.i81;
import defpackage.ky5;
import defpackage.se;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zfb;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.b;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\r\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0003J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000bJ\u001d\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0015\u001a\u00020\u00042\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u0017¢\u0006\u0004\b\u0015\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u0003R\u0014\u0010\u001b\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010'\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010&R \u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/dbdata/source/data/cache/MediaPlayCountCache;", "", MethodDecl.initName, "()V", "Lzfb;", "syncMediaPlayCounts", "init", "", "path", "", "getPlayCount", "(Ljava/lang/String;)I", Progress.FILE_PATH, "recordPlayCount", "playCount", "syncPlayCount", "(Ljava/lang/String;I)V", "oldPath", "newPath", "synCountWhenReName", "(Ljava/lang/String;Ljava/lang/String;)V", "synCountWhenDelete", "(Ljava/lang/String;)V", "", "paths", "(Ljava/util/List;)V", "clear", "mPlayCountLock", "Ljava/lang/Object;", "Lg5c;", "mVideoRecordDao$delegate", "Lyi5;", "getMVideoRecordDao", "()Lg5c;", "mVideoRecordDao", "Lht;", "mAudioPlayHistoryDao$delegate", "getMAudioPlayHistoryDao", "()Lht;", "mAudioPlayHistoryDao", "Ljava/util/concurrent/ConcurrentHashMap;", "mPlayCountMap", "Ljava/util/concurrent/ConcurrentHashMap;", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaPlayCountCache {
    private static final String TAG = "MediaPlayCountCacheManager";
    private final Object mPlayCountLock = new Object();

    private final yi5 mVideoRecordDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaPlayCountCache.mVideoRecordDao_delegate$lambda$0();
        }
    });

    private final yi5 mAudioPlayHistoryDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaPlayCountCache.mAudioPlayHistoryDao_delegate$lambda$1();
        }
    });
    private final ConcurrentHashMap<String, Integer> mPlayCountMap = new ConcurrentHashMap<>();

    private final ht getMAudioPlayHistoryDao() {
        return (ht) this.mAudioPlayHistoryDao.getValue();
    }

    private final g5c getMVideoRecordDao() {
        Object value = this.mVideoRecordDao.getValue();
        y45.i(value, "getValue(...)");
        return (g5c) value;
    }

    public static final ht mAudioPlayHistoryDao_delegate$lambda$1() {
        return MediaRoomDatabase.INSTANCE.d().f();
    }

    public static final g5c mVideoRecordDao_delegate$lambda$0() {
        return VideoRoomDatabase.h(se.a()).f();
    }

    private final void syncMediaPlayCounts() {
        Log.d(TAG, "Start loading the play counts from db");
        try {
            synchronized (this.mPlayCountLock) {
                try {
                    List<MediaPlayCount> allVideoPlayCounts = getMVideoRecordDao().getAllVideoPlayCounts();
                    if (allVideoPlayCounts == null) {
                        allVideoPlayCounts = y71.k();
                    }
                    List<MediaPlayCount> listJ0 = i81.J0(allVideoPlayCounts, getMAudioPlayHistoryDao().getAllAudioPlayCounts());
                    LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(listJ0, 10)), 16));
                    for (MediaPlayCount mediaPlayCount : listJ0) {
                        Pair pairA = abb.a(mediaPlayCount.getPath(), Integer.valueOf(mediaPlayCount.getCount()));
                        linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
                    }
                    ConcurrentHashMap<String, Integer> concurrentHashMap = this.mPlayCountMap;
                    concurrentHashMap.clear();
                    concurrentHashMap.putAll(linkedHashMap);
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to sync play counts", e);
        }
        Log.d(TAG, "Finish loading the play counts from db");
    }

    public final void clear() {
        synchronized (this.mPlayCountLock) {
            this.mPlayCountMap.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public final int getPlayCount(String path) {
        y45.j(path, "path");
        Integer num = this.mPlayCountMap.get(path);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public final void init() {
        syncMediaPlayCounts();
    }

    public final int recordPlayCount(String filePath) {
        int iIntValue;
        y45.j(filePath, Progress.FILE_PATH);
        synchronized (this.mPlayCountLock) {
            try {
                Integer num = this.mPlayCountMap.get(filePath);
                iIntValue = (num != null ? num.intValue() : 0) + 1;
                this.mPlayCountMap.put(filePath, Integer.valueOf(iIntValue));
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public final void synCountWhenDelete(String path) {
        y45.j(path, "path");
        synchronized (this.mPlayCountLock) {
            this.mPlayCountMap.remove(path);
        }
    }

    public final void synCountWhenReName(String oldPath, String newPath) {
        y45.j(oldPath, "oldPath");
        y45.j(newPath, "newPath");
        if (newPath.length() == 0) {
            return;
        }
        synchronized (this.mPlayCountLock) {
            Integer num = this.mPlayCountMap.get(oldPath);
            if (num != null) {
                this.mPlayCountMap.put(newPath, Integer.valueOf(num.intValue()));
                this.mPlayCountMap.remove(oldPath);
            }
        }
    }

    public final void syncPlayCount(String filePath, int playCount) {
        y45.j(filePath, Progress.FILE_PATH);
        synchronized (this.mPlayCountLock) {
            try {
                if (playCount > 0) {
                    this.mPlayCountMap.put(filePath, Integer.valueOf(playCount));
                    zfb zfbVar = zfb.a;
                } else {
                    this.mPlayCountMap.remove(filePath);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void synCountWhenDelete(List<String> paths) {
        y45.j(paths, "paths");
        synchronized (this.mPlayCountLock) {
            try {
                Iterator<T> it = paths.iterator();
                while (it.hasNext()) {
                    this.mPlayCountMap.remove((String) it.next());
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
