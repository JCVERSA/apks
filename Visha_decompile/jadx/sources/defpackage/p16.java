package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public abstract class p16 extends hb0 {
    public static final Map a = new HashMap();

    public static class a {
        public long a = -1;
        public long b = -1;
        public String c = "";
        public boolean d;

        public String toString() {
            return "VideoDurationRecord{startTime=" + this.a + ", editStartTime=" + this.b + ", hasSent=" + this.d + '}';
        }
    }

    public static void b(Object obj, String str) {
        Map map = a;
        a aVar = (a) map.getOrDefault(obj, new a());
        if (aVar == null) {
            aVar = new a();
        }
        Log.i("vd_video_duration_real", "checkTime: " + (System.currentTimeMillis() - aVar.b) + "ms , " + aVar);
        if (str != null) {
            if (str.equals(aVar.c) && aVar.d && System.currentTimeMillis() - aVar.b < 1000) {
                return;
            }
            if (str.equals(aVar.c)) {
                c(aVar.c);
            } else {
                d(obj, aVar.c);
            }
            aVar.d = false;
            long jCurrentTimeMillis = System.currentTimeMillis();
            aVar.a = jCurrentTimeMillis;
            aVar.c = str;
            aVar.b = jCurrentTimeMillis;
            map.put(obj, aVar);
            e(aVar.c);
        }
    }

    public static void c(Object obj) {
    }

    public static void d(Object obj, String str) {
        Map map = a;
        a aVar = (a) map.getOrDefault(obj, new a());
        if (aVar == null) {
            aVar = new a();
        }
        long j = aVar.a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Log.i("vd_video_duration_real", "sendTime: " + (System.currentTimeMillis() - aVar.b) + "ms , " + aVar);
        if (j == -1 || str == null || !str.equals(aVar.c)) {
            return;
        }
        hb0.markTrackThree("vd_video_duration_real", "start_duration", Long.valueOf(j), "end_duration", Long.valueOf(jCurrentTimeMillis), "duration", Integer.valueOf((int) ((jCurrentTimeMillis - j) / 1000)));
        aVar.a = -1L;
        aVar.b = jCurrentTimeMillis;
        aVar.d = true;
        map.put(obj, aVar);
    }

    public static void e(String str) {
    }
}
