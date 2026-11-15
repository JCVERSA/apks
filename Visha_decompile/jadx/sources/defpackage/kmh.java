package defpackage;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzbs;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

public final class kmh {
    public final List a;
    public final String b;
    public final int c;
    public final int d;
    public final String e;
    public final int f;
    public final long g;
    public final boolean h;
    public final String i;
    public final jmh j;
    public final Bundle k;
    public final String l;
    public final String m;
    public final String n;
    public final JSONObject o;
    public final JSONObject p;
    public final String q;
    public final int r;
    public long s;
    public long t;

    public kmh(JsonReader jsonReader) throws JSONException, IOException {
        List listEmptyList = Collections.emptyList();
        Bundle bundle = new Bundle();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jsonReader.beginObject();
        String strNextString = "";
        String strNextString2 = "";
        String strNextString3 = strNextString2;
        String strNextString4 = strNextString3;
        String strNextString5 = strNextString4;
        int iNextInt = 0;
        int iNextInt2 = 0;
        boolean zNextBoolean = false;
        jmh jmhVar = null;
        long jA = -1;
        long jA2 = -1;
        long jNextLong = 0;
        int iNextInt3 = -1;
        int iMax = 1;
        String strNextString6 = strNextString5;
        String strNextString7 = strNextString6;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (Objects.equals(strNextName, "nofill_urls")) {
                listEmptyList = zzbs.zzd(jsonReader);
            } else if ("refresh_interval".equals(strNextName)) {
                iNextInt = jsonReader.nextInt();
            } else if (Objects.equals(strNextName, "refresh_load_delay_time_interval")) {
                iNextInt3 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(strNextName)) {
                strNextString = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(strNextName)) {
                strNextString6 = jsonReader.nextString();
            } else if ("is_idless".equals(strNextName)) {
                zNextBoolean = jsonReader.nextBoolean();
            } else if ("response_code".equals(strNextName)) {
                iNextInt2 = jsonReader.nextInt();
            } else if ("latency".equals(strNextName)) {
                jNextLong = jsonReader.nextLong();
            } else {
                String str = strNextString3;
                if (((Boolean) zzbd.zzc().b(cye.s8)).booleanValue() && "public_error".equals(strNextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    jmhVar = new jmh(jsonReader);
                } else if ("bidding_data".equals(strNextName)) {
                    strNextString7 = jsonReader.nextString();
                } else {
                    if (((Boolean) zzbd.zzc().b(cye.za)).booleanValue() && Objects.equals(strNextName, "topics_should_record_observation")) {
                        jsonReader.nextBoolean();
                    } else if ("adapter_response_replacement_key".equals(strNextName)) {
                        strNextString3 = jsonReader.nextString();
                    } else if ("response_info_extras".equals(strNextName)) {
                        if (((Boolean) zzbd.zzc().b(cye.L6)).booleanValue()) {
                            try {
                                try {
                                    Bundle bundleZza = zzbs.zza(zzbs.zzi(jsonReader));
                                    if (bundleZza != null) {
                                        bundle = bundleZza;
                                    }
                                } catch (IllegalStateException unused) {
                                    jsonReader.skipValue();
                                }
                            } catch (IOException | JSONException unused2) {
                            }
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if ("adRequestPostBody".equals(strNextName)) {
                        if (((Boolean) zzbd.zzc().b(cye.s9)).booleanValue()) {
                            strNextString5 = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    } else if ("adRequestUrl".equals(strNextName)) {
                        if (((Boolean) zzbd.zzc().b(cye.s9)).booleanValue()) {
                            strNextString4 = jsonReader.nextString();
                        } else {
                            jsonReader.skipValue();
                        }
                    } else {
                        qxe qxeVar = cye.t9;
                        if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && Objects.equals(strNextName, "adResponseBody")) {
                            strNextString2 = jsonReader.nextString();
                        } else if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && Objects.equals(strNextName, "adResponseHeaders")) {
                            jSONObject = zzbs.zzi(jsonReader);
                        } else if (Objects.equals(strNextName, "max_parallel_renderers")) {
                            iMax = Math.max(1, jsonReader.nextInt());
                        } else {
                            if (((Boolean) zzbd.zzc().b(cye.A9)).booleanValue() && Objects.equals(strNextName, "inspector_ad_transaction_extras")) {
                                jSONObject2 = zzbs.zzi(jsonReader);
                            } else {
                                if (((Boolean) zzbd.zzc().b(cye.r2)).booleanValue() && Objects.equals(strNextName, "latency_extras")) {
                                    try {
                                        Bundle bundleZza2 = zzbs.zza(zzbs.zzi(jsonReader));
                                        if (bundleZza2 != null) {
                                            jA2 = a(bundleZza2.getDouble("start_time"));
                                            jA = a(bundleZza2.getDouble("end_time"));
                                        }
                                    } catch (IllegalStateException unused3) {
                                        jsonReader.skipValue();
                                    }
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                        }
                    }
                }
                strNextString3 = str;
            }
        }
        String str2 = strNextString3;
        jsonReader.endObject();
        this.a = listEmptyList;
        this.c = iNextInt;
        if (((Boolean) f0f.c.e()).booleanValue()) {
            this.d = -1;
        } else {
            eze ezeVar = ize.a;
            if (((Long) ezeVar.e()).longValue() > -1) {
                this.d = ((Long) ezeVar.e()).intValue();
            } else {
                this.d = iNextInt3;
            }
        }
        this.b = strNextString;
        this.e = strNextString6;
        this.f = iNextInt2;
        this.g = jNextLong;
        this.j = jmhVar;
        this.h = zNextBoolean;
        this.i = strNextString7;
        this.k = bundle;
        this.l = strNextString4;
        this.m = strNextString5;
        this.n = strNextString2;
        this.o = jSONObject;
        this.p = jSONObject2;
        this.q = str2;
        eze ezeVar2 = d0f.a;
        this.r = ((Long) ezeVar2.e()).longValue() > 0 ? ((Long) ezeVar2.e()).intValue() : iMax;
        this.s = jA2;
        this.t = jA;
    }

    public static final long a(double d) {
        if (d > 9.223372036854776E18d || d < -9.223372036854776E18d) {
            return -1L;
        }
        return (long) d;
    }
}
