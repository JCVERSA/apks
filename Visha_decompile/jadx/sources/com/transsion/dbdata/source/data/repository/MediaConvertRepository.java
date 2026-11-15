package com.transsion.dbdata.source.data.repository;

import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.source.data.repository.MediaConvertRepository;
import defpackage.abb;
import defpackage.b15;
import defpackage.c74;
import defpackage.d82;
import defpackage.e74;
import defpackage.gi1;
import defpackage.ngb;
import defpackage.qj1;
import defpackage.se;
import defpackage.vmb;
import defpackage.we6;
import defpackage.xk8;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zj7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 @2\u00020\u0001:\u0001@B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u0019\u0018\u00010\u00182\u0006\u0010\u0017\u001a\u00020\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00192\u0006\u0010\u001d\u001a\u00020 ¢\u0006\u0004\b\u001e\u0010!J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\"¢\u0006\u0004\b\u0006\u0010#J\u0015\u0010%\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020$¢\u0006\u0004\b%\u0010&J)\u0010)\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0\u0019\u0018\u00010\u00182\u0006\u0010\u001d\u001a\u00020'¢\u0006\u0004\b)\u0010*R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u001b\u00105\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010-\u001a\u0004\b3\u00104R\u001b\u0010:\u001a\u0002068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010-\u001a\u0004\b8\u00109R\u001b\u0010?\u001a\u00020;8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010-\u001a\u0004\b=\u0010>¨\u0006A"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "", MethodDecl.initName, "()V", "", "mediaId", "deleteVideoConvertingAudio", "(I)I", "", "path", "", "convertTime", "addConvertedAudioItem", "(ILjava/lang/String;J)I", "deleteConvertedAudioItem", "(ILjava/lang/String;)I", "deleteAllConvertedAudioItem", "()I", "Lcom/transsion/dbdata/beans/media/AudioItem;", "item", "newPath", "updateConvertedAudioItem", "(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I", "limitedCount", "Lkotlin/Pair;", "", "queryConvertedAudioList", "(I)Lkotlin/Pair;", "Lb15$l;", "action", "insertVideoConvertingAudio", "(Lb15$l;)I", "Lb15$m;", "(Lb15$m;)Ljava/util/List;", "Ld82$n;", "(Ld82$n;)I", "Lngb$f;", "updateVideoConvertingAudio", "(Lngb$f;)I", "Lxk8$j;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "queryConvertingVideoList", "(Lxk8$j;)Lkotlin/Pair;", "Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository$delegate", "Lyi5;", "getMAudioQueryRepository", "()Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;", "mAudioQueryRepository", "Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository$delegate", "getMAudioMVRepository", "()Lcom/transsion/dbdata/source/data/repository/AudioMVRepository;", "mAudioMVRepository", "Lgi1;", "mConvertAudioDao$delegate", "getMConvertAudioDao", "()Lgi1;", "mConvertAudioDao", "Lqj1;", "mConvertingVideoDao$delegate", "getMConvertingVideoDao", "()Lqj1;", "mConvertingVideoDao", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaConvertRepository {
    private static final String TAG = "MediaConvertRepository";

    public static final Companion INSTANCE = new Companion(null);
    private static final yi5 manager$delegate = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return MediaConvertRepository.manager_delegate$lambda$11();
        }
    });

    private final yi5 mAudioQueryRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaConvertRepository.mAudioQueryRepository_delegate$lambda$0();
        }
    });

    private final yi5 mAudioMVRepository = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaConvertRepository.mAudioMVRepository_delegate$lambda$1();
        }
    });

    private final yi5 mConvertAudioDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaConvertRepository.mConvertAudioDao_delegate$lambda$2();
        }
    });

    private final yi5 mConvertingVideoDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return MediaConvertRepository.mConvertingVideoDao_delegate$lambda$3();
        }
    });

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u001b\u0010\n\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\u0006R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;", "", MethodDecl.initName, "()V", "Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "getInstance", "()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;", "manager$delegate", "Lyi5;", "getManager", "manager", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MediaConvertRepository getManager() {
            return (MediaConvertRepository) MediaConvertRepository.manager$delegate.getValue();
        }

        public final MediaConvertRepository getInstance() {
            return getManager();
        }

        private Companion() {
        }
    }

    private MediaConvertRepository() {
    }

    public static int deleteConvertedAudioItem$default(MediaConvertRepository mediaConvertRepository, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        return mediaConvertRepository.deleteConvertedAudioItem(i, str);
    }

    public static final MediaConvertRepository getInstance() {
        return INSTANCE.getInstance();
    }

    private final AudioMVRepository getMAudioMVRepository() {
        return (AudioMVRepository) this.mAudioMVRepository.getValue();
    }

    private final SystemAudioQueryRepository getMAudioQueryRepository() {
        return (SystemAudioQueryRepository) this.mAudioQueryRepository.getValue();
    }

    private final gi1 getMConvertAudioDao() {
        Object value = this.mConvertAudioDao.getValue();
        y45.i(value, "getValue(...)");
        return (gi1) value;
    }

    private final qj1 getMConvertingVideoDao() {
        Object value = this.mConvertingVideoDao.getValue();
        y45.i(value, "getValue(...)");
        return (qj1) value;
    }

    public static final AudioMVRepository mAudioMVRepository_delegate$lambda$1() {
        return AudioMVRepository.INSTANCE.getInstance();
    }

    public static final SystemAudioQueryRepository mAudioQueryRepository_delegate$lambda$0() {
        return new SystemAudioQueryRepository();
    }

    public static final gi1 mConvertAudioDao_delegate$lambda$2() {
        return AudioRoomDatabase.f(se.a()).b();
    }

    public static final qj1 mConvertingVideoDao_delegate$lambda$3() {
        return VideoRoomDatabase.h(se.a()).a();
    }

    public static final MediaConvertRepository manager_delegate$lambda$11() {
        return new MediaConvertRepository();
    }

    public final int addConvertedAudioItem(int mediaId, String path, long convertTime) {
        y45.j(path, "path");
        return (int) getMConvertAudioDao().insert(new ConvertAudio(mediaId, path, convertTime));
    }

    public final int deleteAllConvertedAudioItem() {
        try {
            getMConvertAudioDao().deleteAllConvertAudio();
            return 1;
        } catch (Exception e) {
            vmb.d(TAG, "deleteAllConvertedAudioItem error", e);
            return -1;
        }
    }

    public final int deleteConvertedAudioItem(int mediaId, String path) {
        try {
            getMConvertAudioDao().deleteAudioByMediaId(mediaId);
            return 1;
        } catch (Exception e) {
            vmb.d(TAG, "deleteConvertedAudioItem error", e);
            return -1;
        }
    }

    public final int deleteVideoConvertingAudio(d82.n action) {
        y45.j(action, "action");
        return deleteVideoConvertingAudio(action.a());
    }

    public final int insertVideoConvertingAudio(b15.l action) {
        y45.j(action, "action");
        return (int) getMConvertingVideoDao().insert(new ConvertingVideo(action.b(), action.c(), action.a()));
    }

    public final Pair<Integer, List<AudioItem>> queryConvertedAudioList(int limitedCount) {
        List<String> convertPathListOrderTime = getMConvertAudioDao().getConvertPathListOrderTime();
        List<String> list = convertPathListOrderTime;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<AudioItem> listQueryBatchByPath = getMAudioQueryRepository().queryBatchByPath(convertPathListOrderTime, limitedCount);
        if (listQueryBatchByPath.isEmpty() && !list.isEmpty()) {
            deleteAllConvertedAudioItem();
        }
        return abb.a(0, listQueryBatchByPath);
    }

    public final Pair<Integer, List<MediaItem>> queryConvertingVideoList(xk8.j action) {
        List listK;
        Object next;
        y45.j(action, "action");
        try {
            int iB = action.b();
            boolean zA = action.a();
            List<ConvertingVideo> allConvertingVideo = getMConvertingVideoDao().getAllConvertingVideo(iB);
            List<ConvertingVideo> list = allConvertingVideo;
            if (list != null && !list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = allConvertingVideo.iterator();
                while (it.hasNext()) {
                    Integer num = ((ConvertingVideo) it.next()).mediaId;
                    if (num != null) {
                        arrayList.add(num);
                    }
                }
                Pair pairP = we6.a.a().p(DataSourceScope.VIDEO, zj7.d(new xk8.o.a().d(arrayList).a(), MediaItem.class));
                if (pairP == null || (listK = (List) pairP.getSecond()) == null) {
                    listK = y71.k();
                }
                vmb.a(TAG, "queryConvertingVideoList count: " + allConvertingVideo.size());
                ArrayList arrayList2 = new ArrayList();
                for (ConvertingVideo convertingVideo : allConvertingVideo) {
                    String str = convertingVideo.data;
                    Integer num2 = convertingVideo.mediaId;
                    if (num2 != null) {
                        int iIntValue = num2.intValue();
                        int i = convertingVideo.converted_status;
                        Iterator it2 = listK.iterator();
                        do {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                        } while (!y45.e(((MediaItem) next).data, str));
                        MediaItem mediaItem = (MediaItem) next;
                        if (mediaItem != null) {
                            mediaItem.setConvertedFailed(i);
                            mediaItem.dateToken = mediaItem.dateModified;
                            mediaItem.dateModified = convertingVideo.add_time / ((long) 1000);
                            arrayList2.add(mediaItem);
                        } else if (zA) {
                            deleteVideoConvertingAudio(iIntValue);
                            e74 e74VarC = action.c();
                            if (e74VarC != null) {
                            }
                        }
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : arrayList2) {
                    if (!((MediaItem) obj).isTimeItem) {
                        arrayList3.add(obj);
                    }
                }
                return abb.a(0, arrayList3);
            }
            return null;
        } catch (Exception e) {
            vmb.b(TAG, "queryConvertingVideoList error", e);
            return null;
        }
    }

    public final int updateConvertedAudioItem(AudioItem item, String newPath) {
        y45.j(item, "item");
        y45.j(newPath, "newPath");
        ConvertAudio convertAudioByMediaId = getMConvertAudioDao().getConvertAudioByMediaId(item.id);
        if (convertAudioByMediaId == null) {
            convertAudioByMediaId = getMConvertAudioDao().getConvertAudioByData(item.data);
        }
        if (convertAudioByMediaId == null) {
            return -1;
        }
        xk8.x xVarA = new xk8.x.a().f(newPath).a();
        AudioItem audioItemQuerySingle = getMAudioQueryRepository().querySingle(xVarA);
        if (audioItemQuerySingle == null) {
            audioItemQuerySingle = getMAudioMVRepository().querySingleMV(xVarA);
        }
        if (audioItemQuerySingle == null) {
            return -1;
        }
        convertAudioByMediaId.data = newPath;
        int i = audioItemQuerySingle.id;
        if (i != 0) {
            convertAudioByMediaId.mediaId = Integer.valueOf(i);
        }
        return getMConvertAudioDao().updateConvertAudio(convertAudioByMediaId);
    }

    public final int updateVideoConvertingAudio(ngb.f action) {
        y45.j(action, "action");
        ConvertingVideo convertingVideoByMediaId = getMConvertingVideoDao().getConvertingVideoByMediaId(action.a());
        if (convertingVideoByMediaId != null) {
            convertingVideoByMediaId.converted_status = action.b();
        } else {
            convertingVideoByMediaId = null;
        }
        if (convertingVideoByMediaId != null) {
            return getMConvertingVideoDao().updateConvertingVideo(convertingVideoByMediaId);
        }
        return -1;
    }

    private final int deleteVideoConvertingAudio(int mediaId) {
        try {
            return getMConvertingVideoDao().deleteVideoByMediaId(mediaId);
        } catch (Exception e) {
            vmb.d(TAG, "Failed to remove invalid converting video record", e);
            return -1;
        }
    }

    public final List<Integer> insertVideoConvertingAudio(b15.m action) {
        ArrayList arrayList;
        y45.j(action, "action");
        int size = action.a().size();
        List<MediaItem> listA = action.a();
        ArrayList arrayList2 = new ArrayList(z71.v(listA, 10));
        for (MediaItem mediaItem : listA) {
            arrayList2.add(new ConvertingVideo(mediaItem.id, mediaItem.data, System.currentTimeMillis()));
        }
        try {
            getMConvertingVideoDao().insertVideos(arrayList2);
            arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(1);
            }
        } catch (Exception e) {
            vmb.d(TAG, "insertVideoConvertingAudio error", e);
            arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(-1);
            }
        }
        return arrayList;
    }
}
