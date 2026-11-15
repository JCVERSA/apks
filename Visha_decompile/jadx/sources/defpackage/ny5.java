package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.database.AudioTrack;

public abstract class ny5 {
    public static void a(String str, AudioTrack audioTrack, SubtitleTrackInfo subtitleTrackInfo) {
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add("video_name", str);
        bundle.putString("video_name", str);
        trackData.add("track_name", audioTrack != null ? audioTrack.name : null);
        bundle.putString("track_name", audioTrack != null ? audioTrack.name : null);
        trackData.add("subtitle_name", subtitleTrackInfo != null ? subtitleTrackInfo.name : null);
        bundle.putString("subtitle_name", subtitleTrackInfo != null ? subtitleTrackInfo.name : null);
        p06.q0(trackData, bundle, "vd_video_language_p", 9324L);
    }

    public static void b(boolean z, String str) {
        String str2 = z ? "aisub" : "losub";
        TrackData trackData = new TrackData();
        trackData.add("status", str2);
        Bundle bundle = new Bundle();
        bundle.putString("status", str2);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void c(float f) {
        if (f < 1000.0f) {
            return;
        }
        int i = (int) (f / 1000.0f);
        TrackData trackData = new TrackData();
        trackData.add("duration", i);
        Bundle bundle = new Bundle();
        bundle.putFloat("duration", i);
        p06.q0(trackData, bundle, "vd_video_aisub_duration", 9324L);
    }

    public static void d(String str) {
        TrackData trackData = new TrackData();
        trackData.add("sub_from", str);
        trackData.add(hb0.KEY_NAME_BTN, "ai_subtitle");
        Bundle bundle = new Bundle();
        bundle.putString("sub_from", str);
        bundle.putString(hb0.KEY_NAME_BTN, "ai_subtitle");
        p06.q0(trackData, bundle, "vd_cp_cl", 9324L);
    }

    public static void e(boolean z, String str) {
        String str2 = z ? "on" : "off";
        TrackData trackData = new TrackData();
        trackData.add("status", str2);
        Bundle bundle = new Bundle();
        bundle.putString("status", str2);
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static void f(String str, String str2, String str3) {
        TrackData trackData = new TrackData();
        trackData.add("from", str2);
        Bundle bundle = new Bundle();
        bundle.putString("from", str2);
        if (str != null) {
            trackData.add("lang", str);
            bundle.putString("lang", str);
        }
        p06.q0(trackData, bundle, str3, 9324L);
    }

    public static void g(boolean z, boolean z2, SubtitleTrackInfo subtitleTrackInfo) {
        String str;
        if (!z) {
            str = "00";
        } else if (z2) {
            str = "01";
        } else if (subtitleTrackInfo != null) {
            str = "none".equals(subtitleTrackInfo.sub_local_lang_to) ? "10" : "11";
        } else {
            str = "12";
        }
        TrackData trackData = new TrackData();
        trackData.add("sub_status", str);
        Bundle bundle = new Bundle();
        bundle.putString("sub_status", str);
        p06.q0(trackData, bundle, "vd_video_play_aisub", 9324L);
    }
}
