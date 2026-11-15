package defpackage;

import android.os.Bundle;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.database.AudioTrack;
import java.util.Iterator;
import java.util.List;

public abstract class sn5 extends hb0 {
    public static void b(List list, int i) {
        String str;
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        if (list == null) {
            str = "";
            break;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = "";
                break;
            }
            AudioTrack audioTrack = (AudioTrack) it.next();
            if (i == audioTrack.audioId) {
                str = audioTrack.name;
                break;
            }
        }
        bundle.putString("status", str);
        trackData.add("status", str);
        bundle.putInt(hb0.KEY_NAME_NUM, list == null ? 0 : list.size());
        trackData.add(hb0.KEY_NAME_NUM, list != null ? list.size() : 0);
        p06.q0(trackData, bundle, "vd_cp_setting_track_pop_show", 9324L);
    }
}
