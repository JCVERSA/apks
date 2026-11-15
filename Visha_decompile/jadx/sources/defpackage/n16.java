package defpackage;

import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.beans.mimedia.MIMediaInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class n16 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(String str, PlayVideoData playVideoData) {
            y45.j(str, "action");
            if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData)) {
                c(str, playVideoData);
            } else {
                p06.j0(str);
            }
        }

        public final void b(String str, PlayVideoData playVideoData) {
            y45.j(str, "action");
            if (MIMediaDataUtils.INSTANCE.isMiMediaVideo(playVideoData)) {
                c(str, playVideoData);
            } else {
                p06.k0(str, jz5.b(playVideoData != null ? playVideoData.isKt() : false));
            }
        }

        public final void c(String str, PlayVideoData playVideoData) {
            y45.j(str, "action");
            MIMediaInfo miMediaInfo = playVideoData != null ? playVideoData.getMiMediaInfo() : null;
            if (miMediaInfo == null) {
                Log.e("MarkVideoPlayClick", "markMediaBtnClick mediaInfo null");
                return;
            }
            TrackData trackData = new TrackData();
            trackData.add(hb0.KEY_NAME_BTN, str);
            trackData.add("video_id", miMediaInfo.getVideoId());
            trackData.add("video_title", miMediaInfo.getVideoTitle());
            trackData.add("medialibrary_id", miMediaInfo.getMediaLibraryId());
            if (miMediaInfo.getMediaLibraryTitle() != null) {
                trackData.add("medialibrary_title", miMediaInfo.getMediaLibraryTitle());
            }
            p06.q0(trackData, null, "vd_mlvideo_play_cl", 9324L);
        }

        public a() {
        }
    }
}
