package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class cz5 {
    public static final cz5 a = new cz5();

    public static final String a(long j, boolean z) {
        double d = z ? 1000.0d : 1024.0d;
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "%.3f", Arrays.copyOf(new Object[]{Double.valueOf((j / d) / d)}, 1));
        y45.i(str, "format(...)");
        return str;
    }

    public static final float b(long j, boolean z) {
        double d = z ? 1000.0d : 1024.0d;
        return (float) ((j / d) / d);
    }

    public static final long c(List list, boolean z) {
        long jLongValue;
        y45.j(list, "videoList");
        if (list.isEmpty()) {
            return 0L;
        }
        if (z) {
            Iterator it = list.iterator();
            jLongValue = 0;
            while (it.hasNext()) {
                VideoCloudData videoCloudData = (VideoCloudData) it.next();
                if (videoCloudData instanceof VideoCloudDataLocal) {
                    Long localMediaSize = ((VideoCloudDataLocal) videoCloudData).getLocalMediaSize();
                    jLongValue += localMediaSize != null ? localMediaSize.longValue() : 0L;
                } else {
                    Log.w("MarkCloudTransmit", "Expected VideoCloudDataLocal but got " + videoCloudData.getClass().getSimpleName());
                }
            }
        } else {
            Iterator it2 = list.iterator();
            jLongValue = 0;
            while (it2.hasNext()) {
                Long size = ((VideoCloudData) it2.next()).getSize();
                jLongValue += size != null ? size.longValue() : 0L;
            }
        }
        return jLongValue;
    }

    public static final void d(boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("status", z ? 1 : 0);
        trackData.add("status", z ? 1 : 0);
        h(bundle, trackData, "cloud_transfer_setting_wifi_cl");
    }

    public static final void e(String str) {
        p06.d0(str);
    }

    public static final void f(long j, int i, boolean z) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String strA = a(j, true);
        bundle.putString("total_size", strA);
        bundle.putInt("file_num", i);
        trackData.add("total_size", strA);
        trackData.add("file_num", i);
        h(bundle, trackData, z ? "cloud_upload_confirm_cl" : "cloud_download_cl");
    }

    public static final void g(String str) {
        y45.j(str, "from");
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("from", str);
        trackData.add("from", str);
        h(bundle, trackData, "cloud_upload_entry_cl");
    }

    public static final void h(Bundle bundle, TrackData trackData, String str) {
        y45.j(bundle, "bundle");
        y45.j(trackData, "trackData");
        y45.j(str, "action");
        p06.q0(trackData, bundle, str, 9324L);
    }

    public static final void i(boolean z, String str, int i) {
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString("file_name", str == null ? "" : str);
        bundle.putInt("error_code", i);
        if (str == null) {
            str = "";
        }
        trackData.add("file_name", str);
        trackData.add("error_code", i);
        h(bundle, trackData, z ? "cloud_upload_fail" : "cloud_download_fail");
    }

    public static final void j(long j, String str) {
        y45.j(str, "action");
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        String strA = a(j, true);
        bundle.putString("file_size", strA);
        trackData.add("file_size", strA);
        h(bundle, trackData, str);
    }
}
