package com.transsion.dbdata.source.data.repository.delegate;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.core.util.SparseArrayKt;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.source.data.ktx.AudioFilterKtxKt;
import com.transsion.dbdata.source.data.ktx.FileValidExtKt;
import com.transsion.dbdata.source.data.ktx.MediaBucketExtKt;
import com.transsion.dbdata.source.data.repository.AudioMVRepository;
import com.transsion.dbdata.source.data.repository.SystemAudioQueryRepository;
import com.transsion.dbdata.source.data.repository.SystemFileQueryRepository;
import com.transsion.dbdata.source.data.repository.SystemVideoQueryRepository;
import com.transsion.dbdata.source.data.repository.delegate.MediaBucketDelegate;
import com.transsion.dbdata.utils.FolderLabelUtils;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.abb;
import defpackage.c74;
import defpackage.e74;
import defpackage.i81;
import defpackage.oa1;
import defpackage.x71;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zc9;
import defpackage.zfb;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.b;
import kotlin.comparisons.a;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.sequences.SequencesKt___SequencesKt;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0003¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0010JA\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\b0\u0013*\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00062\b\b\u0002\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\b0\u0013H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\b0\u0013H\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ)\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\b\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b \u0010!J)\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\b\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010!R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b+\u0010,R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010%\u001a\u0004\b0\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010%\u001a\u0004\b5\u00106R\u0018\u0010:\u001a\u00020\u0007*\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/delegate/MediaBucketDelegate;", "", MethodDecl.initName, "()V", "Lxk8$h;", "action", "", "", "", "Lcom/transsion/dbdata/beans/media/AudioItem;", "processAudioBuckets", "(Lxk8$h;)Ljava/util/Map;", "", "isAtLeastQ", "()Z", "processAlbumBuckets", "()Ljava/util/Map;", "processArtistBuckets", "keyAsTheName", "Lkotlin/Pair;", "", "Lcom/transsion/dbdata/beans/media/MediaBucket;", "toMediaBuckets", "(Ljava/util/Map;Z)Lkotlin/Pair;", "bucket", "item", "Lzfb;", "queryAudioItemCover", "(Lcom/transsion/dbdata/beans/media/MediaBucket;Lcom/transsion/dbdata/beans/media/AudioItem;)V", "processVideoBuckets", "()Lkotlin/Pair;", "processVideoBuckets2", "queryAudioBucketList", "(Lxk8$h;)Lkotlin/Pair;", "queryVideoBucketList", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository$delegate", "Lyi5;", "getMAudioQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository$delegate", "getMAudioMVRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository", "Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository$delegate", "getMVideoQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemVideoQueryRepository;", "mVideoQueryRepository", "Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository$delegate", "getMFileQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemFileQueryRepository;", "mFileQueryRepository", "getBucketKey", "(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/String;", "bucketKey", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaBucketDelegate {
    public static final MediaBucketDelegate INSTANCE = new MediaBucketDelegate();

    private static final yi5 mAudioQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaBucketDelegate.mAudioQueryRepository_delegate$lambda$0();
        }
    });

    private static final yi5 mAudioMVRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaBucketDelegate.mAudioMVRepository_delegate$lambda$1();
        }
    });

    private static final yi5 mVideoQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaBucketDelegate.mVideoQueryRepository_delegate$lambda$2();
        }
    });

    private static final yi5 mFileQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaBucketDelegate.mFileQueryRepository_delegate$lambda$3();
        }
    });

    private MediaBucketDelegate() {
    }

    private final String getBucketKey(AudioItem audioItem) {
        if (isAtLeastQ()) {
            return String.valueOf(audioItem.bucketId);
        }
        String str = audioItem.parentPath;
        y45.i(str, PlayAudioData.TAG_PARENT_PATH);
        return str;
    }

    private final AudioMVRepository getMAudioMVRepository() {
        return (AudioMVRepository) mAudioMVRepository.getValue();
    }

    private final SystemAudioQueryRepository getMAudioQueryRepository() {
        return (SystemAudioQueryRepository) mAudioQueryRepository.getValue();
    }

    private final SystemFileQueryRepository getMFileQueryRepository() {
        return (SystemFileQueryRepository) mFileQueryRepository.getValue();
    }

    private final SystemVideoQueryRepository getMVideoQueryRepository() {
        return (SystemVideoQueryRepository) mVideoQueryRepository.getValue();
    }

    @ChecksSdkIntAtLeast(api = 29)
    private final boolean isAtLeastQ() {
        return true;
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

    public static final SystemVideoQueryRepository mVideoQueryRepository_delegate$lambda$2() {
        return new SystemVideoQueryRepository();
    }

    private final Map<String, List<AudioItem>> processAlbumBuckets() {
        Iterable iterable = (Iterable) AudioFilterKtxKt.filterAudio$default(getMAudioQueryRepository().queryAll(SortUtil.j(false)), false, false, false, 7, null).getSecond();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : iterable) {
            String str = ((AudioItem) obj).albumName;
            if (str == null) {
                str = "";
            }
            Object arrayList = linkedHashMap.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(str, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        return linkedHashMap;
    }

    private final Map<String, List<AudioItem>> processArtistBuckets() {
        Iterable iterable = (Iterable) AudioFilterKtxKt.filterAudio$default(getMAudioQueryRepository().queryAll(SortUtil.j(false)), false, false, false, 7, null).getSecond();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : iterable) {
            String str = ((AudioItem) obj).artistName;
            if (str == null) {
                str = "";
            }
            Object arrayList = linkedHashMap.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(str, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        return linkedHashMap;
    }

    private final Map<String, List<AudioItem>> processAudioBuckets(xk8.h action) {
        Pair pairA;
        if (action.a() == 263) {
            Boolean bool = Boolean.FALSE;
            pairA = abb.a(bool, bool);
        } else {
            pairA = abb.a(Boolean.FALSE, Boolean.TRUE);
        }
        boolean zBooleanValue = ((Boolean) pairA.component1()).booleanValue();
        boolean zBooleanValue2 = ((Boolean) pairA.component2()).booleanValue();
        List listJ0 = (List) AudioFilterKtxKt.filterAudio$default(getMAudioQueryRepository().queryAll(SortUtil.j(false)), zBooleanValue, zBooleanValue2, false, 4, null).getSecond();
        if (action.b()) {
            listJ0 = i81.J0(listJ0, AudioFilterKtxKt.filterMVAudio(getMAudioMVRepository().queryAllMVList(false), zBooleanValue, zBooleanValue2).getSecond());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : listJ0) {
            String bucketKey = INSTANCE.getBucketKey((AudioItem) obj);
            Object arrayList = linkedHashMap.get(bucketKey);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(bucketKey, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        return linkedHashMap;
    }

    private final Pair<Integer, List<MediaBucket>> processVideoBuckets() {
        List<MediaItem> listQueryAll = getMVideoQueryRepository().queryAll();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listQueryAll) {
            if (FileValidExtKt.isValidVideoFilePath(((MediaItem) obj).data, false, false, true)) {
                arrayList.add(obj);
            }
        }
        List<MediaItem> listQueryAllVideo = getMFileQueryRepository().queryAllVideo();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : listQueryAllVideo) {
            if (FileValidExtKt.isValidVideoFilePath(((MediaItem) obj2).data, false, true, true)) {
                arrayList2.add(obj2);
            }
        }
        List<MediaItem> listJ0 = i81.J0(arrayList, arrayList2);
        if (listJ0.isEmpty()) {
            return abb.a(0, y71.k());
        }
        int size = FolderLabelUtils.c().size() + 1;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = size;
        int iF = oa1.f();
        SparseArray sparseArray = new SparseArray();
        List listC = x71.c();
        for (MediaItem mediaItem : listJ0) {
            MediaBucket videoBucket = (MediaBucket) sparseArray.get((int) mediaItem.bucketId);
            if (videoBucket == null) {
                if (listC.size() >= iF) {
                    videoBucket = null;
                } else {
                    videoBucket = MediaBucketExtKt.toVideoBucket(mediaItem, new e74() {
                        @Override
                        public final Object invoke(Object obj3) {
                            return MediaBucketDelegate.processVideoBuckets$lambda$15$lambda$14$lambda$12(ref$IntRef, (MediaBucket) obj3);
                        }
                    });
                    sparseArray.put((int) mediaItem.bucketId, videoBucket);
                    listC.add(videoBucket);
                }
                if (videoBucket == null) {
                }
            }
            String str = mediaItem.data;
            if (str != null && !videoBucket.mediaItemDataList.contains(str)) {
                videoBucket.mediaItemDataList.add(str);
                videoBucket.count++;
            }
        }
        return abb.a(0, i81.T0(x71.a(listC), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(Integer.valueOf(((MediaBucket) t).index), Integer.valueOf(((MediaBucket) t2).index));
            }
        }));
    }

    public static final zfb processVideoBuckets$lambda$15$lambda$14$lambda$12(Ref$IntRef ref$IntRef, MediaBucket mediaBucket) {
        y45.j(mediaBucket, "$this$toVideoBucket");
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        mediaBucket.setIndex(i);
        return zfb.a;
    }

    private final Pair<Integer, List<MediaBucket>> processVideoBuckets2() {
        int size = FolderLabelUtils.c().size() + 1;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = size;
        int iF = oa1.f();
        SparseArray<MediaBucket> sparseArrayQueryBuckets = getMVideoQueryRepository().queryBuckets(iF, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaBucketDelegate.processVideoBuckets2$lambda$17(ref$IntRef, (MediaBucket) obj);
            }
        });
        if (sparseArrayQueryBuckets.size() < iF) {
            List<MediaItem> listQueryAllVideo = getMFileQueryRepository().queryAllVideo();
            ArrayList<MediaItem> arrayList = new ArrayList();
            for (Object obj : listQueryAllVideo) {
                String str = ((MediaItem) obj).data;
                if (str == null) {
                    str = "";
                }
                if (FileValidExtKt.isValidVideoFilePath(str, false, false, true)) {
                    arrayList.add(obj);
                }
            }
            for (MediaItem mediaItem : arrayList) {
                int i = (int) mediaItem.bucketId;
                MediaBucket videoBucket = sparseArrayQueryBuckets.get(i);
                if (videoBucket == null) {
                    if (sparseArrayQueryBuckets.size() >= iF) {
                        videoBucket = null;
                    } else {
                        videoBucket = MediaBucketExtKt.toVideoBucket(mediaItem, new e74() {
                            @Override
                            public final Object invoke(Object obj2) {
                                return MediaBucketDelegate.processVideoBuckets2$lambda$21$lambda$19(ref$IntRef, (MediaBucket) obj2);
                            }
                        });
                        sparseArrayQueryBuckets.put(i, videoBucket);
                    }
                    if (videoBucket == null) {
                    }
                }
                String str2 = mediaItem.data;
                if (str2 != null && !videoBucket.mediaItemDataList.contains(str2)) {
                    videoBucket.mediaItemDataList.add(str2);
                    videoBucket.count++;
                }
            }
        }
        return abb.a(0, i81.T0(SequencesKt___SequencesKt.c0(zc9.g(SparseArrayKt.valueIterator(sparseArrayQueryBuckets))), new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d(Integer.valueOf(((MediaBucket) t).index), Integer.valueOf(((MediaBucket) t2).index));
            }
        }));
    }

    public static final zfb processVideoBuckets2$lambda$17(Ref$IntRef ref$IntRef, MediaBucket mediaBucket) {
        y45.j(mediaBucket, "$this$queryBuckets");
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        mediaBucket.setIndex(i);
        return zfb.a;
    }

    public static final zfb processVideoBuckets2$lambda$21$lambda$19(Ref$IntRef ref$IntRef, MediaBucket mediaBucket) {
        y45.j(mediaBucket, "$this$toVideoBucket");
        int i = ref$IntRef.element;
        ref$IntRef.element = i + 1;
        mediaBucket.setIndex(i);
        return zfb.a;
    }

    private final void queryAudioItemCover(MediaBucket bucket, AudioItem item) {
        String str;
        AudioAlbum audioAlbum = AudioRoomDatabase.f(Utils.a()).a().getAudioAlbum(item.id);
        boolean z = (audioAlbum != null ? audioAlbum.imgPath : null) != null && new File(audioAlbum.imgPath).exists();
        bucket.isCustomCover = z;
        if (z) {
            y45.g(audioAlbum);
            str = audioAlbum.imgPath;
        } else {
            str = item.data;
        }
        bucket.setUri(Uri.parse(str));
    }

    private final Pair<Integer, List<MediaBucket>> toMediaBuckets(Map<String, ? extends List<? extends AudioItem>> map, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends List<? extends AudioItem>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<? extends AudioItem> value = entry.getValue();
            AudioItem audioItem = (AudioItem) i81.q0(value);
            MediaBucket audioBucket = null;
            if (audioItem != null) {
                int size = value.size();
                if (!z) {
                    key = null;
                }
                audioBucket = MediaBucketExtKt.toAudioBucket(audioItem, size, key);
                INSTANCE.queryAudioItemCover(audioBucket, audioItem);
            }
            if (audioBucket != null) {
                arrayList.add(audioBucket);
            }
        }
        return abb.a(0, arrayList);
    }

    public static Pair toMediaBuckets$default(MediaBucketDelegate mediaBucketDelegate, Map map, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return mediaBucketDelegate.toMediaBuckets(map, z);
    }

    public final Pair<Integer, List<MediaBucket>> queryAudioBucketList(xk8.h action) {
        y45.j(action, "action");
        if (action.c()) {
            return null;
        }
        int iA = action.a();
        if (iA != 263) {
            switch (iA) {
                case 258:
                    break;
                case 259:
                    return toMediaBuckets(processArtistBuckets(), true);
                case 260:
                    return toMediaBuckets(processAlbumBuckets(), true);
                default:
                    return null;
            }
        }
        return toMediaBuckets$default(this, processAudioBuckets(action), false, 1, null);
    }

    public final Pair<Integer, List<MediaBucket>> queryVideoBucketList(xk8.h action) {
        y45.j(action, "action");
        if (action.a() == 257) {
            return processVideoBuckets();
        }
        return null;
    }
}
