package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import org.json.JSONException;
import org.json.JSONObject;

public final class bhf {
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final boolean i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final long m;
    public final long n;

    public bhf(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.a = a(jSONObject, "aggressive_media_codec_release", cye.Y);
        this.b = b(jSONObject, "byte_buffer_precache_limit", cye.j);
        this.c = b(jSONObject, "exo_cache_buffer_size", cye.t);
        this.d = b(jSONObject, "exo_connect_timeout_millis", cye.f);
        qxe qxeVar = cye.e;
        if (jSONObject != null) {
            try {
                jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
            }
        }
        this.e = b(jSONObject, "exo_read_timeout_millis", cye.g);
        this.f = b(jSONObject, "load_check_interval_bytes", cye.h);
        this.g = b(jSONObject, "player_precache_limit", cye.i);
        this.h = b(jSONObject, "socket_receive_buffer_size", cye.k);
        this.i = a(jSONObject, "use_cache_data_source", cye.w4);
        b(jSONObject, "min_retry_count", cye.l);
        this.j = a(jSONObject, "treat_load_exception_as_non_fatal", cye.n);
        this.k = a(jSONObject, "enable_multiple_video_playback", cye.d2);
        this.l = a(jSONObject, "use_range_http_data_source", cye.f2);
        this.m = c(jSONObject, "range_http_data_source_high_water_mark", cye.g2);
        this.n = c(jSONObject, "range_http_data_source_low_water_mark", cye.h2);
    }

    public static final boolean a(JSONObject jSONObject, String str, qxe qxeVar) {
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(qxeVar)).booleanValue();
        if (jSONObject == null) {
            return zBooleanValue;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return zBooleanValue;
        }
    }

    public static final int b(JSONObject jSONObject, String str, qxe qxeVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) zzbd.zzc().b(qxeVar)).intValue();
    }

    public static final long c(JSONObject jSONObject, String str, qxe qxeVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getLong(str);
            } catch (JSONException unused) {
            }
        }
        return ((Long) zzbd.zzc().b(qxeVar)).longValue();
    }
}
