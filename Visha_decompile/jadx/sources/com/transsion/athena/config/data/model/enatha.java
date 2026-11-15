package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.athena.taaneh.a;
import defpackage.c4d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class enatha {
    private JSONObject e;
    private String j;
    private String n;
    private long a = 86400000;
    private long b = 150000;
    private boolean c = true;
    private String d = "";
    private long f = 0;
    private long g = -1;
    private int h = 0;
    private boolean i = false;
    private List<String> k = new ArrayList();
    private List<byte[]> l = new ArrayList();
    private Pair<Integer, Integer> m = new Pair<>(3, 6);
    private int o = 6;
    private int p = 10;

    public void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.k.clear();
        this.l.clear();
        for (int i = 0; i < jSONArray.length(); i++) {
            this.k.add(jSONArray.getString(i));
            this.l.add(jSONArray.getString(i).getBytes());
        }
    }

    public void b(JSONObject jSONObject) {
        this.e = jSONObject;
    }

    public void c(long j) {
        this.g = j;
    }

    public void d(long j) {
        this.a = j;
    }

    public void e(long j) {
        if (j <= 0) {
            return;
        }
        this.b = j;
    }

    public long f() {
        return this.b;
    }

    public String g() {
        return TextUtils.isEmpty(this.n) ? "Asia/Shanghai" : this.n;
    }

    public int h() {
        return this.p;
    }

    public long i() {
        return this.f;
    }

    public JSONObject j() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = this.k.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return new JSONObject().put("pd", this.a).put("dlt", this.p).put("th", this.b).put("once", this.c).put("url", this.d).put("tidUrls", this.e).put("version", this.f).put("npt", this.g).put("rt", this.h).put("dd", this.i).put("ddv", this.j).put(TtmlNode.TAG_P, jSONArray).put("tz", this.n).put("geo", this.o).put("delays", this.m.first + StringUtils.COMMA + this.m.second);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public void b(boolean z) {
        this.c = z;
    }

    public long c() {
        return this.a;
    }

    public int d() {
        return this.h;
    }

    public int e() {
        try {
            int iIntValue = ((Integer) this.m.first).intValue();
            int iIntValue2 = ((Integer) this.m.second).intValue();
            String str = a.a;
            return new Random().nextInt((iIntValue2 - iIntValue) + 1) + iIntValue;
        } catch (Exception e) {
            e.printStackTrace();
            return 6;
        }
    }

    public void f(long j) {
        this.f = j;
    }

    public List<byte[]> b() {
        return this.l;
    }

    public void c(int i) {
        this.h = i;
    }

    public void d(int i) {
        this.p = i;
    }

    public void b(String str) {
        this.n = str;
    }

    public void c(String str) {
        this.d = str;
    }

    public void b(int i) {
        if (i <= 0 || i >= 12) {
            i = 6;
        }
        this.o = i;
    }

    public void b(long j) {
        this.g = j;
        this.h = 0;
    }

    public String a(long j) {
        String string;
        String strValueOf = String.valueOf(j);
        JSONObject jSONObject = this.e;
        if (jSONObject == null || !jSONObject.has(strValueOf)) {
            string = null;
        } else {
            try {
                string = this.e.getString(strValueOf);
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
                string = null;
            }
        }
        return TextUtils.isEmpty(string) ? this.d : string;
    }

    public void a(boolean z) {
        this.i = z;
    }

    public void a(String str) {
        this.j = str;
    }

    public void a(int i, int i2) {
        this.m = new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public int a() {
        return this.o;
    }

    public boolean a(int i) {
        if (this.g == -1 || this.a == -1) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.g;
        if (Math.abs(j) < this.a) {
            return j >= 0 && this.h < i;
        }
        b(jCurrentTimeMillis);
        return true;
    }

    @Nullable
    public static enatha a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                enatha enathaVar = new enatha();
                enathaVar.a = jSONObject.getLong("pd");
                enathaVar.b = jSONObject.getLong("th");
                enathaVar.c = jSONObject.getBoolean("once");
                if (jSONObject.has("url")) {
                    enathaVar.d = jSONObject.getString("url");
                }
                if (jSONObject.has("tidUrls")) {
                    enathaVar.e = jSONObject.getJSONObject("tidUrls");
                }
                enathaVar.f = jSONObject.getLong("version");
                enathaVar.g = jSONObject.getLong("npt");
                enathaVar.h = jSONObject.getInt("rt");
                enathaVar.i = jSONObject.getBoolean("dd");
                enathaVar.j = jSONObject.optString("ddv", null);
                if (jSONObject.has(TtmlNode.TAG_P)) {
                    enathaVar.a(jSONObject.getJSONArray(TtmlNode.TAG_P));
                }
                if (jSONObject.has("delays")) {
                    String[] strArrSplit = jSONObject.getString("delays").split(StringUtils.COMMA);
                    enathaVar.m = new Pair<>(Integer.valueOf(Integer.parseInt(strArrSplit[0])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
                }
                if (jSONObject.has("tz")) {
                    enathaVar.n = jSONObject.getString("tz");
                }
                int i = 6;
                int iOptInt = jSONObject.optInt("geo", 6);
                if (iOptInt > 0 && iOptInt < 12) {
                    i = iOptInt;
                }
                enathaVar.o = i;
                if (jSONObject.has("dlt")) {
                    enathaVar.p = jSONObject.getInt("dlt");
                }
                return enathaVar;
            } catch (Exception e) {
                c4d.d(Log.getStackTraceString(e));
            }
        }
        return null;
    }
}
