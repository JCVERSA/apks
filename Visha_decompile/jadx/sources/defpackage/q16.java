package defpackage;

import android.content.Context;
import android.os.Bundle;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.utils.SortUtil;

public abstract class q16 {
    public static String a(int i) {
        if (i == -3) {
            return "categories";
        }
        return i == -2 ? "grid" : "list";
    }

    public static String b(Context context) {
        int iN = w6c.n(context);
        if (iN != 0) {
            return a(iN);
        }
        if (w6c.c(context, "video_adapter_grid_type", false)) {
            return "grid";
        }
        return pp3.e(context) ? "categories" : "list";
    }

    public static String c(int i) {
        SortUtil.SortType sortTypeFromValue = SortUtil.SortType.fromValue(i);
        if (sortTypeFromValue == SortUtil.SortType.NAME) {
            return "name";
        }
        if (sortTypeFromValue == SortUtil.SortType.SIZE) {
            return PlayAudioData.TAG_SIZE;
        }
        if (sortTypeFromValue == SortUtil.SortType.DURATION) {
            return SessionDescription.ATTR_LENGTH;
        }
        return sortTypeFromValue == SortUtil.SortType.COUNT ? "playbackrecord" : "date";
    }

    public static String d(Context context) {
        return c(w6c.d(context, "video_pref_sort_name", SortUtil.SortType.DATE.getValue()));
    }

    public static void e(int i, int i2, int i3, int i4) {
        boolean z;
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        boolean z2 = true;
        if (i != i2) {
            trackData.add(TtmlNode.TAG_LAYOUT, a(i2));
            bundle.putString(TtmlNode.TAG_LAYOUT, a(i2));
            z = true;
        } else {
            z = false;
        }
        if (i3 != i4) {
            trackData.add("sort", c(i4));
            bundle.putString("sort", c(i4));
        } else {
            z2 = z;
        }
        if (z2) {
            p06.q0(trackData, bundle, "vd_page_layout_switch_cl", 9324L);
        }
    }

    public static void f(Context context) {
        String strB = b(context);
        String strD = d(context);
        TrackData trackData = new TrackData();
        Bundle bundle = new Bundle();
        trackData.add(TtmlNode.TAG_LAYOUT, strB);
        trackData.add("sort", strD);
        bundle.putString(TtmlNode.TAG_LAYOUT, strB);
        bundle.putString("sort", strD);
        p06.q0(trackData, bundle, "vd_page_layout_show", 9324L);
    }
}
