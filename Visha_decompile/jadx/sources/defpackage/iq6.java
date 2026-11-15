package defpackage;

import android.net.Uri;
import androidx.core.view.InputDeviceCompat;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.VideoInfoTrack;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.dbdata.utils.SortUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;

public final class iq6 implements dx4 {
    public static final iq6 a = new iq6();
    public static final we6 b = we6.a.a();

    @Override
    public PlayListMediaItem A(int i, int i2, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        return (PlayListMediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.t(i, i2), PlayListMediaItem.class));
    }

    @Override
    public boolean B(PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
        y45.j(playVideoData, "videoData");
        y45.j(mediaItem, "mediaItem");
        y45.j(playerStates, "playStates");
        return b.u(DataSourceScope.VIDEO, zj7.e(new ngb.g(mediaItem, playVideoData, playerStates))) >= 0;
    }

    @Override
    public boolean C(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return b.u(DataSourceScope.VIDEO, zj7.e(new ngb.e(mediaItem, true))) >= -1;
    }

    @Override
    public void D(List list) {
        b.t(list, true);
    }

    @Override
    public List E(long j) {
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.u.a().e(j).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public void F(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
        b.d(DataSourceScope.VIDEO, zj7.a(new d82.k(mediaItem, true, e74Var)));
    }

    @Override
    public boolean G(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return b.k(mediaItem, true);
    }

    @Override
    public VideoTotalTrack H() {
        VideoTotalTrack videoTotalTrack = (VideoTotalTrack) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.d0(0), VideoTotalTrack.class));
        return videoTotalTrack == null ? new VideoTotalTrack(null, null, 0, 0L, 15, null) : videoTotalTrack;
    }

    @Override
    public MediaItem I(String str) {
        y45.j(str, Progress.FILE_NAME);
        return (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.x.a().c(str).a(), MediaItem.class));
    }

    @Override
    public int J(int i, int i2) {
        return b.u(DataSourceScope.VIDEO, zj7.e(new ngb.f(i, i2)));
    }

    @Override
    public int K(int i, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        if (z) {
            i = (int) g0();
        }
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.h(i, mediaItem.id, true, z)));
    }

    @Override
    public String L() {
        List listK;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.d0(0), VideoInfoTrack.class));
        if (pairP == null || (listK = (List) pairP.getSecond()) == null) {
            listK = y71.k();
        }
        String strI = ek4.i(listK);
        y45.i(strI, "toJson(...)");
        return strI;
    }

    @Override
    public List M(int i, int i2) {
        List list;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.z(i, i2), SubtitleTrackInfo.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    @Override
    public List N(int i, List list, boolean z) {
        y45.j(list, "mediaItems");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
        }
        if (z) {
            i = (int) g0();
        }
        return b.c(DataSourceScope.VIDEO, zj7.a(new d82.i(i, arrayList, true, z)));
    }

    @Override
    public List O(boolean z, int i, boolean z2) {
        List listK;
        xk8.c.a aVar = new xk8.c.a();
        aVar.f(516);
        aVar.d(i);
        aVar.b(z2);
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(aVar.a(), MediaItem.class));
        if (pairP == null || (listK = (List) pairP.getSecond()) == null) {
            listK = y71.k();
        }
        return z ? i0(listK) : listK;
    }

    @Override
    public void P(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
        b.d(DataSourceScope.VIDEO, zj7.a(new d82.l(list, true, e74Var)));
    }

    @Override
    public int Q(String str, long j, MediaItem mediaItem, boolean z) {
        y45.j(str, "playlistName");
        y45.j(mediaItem, "mediaItem");
        if (z) {
            j = g0();
        }
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.f(j, mediaItem, true, z)));
    }

    @Override
    public boolean R() {
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.d(true))) > 0;
    }

    @Override
    public List S() {
        xl8 xl8VarD = zj7.d(new xk8.k(2), PlayListFolderItem.class);
        we6 we6Var = b;
        DataSourceScope dataSourceScope = DataSourceScope.VIDEO;
        PlayListFolderItem playListFolderItem = (PlayListFolderItem) we6Var.r(dataSourceScope, xl8VarD);
        if (playListFolderItem == null) {
            return y71.k();
        }
        long id = playListFolderItem.getId();
        if (id <= 0) {
            return y71.k();
        }
        Pair pairP = we6Var.p(dataSourceScope, zj7.d(new xk8.u.a().e(id).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public boolean T(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return we6.a.a().m(str);
    }

    @Override
    public List U(int i) {
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.c.a().f(InputDeviceCompat.SOURCE_DPAD).d(i).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public List V(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        if (z) {
            j = g0();
        }
        return b.g(DataSourceScope.VIDEO, zj7.b(new b15.g(j, arrayList, true, z)));
    }

    @Override
    public List W() {
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.u.a().c(true).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public boolean X(int i, String str) {
        y45.j(str, Progress.FILE_PATH);
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.e((long) i, str, true))) > 0;
    }

    @Override
    public boolean Y(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return b.l(mediaItem, true);
    }

    @Override
    public List Z(boolean z, e74 e74Var) {
        List list;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.j(oa1.e(), z, e74Var), MediaItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    @Override
    public List a(List list) {
        y45.j(list, "mediaIds");
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.o.a().d(list).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public int a0(VideoPlayList videoPlayList) {
        y45.j(videoPlayList, "playList");
        long j = videoPlayList.id;
        String str = videoPlayList.name;
        y45.i(str, "name");
        return b.u(DataSourceScope.VIDEO, zj7.e(new ngb.d(j, str, true)));
    }

    @Override
    public PlayListMediaItem b(int i) {
        return (PlayListMediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.t((int) g0(), i), PlayListMediaItem.class));
    }

    @Override
    public List b0(PlayVideoData playVideoData) {
        y45.j(playVideoData, "videoData");
        ArrayList arrayList = new ArrayList();
        String str = playVideoData.mYoutubeId;
        long j = playVideoData.bucketId;
        if (str != null && str.length() != 0) {
            MediaItem mediaItem = (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.v(j, str), MediaItem.class));
            if (mediaItem != null) {
                arrayList.add(mediaItem);
            }
        }
        return arrayList;
    }

    @Override
    public SubtitleSettingData c() {
        SubtitleSettingData subtitleSettingData;
        String str = (String) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.y(), String.class));
        return (str == null || (subtitleSettingData = (SubtitleSettingData) ek4.d(str, SubtitleSettingData.class)) == null) ? new SubtitleSettingData(0) : subtitleSettingData;
    }

    @Override
    public int c0(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        int i = mediaItem.id;
        String str = mediaItem.data;
        y45.i(str, "data");
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.l(i, str, 0L, 4, null)));
    }

    @Override
    public List d(String str) {
        y45.j(str, "url");
        ArrayList arrayList = new ArrayList();
        MediaItem mediaItem = (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.c0(str), MediaItem.class));
        if (mediaItem != null) {
            arrayList.add(mediaItem);
        }
        return arrayList;
    }

    @Override
    public List d0() {
        List list;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.h.a().a(257).b(), MediaBucket.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    @Override
    public int e(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.b(subtitleHistory)));
    }

    @Override
    public List e0(int i) {
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.c.a().f(514).d(i).a(), MediaItem.class));
        List list = pairP != null ? (List) pairP.getSecond() : null;
        List list2 = list;
        return (list2 == null || list2.isEmpty()) ? y71.k() : SortUtil.z(list);
    }

    @Override
    public long f(String str) {
        y45.j(str, "name");
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.e(str, true)));
    }

    @Override
    public List f0(String str) {
        List list;
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.p.a().c(str).a(), MediaItem.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    @Override
    public int g(long j) {
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.g(j, true)));
    }

    public final long g0() {
        PlayListFolderItem playListFolderItem = (PlayListFolderItem) we6.a.a().r(DataSourceScope.VIDEO, zj7.d(new xk8.k(2), PlayListFolderItem.class));
        if (playListFolderItem != null) {
            return playListFolderItem.getId();
        }
        return -1L;
    }

    @Override
    public AudioTrack getAudioTrack(int i) {
        String str = (String) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.b0(i), String.class));
        if (str != null) {
            return (AudioTrack) ek4.d(str, AudioTrack.class);
        }
        return null;
    }

    @Override
    public MediaItem h(int i) {
        return (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.x.a().d(i).a(), MediaItem.class));
    }

    public final List h0(boolean z, boolean z2) {
        List list;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.d(2, z, z2), PlayListFolderItem.class));
        if (pairP == null || (list = (List) pairP.getSecond()) == null) {
            return y71.k();
        }
        List<PlayListFolderItem> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (PlayListFolderItem playListFolderItem : list2) {
            VideoPlayList videoPlayList = new VideoPlayList();
            videoPlayList.id = (int) playListFolderItem.getId();
            videoPlayList.name = playListFolderItem.getName();
            videoPlayList.count = playListFolderItem.getCount();
            videoPlayList.uri = playListFolderItem.getUri();
            videoPlayList.playlistFlag = playListFolderItem.getListFlag();
            videoPlayList.mCategory = playListFolderItem.getCategory();
            arrayList.add(videoPlayList);
        }
        return arrayList;
    }

    @Override
    public List i(MediaBucket mediaBucket) {
        y45.j(mediaBucket, "mediaBucket");
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.i.a().b(mediaBucket.bucketId).f(mediaBucket.parentPath).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    public List i0(List list) {
        return dx4.a.a(this, list);
    }

    @Override
    public int insertSubtitleSetting(SubtitleSettingData subtitleSettingData) {
        y45.j(subtitleSettingData, "subtitleSetting");
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.h(subtitleSettingData)));
    }

    @Override
    public boolean j(boolean z, MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        long jG0 = g0();
        if (jG0 <= 0) {
            return false;
        }
        if (z) {
            if (we6.a.a().h(DataSourceScope.VIDEO, zj7.b(new b15.f(jG0, mediaItem, true, true))) <= 0) {
                return false;
            }
        } else {
            if (we6.a.a().d(DataSourceScope.VIDEO, zj7.a(new d82.h((int) jG0, mediaItem.id, true, true))) <= 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int k(int i, int i2, String str) {
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.k(i, i2, str)));
    }

    @Override
    public List l(List list) {
        y45.j(list, "mediaItems");
        return b.g(DataSourceScope.VIDEO, zj7.b(new b15.m(list)));
    }

    @Override
    public MediaItem m(String str) {
        y45.j(str, "path");
        return (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.x.a().f(str).a(), MediaItem.class));
    }

    @Override
    public MediaItem n(Uri uri) {
        y45.j(uri, "uri");
        return (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.x.a().g(uri).a(), MediaItem.class));
    }

    @Override
    public int o(int i) {
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.n(i)));
    }

    @Override
    public List p(List list) {
        y45.j(list, "mediaItems");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((MediaItem) it.next()).id));
        }
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.o.a().d(arrayList).e(true).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public int q(String str) {
        y45.j(str, "subtitlePath");
        return b.d(DataSourceScope.VIDEO, zj7.a(new d82.j(str)));
    }

    @Override
    public List r(int i) {
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.c.a().f(515).d(i).a(), MediaItem.class));
        List listT = SortUtil.t(pairP != null ? (List) pairP.getSecond() : null);
        return listT == null ? y71.k() : listT;
    }

    @Override
    public List s() {
        List list;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.a0(), SubtitleTrackInfo.class));
        return (pairP == null || (list = (List) pairP.getSecond()) == null) ? y71.k() : list;
    }

    @Override
    public int t(int i, SubtitleTrackInfo subtitleTrackInfo) {
        y45.j(subtitleTrackInfo, AuthInfo.Component.CODE_SUBTITLE);
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.i(i, subtitleTrackInfo)));
    }

    @Override
    public List u(boolean z) {
        return h0(z, true);
    }

    @Override
    public int v(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        return b.h(DataSourceScope.VIDEO, zj7.b(new b15.c(subtitleHistory)));
    }

    @Override
    public List w(String str) {
        List list;
        List listE0;
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.w.a().c(str).a(), MediaItem.class));
        if (pairP == null || (list = (List) pairP.getSecond()) == null || (listE0 = i81.e0(list)) == null) {
            return y71.k();
        }
        List<MediaItem> list2 = listE0;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (MediaItem mediaItem : list2) {
            SearchBean searchBean = new SearchBean();
            searchBean.setItemType(2);
            searchBean.setMediaItem(mediaItem);
            arrayList.add(searchBean);
        }
        return arrayList;
    }

    @Override
    public void x() {
        b.n();
    }

    @Override
    public List y(List list) {
        y45.j(list, "paths");
        Pair pairP = b.p(DataSourceScope.VIDEO, zj7.d(new xk8.q(list, null, 2, null), MediaItem.class));
        List list2 = pairP != null ? (List) pairP.getSecond() : null;
        List list3 = list2;
        return (list3 == null || list3.isEmpty()) ? y71.k() : SortUtil.z(list2);
    }

    @Override
    public MediaItem z(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return (MediaItem) b.r(DataSourceScope.VIDEO, zj7.d(new xk8.x.a().e(str).a(), MediaItem.class));
    }
}
