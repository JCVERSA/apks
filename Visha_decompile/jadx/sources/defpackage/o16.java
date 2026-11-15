package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.MediaItem;

public abstract class o16 {
    public static void a(MediaItem mediaItem, float f, String str) {
        if (mediaItem == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("resolution", mediaItem.width + "x" + mediaItem.height);
        StringBuilder sb = new StringBuilder();
        sb.append(f);
        sb.append("");
        bundle.putString("fps", sb.toString());
        bundle.putString("codec", str);
        bundle.putString("vd_format", mediaItem.mineType);
        TrackData trackData = new TrackData();
        trackData.add("resolution", mediaItem.width + "x" + mediaItem.height);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f);
        sb2.append("");
        trackData.add("fps", sb2.toString());
        trackData.add("codec", str);
        trackData.add("vd_format", mediaItem.mineType);
        p06.q0(trackData, bundle, "vd_video_drop_frames", 9324L);
    }

    public static void b(MediaItem mediaItem, float f, String str, long j, long j2, String str2) {
        if (mediaItem == null) {
            return;
        }
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("resolution", mediaItem.width + "x" + mediaItem.height);
        bundle.putString("name", mediaItem.displayName);
        bundle.putString("fps", f + "");
        bundle.putString("codec", str);
        bundle.putString("t1", j + "");
        bundle.putString("t2", j2 + "");
        bundle.putString("from", str2);
        trackData.add("resolution", mediaItem.width + "x" + mediaItem.height);
        trackData.add("name", mediaItem.displayName);
        trackData.add("fps", f + "");
        trackData.add("codec", str);
        trackData.add("t1", j + "");
        trackData.add("t2", j2 + "");
        trackData.add("from", str2);
        p06.q0(trackData, bundle, "vd_video_play_strattime", 9324L);
    }

    public static void c(MediaItem mediaItem, float f, String str, int i) {
        if (mediaItem == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("resolution", mediaItem.width + "x" + mediaItem.height);
        bundle.putString("name", mediaItem.displayName);
        bundle.putString("fps", f + "");
        bundle.putString("codec", str);
        bundle.putString("t", i + "");
        TrackData trackData = new TrackData();
        trackData.add("resolution", mediaItem.width + "x" + mediaItem.height);
        trackData.add("name", mediaItem.displayName);
        trackData.add("fps", f + "");
        trackData.add("codec", str);
        trackData.add("t", i + "");
        p06.q0(trackData, bundle, "vd_video_seek_time", 9324L);
    }
}
