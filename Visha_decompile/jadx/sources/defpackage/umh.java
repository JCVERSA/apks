package defpackage;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzfay;
import com.transsion.gslb.NetResponse;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class umh {
    public final List a;
    public final kmh b;
    public final List c;
    public final zzbuy d;

    public umh(JsonReader jsonReader, zzbuy zzbuyVar) throws JSONException, IOException {
        Bundle bundle;
        Bundle bundle2;
        this.d = zzbuyVar;
        if (((Boolean) zzbd.zzc().b(cye.q2)).booleanValue() && zzbuyVar != null && (bundle2 = zzbuyVar.zzm) != null) {
            bundle2.putLong(zzdqm.SERVER_RESPONSE_PARSE_START.zza(), zzv.zzC().currentTimeMillis());
        }
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        kmh kmhVar = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("responses".equals(strNextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(strNextName2)) {
                        listEmptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            listEmptyList.add(new hmh(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (strNextName2.equals("common")) {
                        kmhVar = new kmh(jsonReader);
                        if (((Boolean) zzbd.zzc().b(cye.r2)).booleanValue() && zzbuyVar != null && (bundle = zzbuyVar.zzm) != null) {
                            bundle.putLong(zzdqm.NORMALIZATION_AD_RESPONSE_START.zza(), kmhVar.s);
                            zzbuyVar.zzm.putLong(zzdqm.NORMALIZATION_AD_RESPONSE_END.zza(), kmhVar.t);
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (strNextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = null;
                    JSONObject jSONObjectZzi = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if ("name".equals(strNextName3)) {
                            strNextString = jsonReader.nextString();
                        } else if ("info".equals(strNextName3)) {
                            jSONObjectZzi = zzbs.zzi(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (strNextString != null) {
                        arrayList.add(new tmh(strNextString, jSONObjectZzi));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.c = arrayList;
        this.a = listEmptyList;
        this.b = kmhVar == null ? new kmh(new JsonReader(new StringReader(NetResponse.EMPTY_RESPONSE))) : kmhVar;
    }

    public static umh a(Reader reader, zzbuy zzbuyVar) {
        try {
            try {
                umh umhVar = new umh(new JsonReader(reader), zzbuyVar);
                pv4.a(reader);
                return umhVar;
            } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
                throw new zzfay("unable to parse ServerResponse", e);
            }
        } catch (Throwable th) {
            pv4.a(reader);
            throw th;
        }
    }
}
