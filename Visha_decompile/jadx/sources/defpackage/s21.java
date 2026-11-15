package defpackage;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class s21 {
    public static volatile s21 c;
    public static MIMediaLibraryData e;
    public final HashMap a = new HashMap();
    public static final a b = new a(null);
    public static List d = new ArrayList();
    public static List f = new ArrayList();
    public static List g = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final s21 a() {
            s21 s21Var = s21.c;
            if (s21Var == null) {
                synchronized (this) {
                    s21Var = s21.c;
                    if (s21Var == null) {
                        s21Var = new s21();
                        s21.c = s21Var;
                    }
                }
            }
            return s21Var;
        }

        public final void b(List list) {
            y45.j(list, "<set-?>");
            s21.g = list;
        }

        public final void c(MIMediaLibraryData mIMediaLibraryData) {
            s21.e = mIMediaLibraryData;
        }

        public final void d(List list) {
            y45.j(list, "<set-?>");
            s21.d = list;
        }

        public final void e(List list) {
            y45.j(list, "<set-?>");
            s21.f = list;
        }

        public a() {
        }
    }

    public final MediaItem g(MIMediaLibraryData mIMediaLibraryData, MIMediaVideoData mIMediaVideoData) {
        y45.j(mIMediaLibraryData, "mediaLibraryData");
        y45.j(mIMediaVideoData, "videoData");
        MediaItem mediaItem = new MediaItem();
        mediaItem.setMiMediaInfo(new MIMediaInfo.Builder().setNeedRecordPlayInfo(mIMediaLibraryData.getMediaLibraryCollectFlag()).setMediaLibraryId(mIMediaLibraryData.getMediaLibraryId()).setVideoId(mIMediaVideoData.getSourceId()).setCoverUri(mIMediaVideoData.getCover()).setVideoTitle(mIMediaVideoData.getTitle()).getMediaInfo());
        mediaItem.data = mIMediaVideoData.getSourceId();
        mediaItem.thumbnailUrl = mIMediaVideoData.getCover();
        mediaItem.title = mIMediaVideoData.getTitle();
        mediaItem.displayName = mIMediaVideoData.getTitle();
        return mediaItem;
    }

    public final MediaItem h(VideoCloudData videoCloudData) {
        y45.j(videoCloudData, "videoCloudData");
        MediaItem mediaItem = new MediaItem();
        mediaItem.setMiMediaInfo(new MIMediaInfo.Builder().setNeedRecordPlayInfo(true).setMediaLibraryId(videoCloudData.getMediaLibraryId()).setVideoId(videoCloudData.getFileId()).setCoverUri(videoCloudData.getCover()).setVideoTitle(videoCloudData.getFileName()).getMediaInfo());
        mediaItem.data = videoCloudData.getFileId();
        mediaItem.thumbnailUrl = videoCloudData.getCover();
        mediaItem.title = videoCloudData.getFileName();
        mediaItem.displayName = videoCloudData.getFileName();
        return mediaItem;
    }

    public final ArrayList i(String str) {
        MIMediaLibraryData mIMediaLibraryData;
        ArrayList arrayList = new ArrayList();
        if (str != null && (mIMediaLibraryData = (MIMediaLibraryData) this.a.get(str)) != null) {
            List<MIMediaVideoData> videoList = mIMediaLibraryData.getVideoList();
            if (videoList == null) {
                videoList = y71.k();
            }
            Iterator<MIMediaVideoData> it = videoList.iterator();
            while (it.hasNext()) {
                MediaItem mediaItemG = g(mIMediaLibraryData, it.next());
                LogUtils.j("CloudMediaInfoHelper", "getMIMediaVideoDataList " + mediaItemG);
                arrayList.add(mediaItemG);
            }
        }
        return arrayList;
    }

    public final ArrayList j() {
        ArrayList arrayList = new ArrayList();
        if (e != null) {
            for (MIMediaVideoData mIMediaVideoData : g) {
                MIMediaLibraryData mIMediaLibraryData = e;
                y45.g(mIMediaLibraryData);
                MediaItem mediaItemG = g(mIMediaLibraryData, mIMediaVideoData);
                LogUtils.j("CloudMediaInfoHelper", "getTempFavoriteLibraryVideoDataList " + mediaItemG);
                arrayList.add(mediaItemG);
            }
        }
        return arrayList;
    }

    public final ArrayList k() {
        ArrayList arrayList = new ArrayList();
        if (e != null) {
            for (MIMediaVideoData mIMediaVideoData : d) {
                MIMediaLibraryData mIMediaLibraryData = e;
                y45.g(mIMediaLibraryData);
                MediaItem mediaItemG = g(mIMediaLibraryData, mIMediaVideoData);
                LogUtils.j("CloudMediaInfoHelper", "getTempMIMediaVideoDataList " + mediaItemG);
                arrayList.add(mediaItemG);
            }
        }
        return arrayList;
    }

    public final ArrayList l() {
        LogUtils.j("CloudMediaInfoHelper", "getTempRecentVideoDataList " + f.size());
        ArrayList arrayList = new ArrayList();
        for (VideoCloudData videoCloudData : f) {
            MediaItem mediaItemH = videoCloudData.getDataType() == 2 ? h(videoCloudData) : videoCloudData.toMediaItem();
            LogUtils.j("CloudMediaInfoHelper", "getTempRecentVideoDataList " + mediaItemH);
            arrayList.add(mediaItemH);
        }
        return arrayList;
    }

    public final void m(List list) {
        y45.j(list, "libraryData");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MIMediaLibraryData mIMediaLibraryData = (MIMediaLibraryData) it.next();
            if (mIMediaLibraryData.getMediaLibraryId().length() > 0) {
                this.a.put(mIMediaLibraryData.getMediaLibraryId(), mIMediaLibraryData);
                LogUtils.j("CloudMediaInfoHelper", "Saved media library data: " + mIMediaLibraryData.getMediaLibraryId() + " - " + mIMediaLibraryData.getMediaLibraryName());
            } else {
                LogUtils.P("CloudMediaInfoHelper", "Media library id is empty, skip this item");
            }
        }
    }
}
