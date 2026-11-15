package com.transsion.dbdata.source.data.repository;

import androidx.annotation.IntRange;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MediatorLiveData;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.database.AudioRoomDatabase;
import com.transsion.dbdata.database.ConvertAudio;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.MediaDataMissingItem;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.MediaRoomDatabase;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.source.data.repository.LiveDataProviderRepository;
import defpackage.b68;
import defpackage.c74;
import defpackage.e74;
import defpackage.f68;
import defpackage.g5c;
import defpackage.gi1;
import defpackage.ht;
import defpackage.oe6;
import defpackage.qe6;
import defpackage.qj1;
import defpackage.se;
import defpackage.vmb;
import defpackage.w4a;
import defpackage.y45;
import defpackage.yi5;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.b;

@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ!\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\nJ!\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J3\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\r2\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ3\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u00070\u00062\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\r2\b\b\u0001\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001c\u0010\u001aJ1\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001f\u0010 J1\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b!\u0010\"J)\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u00070\u00062\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b#\u0010$J\u0019\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\u00070\u0006¢\u0006\u0004\b&\u0010'J\u0019\u0010)\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020(0\u00070\u0006¢\u0006\u0004\b)\u0010'R\u0014\u0010+\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010/\u001a\u0004\b5\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010/\u001a\u0004\b:\u0010;R\u001b\u0010A\u001a\u00020=8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010/\u001a\u0004\b?\u0010@R\u001b\u0010F\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010/\u001a\u0004\bD\u0010ER\u001b\u0010K\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bH\u0010/\u001a\u0004\bI\u0010JR#\u0010Q\u001a\n M*\u0004\u0018\u00010L0L8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010/\u001a\u0004\bO\u0010PR\u001b\u0010V\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010/\u001a\u0004\bT\u0010U¨\u0006W"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/LiveDataProviderRepository;", "", MethodDecl.initName, "()V", "", "limitCount", "Landroidx/lifecycle/LiveData;", "", "Lcom/transsion/dbdata/database/ConvertAudio;", "observeConvertAudio", "(I)Landroidx/lifecycle/LiveData;", "Lcom/transsion/dbdata/database/ConvertingVideo;", "observeVideoConverting", "", "fromVideo", "Lcom/transsion/dbdata/database/MediaPlayCount;", "observePlayHistory", "(Z)Landroidx/lifecycle/LiveData;", "createType", "", "playListId", "Lcom/transsion/dbdata/database/PlayListFolderItem;", "observePlayListFolder", "(IJ)Landroidx/lifecycle/LiveData;", "excludeFavorite", "observePlayListFolderSet", "(IZI)Landroidx/lifecycle/LiveData;", "Lcom/transsion/dbdata/database/PlayListItem;", "observePlayListFolderSetNonCount", "excludeFavorites", "Lcom/transsion/dbdata/database/PlayListMediaItem;", "observePlayListElements", "(ZZI)Landroidx/lifecycle/LiveData;", "observePlayListElementsById", "(ZJI)Landroidx/lifecycle/LiveData;", "observeFavoritePlayListElements", "(ZI)Landroidx/lifecycle/LiveData;", "Lcom/transsion/dbdata/beans/SubtitleHistory;", "observeDownloadSubtitle", "()Landroidx/lifecycle/LiveData;", "Lqe6;", "observeAllMissingData", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lgi1;", "mConvertAudioDao$delegate", "Lyi5;", "getMConvertAudioDao", "()Lgi1;", "mConvertAudioDao", "Lqj1;", "mConvertingVideoDao$delegate", "getMConvertingVideoDao", "()Lqj1;", "mConvertingVideoDao", "Lb68;", "mPlayListDao$delegate", "getMPlayListDao", "()Lb68;", "mPlayListDao", "Lf68;", "mPlayListMediaDao$delegate", "getMPlayListMediaDao", "()Lf68;", "mPlayListMediaDao", "Lht;", "mAudioPlayHistoryDao$delegate", "getMAudioPlayHistoryDao", "()Lht;", "mAudioPlayHistoryDao", "Lg5c;", "mVideoPlayHistoryDao$delegate", "getMVideoPlayHistoryDao", "()Lg5c;", "mVideoPlayHistoryDao", "Lw4a;", "kotlin.jvm.PlatformType", "mSubtitleDownloadHistoryDao$delegate", "getMSubtitleDownloadHistoryDao", "()Lw4a;", "mSubtitleDownloadHistoryDao", "Loe6;", "mMediaDataMissingItemDao$delegate", "getMMediaDataMissingItemDao", "()Loe6;", "mMediaDataMissingItemDao", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LiveDataProviderRepository {
    private static final String TAG = "LiveDataProviderRepository";
    public static final LiveDataProviderRepository INSTANCE = new LiveDataProviderRepository();

    private static final yi5 mConvertAudioDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mConvertAudioDao_delegate$lambda$0();
        }
    });

    private static final yi5 mConvertingVideoDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mConvertingVideoDao_delegate$lambda$1();
        }
    });

    private static final yi5 mPlayListDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mPlayListDao_delegate$lambda$2();
        }
    });

    private static final yi5 mPlayListMediaDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mPlayListMediaDao_delegate$lambda$3();
        }
    });

    private static final yi5 mAudioPlayHistoryDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mAudioPlayHistoryDao_delegate$lambda$4();
        }
    });

    private static final yi5 mVideoPlayHistoryDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mVideoPlayHistoryDao_delegate$lambda$5();
        }
    });

    private static final yi5 mSubtitleDownloadHistoryDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mSubtitleDownloadHistoryDao_delegate$lambda$6();
        }
    });

    private static final yi5 mMediaDataMissingItemDao = b.a(new c74() {
        @Override
        public final Object invoke() {
            return LiveDataProviderRepository.mMediaDataMissingItemDao_delegate$lambda$7();
        }
    });

    private LiveDataProviderRepository() {
    }

    private final ht getMAudioPlayHistoryDao() {
        return (ht) mAudioPlayHistoryDao.getValue();
    }

    private final gi1 getMConvertAudioDao() {
        Object value = mConvertAudioDao.getValue();
        y45.i(value, "getValue(...)");
        return (gi1) value;
    }

    private final qj1 getMConvertingVideoDao() {
        Object value = mConvertingVideoDao.getValue();
        y45.i(value, "getValue(...)");
        return (qj1) value;
    }

    private final oe6 getMMediaDataMissingItemDao() {
        return (oe6) mMediaDataMissingItemDao.getValue();
    }

    private final b68 getMPlayListDao() {
        return (b68) mPlayListDao.getValue();
    }

    private final f68 getMPlayListMediaDao() {
        return (f68) mPlayListMediaDao.getValue();
    }

    private final w4a getMSubtitleDownloadHistoryDao() {
        return (w4a) mSubtitleDownloadHistoryDao.getValue();
    }

    private final g5c getMVideoPlayHistoryDao() {
        Object value = mVideoPlayHistoryDao.getValue();
        y45.i(value, "getValue(...)");
        return (g5c) value;
    }

    public static final ht mAudioPlayHistoryDao_delegate$lambda$4() {
        return MediaRoomDatabase.INSTANCE.d().f();
    }

    public static final gi1 mConvertAudioDao_delegate$lambda$0() {
        return AudioRoomDatabase.f(se.a()).b();
    }

    public static final qj1 mConvertingVideoDao_delegate$lambda$1() {
        return VideoRoomDatabase.h(se.a()).a();
    }

    public static final oe6 mMediaDataMissingItemDao_delegate$lambda$7() {
        return MediaRoomDatabase.INSTANCE.d().h();
    }

    public static final b68 mPlayListDao_delegate$lambda$2() {
        return MediaRoomDatabase.INSTANCE.d().j();
    }

    public static final f68 mPlayListMediaDao_delegate$lambda$3() {
        return MediaRoomDatabase.INSTANCE.d().k();
    }

    public static final w4a mSubtitleDownloadHistoryDao_delegate$lambda$6() {
        return VideoRoomDatabase.h(se.a()).i();
    }

    public static final g5c mVideoPlayHistoryDao_delegate$lambda$5() {
        return VideoRoomDatabase.h(se.a()).f();
    }

    public static final zfb observeAllMissingData$lambda$14(MediatorLiveData mediatorLiveData, List list) {
        y45.g(list);
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(qe6.m.a((MediaDataMissingItem) it.next()));
        }
        mediatorLiveData.setValue(arrayList);
        return zfb.a;
    }

    public final LiveData<List<qe6>> observeAllMissingData() {
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(getMMediaDataMissingItemDao().getAllMissingDataLiveData(), new LiveDataProviderRepository$sam$androidx_lifecycle_Observer$0(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return LiveDataProviderRepository.observeAllMissingData$lambda$14(mediatorLiveData, (List) obj);
            }
        }));
        return mediatorLiveData;
    }

    public final LiveData<List<ConvertAudio>> observeConvertAudio(int limitCount) {
        vmb.e(TAG, "observeConvertAudio,limitCount: " + limitCount);
        LiveData<List<ConvertAudio>> all = getMConvertAudioDao().getAll(limitCount);
        y45.i(all, "getAll(...)");
        return all;
    }

    public final LiveData<List<SubtitleHistory>> observeDownloadSubtitle() {
        vmb.e(TAG, "observeDownloadSubtitle--->");
        LiveData<List<SubtitleHistory>> liveDataQueryAllDownLoadSubtitleLiveData = getMSubtitleDownloadHistoryDao().queryAllDownLoadSubtitleLiveData();
        y45.i(liveDataQueryAllDownLoadSubtitleLiveData, "queryAllDownLoadSubtitleLiveData(...)");
        return liveDataQueryAllDownLoadSubtitleLiveData;
    }

    public final LiveData<List<PlayListMediaItem>> observeFavoritePlayListElements(boolean fromVideo, int limitCount) {
        if (fromVideo) {
            vmb.e(TAG, "observeFavoritePlayListElements from video");
            return getMPlayListMediaDao().c(limitCount);
        }
        vmb.e(TAG, "observeFavoritePlayListElements from audio");
        return getMPlayListMediaDao().a(limitCount);
    }

    public final LiveData<List<MediaPlayCount>> observePlayHistory(boolean fromVideo) {
        if (!fromVideo) {
            vmb.e(TAG, "observePlayHistory from audio");
            return getMAudioPlayHistoryDao().observePlayHistory();
        }
        vmb.e(TAG, "observePlayHistory from video");
        LiveData<List<MediaPlayCount>> liveDataObservePlayHistory = getMVideoPlayHistoryDao().observePlayHistory();
        y45.g(liveDataObservePlayHistory);
        return liveDataObservePlayHistory;
    }

    public final LiveData<List<PlayListMediaItem>> observePlayListElements(boolean fromVideo, boolean excludeFavorites, int limitCount) {
        int i = fromVideo ? 2 : 1;
        Boolean bool = excludeFavorites ? Boolean.FALSE : null;
        vmb.e(TAG, "observePlayListElements from " + (i == 1 ? "audio" : "video") + ",excludeFavorites:" + excludeFavorites);
        return getMPlayListMediaDao().getPlayListMediaItemsLiveData(Integer.valueOf(i), null, bool, limitCount);
    }

    public final LiveData<List<PlayListMediaItem>> observePlayListElementsById(boolean fromVideo, long playListId, int limitCount) {
        int i = fromVideo ? 2 : 1;
        vmb.e(TAG, "observePlayListElementsById,from:" + (i == 1 ? "audio" : "video") + ",playListId:" + playListId);
        return getMPlayListMediaDao().b(playListId, i, limitCount);
    }

    public final LiveData<PlayListFolderItem> observePlayListFolder(int createType, long playListId) {
        String str = createType == 1 ? "audio" : "video";
        LiveData<PlayListFolderItem> playListFolderWithLiveData = getMPlayListMediaDao().getPlayListFolderWithLiveData(createType, playListId);
        vmb.e(TAG, "observePlayListFolder,from " + str + ",playListId:" + playListId);
        return playListFolderWithLiveData;
    }

    public final LiveData<List<PlayListFolderItem>> observePlayListFolderSet(int createType, boolean excludeFavorite, @IntRange(from = 1, to = Long.MAX_VALUE) int limitCount) {
        String str = createType == 1 ? "audio" : "video";
        if (excludeFavorite) {
            LiveData<List<PlayListFolderItem>> nonFavoritePlayListsWithLiveData = getMPlayListMediaDao().getNonFavoritePlayListsWithLiveData(createType, limitCount);
            vmb.e(TAG, "observeNonFavoritePlayListFolderSet,from :" + str);
            return nonFavoritePlayListsWithLiveData;
        }
        LiveData<List<PlayListFolderItem>> playListFolderSetWithLiveData = getMPlayListMediaDao().getPlayListFolderSetWithLiveData(createType, limitCount);
        vmb.e(TAG, "observePlayListFolderSet,from :" + str);
        return playListFolderSetWithLiveData;
    }

    public final LiveData<List<PlayListItem>> observePlayListFolderSetNonCount(int createType, boolean excludeFavorite, @IntRange(from = 1, to = Long.MAX_VALUE) int limitCount) {
        String str = createType == 1 ? "audio" : "video";
        if (excludeFavorite) {
            LiveData<List<PlayListItem>> nonFavoritePlayListsWithLiveData = getMPlayListDao().getNonFavoritePlayListsWithLiveData(createType, limitCount);
            vmb.e(TAG, "observeNonFavoritePlayListFolderSetNonCount from " + str);
            return nonFavoritePlayListsWithLiveData;
        }
        LiveData<List<PlayListItem>> playListsWithLiveData = getMPlayListDao().getPlayListsWithLiveData(createType, limitCount);
        vmb.e(TAG, "observePlayListFolderSetNonCount from " + str);
        return playListsWithLiveData;
    }

    public final LiveData<List<ConvertingVideo>> observeVideoConverting(int limitCount) {
        vmb.e(TAG, "observeVideoConverting,limitCount: " + limitCount);
        LiveData<List<ConvertingVideo>> all = getMConvertingVideoDao().getAll(limitCount);
        y45.i(all, "getAll(...)");
        return all;
    }
}
