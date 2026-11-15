package com.transsion.dbdata.source.data.repository;

import androidx.p004lifecycle.LiveData;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.source.data.cache.MediaCombineCacheManager;
import com.transsion.dbdata.source.data.ktx.MediaDataExtKt;
import com.transsion.dbdata.source.data.repository.MediaDataMissingRepository;
import defpackage.c74;
import defpackage.oe6;
import defpackage.qe6;
import defpackage.vmb;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00102\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0010¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00100\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010 \u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b \u0010!J\u001b\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\"\u001a\u00020\r¢\u0006\u0004\b#\u0010$R\u001b\u0010*\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/MediaDataMissingRepository;", "", MethodDecl.initName, "()V", "Lcom/transsion/dbdata/database/MediaDataMissingItem;", "existingItem", "newItem", "mergeMediaDataMissingItem", "(Lcom/transsion/dbdata/database/MediaDataMissingItem;Lcom/transsion/dbdata/database/MediaDataMissingItem;)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "audioItem", "", "fromVideo", "", "upsertMediaDataMissingSingle", "(Lcom/transsion/dbdata/beans/media/AudioItem;Z)I", "", "audioItems", "upsertMediaDataMissingMultiple", "(Ljava/util/List;Z)Ljava/util/List;", "mediaId", "getByMediaId", "(I)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "", "mediaPath", "getByMediaPath", "(Ljava/lang/String;)Lcom/transsion/dbdata/database/MediaDataMissingItem;", "getAllMissingData", "()Ljava/util/List;", "Landroidx/lifecycle/LiveData;", "observeAllMissingData", "()Landroidx/lifecycle/LiveData;", "deleteSingleMissingData", "(Ljava/lang/String;Z)I", "mediaType", "getAllByMediaType", "(I)Ljava/util/List;", "Loe6;", "mMediaDataMissingItemDao$delegate", "Lyi5;", "getMMediaDataMissingItemDao", "()Loe6;", "mMediaDataMissingItemDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaDataMissingRepository {
    private static final String TAG = "MediaDataMissingRepository";

    private final yi5 mMediaDataMissingItemDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaDataMissingRepository.mMediaDataMissingItemDao_delegate$lambda$0();
        }
    });

    private final oe6 getMMediaDataMissingItemDao() {
        return (oe6) this.mMediaDataMissingItemDao.getValue();
    }

    public static final oe6 mMediaDataMissingItemDao_delegate$lambda$0() {
        return MediaRoomDatabase.INSTANCE.d().h();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0091  */
    /* JADX WARN: Code duplicated, block: B:46:0x00af  */
    /* JADX WARN: Code duplicated, block: B:53:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:8:0x002b  */
    private final MediaDataMissingItem mergeMediaDataMissingItem(MediaDataMissingItem existingItem, MediaDataMissingItem newItem) {
        Long duration;
        Integer width;
        Integer height;
        Integer mediaSize;
        String str = newItem.get_data();
        int mediaId = newItem.getMediaId();
        int mediaType = newItem.getMediaType();
        if (newItem.getDuration() != null) {
            Long duration2 = newItem.getDuration();
            y45.g(duration2);
            if (duration2.longValue() > 0) {
                duration = newItem.getDuration();
            } else {
                duration = existingItem.getDuration();
            }
        } else {
            duration = existingItem.getDuration();
        }
        Long l = duration;
        String artist = newItem.getArtist();
        String artist2 = (artist == null || artist.length() == 0) ? existingItem.getArtist() : newItem.getArtist();
        String album = newItem.getAlbum();
        String album2 = (album == null || album.length() == 0) ? existingItem.getAlbum() : newItem.getAlbum();
        String albumYear = newItem.getAlbumYear();
        String albumYear2 = (albumYear == null || albumYear.length() == 0) ? existingItem.getAlbumYear() : newItem.getAlbumYear();
        if (newItem.getWidth() != null) {
            Integer width2 = newItem.getWidth();
            y45.g(width2);
            if (width2.intValue() > 0) {
                width = newItem.getWidth();
            } else {
                width = existingItem.getWidth();
            }
        } else {
            width = existingItem.getWidth();
        }
        Integer num = width;
        if (newItem.getHeight() != null) {
            Integer height2 = newItem.getHeight();
            y45.g(height2);
            if (height2.intValue() > 0) {
                height = newItem.getHeight();
            } else {
                height = existingItem.getHeight();
            }
        } else {
            height = existingItem.getHeight();
        }
        Integer num2 = height;
        if (newItem.getMediaSize() != null) {
            Integer mediaSize2 = newItem.getMediaSize();
            y45.g(mediaSize2);
            if (mediaSize2.intValue() > 0) {
                mediaSize = newItem.getMediaSize();
            } else {
                mediaSize = existingItem.getMediaSize();
            }
        } else {
            mediaSize = existingItem.getMediaSize();
        }
        Integer num3 = mediaSize;
        String mediaAlias = newItem.getMediaAlias();
        String mediaAlias2 = (mediaAlias == null || mediaAlias.length() == 0) ? existingItem.getMediaAlias() : newItem.getMediaAlias();
        String customCoverPath = newItem.getCustomCoverPath();
        return new MediaDataMissingItem(str, mediaId, mediaType, l, artist2, album2, albumYear2, num, num2, num3, mediaAlias2, (customCoverPath == null || customCoverPath.length() == 0) ? existingItem.getCustomCoverPath() : newItem.getCustomCoverPath());
    }

    public final int deleteSingleMissingData(String mediaPath, boolean fromVideo) {
        y45.j(mediaPath, "mediaPath");
        int iDeleteByMediaPath = getMMediaDataMissingItemDao().deleteByMediaPath(mediaPath);
        if (iDeleteByMediaPath > 0) {
            MediaCombineCacheManager.INSTANCE.getInstance().removeMissing(mediaPath, fromVideo);
        }
        return iDeleteByMediaPath;
    }

    public final List<MediaDataMissingItem> getAllByMediaType(int mediaType) {
        return getMMediaDataMissingItemDao().getAllByMediaType(mediaType);
    }

    public final List<MediaDataMissingItem> getAllMissingData() {
        return getMMediaDataMissingItemDao().getAllMissingData();
    }

    public final MediaDataMissingItem getByMediaId(int mediaId) {
        return getMMediaDataMissingItemDao().getByMediaId(mediaId);
    }

    public final MediaDataMissingItem getByMediaPath(String mediaPath) {
        y45.j(mediaPath, "mediaPath");
        return getMMediaDataMissingItemDao().getByMediaPath(mediaPath);
    }

    public final LiveData<List<MediaDataMissingItem>> observeAllMissingData() {
        return getMMediaDataMissingItemDao().getAllMissingDataLiveData();
    }

    public final List<Integer> upsertMediaDataMissingMultiple(List<? extends AudioItem> audioItems, boolean fromVideo) {
        MediaDataMissingItem byMediaId;
        y45.j(audioItems, "audioItems");
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AudioItem audioItem : audioItems) {
            String str = audioItem.data;
            y45.i(str, "data");
            if (str.length() > 0) {
                oe6 mMediaDataMissingItemDao = getMMediaDataMissingItemDao();
                String str2 = audioItem.data;
                y45.i(str2, "data");
                byMediaId = mMediaDataMissingItemDao.getByMediaPath(str2);
            } else {
                byMediaId = getMMediaDataMissingItemDao().getByMediaId(audioItem.id);
            }
            linkedHashMap.put(audioItem.data, byMediaId);
            MediaDataMissingItem mediaDataMissingItem = MediaDataExtKt.toMediaDataMissingItem(audioItem, fromVideo ? 2 : 1);
            if (byMediaId != null) {
                mediaDataMissingItem = mergeMediaDataMissingItem(byMediaId, mediaDataMissingItem);
            }
            arrayList.add(mediaDataMissingItem);
        }
        List<Long> listUpsertMultiple = getMMediaDataMissingItemDao().upsertMultiple(arrayList);
        ArrayList arrayList2 = new ArrayList(z71.v(listUpsertMultiple, 10));
        Iterator<T> it = listUpsertMultiple.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf((int) ((Number) it.next()).longValue()));
        }
        try {
            int i = 0;
            for (Object obj : arrayList) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                MediaDataMissingItem mediaDataMissingItem2 = (MediaDataMissingItem) obj;
                qe6 qe6VarA = qe6.m.a(mediaDataMissingItem2);
                MediaDataMissingItem mediaDataMissingItem3 = (MediaDataMissingItem) linkedHashMap.get(mediaDataMissingItem2.get_data());
                if (mediaDataMissingItem3 != null) {
                    MediaCombineCacheManager.INSTANCE.getInstance().updateMissing(mediaDataMissingItem3.get_data(), qe6VarA, fromVideo);
                } else {
                    MediaCombineCacheManager.INSTANCE.getInstance().addMissing(qe6VarA, fromVideo);
                }
                i = i2;
            }
            vmb.a(TAG, "Updated missing data cache for " + arrayList.size() + " items, fromVideo: " + fromVideo);
        } catch (Exception e) {
            vmb.d(TAG, "Failed to update missing data cache for batch operation", e);
        }
        return arrayList2;
    }

    public final int upsertMediaDataMissingSingle(AudioItem audioItem, boolean fromVideo) {
        MediaDataMissingItem byMediaId;
        y45.j(audioItem, "audioItem");
        String str = audioItem.data;
        y45.i(str, "data");
        if (str.length() > 0) {
            oe6 mMediaDataMissingItemDao = getMMediaDataMissingItemDao();
            String str2 = audioItem.data;
            y45.i(str2, "data");
            byMediaId = mMediaDataMissingItemDao.getByMediaPath(str2);
        } else {
            byMediaId = getMMediaDataMissingItemDao().getByMediaId(audioItem.id);
        }
        MediaDataMissingItem mediaDataMissingItem = MediaDataExtKt.toMediaDataMissingItem(audioItem, fromVideo ? 2 : 1);
        if (byMediaId != null) {
            mediaDataMissingItem = mergeMediaDataMissingItem(byMediaId, mediaDataMissingItem);
        }
        try {
            int iUpsertSingle = (int) getMMediaDataMissingItemDao().upsertSingle(mediaDataMissingItem);
            qe6 qe6VarA = qe6.m.a(mediaDataMissingItem);
            if (byMediaId != null) {
                MediaCombineCacheManager.INSTANCE.getInstance().updateMissing(byMediaId.get_data(), qe6VarA, fromVideo);
                vmb.a(TAG, "Updated missing data cache for path: " + mediaDataMissingItem.get_data() + ", fromVideo: " + fromVideo);
                return iUpsertSingle;
            }
            MediaCombineCacheManager.INSTANCE.getInstance().addMissing(qe6VarA, fromVideo);
            vmb.a(TAG, "Added missing data to cache for path: " + mediaDataMissingItem.get_data() + ", fromVideo: " + fromVideo);
            return iUpsertSingle;
        } catch (Exception e) {
            vmb.d(TAG, "Failed to update missing data cache for path: " + mediaDataMissingItem.get_data(), e);
            return -2;
        }
    }
}
