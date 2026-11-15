package com.doman.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.net.p;
import com.doman.core.a.k;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.Progress;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class g extends d<com.doman.core.a.h> {
    private com.doman.core.b.e l;
    private p.b<com.doman.core.a.h> n;
    private String o;

    public g(Context context, com.doman.core.b.e eVar, p.b<com.doman.core.a.h> bVar, p.a aVar) {
        super(eVar.a(), aVar);
        this.o = "MQRequest";
        ((d) this).m = context;
        this.l = eVar;
        this.n = bVar;
    }

    private static com.doman.core.a.h d(String str) {
        int i;
        JSONArray jSONArray;
        com.doman.core.a.h hVar = new com.doman.core.a.h();
        ArrayList<com.doman.core.a.g> arrayList = new ArrayList<>();
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getBoolean("success")) {
                return null;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(com.doman.core.d.c.b.b(jSONObject.optString("ext"), com.doman.core.b.c.c));
                com.doman.core.a.b bVar = new com.doman.core.a.b();
                bVar.b = jSONObject2.optLong("iv", 0L);
                hVar.R = bVar;
            } catch (Throwable unused) {
            }
            JSONArray jSONArray2 = new JSONArray(com.doman.core.d.c.b.b(jSONObject.optString("data"), com.doman.core.b.c.c));
            if (jSONArray2.length() <= 0) {
                return null;
            }
            int length = jSONArray2.length();
            int i2 = 0;
            while (i2 < length) {
                JSONObject jSONObject3 = new JSONObject(jSONArray2.optString(i2));
                JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject("extension");
                JSONObject jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("dev");
                com.doman.core.a.g gVar = new com.doman.core.a.g();
                if (jSONObjectOptJSONObject2 != null) {
                    gVar.Q = jSONObjectOptJSONObject2.optString(DownloadFacadeEnum.USER_UA);
                    gVar.R = jSONObjectOptJSONObject2.optString(Progress.REFERER);
                }
                k kVar = new k();
                gVar.b = kVar;
                kVar.a = 1;
                kVar.b = 1;
                gVar.c = jSONObjectOptJSONObject.optInt("task_type");
                gVar.d = jSONObjectOptJSONObject.optInt(TtmlNode.START);
                gVar.e = jSONObjectOptJSONObject.optInt(TtmlNode.END);
                int iOptInt = jSONObjectOptJSONObject.optInt("visibility");
                gVar.f = iOptInt;
                gVar.a = iOptInt == 1 ? "TOP" : "BOTTOM";
                gVar.g = jSONObjectOptJSONObject.optDouble("probability");
                gVar.h = jSONObjectOptJSONObject.optDouble("prob_dl_start");
                gVar.i = jSONObjectOptJSONObject.optDouble("prob_ins_start");
                gVar.j = jSONObjectOptJSONObject.optDouble("prob_open_app");
                gVar.k = jSONObjectOptJSONObject.optInt("show_wait");
                gVar.l = jSONObjectOptJSONObject.optInt("click_wait");
                gVar.m = jSONObjectOptJSONObject.optInt("install_wait");
                gVar.n = jSONObjectOptJSONObject.optInt("retention");
                gVar.o = jSONObjectOptJSONObject.optInt("scroll_distance");
                gVar.p = jSONObjectOptJSONObject.optBoolean("usbavable");
                gVar.q = jSONObjectOptJSONObject.optString("task_net");
                gVar.r = jSONObjectOptJSONObject.optString("task_info");
                gVar.s = jSONObjectOptJSONObject.optLong("open_app_end");
                gVar.T = jSONObjectOptJSONObject.optInt("motion_type");
                gVar.U = jSONObjectOptJSONObject.optDouble("x1");
                gVar.V = jSONObjectOptJSONObject.optDouble("y1");
                gVar.W = jSONObjectOptJSONObject.optDouble("x2");
                gVar.X = jSONObjectOptJSONObject.optDouble("y2");
                gVar.t = jSONObject3.optString("type");
                gVar.u = jSONObject3.optString("space_id");
                gVar.v = jSONObject3.optString("material_url");
                gVar.w = jSONObject3.optString("material_type");
                gVar.x = jSONObject3.optString("landing_page_url");
                gVar.y = jSONObject3.optString("schema_url");
                gVar.P = jSONObject3.optString("package");
                gVar.z = jSONObject3.optString("click_action");
                gVar.A = jSONObject3.optString("land_open_mode");
                gVar.B = jSONObject3.optString("style");
                gVar.C = jSONObject3.optString("title");
                gVar.D = jSONObject3.optString("desc");
                gVar.E = jSONObject3.optInt("duration");
                gVar.F = jSONObject3.optInt(TrackingKey.SHOW_TIME);
                gVar.Y = jSONObject3.optBoolean("clear_able");
                gVar.Z = jSONObject3.optBoolean("jumpstay");
                gVar.G = jSONObject3.optInt("material_width");
                gVar.H = jSONObject3.optInt("material_height");
                gVar.aa = jSONObject3.optString("t_type");
                gVar.S = jSONObject3.optString("wh_l", "");
                JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray("impression_urls");
                gVar.I = new ArrayList<>();
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    int length2 = jSONArrayOptJSONArray.length();
                    int i3 = 0;
                    while (i3 < length2) {
                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(i3);
                        com.doman.core.a.e eVar = new com.doman.core.a.e();
                        eVar.a = jSONObjectOptJSONObject3.optInt(NotificationCompat.CATEGORY_EVENT);
                        eVar.b = jSONObjectOptJSONObject3.optString("url");
                        eVar.c = jSONObjectOptJSONObject3.optString("method");
                        eVar.f = jSONObjectOptJSONObject3.optString("cb");
                        JSONArray jSONArray3 = jSONArray2;
                        eVar.g = jSONObjectOptJSONObject3.optLong("t");
                        try {
                            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("headers");
                            if (jSONObjectOptJSONObject4 != null) {
                                HashMap<String, String> map = new HashMap<>();
                                Iterator<String> itKeys = jSONObjectOptJSONObject4.keys();
                                while (itKeys.hasNext()) {
                                    i = length;
                                    try {
                                        String next = itKeys.next();
                                        jSONArray = jSONArrayOptJSONArray;
                                        try {
                                            String strOptString = jSONObjectOptJSONObject4.optString(next, "");
                                            if (!TextUtils.isEmpty(strOptString)) {
                                                map.put(next, strOptString);
                                            }
                                            jSONArrayOptJSONArray = jSONArray;
                                            length = i;
                                        } catch (Throwable unused2) {
                                        }
                                    } catch (Throwable unused3) {
                                        jSONArray = jSONArrayOptJSONArray;
                                    }
                                }
                                i = length;
                                jSONArray = jSONArrayOptJSONArray;
                                eVar.d = map;
                            } else {
                                i = length;
                                jSONArray = jSONArrayOptJSONArray;
                            }
                            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject3.optJSONObject(TtmlNode.TAG_BODY);
                            eVar.e = jSONObjectOptJSONObject5 != null ? jSONObjectOptJSONObject5.toString() : jSONObjectOptJSONObject3.optString(TtmlNode.TAG_BODY, "");
                        } catch (Throwable unused4) {
                            i = length;
                        }
                        gVar.I.add(eVar);
                        i3++;
                        jSONArray2 = jSONArray3;
                        jSONArrayOptJSONArray = jSONArray;
                        length = i;
                    }
                }
                int i4 = length;
                JSONArray jSONArray4 = jSONArray2;
                JSONArray jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("click_urls");
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    int length3 = jSONArrayOptJSONArray2.length();
                    gVar.J = new String[length3];
                    for (int i5 = 0; i5 < length3; i5++) {
                        gVar.J[i5] = jSONArrayOptJSONArray2.optString(i5);
                    }
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject3.optJSONArray("download_track_urls");
                if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                    int length4 = jSONArrayOptJSONArray3.length();
                    gVar.K = new String[length4];
                    for (int i6 = 0; i6 < length4; i6++) {
                        gVar.K[i6] = jSONArrayOptJSONArray3.optString(i6);
                    }
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject3.optJSONArray("downloaded_track_urls");
                if (jSONArrayOptJSONArray4 != null && jSONArrayOptJSONArray4.length() > 0) {
                    int length5 = jSONArrayOptJSONArray4.length();
                    gVar.L = new String[length5];
                    for (int i7 = 0; i7 < length5; i7++) {
                        gVar.L[i7] = jSONArrayOptJSONArray4.optString(i7);
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObject3.optJSONArray("install_track_urls");
                if (jSONArrayOptJSONArray5 != null && jSONArrayOptJSONArray5.length() > 0) {
                    int length6 = jSONArrayOptJSONArray5.length();
                    gVar.M = new String[length6];
                    for (int i8 = 0; i8 < length6; i8++) {
                        gVar.M[i8] = jSONArrayOptJSONArray5.optString(i8);
                    }
                }
                JSONArray jSONArrayOptJSONArray6 = jSONObject3.optJSONArray("installed_track_urls");
                if (jSONArrayOptJSONArray6 != null && jSONArrayOptJSONArray6.length() > 0) {
                    int length7 = jSONArrayOptJSONArray6.length();
                    gVar.N = new String[length7];
                    for (int i9 = 0; i9 < length7; i9++) {
                        gVar.N[i9] = jSONArrayOptJSONArray6.optString(i9);
                    }
                }
                JSONArray jSONArrayOptJSONArray7 = jSONObject3.optJSONArray("open_track_urls");
                if (jSONArrayOptJSONArray7 != null && jSONArrayOptJSONArray7.length() > 0) {
                    int length8 = jSONArrayOptJSONArray7.length();
                    gVar.O = new String[length8];
                    for (int i10 = 0; i10 < length8; i10++) {
                        gVar.O[i10] = jSONArrayOptJSONArray7.optString(i10);
                    }
                }
                arrayList.add(gVar);
                i2++;
                jSONArray2 = jSONArray4;
                length = i4;
            }
        } catch (Exception unused5) {
        }
        hVar.Q = arrayList;
        return hVar;
    }

    @Override
    public final com.doman.core.a.h c(String str) {
        return d(str);
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.l;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final p.b<com.doman.core.a.h> n() {
        return this.n;
    }

    public g(Context context, String str, com.doman.core.b.e eVar, p.b<com.doman.core.a.h> bVar, p.a aVar) {
        super(str, aVar);
        this.o = "MQRequest";
        ((d) this).m = context;
        this.l = eVar;
        this.n = bVar;
    }
}
