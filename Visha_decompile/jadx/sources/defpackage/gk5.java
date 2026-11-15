package defpackage;

import android.app.Application;
import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.TotalVideosBean;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.ConvertingVideo;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.database.VideoPlayListMedia;
import com.transsion.dbdata.database.VideoRecord;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.datamanager.RecentAddDataManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.Predicate;
import java.util.stream.Stream;
import kotlin.b;

public final class gk5 implements dx4 {
    public static final gk5 a = new gk5();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return gk5.o0();
        }
    });
    public static final yi5 c = b.a(new c74() {
        @Override
        public final Object invoke() {
            return gk5.p0();
        }
    });

    public static final boolean k0(String str, MediaItem mediaItem) {
        y45.g(mediaItem);
        return y45.e(mediaItem.data, str);
    }

    public static final boolean l0(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final Application o0() {
        return se.a();
    }

    public static final qj1 p0() {
        return VideoRoomDatabase.h(a.m0()).a();
    }

    @Override
    public PlayListMediaItem A(int i, int i2, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        try {
            if (VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaByIds(i, mediaItem.id).isEmpty()) {
                return null;
            }
            String str = mediaItem.data;
            y45.i(str, "data");
            return new PlayListMediaItem(0L, i, i2, 0L, str, 9, null);
        } catch (Exception e) {
            vmb.d("LegacyVideoDataManager", "getPlayMediaByPlayListId error: playListId=" + i + ", mediaId=" + i2, e);
            return null;
        }
    }

    @Override
    public boolean B(PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
        y45.j(playVideoData, "videoData");
        y45.j(mediaItem, "mediaItem");
        y45.j(playerStates, "playStates");
        t6c.r(m0(), playVideoData, mediaItem, playerStates);
        return true;
    }

    @Override
    public boolean C(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return false;
    }

    @Override
    public void D(List list) {
        RecentAddDataManager.a().j(list, true);
    }

    @Override
    public List E(long j) {
        ArrayList arrayListJ = t6c.j((int) j);
        y45.i(arrayListJ, "queryAllMediaItemByPlayListId(...)");
        return arrayListJ;
    }

    @Override
    public void F(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
    }

    @Override
    public boolean G(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return RecentAddDataManager.a().e(mediaItem, true);
    }

    @Override
    public VideoTotalTrack H() {
        TotalVideosBean totalVideosBeanD = qpb.d(m0(), false);
        String str = totalVideosBeanD.totalCountStr;
        y45.i(str, "totalCountStr");
        String str2 = totalVideosBeanD.totalSizeStr;
        y45.i(str2, "totalSizeStr");
        return new VideoTotalTrack(str, str2, totalVideosBeanD.totalCount, totalVideosBeanD.totalSize);
    }

    @Override
    public MediaItem I(String str) {
        y45.j(str, Progress.FILE_NAME);
        return qpb.c0(m0().getContentResolver(), str, false);
    }

    @Override
    public int J(int i, int i2) {
        ConvertingVideo convertingVideoByMediaId = n0().getConvertingVideoByMediaId(i);
        if (convertingVideoByMediaId != null) {
            convertingVideoByMediaId.converted_status = i2;
        } else {
            convertingVideoByMediaId = null;
        }
        if (convertingVideoByMediaId != null) {
            return n0().updateConvertingVideo(convertingVideoByMediaId);
        }
        return -1;
    }

    @Override
    public int K(int i, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        ivb ivbVarE = VideoRoomDatabase.h(m0()).e();
        return z ? ivbVarE.deleteFavoriteListMedia(mediaItem.data) : ivbVarE.deletePlayListMedia(i, mediaItem.id);
    }

    @Override
    public String L() {
        String strF = qpb.f(m0());
        y45.i(strF, "countAllVideosFormat(...)");
        return strF;
    }

    @Override
    public List M(int i, int i2) {
        List listJ = q5a.j(i, i2);
        return listJ == null ? y71.k() : listJ;
    }

    @Override
    public List N(int i, List list, boolean z) {
        y45.j(list, "mediaItems");
        long[] jArrT = t6c.t(i, new ArrayList(list));
        y45.i(jArrT, "removeFromPlaylist(...)");
        ArrayList arrayList = new ArrayList(jArrT.length);
        for (long j : jArrT) {
            arrayList.add(Integer.valueOf((int) j));
        }
        return arrayList;
    }

    @Override
    public List O(boolean z, int i, boolean z2) {
        ArrayList arrayListL = t6c.l(m0(), i, z2);
        ye6.b(arrayListL);
        if (!z) {
            y45.g(arrayListL);
            return arrayListL;
        }
        ArrayList arrayListK0 = qpb.k0(arrayListL);
        y45.i(arrayListK0, "sortAllVideoByDate(...)");
        return arrayListK0;
    }

    @Override
    public void P(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
    }

    @Override
    public int Q(String str, long j, MediaItem mediaItem, boolean z) {
        y45.j(str, "playListName");
        y45.j(mediaItem, "mediaItem");
        if (z) {
            if (dp3.e().h(mediaItem.data)) {
                return -1;
            }
            t6c.c(mediaItem);
            dp3.e().b(true, mediaItem);
            return 1;
        }
        ivb ivbVarE = VideoRoomDatabase.h(m0()).e();
        int i = (int) j;
        List<VideoPlayListMedia> playListMediaByIds = ivbVarE.getPlayListMediaByIds(i, mediaItem.id);
        if (playListMediaByIds == null || playListMediaByIds.isEmpty()) {
            return (int) ivbVarE.insertPlayListMedia(rv8.e(i, str, mediaItem.data, mediaItem.id, System.currentTimeMillis()));
        }
        return -1;
    }

    @Override
    public boolean R() {
        return VideoRoomDatabase.h(m0()).f().deleteAllVideoRecord() > 0;
    }

    @Override
    public List S() {
        ArrayList arrayListI = t6c.i(2);
        y45.i(arrayListI, "queryAllMediaItemByPlayListFlag(...)");
        return arrayListI;
    }

    @Override
    public boolean T(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return dp3.e().h(str);
    }

    @Override
    public List U(int i) {
        ArrayList arrayListV = qpb.V(m0(), ns9.o(), i);
        return arrayListV != null ? arrayListV : y71.k();
    }

    @Override
    public List V(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        if (z) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            y45.i(it, "iterator(...)");
            while (it.hasNext()) {
                Object next = it.next();
                y45.i(next, "next(...)");
                arrayList2.add(Integer.valueOf((int) t6c.c((MediaItem) next)));
            }
            return arrayList2;
        }
        long[] jArrD = t6c.d((int) j, str, arrayList);
        if (jArrD == null) {
            return y71.k();
        }
        ArrayList arrayList3 = new ArrayList(jArrD.length);
        for (long j2 : jArrD) {
            arrayList3.add(Integer.valueOf((int) j2));
        }
        return arrayList3;
    }

    @Override
    public List W() {
        ArrayList arrayListZ = qpb.Z(m0(), true);
        y45.i(arrayListZ, "queryRecentlyAdd(...)");
        return arrayListZ;
    }

    @Override
    public boolean X(int i, String str) {
        y45.j(str, Progress.FILE_PATH);
        Application applicationA = se.a();
        MediaItem mediaItem = new MediaItem();
        mediaItem.id = i;
        mediaItem.data = str;
        t6c.f(applicationA, mediaItem);
        return true;
    }

    @Override
    public boolean Y(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return RecentAddDataManager.a().h(mediaItem, true);
    }

    @Override
    public List Z(boolean z, e74 e74Var) {
        MediaItem mediaItem;
        ArrayList arrayList = new ArrayList();
        try {
            List<ConvertingVideo> allConvertingVideo = n0().getAllConvertingVideo(oa1.e());
            if (allConvertingVideo != null && !allConvertingVideo.isEmpty()) {
                ArrayList arrayListX = qpb.X(m0().getContentResolver(), (ArrayList) n0().getConvertMediaIdsOrderTime(oa1.e()), false);
                Log.d("LegacyVideoDataManager", "queryAllConvertingVideos count:" + allConvertingVideo.size());
                for (ConvertingVideo convertingVideo : allConvertingVideo) {
                    final String str = convertingVideo.data;
                    Integer num = convertingVideo.mediaId;
                    int i = convertingVideo.converted_status;
                    Stream stream = arrayListX.stream();
                    final e74 e74Var2 = new e74() {
                        @Override
                        public final Object invoke(Object obj) {
                            return Boolean.valueOf(gk5.k0(str, (MediaItem) obj));
                        }
                    };
                    try {
                        mediaItem = (MediaItem) stream.filter(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return gk5.l0(e74Var2, obj);
                            }
                        }).findFirst().get();
                    } catch (NoSuchElementException unused) {
                        mediaItem = null;
                    }
                    if (mediaItem != null) {
                        mediaItem.setConvertedFailed(i);
                        mediaItem.dateToken = mediaItem.dateModified;
                        mediaItem.dateModified = convertingVideo.add_time / ((long) 1000);
                        arrayList.add(mediaItem);
                    } else if (z) {
                        qj1 qj1VarN0 = n0();
                        y45.g(num);
                        qj1VarN0.deleteVideoByMediaId(num.intValue());
                        if (e74Var != null) {
                        }
                    }
                }
            }
            ye6.b(arrayList);
        } catch (Exception e) {
            Log.e("LegacyVideoDataManager", "getMediaItemsFromConvertingVideos: ", e);
        }
        return arrayList;
    }

    @Override
    public List a(List list) {
        y45.j(list, "mediaIds");
        ArrayList arrayListX = qpb.X(m0().getContentResolver(), new ArrayList(list), false);
        y45.i(arrayListX, "queryMediaItemByByMediaIds(...)");
        return arrayListX;
    }

    @Override
    public int a0(VideoPlayList videoPlayList) {
        y45.j(videoPlayList, "playList");
        return VideoRoomDatabase.h(m0()).d().updatePlayList(videoPlayList);
    }

    @Override
    public PlayListMediaItem b(int i) {
        List<VideoPlayListMedia> playListMediaByIds = VideoRoomDatabase.h(Utils.a()).e().getPlayListMediaByIds(i);
        List<VideoPlayListMedia> list = playListMediaByIds;
        if (list != null && !list.isEmpty()) {
            return null;
        }
        long j = playListMediaByIds.get(0).playlist_id;
        int i2 = playListMediaByIds.get(0).media_id;
        String str = playListMediaByIds.get(0)._data;
        y45.i(str, "_data");
        return new PlayListMediaItem(0L, j, i2, 0L, str, 9, null);
    }

    @Override
    public List b0(PlayVideoData playVideoData) {
        y45.j(playVideoData, "videoData");
        ArrayList arrayListP = t6c.p((int) playVideoData.bucketId, playVideoData);
        y45.i(arrayListP, "queryOnlineMediaItemByPlayListId(...)");
        return arrayListP;
    }

    @Override
    public SubtitleSettingData c() {
        SubtitleSettingData subtitleSettingDataQueryNewestSubtitleSetting = VideoRoomDatabase.h(m0()).c().queryNewestSubtitleSetting();
        return subtitleSettingDataQueryNewestSubtitleSetting == null ? new SubtitleSettingData(0) : subtitleSettingDataQueryNewestSubtitleSetting;
    }

    @Override
    public int c0(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return (int) n0().insert(new ConvertingVideo(mediaItem.id, mediaItem.data, System.currentTimeMillis()));
    }

    @Override
    public List d(String str) {
        y45.j(str, "url");
        ArrayList arrayList = new ArrayList();
        g5c g5cVarF = VideoRoomDatabase.h(m0()).f();
        VideoRecord theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountByData(str);
        if (theVideoRecordMediaCountByData != null) {
            String str2 = theVideoRecordMediaCountByData.data;
            int i = theVideoRecordMediaCountByData._id;
            int i2 = theVideoRecordMediaCountByData.position;
            boolean z = theVideoRecordMediaCountByData.isPlayCompleted == 1;
            MediaItem mediaItemA = ruc.a(str2);
            if (mediaItemA != null) {
                mediaItemA.isPlayComplete = z;
                mediaItemA.setPlayPosition(i2);
                mediaItemA.dateToken = mediaItemA.dateModified;
                mediaItemA.dateModified = theVideoRecordMediaCountByData.record_date_modified / ((long) 1000);
                arrayList.add(mediaItemA);
            } else {
                g5cVarF.deleteVideoRecordByMediaIdAndData(str2, i);
            }
        }
        return arrayList;
    }

    @Override
    public List d0() {
        ArrayList arrayListU = qpb.U(m0());
        y45.i(arrayListU, "queryAllVideoMediaBucket(...)");
        return arrayListU;
    }

    @Override
    public int e(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        try {
            VideoRoomDatabase.h(m0()).i().deleteSubtitleHistory(subtitleHistory);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public List e0(int i) {
        ArrayList arrayListT = qpb.T(m0(), true, i);
        y45.i(arrayListT, "queryAllShortVideos(...)");
        return arrayListT;
    }

    @Override
    public long f(String str) {
        y45.j(str, "name");
        VideoPlayList videoPlayList = new VideoPlayList();
        videoPlayList.name = str;
        videoPlayList.setup_time = System.currentTimeMillis();
        return VideoRoomDatabase.h(m0()).d().insertPlayList(videoPlayList);
    }

    @Override
    public List f0(String str) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        ArrayList arrayListW = qpb.W(m0(), str, false);
        y45.i(arrayListW, "queryDownloadedVideos(...)");
        return arrayListW;
    }

    @Override
    public int g(long j) {
        int i = (int) j;
        VideoRoomDatabase.h(m0()).e().deletePlayListMediaByPlayListId(i);
        return VideoRoomDatabase.h(m0()).d().deletePlayListById(i);
    }

    @Override
    public AudioTrack getAudioTrack(int i) {
        return t6c.o(i);
    }

    @Override
    public MediaItem h(int i) {
        return qpb.a0(m0().getContentResolver(), i);
    }

    @Override
    public List i(MediaBucket mediaBucket) {
        y45.j(mediaBucket, "mediaBucket");
        ArrayList arrayListE0 = qpb.e0(m0().getContentResolver(), mediaBucket);
        return arrayListE0 != null ? arrayListE0 : y71.k();
    }

    @Override
    public int insertSubtitleSetting(SubtitleSettingData subtitleSettingData) {
        y45.j(subtitleSettingData, "subtitleSetting");
        try {
            VideoRoomDatabase.h(m0()).c().insertSubtitleSetting(subtitleSettingData);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public boolean j(boolean z, MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        dp3.e().b(z, mediaItem);
        if (z) {
            if (t6c.c(mediaItem) <= 0) {
                return false;
            }
        } else if (t6c.s(mediaItem) <= 0) {
            return false;
        }
        return true;
    }

    @Override
    public int k(int i, int i2, String str) {
        try {
            q10 q10VarG = VideoRoomDatabase.h(m0()).g();
            AudioTrack audioTrack = new AudioTrack();
            audioTrack.id = i;
            audioTrack.audioId = i2;
            audioTrack.name = str;
            q10VarG.insertAudioTrack(audioTrack);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public List l(List list) {
        ArrayList arrayList;
        y45.j(list, "mediaItems");
        List<MediaItem> list2 = list;
        ArrayList arrayList2 = new ArrayList(z71.v(list2, 10));
        for (MediaItem mediaItem : list2) {
            arrayList2.add(new ConvertingVideo(mediaItem.id, mediaItem.data, System.currentTimeMillis()));
        }
        int size = arrayList2.size();
        try {
            n0().insertVideos(arrayList2);
            arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(1);
            }
        } catch (Exception e) {
            vmb.d("LegacyVideoDataManager", "insertVideoConvertingAudio error", e);
            arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(-1);
            }
        }
        return arrayList;
    }

    @Override
    public MediaItem m(String str) {
        y45.j(str, "path");
        return qpb.d0(m0().getContentResolver(), str, false);
    }

    public final Application m0() {
        return (Application) b.getValue();
    }

    @Override
    public MediaItem n(Uri uri) {
        y45.j(uri, "uri");
        return qpb.Y(m0().getContentResolver(), uri);
    }

    public final qj1 n0() {
        return (qj1) c.getValue();
    }

    @Override
    public int o(int i) {
        return n0().deleteVideoByMediaId(i);
    }

    @Override
    public List p(List list) {
        y45.j(list, "mediaItems");
        ArrayList arrayListS = qpb.S(m0(), new ArrayList(list));
        y45.i(arrayListS, "queryAllMediaItem(...)");
        return arrayListS;
    }

    @Override
    public int q(String str) {
        y45.j(str, "subtitlePath");
        return VideoRoomDatabase.h(m0()).b().deleteSubtitleRecordByPath(str);
    }

    @Override
    public List r(int i) {
        ArrayList arrayListR = qpb.R(m0(), true, i);
        y45.i(arrayListR, "queryAllLongVideos(...)");
        return arrayListR;
    }

    @Override
    public List s() {
        List listK = q5a.k(m0());
        return listK == null ? y71.k() : listK;
    }

    @Override
    public int t(int i, SubtitleTrackInfo subtitleTrackInfo) {
        y45.j(subtitleTrackInfo, AuthInfo.Component.CODE_SUBTITLE);
        return q5a.e(m0(), i, subtitleTrackInfo) ? 1 : -1;
    }

    @Override
    public List u(boolean z) {
        MediaItem mediaItem;
        ArrayList arrayList = new ArrayList();
        if (z) {
            dp3.e().m();
            ArrayList arrayListZ = qpb.Z(m0(), false);
            VideoPlayList videoPlayList = new VideoPlayList();
            videoPlayList.name = "最近添加";
            videoPlayList.playlistFlag = 13;
            videoPlayList.count = arrayListZ != null ? arrayListZ.size() : 0;
            videoPlayList.uri = (arrayListZ == null || (mediaItem = (MediaItem) i81.q0(arrayListZ)) == null) ? null : mediaItem.uri;
            videoPlayList.id = -1;
            if (videoPlayList.count > 0 && MMKV.p().d("redshots_recently_added")) {
                h27.c().e(1095, new Object[0]);
            }
            arrayList.add(videoPlayList);
        }
        VideoPlayList videoPlayListD = dp3.e().d(m0());
        videoPlayListD.name = "收藏";
        videoPlayListD.id = 0;
        arrayList.add(videoPlayListD);
        List<VideoPlayList> playList = VideoRoomDatabase.h(m0()).d().getPlayList(oa1.e());
        if (playList != null && !playList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(playList);
            t6c.k(arrayList2);
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }

    @Override
    public int v(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        try {
            q5a.f(m0(), subtitleHistory);
            return 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Override
    public List w(String str) {
        ArrayList arrayListH0 = qpb.h0(m0(), str);
        y45.i(arrayListH0, "searchVideo(...)");
        return arrayListH0;
    }

    @Override
    public void x() {
        qpb.F();
    }

    @Override
    public List y(List list) {
        y45.j(list, "paths");
        ContentResolver contentResolver = m0().getContentResolver();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list);
        int size = arrayList2.size();
        qpb.N(contentResolver, arrayList, arrayList2, false, size);
        qpb.N(contentResolver, arrayList, arrayList2, true, size);
        return arrayList;
    }

    @Override
    public MediaItem z(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return ruc.a(str);
    }
}
