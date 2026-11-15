package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.abb;
import defpackage.j1a;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class k91 {
    private final wr0 a;
    private final dh b;
    private final q82 c;
    private final nk0 d;
    private final g30 e;
    private final f10 f;
    private final da1 g;
    private final gy1 h;
    private final cv0 i;

    public k91(Context context, sp1 sp1Var) {
        wr0 wr0Var = new wr0(sp1Var);
        this(context, sp1Var, wr0Var, new dh(context, sp1Var, wr0Var, 8), new q82(), new nk0(), new g30(sp1Var), new f10(), new da1(), new gy1(), new cv0());
    }

    /* JADX WARN: Code duplicated, block: B:72:0x01d4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final y61 a(String str, xj xjVar) throws JSONException, t61 {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        JSONObject jSONObject;
        String str7;
        String str8;
        String str9;
        fz1 fz1Var;
        List listK;
        n6 n6Var;
        o6 o6Var;
        uz1 uz1Var;
        wz1 wz1Var;
        String str10;
        String str11;
        String str12;
        gr1 gr1Var;
        String str13;
        Iterator<String> it;
        String str14;
        String str15;
        String str16;
        String str17;
        xj xjVar2 = xjVar;
        String str18 = "ad_pod";
        String str19 = "ImpressionDataParser";
        String str20 = "Json has not required attributes";
        String str21 = "attributeName";
        String str22 = TtmlNode.ATTR_ID;
        String str23 = "";
        y45.j(str, "response");
        String str24 = "base64EncodingParameters";
        y45.j(xjVar2, "base64EncodingParameters");
        JSONObject jSONObject2 = new JSONObject(str);
        y45.j(jSONObject2, "jsonResponse");
        y45.j(xjVar2, "base64EncodingParameters");
        JSONObject jSONObject3 = jSONObject2.getJSONObject(PluginErrorDetails.Platform.NATIVE);
        y45.g(jSONObject3);
        String str25 = "ads";
        String str26 = "Native Ad json has not required attributes";
        if (!l91.a(jSONObject3, "ads")) {
            throw new t61("Native Ad json has not required attributes");
        }
        List listK2 = defpackage.y71.k();
        List listK3 = defpackage.y71.k();
        List listK4 = defpackage.y71.k();
        List listK5 = defpackage.y71.k();
        List listK6 = defpackage.y71.k();
        Iterator<String> itKeys = jSONObject3.keys();
        String str27 = "keys(...)";
        y45.i(itKeys, "keys(...)");
        List list = listK3;
        List listA = listK2;
        List list2 = listK5;
        List list3 = listK6;
        List list4 = listK4;
        t4 t4Var = null;
        String str28 = null;
        yx1 yx1Var = null;
        g6 g6Var = null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next != null) {
                itKeys = itKeys;
                String str29 = "assets";
                str18 = str18;
                String str30 = "showNotices";
                str3 = str19;
                String str31 = "renderTrackingUrls";
                str4 = str20;
                String str32 = "jsonObject";
                str5 = str21;
                String str33 = "impressionData";
                str22 = str22;
                str23 = str23;
                switch (next.hashCode()) {
                    case -1777460514:
                        str6 = str24;
                        jSONObject = jSONObject3;
                        str7 = str25;
                        str8 = str26;
                        str9 = str27;
                        str2 = str18;
                        if (next.equals(str30)) {
                            ArrayList arrayList = new ArrayList();
                            JSONArray jSONArray = jSONObject.getJSONArray(str30);
                            int length = jSONArray.length();
                            for (int i = 0; i < length; i++) {
                                JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                                y45.g(jSONObject4);
                                arrayList.add(a(jSONObject4));
                            }
                            itKeys = itKeys;
                            list3 = arrayList;
                        }
                        str26 = str8;
                        jSONObject3 = jSONObject;
                        str18 = str2;
                        str19 = str3;
                        str20 = str4;
                        str21 = str5;
                        str22 = str22;
                        str23 = str23;
                        str25 = str7;
                        str24 = str6;
                        str27 = str9;
                        xjVar2 = xjVar;
                        break;
                    case -1422646231:
                        str6 = str24;
                        jSONObject = jSONObject3;
                        str7 = str25;
                        str8 = str26;
                        str9 = str27;
                        String str34 = str18;
                        String str35 = str3;
                        String str36 = str4;
                        String str37 = str5;
                        if (!next.equals(str34)) {
                            str4 = str36;
                            str5 = str37;
                            str3 = str35;
                            str2 = str34;
                        } else {
                            JSONObject jSONObject5 = jSONObject.getJSONObject(str34);
                            y45.g(jSONObject5);
                            y45.j(jSONObject5, "adPod");
                            JSONArray jSONArrayOptJSONArray = jSONObject5.optJSONArray("items");
                            if (jSONArrayOptJSONArray != null) {
                                y45.j(jSONArrayOptJSONArray, "jsonArray");
                                int length2 = jSONArrayOptJSONArray.length();
                                ArrayList arrayList2 = new ArrayList(length2);
                                int i2 = 0;
                                while (i2 < length2) {
                                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                                    y45.g(jSONObjectOptJSONObject);
                                    String str38 = str36;
                                    String str39 = str37;
                                    long jOptLong = jSONObjectOptJSONObject.optLong("duration");
                                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("skip");
                                    if (jSONObjectOptJSONObject2 != null) {
                                        y45.j(jSONObjectOptJSONObject2, str32);
                                        String strOptString = jSONObjectOptJSONObject2.optString("transition_strategy");
                                        uz1[] uz1VarArrValues = uz1.values();
                                        int length3 = uz1VarArrValues.length;
                                        int i3 = 0;
                                        while (true) {
                                            if (i3 < length3) {
                                                uz1 uz1Var2 = uz1VarArrValues[i3];
                                                uz1[] uz1VarArr = uz1VarArrValues;
                                                if (y45.e(uz1Var2.a(), strOptString)) {
                                                    uz1Var = uz1Var2;
                                                } else {
                                                    i3++;
                                                    uz1VarArrValues = uz1VarArr;
                                                }
                                            } else {
                                                uz1Var = null;
                                            }
                                        }
                                        String strOptString2 = jSONObjectOptJSONObject2.optString("visibility");
                                        wz1[] wz1VarArrValues = wz1.values();
                                        int length4 = wz1VarArrValues.length;
                                        int i4 = 0;
                                        while (true) {
                                            if (i4 < length4) {
                                                wz1 wz1Var2 = wz1VarArrValues[i4];
                                                wz1[] wz1VarArr = wz1VarArrValues;
                                                if (y45.e(wz1Var2.a(), strOptString2)) {
                                                    wz1Var = wz1Var2;
                                                } else {
                                                    i4++;
                                                    wz1VarArrValues = wz1VarArr;
                                                }
                                            } else {
                                                wz1Var = null;
                                            }
                                        }
                                        n6Var = new n6(uz1Var, wz1Var, jSONObjectOptJSONObject2.optLong("delay"));
                                    } else {
                                        n6Var = null;
                                    }
                                    String strOptString3 = jSONObjectOptJSONObject.optString("transition_policy");
                                    o6[] o6VarArrValues = o6.values();
                                    int length5 = o6VarArrValues.length;
                                    int i5 = 0;
                                    while (true) {
                                        if (i5 >= length5) {
                                            o6Var = null;
                                        }
                                        o6Var = o6VarArrValues[i5];
                                        if (y45.e(o6Var.a(), strOptString3)) {
                                        }
                                        i5++;
                                        break;
                                        break;
                                    }
                                    arrayList2.add(new m6(jOptLong, n6Var, o6Var));
                                    i2++;
                                    str32 = str32;
                                    str34 = str34;
                                    str35 = str35;
                                    str36 = str38;
                                    jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                                    str37 = str39;
                                }
                                str4 = str36;
                                str5 = str37;
                                str3 = str35;
                                str2 = str34;
                                listK = arrayList2;
                            } else {
                                str4 = str36;
                                str5 = str37;
                                str3 = str35;
                                str2 = str34;
                                listK = defpackage.y71.k();
                            }
                            g6 g6Var2 = new g6(jSONObject5.optInt("closable_ad_position"), jSONObject5.optInt("reward_ad_position", wn8.d(defpackage.y71.m(listK), 0)), listK);
                            itKeys = itKeys;
                            str26 = str8;
                            g6Var = g6Var2;
                        }
                        jSONObject3 = jSONObject;
                        str18 = str2;
                        str19 = str3;
                        str20 = str4;
                        str21 = str5;
                        str22 = str22;
                        str23 = str23;
                        str25 = str7;
                        str24 = str6;
                        str27 = str9;
                        xjVar2 = xjVar;
                        break;
                    case -1408207997:
                        str6 = str24;
                        jSONObject = jSONObject3;
                        str7 = str25;
                        str8 = str26;
                        str9 = str27;
                        str10 = str3;
                        str11 = str5;
                        if (next.equals("assets")) {
                            listA = this.b.a(jSONObject, xjVar);
                            str26 = str8;
                            str20 = str4;
                            xjVar2 = xjVar;
                            jSONObject3 = jSONObject;
                            str25 = str7;
                            str24 = str6;
                            str27 = str9;
                            String str40 = str10;
                            str21 = str11;
                            str19 = str40;
                        } else {
                            str4 = str4;
                            str5 = str11;
                            str3 = str10;
                            str2 = str18;
                        }
                        break;
                    case -113850029:
                        str6 = str24;
                        JSONObject jSONObject6 = jSONObject3;
                        str7 = str25;
                        str8 = str26;
                        str9 = str27;
                        str11 = str5;
                        if (!next.equals(str33)) {
                            str5 = str11;
                            str2 = str18;
                            jSONObject = jSONObject6;
                        } else {
                            this.d.getClass();
                            y45.j(jSONObject6, "jsonObject");
                            y45.j(str33, str11);
                            try {
                                vq0 vq0Var = vq0.a;
                                y45.j(jSONObject6, "jsonAsset");
                                y45.j(str33, "jsonAttribute");
                                String string = jSONObject6.getString(str33);
                                y45.g(string);
                                if (string.length() == 0 || y45.e("null", string)) {
                                    str12 = str4;
                                    try {
                                        throw new JSONException(str12);
                                    } catch (Exception e) {
                                        e = e;
                                        str10 = str3;
                                        Log.e(str10, String.valueOf(e.getMessage()));
                                        str26 = str8;
                                        str20 = str12;
                                        jSONObject3 = jSONObject6;
                                        t4Var = null;
                                        str25 = str7;
                                        str24 = str6;
                                        str27 = str9;
                                        xjVar2 = xjVar;
                                        String str41 = str10;
                                        str21 = str11;
                                        str19 = str41;
                                    }
                                } else {
                                    itKeys = itKeys;
                                    str26 = str8;
                                    t4Var = new t4(string);
                                    str21 = str11;
                                    jSONObject3 = jSONObject6;
                                    str18 = str18;
                                    str19 = str3;
                                    str20 = str4;
                                }
                            } catch (Exception e2) {
                                e = e2;
                                str12 = str4;
                            }
                        }
                        str22 = str22;
                        str23 = str23;
                        str25 = str7;
                        str24 = str6;
                        str27 = str9;
                        xjVar2 = xjVar;
                        break;
                    case 96432:
                        if (!next.equals(str25)) {
                            str6 = str24;
                            jSONObject = jSONObject3;
                            str7 = str25;
                            str8 = str26;
                            str9 = str27;
                            str2 = str18;
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            JSONArray jSONArray2 = jSONObject3.getJSONArray(str25);
                            String str42 = str25;
                            int length6 = jSONArray2.length();
                            JSONObject jSONObject7 = jSONObject3;
                            int i6 = 0;
                            while (i6 < length6) {
                                int i7 = length6;
                                JSONObject jSONObject8 = jSONArray2.getJSONObject(i6);
                                y45.g(jSONObject8);
                                y45.j(jSONObject8, "jsonNativeAd");
                                y45.j(xjVar2, str24);
                                JSONArray jSONArray3 = jSONArray2;
                                String str43 = str24;
                                String str44 = AuthInfo.Component.CODE_LINK;
                                String str45 = str26;
                                if (!l91.a(jSONObject8, "adType", str29, AuthInfo.Component.CODE_LINK)) {
                                    throw new t61(str45);
                                }
                                this.g.getClass();
                                y45.j(jSONObject8, "jsonNativeAd");
                                y45.j(jSONObject8, "jsonAsset");
                                y45.j("adType", "jsonAttribute");
                                String strOptString4 = jSONObject8.optString("adType");
                                if (strOptString4 == null || strOptString4.length() == 0 || y45.e(strOptString4, "null")) {
                                    throw new t61(str45);
                                }
                                y45.g(strOptString4);
                                gr1[] gr1VarArrValues = gr1.values();
                                int length7 = gr1VarArrValues.length;
                                String str46 = str29;
                                int i8 = 0;
                                while (true) {
                                    if (i8 < length7) {
                                        gr1 gr1Var2 = gr1VarArrValues[i8];
                                        gr1[] gr1VarArr = gr1VarArrValues;
                                        if (y45.e(gr1Var2.a(), strOptString4)) {
                                            gr1Var = gr1Var2;
                                        } else {
                                            i8++;
                                            gr1VarArrValues = gr1VarArr;
                                        }
                                    } else {
                                        gr1Var = null;
                                    }
                                }
                                if (gr1Var == null) {
                                    throw new t61(str45);
                                }
                                ArrayList arrayListA = this.b.a(jSONObject8, xjVar2);
                                HashSet hashSet = new HashSet();
                                HashSet hashSet2 = new HashSet();
                                Iterator<String> itKeys2 = jSONObject8.keys();
                                y45.i(itKeys2, str27);
                                String strOptString5 = null;
                                String strOptString6 = null;
                                vr0 vr0VarA = null;
                                t4 t4Var2 = null;
                                ib0 ib0VarA = null;
                                ib0 ib0VarA2 = null;
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    if (next2 != null) {
                                        switch (next2.hashCode()) {
                                            case -1798519398:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                str5 = str5;
                                                str16 = str33;
                                                str15 = str44;
                                                if (next2.equals("hideConditions")) {
                                                    hr hrVar = new hr();
                                                    y45.g(next2);
                                                    ib0VarA = hrVar.a(next2, jSONObject8);
                                                }
                                                xjVar2 = xjVar;
                                                str33 = str16;
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            case -1777460514:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                String str47 = str30;
                                                String str48 = str3;
                                                str5 = str5;
                                                str16 = str33;
                                                str15 = str44;
                                                String str49 = str4;
                                                if (next2.equals(str47)) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    str3 = str48;
                                                    JSONArray jSONArray4 = jSONObject8.getJSONArray(str47);
                                                    str30 = str47;
                                                    int length8 = jSONArray4.length();
                                                    str4 = str49;
                                                    int i9 = 0;
                                                    while (i9 < length8) {
                                                        int i10 = length8;
                                                        JSONObject jSONObject9 = jSONArray4.getJSONObject(i9);
                                                        y45.g(jSONObject9);
                                                        arrayList4.add(a(jSONObject9));
                                                        i9++;
                                                        length8 = i10;
                                                    }
                                                    hashSet2.addAll(arrayList4);
                                                } else {
                                                    str30 = str47;
                                                    str4 = str49;
                                                    str3 = str48;
                                                }
                                                xjVar2 = xjVar;
                                                str33 = str16;
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            case -113850029:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                str16 = str33;
                                                String str50 = str22;
                                                String str51 = str23;
                                                if (next2.equals(str16)) {
                                                    this.d.getClass();
                                                    y45.j(jSONObject8, "jsonObject");
                                                    str23 = str51;
                                                    str5 = str5;
                                                    y45.j(str16, str5);
                                                    try {
                                                        vq0 vq0Var2 = vq0.a;
                                                        y45.j(jSONObject8, "jsonAsset");
                                                        y45.j(str16, "jsonAttribute");
                                                        String string2 = jSONObject8.getString(str16);
                                                        y45.g(string2);
                                                        if (string2.length() == 0 || y45.e("null", string2)) {
                                                            str15 = str44;
                                                            str17 = str4;
                                                            try {
                                                                throw new JSONException(str17);
                                                            } catch (Exception e3) {
                                                                e = e3;
                                                                str22 = str50;
                                                                Log.e(str3, String.valueOf(e.getMessage()));
                                                                str4 = str17;
                                                                str33 = str16;
                                                                t4Var2 = null;
                                                                str44 = str15;
                                                                itKeys2 = it;
                                                                str27 = str14;
                                                                str5 = str5;
                                                                str31 = str13;
                                                            }
                                                            break;
                                                        } else {
                                                            str15 = str44;
                                                            try {
                                                                t4Var2 = new t4(string2);
                                                                str22 = str50;
                                                                str33 = str16;
                                                            } catch (Exception e4) {
                                                                e = e4;
                                                                str17 = str4;
                                                                str22 = str50;
                                                                Log.e(str3, String.valueOf(e.getMessage()));
                                                                str4 = str17;
                                                                str33 = str16;
                                                                t4Var2 = null;
                                                            }
                                                        }
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        str15 = str44;
                                                    }
                                                } else {
                                                    str23 = str51;
                                                    str22 = str50;
                                                    str15 = str44;
                                                    xjVar2 = xjVar;
                                                    str33 = str16;
                                                }
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            case 3355:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                String str52 = str22;
                                                String str53 = str23;
                                                if (next2.equals(str52)) {
                                                    strOptString5 = jSONObject8.optString(str52, str53);
                                                    y45.g(strOptString5);
                                                    str23 = str53;
                                                    str22 = str52;
                                                    if (strOptString5.length() <= 0) {
                                                        strOptString5 = null;
                                                    }
                                                    itKeys2 = it;
                                                    str31 = str13;
                                                    str27 = str14;
                                                } else {
                                                    str23 = str53;
                                                    str22 = str52;
                                                    str16 = str33;
                                                    str15 = str44;
                                                    xjVar2 = xjVar;
                                                    str33 = str16;
                                                    str44 = str15;
                                                    itKeys2 = it;
                                                    str27 = str14;
                                                    str5 = str5;
                                                    str31 = str13;
                                                }
                                                break;
                                            case 3237038:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                if (next2.equals("info")) {
                                                    strOptString6 = jSONObject8.optString(next2, str23);
                                                    y45.g(strOptString6);
                                                    if (strOptString6.length() <= 0) {
                                                        strOptString6 = null;
                                                    }
                                                    itKeys2 = it;
                                                    str31 = str13;
                                                    str27 = str14;
                                                } else {
                                                    str16 = str33;
                                                    str15 = str44;
                                                    xjVar2 = xjVar;
                                                    str33 = str16;
                                                    str44 = str15;
                                                    itKeys2 = it;
                                                    str27 = str14;
                                                    str5 = str5;
                                                    str31 = str13;
                                                }
                                                break;
                                            case 3321850:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                if (next2.equals(str44)) {
                                                    JSONObject jSONObject10 = jSONObject8.getJSONObject(next2);
                                                    wr0 wr0Var = this.a;
                                                    y45.g(jSONObject10);
                                                    vr0VarA = wr0Var.a(jSONObject10, xjVar2);
                                                    itKeys2 = it;
                                                    str31 = str13;
                                                    str27 = str14;
                                                } else {
                                                    str16 = str33;
                                                    str15 = str44;
                                                    xjVar2 = xjVar;
                                                    str33 = str16;
                                                    str44 = str15;
                                                    itKeys2 = it;
                                                    str27 = str14;
                                                    str5 = str5;
                                                    str31 = str13;
                                                }
                                                break;
                                            case 458247106:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                if (next2.equals("renderTrackingUrl")) {
                                                    q82 q82Var = this.c;
                                                    y45.g(next2);
                                                    q82Var.getClass();
                                                    hashSet.add(q82.a(next2, jSONObject8));
                                                }
                                                str16 = str33;
                                                str15 = str44;
                                                xjVar2 = xjVar;
                                                str33 = str16;
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            case 635399221:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                if (next2.equals("showNotice")) {
                                                    JSONObject jSONObject11 = jSONObject8.getJSONObject(next2);
                                                    y45.g(jSONObject11);
                                                    hashSet2.add(a(jSONObject11));
                                                }
                                                str16 = str33;
                                                str15 = str44;
                                                xjVar2 = xjVar;
                                                str33 = str16;
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            case 663229845:
                                                str13 = str31;
                                                it = itKeys2;
                                                str14 = str27;
                                                if (next2.equals("showConditions")) {
                                                    hr hrVar2 = new hr();
                                                    y45.g(next2);
                                                    ib0VarA2 = hrVar2.a(next2, jSONObject8);
                                                    itKeys2 = it;
                                                    str31 = str13;
                                                    str27 = str14;
                                                } else {
                                                    str16 = str33;
                                                    str15 = str44;
                                                    xjVar2 = xjVar;
                                                    str33 = str16;
                                                    str44 = str15;
                                                    itKeys2 = it;
                                                    str27 = str14;
                                                    str5 = str5;
                                                    str31 = str13;
                                                }
                                                break;
                                            case 1320758513:
                                                if (next2.equals(str31)) {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    it = itKeys2;
                                                    JSONArray jSONArray5 = jSONObject8.getJSONArray(str31);
                                                    str13 = str31;
                                                    int length9 = jSONArray5.length();
                                                    str14 = str27;
                                                    int i11 = 0;
                                                    while (i11 < length9) {
                                                        int i12 = length9;
                                                        String string3 = jSONArray5.getString(i11);
                                                        y45.g(string3);
                                                        arrayList5.add(string3);
                                                        i11++;
                                                        length9 = i12;
                                                    }
                                                    hashSet.addAll(arrayList5);
                                                }
                                                str16 = str33;
                                                str15 = str44;
                                                xjVar2 = xjVar;
                                                str33 = str16;
                                                str44 = str15;
                                                itKeys2 = it;
                                                str27 = str14;
                                                str5 = str5;
                                                str31 = str13;
                                                break;
                                            default:
                                                break;
                                        }
                                    }
                                    str13 = str31;
                                    it = itKeys2;
                                    str14 = str27;
                                    str16 = str33;
                                    str15 = str44;
                                    xjVar2 = xjVar;
                                    str33 = str16;
                                    str44 = str15;
                                    itKeys2 = it;
                                    str27 = str14;
                                    str5 = str5;
                                    str31 = str13;
                                }
                                String str54 = str31;
                                String str55 = str27;
                                String str56 = str5;
                                String str57 = str33;
                                g41 g41Var = new g41(gr1Var, arrayListA, strOptString5, strOptString6, vr0VarA, t4Var2, ib0VarA, ib0VarA2, defpackage.i81.b1(hashSet), defpackage.i81.b1(hashSet2));
                                List<ig<?>> listB = g41Var.b();
                                vr0 vr0VarE = g41Var.e();
                                if (listB.isEmpty() || vr0VarE == null) {
                                    throw new t61(str45);
                                }
                                arrayList3.add(g41Var);
                                i6++;
                                xjVar2 = xjVar;
                                str5 = str56;
                                str33 = str57;
                                length6 = i7;
                                jSONArray2 = jSONArray3;
                                str24 = str43;
                                str26 = str45;
                                str29 = str46;
                                str31 = str54;
                                str27 = str55;
                            }
                            itKeys = itKeys;
                            xjVar2 = xjVar;
                            list = arrayList3;
                            str18 = str18;
                            str19 = str3;
                            str20 = str4;
                            str21 = str5;
                            str22 = str22;
                            str23 = str23;
                            str25 = str42;
                            jSONObject3 = jSONObject7;
                        }
                        break;
                    case 116643:
                        if (!next.equals("ver")) {
                            str6 = str24;
                            jSONObject = jSONObject3;
                            str7 = str25;
                            str8 = str26;
                            str9 = str27;
                            str2 = str18;
                        } else {
                            y45.g(next);
                            y45.j(jSONObject3, "jsonAsset");
                            y45.j(next, "jsonAttribute");
                            String strOptString7 = jSONObject3.optString(next);
                            if (strOptString7 == null || strOptString7.length() == 0 || y45.e(strOptString7, "null")) {
                                throw new t61(str26);
                            }
                            y45.g(strOptString7);
                            str28 = strOptString7;
                            str18 = str18;
                            str19 = str3;
                            str20 = str4;
                            str21 = str5;
                            str22 = str22;
                            str23 = str23;
                        }
                        break;
                    case 1320758513:
                        if (next.equals("renderTrackingUrls")) {
                            ArrayList arrayList6 = new ArrayList();
                            JSONArray jSONArray6 = jSONObject3.getJSONArray("renderTrackingUrls");
                            int length10 = jSONArray6.length();
                            for (int i13 = 0; i13 < length10; i13++) {
                                String string4 = jSONArray6.getString(i13);
                                y45.g(string4);
                                arrayList6.add(string4);
                            }
                            list4 = arrayList6;
                            str18 = str18;
                            str19 = str3;
                            str20 = str4;
                            str21 = str5;
                            str22 = str22;
                            str23 = str23;
                        } else {
                            str6 = str24;
                            jSONObject = jSONObject3;
                            str7 = str25;
                            str8 = str26;
                            str9 = str27;
                            str2 = str18;
                        }
                        break;
                    case 1434631203:
                        if (next.equals("settings")) {
                            JSONObject jSONObject12 = jSONObject3.getJSONObject("settings");
                            Iterator<String> itKeys3 = jSONObject12.keys();
                            y45.i(itKeys3, str27);
                            JSONObject jSONObject13 = null;
                            String str58 = null;
                            Long lValueOf = null;
                            boolean z = false;
                            boolean zOptBoolean = false;
                            while (itKeys3.hasNext()) {
                                String next3 = itKeys3.next();
                                if (next3 != null) {
                                    switch (next3.hashCode()) {
                                        case -975961388:
                                            if (!next3.equals("templateType")) {
                                                continue;
                                            } else {
                                                y45.g(jSONObject12);
                                                y45.g(next3);
                                                y45.j(jSONObject12, "jsonAsset");
                                                y45.j(next3, "jsonAttribute");
                                                String strOptString8 = jSONObject12.optString(next3);
                                                if (strOptString8 == null || strOptString8.length() == 0 || y45.e(strOptString8, "null")) {
                                                    throw new t61(str26);
                                                }
                                                y45.g(strOptString8);
                                                str58 = strOptString8;
                                            }
                                            break;
                                        case 370967731:
                                            if (next3.equals("highlightingEnabled")) {
                                                z = jSONObject12.getBoolean(next3);
                                            }
                                            break;
                                        case 1352271078:
                                            if (next3.equals("multiBannerAutoScrollInterval")) {
                                                lValueOf = Long.valueOf(jSONObject12.getLong(next3));
                                            }
                                            break;
                                        case 1971060391:
                                            if (next3.equals("isLoopingVideo")) {
                                                zOptBoolean = jSONObject12.optBoolean(next3);
                                            }
                                            break;
                                        case 2028941137:
                                            if (next3.equals("mediaAssetImageFallback")) {
                                                jSONObject13 = jSONObject12.getJSONObject(next3);
                                            }
                                            break;
                                    }
                                }
                            }
                            if (jSONObject13 != null) {
                                this.i.getClass();
                                y45.j(jSONObject13, "jsonObject");
                                if (jSONObject13.has("width") && jSONObject13.has("height")) {
                                    fz1Var = new fz1(jSONObject13.getInt("width"), jSONObject13.getInt("height"));
                                } else {
                                    fz1Var = null;
                                }
                            } else {
                                fz1Var = null;
                            }
                            yx1Var = new yx1(str58, lValueOf, z, zOptBoolean, fz1Var);
                            str18 = str18;
                            str19 = str3;
                            str20 = str4;
                            str21 = str5;
                            str22 = str22;
                            str23 = str23;
                        } else {
                            str6 = str24;
                            jSONObject = jSONObject3;
                            str7 = str25;
                            str8 = str26;
                            str9 = str27;
                            str2 = str18;
                        }
                        break;
                    case 1557034613:
                        if (next.equals("designs")) {
                            boolean zA = xjVar.a();
                            ArrayList arrayList7 = new ArrayList();
                            JSONArray jSONArray7 = jSONObject3.getJSONArray("designs");
                            int length11 = jSONArray7.length();
                            for (int i14 = 0; i14 < length11; i14++) {
                                JSONObject jSONObject14 = jSONArray7.getJSONObject(i14);
                                f10 f10Var = this.f;
                                y45.g(jSONObject14);
                                a10 a10VarA = f10Var.a(jSONObject14);
                                b30 b30VarA = a10VarA != null ? this.e.a(a10VarA, zA) : null;
                                if (b30VarA != null) {
                                    arrayList7.add(b30VarA);
                                }
                            }
                            list2 = arrayList7;
                            str18 = str18;
                            str19 = str3;
                            str20 = str4;
                            str21 = str5;
                            str22 = str22;
                            str23 = str23;
                        } else {
                            str6 = str24;
                            jSONObject = jSONObject3;
                            str7 = str25;
                            str8 = str26;
                            str9 = str27;
                            str2 = str18;
                        }
                        break;
                    default:
                        str6 = str24;
                        jSONObject = jSONObject3;
                        str7 = str25;
                        str8 = str26;
                        str9 = str27;
                        str2 = str18;
                        break;
                }
            } else {
                str2 = str18;
                str3 = str19;
                str4 = str20;
                str5 = str21;
                str22 = str22;
                str23 = str23;
                str6 = str24;
                jSONObject = jSONObject3;
                str7 = str25;
                str8 = str26;
                itKeys = itKeys;
                str9 = str27;
            }
            itKeys = itKeys;
            str26 = str8;
            jSONObject3 = jSONObject;
            str18 = str2;
            str19 = str3;
            str20 = str4;
            str21 = str5;
            str22 = str22;
            str23 = str23;
            str25 = str7;
            str24 = str6;
            str27 = str9;
            xjVar2 = xjVar;
        }
        String str59 = str26;
        if (list.isEmpty()) {
            throw new t61(str59);
        }
        return new y61(list, listA, list4, t4Var, ky5.h(abb.a("status", op1.c.c)), list2, list3, str28, yx1Var, g6Var);
    }

    public k91(Context context, sp1 sp1Var, wr0 wr0Var, dh dhVar, q82 q82Var, nk0 nk0Var, g30 g30Var, f10 f10Var, da1 da1Var, gy1 gy1Var, cv0 cv0Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(wr0Var, "linkJsonParser");
        y45.j(dhVar, "assetsJsonParser");
        y45.j(q82Var, "urlJsonParser");
        y45.j(nk0Var, "impressionDataParser");
        y45.j(g30Var, "divKitDesignParser");
        y45.j(f10Var, "designJsonParser");
        y45.j(da1Var, "nativeResponseTypeParser");
        y45.j(gy1Var, "showNoticeTypeProvider");
        y45.j(cv0Var, "mediaAssetImageFallbackSizeParser");
        this.a = wr0Var;
        this.b = dhVar;
        this.c = q82Var;
        this.d = nk0Var;
        this.e = g30Var;
        this.f = f10Var;
        this.g = da1Var;
        this.h = gy1Var;
        this.i = cv0Var;
    }

    @VisibleForTesting
    public final ey1 a(JSONObject jSONObject) throws JSONException, t61 {
        Object objM279constructorimpl;
        Object objM279constructorimpl2;
        Object objM279constructorimpl3;
        Object objM279constructorimpl4;
        Object objM279constructorimpl5;
        fy1 fy1Var;
        y45.j(jSONObject, "jsonShowNotice");
        if (l91.a(jSONObject, "delay", "url")) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Long.valueOf(jSONObject.getLong("delay")));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            Long l = (Long) objM279constructorimpl;
            long jLongValue = l != null ? l.longValue() : 0L;
            try {
                this.c.getClass();
                objM279constructorimpl2 = Result.m279constructorimpl(q82.a("url", jSONObject));
            } catch (Throwable th2) {
                Result.Companion companion3 = Result.INSTANCE;
                objM279constructorimpl2 = Result.m279constructorimpl(kotlin.c.a(th2));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl2)) {
                objM279constructorimpl2 = null;
            }
            String str = (String) objM279constructorimpl2;
            try {
                objM279constructorimpl3 = Result.m279constructorimpl(Double.valueOf(jSONObject.optInt("visibilityPercent", 0)));
            } catch (Throwable th3) {
                Result.Companion companion4 = Result.INSTANCE;
                objM279constructorimpl3 = Result.m279constructorimpl(kotlin.c.a(th3));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl3)) {
                objM279constructorimpl3 = null;
            }
            Double d = (Double) objM279constructorimpl3;
            int i = (int) wn8.i(d != null ? d.doubleValue() : 0.0d, 0.0d, 100.0d);
            try {
                objM279constructorimpl4 = Result.m279constructorimpl(jSONObject.getString("type"));
            } catch (Throwable th4) {
                Result.Companion companion5 = Result.INSTANCE;
                objM279constructorimpl4 = Result.m279constructorimpl(kotlin.c.a(th4));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl4)) {
                objM279constructorimpl4 = null;
            }
            String str2 = (String) objM279constructorimpl4;
            if (str2 != null) {
                try {
                    String upperCase = str2.toUpperCase(Locale.ROOT);
                    y45.i(upperCase, "toUpperCase(...)");
                    objM279constructorimpl5 = Result.m279constructorimpl(fy1.valueOf(upperCase));
                } catch (Throwable th5) {
                    Result.Companion companion6 = Result.INSTANCE;
                    objM279constructorimpl5 = Result.m279constructorimpl(kotlin.c.a(th5));
                }
                if (Result.m285isFailureimpl(objM279constructorimpl5)) {
                    objM279constructorimpl5 = null;
                }
                fy1Var = (fy1) objM279constructorimpl5;
            } else {
                fy1Var = null;
            }
            if (fy1Var == null) {
                if (str != null) {
                    this.h.getClass();
                    y45.j(str, "url");
                    if (j1a.X(str, "/rtbcount/", false, 2, null)) {
                        fy1Var = fy1.c;
                    } else if (j1a.X(str, "/count/", false, 2, null)) {
                        fy1Var = fy1.b;
                    } else {
                        fy1Var = fy1.d;
                    }
                } else {
                    fy1Var = fy1.d;
                }
            }
            return new ey1(i, jLongValue, fy1Var, str);
        }
        throw new t61("Native Ad json has not required attributes");
    }
}
