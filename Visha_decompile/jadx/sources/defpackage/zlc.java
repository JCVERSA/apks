package defpackage;

import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.exoplayer.drm.WidevineUtil;
import com.google.android.exoplayer2.drm.DrmSession;
import java.util.Map;

public abstract class zlc {
    public static long a(Map map, String str) {
        if (map == null) {
            return C.TIME_UNSET;
        }
        try {
            String str2 = (String) map.get(str);
            return str2 != null ? Long.parseLong(str2) : C.TIME_UNSET;
        } catch (NumberFormatException unused) {
            return C.TIME_UNSET;
        }
    }

    public static Pair b(DrmSession drmSession) {
        Map mapQueryKeyStatus = drmSession.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        return new Pair(Long.valueOf(a(mapQueryKeyStatus, WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(a(mapQueryKeyStatus, WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
