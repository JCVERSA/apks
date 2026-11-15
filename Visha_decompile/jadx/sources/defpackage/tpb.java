package defpackage;

import android.net.Uri;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.model.Progress;
import com.transsion.dbdata.beans.PlayerStates;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.dbdata.beans.media.MediaBucket;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.beans.media.VideoTotalTrack;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.database.VideoPlayList;
import com.transsion.dbdata.database.VideoRecord;
import com.transsion.dbdata.database.VideoRoomDatabase;
import com.transsion.dbdata.utils.LoadDataUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class tpb implements dx4 {
    public static final a b = new a(null);
    public static final yi5 c = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return tpb.o0();
        }
    });
    public final yi5 a = b.b(LazyThreadSafetyMode.SYNCHRONIZED, new c74() {
        @Override
        public final Object invoke() {
            return tpb.n0(this.b);
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final tpb a() {
            return b();
        }

        public final tpb b() {
            return (tpb) tpb.c.getValue();
        }

        public a() {
        }
    }

    public static final tpb j0() {
        return b.a();
    }

    public static final dx4 n0(tpb tpbVar) {
        return tpbVar.p0() ? gk5.a : iq6.a;
    }

    public static final tpb o0() {
        return new tpb();
    }

    @Override
    public PlayListMediaItem A(int i, int i2, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        return k0().A(i, i2, mediaItem, z);
    }

    @Override
    public boolean B(PlayVideoData playVideoData, MediaItem mediaItem, PlayerStates playerStates) {
        y45.j(playVideoData, "videoData");
        y45.j(mediaItem, "mediaItem");
        y45.j(playerStates, "playStates");
        return k0().B(playVideoData, mediaItem, playerStates);
    }

    @Override
    public boolean C(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return k0().C(mediaItem);
    }

    @Override
    public void D(List list) {
        k0().D(list);
    }

    @Override
    public List E(long j) {
        return k0().E(j);
    }

    @Override
    public void F(MediaItem mediaItem, e74 e74Var) {
        y45.j(mediaItem, "item");
        y45.j(e74Var, "delete");
        k0().F(mediaItem, e74Var);
    }

    @Override
    public boolean G(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return k0().G(mediaItem);
    }

    @Override
    public VideoTotalTrack H() {
        return k0().H();
    }

    @Override
    public MediaItem I(String str) {
        y45.j(str, Progress.FILE_NAME);
        return k0().I(str);
    }

    @Override
    public int J(int i, int i2) {
        return k0().J(i, i2);
    }

    @Override
    public int K(int i, MediaItem mediaItem, boolean z) {
        y45.j(mediaItem, "mediaItem");
        return k0().K(i, mediaItem, z);
    }

    @Override
    public String L() {
        return k0().L();
    }

    @Override
    public List M(int i, int i2) {
        return k0().M(i, i2);
    }

    @Override
    public List N(int i, List list, boolean z) {
        y45.j(list, "mediaItems");
        return k0().N(i, list, z);
    }

    @Override
    public List O(boolean z, int i, boolean z2) {
        return k0().O(z, i, z2);
    }

    @Override
    public void P(List list, e74 e74Var) {
        y45.j(list, "items");
        y45.j(e74Var, "delete");
        k0().P(list, e74Var);
    }

    @Override
    public int Q(String str, long j, MediaItem mediaItem, boolean z) {
        y45.j(str, "playListName");
        y45.j(mediaItem, "mediaItem");
        return k0().Q(str, j, mediaItem, z);
    }

    @Override
    public boolean R() {
        return k0().R();
    }

    @Override
    public List S() {
        return k0().S();
    }

    @Override
    public boolean T(String str) {
        return k0().T(str);
    }

    @Override
    public List U(int i) {
        return k0().U(i);
    }

    @Override
    public List V(String str, long j, ArrayList arrayList, boolean z) {
        y45.j(str, "playListName");
        y45.j(arrayList, "mediaItems");
        return k0().V(str, j, arrayList, z);
    }

    @Override
    public List W() {
        return k0().W();
    }

    @Override
    public boolean X(int i, String str) {
        y45.j(str, Progress.FILE_PATH);
        return k0().X(i, str);
    }

    @Override
    public boolean Y(MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return k0().Y(mediaItem);
    }

    @Override
    public List Z(boolean z, e74 e74Var) {
        return k0().Z(z, e74Var);
    }

    @Override
    public List a(List list) {
        y45.j(list, "mediaIds");
        return k0().a(list);
    }

    @Override
    public int a0(VideoPlayList videoPlayList) {
        y45.j(videoPlayList, "playList");
        return k0().a0(videoPlayList);
    }

    @Override
    public PlayListMediaItem b(int i) {
        return k0().b(i);
    }

    @Override
    public List b0(PlayVideoData playVideoData) {
        y45.j(playVideoData, "videoData");
        return k0().b0(playVideoData);
    }

    @Override
    public SubtitleSettingData c() {
        return k0().c();
    }

    @Override
    public int c0(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return k0().c0(mediaItem);
    }

    @Override
    public List d(String str) {
        y45.j(str, "url");
        return k0().d(str);
    }

    @Override
    public List d0() {
        return k0().d0();
    }

    @Override
    public int e(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        return k0().e(subtitleHistory);
    }

    @Override
    public List e0(int i) {
        return k0().e0(i);
    }

    @Override
    public long f(String str) {
        y45.j(str, "name");
        return k0().f(str);
    }

    @Override
    public List f0(String str) {
        y45.j(str, PlayAudioData.TAG_PARENT_PATH);
        return k0().f0(str);
    }

    @Override
    public int g(long j) {
        return k0().g(j);
    }

    @Override
    public AudioTrack getAudioTrack(int i) {
        return k0().getAudioTrack(i);
    }

    @Override
    public MediaItem h(int i) {
        return k0().h(i);
    }

    @Override
    public List i(MediaBucket mediaBucket) {
        y45.j(mediaBucket, "mediaBucket");
        return k0().i(mediaBucket);
    }

    @Override
    public int insertSubtitleSetting(SubtitleSettingData subtitleSettingData) {
        y45.j(subtitleSettingData, "subtitleSetting");
        return k0().insertSubtitleSetting(subtitleSettingData);
    }

    @Override
    public boolean j(boolean z, MediaItem mediaItem) {
        y45.j(mediaItem, "item");
        return k0().j(z, mediaItem);
    }

    @Override
    public int k(int i, int i2, String str) {
        return k0().k(i, i2, str);
    }

    public final dx4 k0() {
        return (dx4) this.a.getValue();
    }

    @Override
    public List l(List list) {
        y45.j(list, "mediaItems");
        return k0().l(list);
    }

    public final long l0(PlayVideoData playVideoData, MediaItem mediaItem) {
        VideoRecord theVideoRecordMediaCountByData;
        String str;
        if (playVideoData == null) {
            return 0L;
        }
        g5c g5cVarF = VideoRoomDatabase.h(se.a()).f();
        if (playVideoData.isFromNet && (str = playVideoData.mYoutubeId) != null && !j1a.o0(str)) {
            theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountByData(playVideoData.mYoutubeId);
        } else if (LoadDataUtils.m(playVideoData.mediaId)) {
            theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountById(playVideoData.mediaId);
        } else {
            String str2 = playVideoData.path;
            if (str2 != null && !j1a.o0(str2)) {
                theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountByData(playVideoData.path);
            } else if (mediaItem == null || !LoadDataUtils.m(mediaItem.id)) {
                String str3 = mediaItem != null ? mediaItem.data : null;
                if (str3 == null || j1a.o0(str3)) {
                    theVideoRecordMediaCountByData = null;
                } else {
                    y45.g(mediaItem);
                    theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountByData(mediaItem.data);
                }
            } else {
                theVideoRecordMediaCountByData = g5cVarF.getTheVideoRecordMediaCountById(mediaItem.id);
            }
        }
        if (theVideoRecordMediaCountByData == null || theVideoRecordMediaCountByData.isPlayCompleted == 1) {
            return 0L;
        }
        return theVideoRecordMediaCountByData.position;
    }

    @Override
    public MediaItem m(String str) {
        y45.j(str, "path");
        return k0().m(str);
    }

    public final boolean m0(MediaItem mediaItem) {
        y45.j(mediaItem, "mediaItem");
        return mediaItem.duration > 300000;
    }

    @Override
    public MediaItem n(Uri uri) {
        y45.j(uri, "uri");
        return k0().n(uri);
    }

    @Override
    public int o(int i) {
        return k0().o(i);
    }

    @Override
    public List p(List list) {
        y45.j(list, "mediaItems");
        return k0().p(list);
    }

    public final boolean p0() {
        return false;
    }

    @Override
    public int q(String str) {
        y45.j(str, "subtitlePath");
        return k0().q(str);
    }

    @Override
    public List r(int i) {
        return k0().r(i);
    }

    @Override
    public List s() {
        return k0().s();
    }

    @Override
    public int t(int i, SubtitleTrackInfo subtitleTrackInfo) {
        y45.j(subtitleTrackInfo, AuthInfo.Component.CODE_SUBTITLE);
        return k0().t(i, subtitleTrackInfo);
    }

    @Override
    public List u(boolean z) {
        return k0().u(z);
    }

    @Override
    public int v(SubtitleHistory subtitleHistory) {
        y45.j(subtitleHistory, "record");
        return k0().v(subtitleHistory);
    }

    @Override
    public List w(String str) {
        return k0().w(str);
    }

    @Override
    public void x() {
        k0().x();
    }

    @Override
    public List y(List list) {
        y45.j(list, "paths");
        return k0().y(list);
    }

    @Override
    public MediaItem z(String str) {
        return k0().z(str);
    }
}
