package defpackage;

import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class oz5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(PlayVideoData playVideoData) {
            y45.j(playVideoData, "videoData");
            int i = playVideoData.listFlag;
            if (i == 1003) {
                return "collect";
            }
            if (i == 1004) {
                return "download";
            }
            if (i == 1001 || i == 1006) {
                return "recent";
            }
            return i == 49 ? "search" : "media_library_page";
        }

        public final void b(PlayVideoData playVideoData) {
            y45.j(playVideoData, "videoData");
            MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
            if (miMediaInfo == null) {
                Log.e("MarkMIMedia", "markMediaPlayShow mediaInfo null");
                return;
            }
            TrackData trackData = new TrackData();
            trackData.add("video_id", miMediaInfo.getVideoId());
            trackData.add("video_title", miMediaInfo.getVideoTitle());
            trackData.add("source", a(playVideoData));
            trackData.add("medialibrary_id", miMediaInfo.getMediaLibraryId());
            if (miMediaInfo.getMediaLibraryTitle() != null) {
                trackData.add("medialibrary_title", miMediaInfo.getMediaLibraryTitle());
            }
            p06.q0(trackData, null, "vd_mlvideo_play_show", 9324L);
        }

        public final void c(PlayVideoData playVideoData, int i) {
            y45.j(playVideoData, "videoData");
            MIMediaInfo miMediaInfo = playVideoData.getMiMediaInfo();
            if (miMediaInfo == null) {
                Log.e("MarkMIMedia", "markMediaPlayShow mediaInfo null");
                return;
            }
            TrackData trackData = new TrackData();
            trackData.add("video_id", miMediaInfo.getVideoId());
            trackData.add("video_title", miMediaInfo.getVideoTitle());
            trackData.add("playtime", i);
            trackData.add("medialibrary_id", miMediaInfo.getMediaLibraryId());
            if (miMediaInfo.getMediaLibraryTitle() != null) {
                trackData.add("medialibrary_title", miMediaInfo.getMediaLibraryTitle());
            }
            p06.q0(trackData, null, "vd_mlvideo_play_time", 9324L);
        }

        public final void d(String str, String str2, String str3, String str4, String str5, String str6) {
            TrackData trackData = new TrackData();
            trackData.add("click_type", str);
            if (str2 != null) {
                trackData.add("share_link", str2);
            }
            trackData.add("medialibrary_id", str3);
            trackData.add("medialibrary_title", str4);
            trackData.add("user_name", str5);
            trackData.add("user_avatar", str6);
            p06.q0(trackData, null, "vd_mlpage_share_cl", 9324L);
        }

        public final void e(String str, String str2, String str3, String str4) {
            TrackData trackData = new TrackData();
            trackData.add("medialibrary_id", str);
            trackData.add("medialibrary_title", str2);
            trackData.add("user_name", str3);
            trackData.add("user_avatar", str4);
            p06.q0(trackData, null, "vd_mlpage_share_show", 9324L);
        }

        public a() {
        }
    }
}
