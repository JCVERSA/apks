package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class enatha {

    private JSONObject f41505e;

    private String f41510j;

    private String f41514n;

    private long f41501a = 86400000;

    private long f41502b = 150000;

    private boolean f41503c = true;

    private String f41504d = "";

    private long f41506f = 0;

    private long f41507g = -1;

    private int f41508h = 0;

    private boolean f41509i = false;

    private List<String> f41511k = new ArrayList();

    private List<byte[]> f41512l = new ArrayList();

    private Pair<Integer, Integer> f41513m = new Pair<>(3, 6);

    private int f41515o = 6;

    private int f41516p = 10;

    public void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.f41511k.clear();
        this.f41512l.clear();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            this.f41511k.add(jSONArray.getString(i10));
            this.f41512l.add(jSONArray.getString(i10).getBytes());
        }
    }

    public void b(JSONObject jSONObject) {
        this.f41505e = jSONObject;
    }

    public void c(long j10) {
        this.f41507g = j10;
    }

    public void d(long j10) {
        this.f41501a = j10;
    }

    public void e(long j10) {
        if (j10 <= 0) {
            return;
        }
        this.f41502b = j10;
    }

    public long f() {
        return this.f41502b;
    }

    public String g() {
        return TextUtils.isEmpty(this.f41514n) ? "Asia/Shanghai" : this.f41514n;
    }

    public int h() {
        return this.f41516p;
    }

    public long i() {
        return this.f41506f;
    }

    public JSONObject j() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<String> it = this.f41511k.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return new JSONObject().put("pd", this.f41501a).put("dlt", this.f41516p).put("th", this.f41502b).put("once", this.f41503c).put("url", this.f41504d).put("tidUrls", this.f41505e).put("version", this.f41506f).put("npt", this.f41507g).put("rt", this.f41508h).put("dd", this.f41509i).put("ddv", this.f41510j).put(TtmlNode.TAG_P, jSONArray).put("tz", this.f41514n).put("geo", this.f41515o).put("delays", this.f41513m.first + "," + this.f41513m.second);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    public void b(boolean z10) {
        this.f41503c = z10;
    }

    public long c() {
        return this.f41501a;
    }

    public int d() {
        return this.f41508h;
    }

    public int e() {
        try {
            int iIntValue = ((Integer) this.f41513m.first).intValue();
            int iIntValue2 = ((Integer) this.f41513m.second).intValue();
            int i10 = com.transsion.athena.taaneh.anehat.f41678e;
            return new Random().nextInt((iIntValue2 - iIntValue) + 1) + iIntValue;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 6;
        }
    }

    public void f(long j10) {
        this.f41506f = j10;
    }

    public List<byte[]> b() {
        return this.f41512l;
    }

    public void c(int i10) {
        this.f41508h = i10;
    }

    public void d(int i10) {
        this.f41516p = i10;
    }

    public void b(String str) {
        this.f41514n = str;
    }

    public void c(String str) {
        this.f41504d = str;
    }

    public void b(int i10) {
        if (i10 <= 0 || i10 >= 12) {
            i10 = 6;
        }
        this.f41515o = i10;
    }

    public void b(long j10) {
        this.f41507g = j10;
        this.f41508h = 0;
    }

    public String a(long j10) {
        String string;
        String strValueOf = String.valueOf(j10);
        JSONObject jSONObject = this.f41505e;
        if (jSONObject == null || !jSONObject.has(strValueOf)) {
            string = null;
        } else {
            try {
                string = this.f41505e.getString(strValueOf);
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
                string = null;
            }
        }
        return TextUtils.isEmpty(string) ? this.f41504d : string;
    }

    public void a(boolean z10) {
        this.f41509i = z10;
    }

    public void a(String str) {
        this.f41510j = str;
    }

    public void a(int i10, int i11) {
        this.f41513m = new Pair<>(Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public int a() {
        return this.f41515o;
    }

    public boolean a(int i10) {
        if (this.f41507g == -1 || this.f41501a == -1) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - this.f41507g;
        if (Math.abs(j10) < this.f41501a) {
            return j10 >= 0 && this.f41508h < i10;
        }
        b(jCurrentTimeMillis);
        return true;
    }

    @Nullable
    public static enatha a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                enatha enathaVar = new enatha();
                enathaVar.f41501a = jSONObject.getLong("pd");
                enathaVar.f41502b = jSONObject.getLong("th");
                enathaVar.f41503c = jSONObject.getBoolean("once");
                if (jSONObject.has("url")) {
                    enathaVar.f41504d = jSONObject.getString("url");
                }
                if (jSONObject.has("tidUrls")) {
                    enathaVar.f41505e = jSONObject.getJSONObject("tidUrls");
                }
                enathaVar.f41506f = jSONObject.getLong("version");
                enathaVar.f41507g = jSONObject.getLong("npt");
                enathaVar.f41508h = jSONObject.getInt("rt");
                enathaVar.f41509i = jSONObject.getBoolean("dd");
                enathaVar.f41510j = jSONObject.optString("ddv", null);
                if (jSONObject.has(TtmlNode.TAG_P)) {
                    enathaVar.a(jSONObject.getJSONArray(TtmlNode.TAG_P));
                }
                if (jSONObject.has("delays")) {
                    String[] strArrSplit = jSONObject.getString("delays").split(",");
                    enathaVar.f41513m = new Pair<>(Integer.valueOf(Integer.parseInt(strArrSplit[0])), Integer.valueOf(Integer.parseInt(strArrSplit[1])));
                }
                if (jSONObject.has("tz")) {
                    enathaVar.f41514n = jSONObject.getString("tz");
                }
                int i10 = 6;
                int iOptInt = jSONObject.optInt("geo", 6);
                if (iOptInt > 0 && iOptInt < 12) {
                    i10 = iOptInt;
                }
                enathaVar.f41515o = i10;
                if (jSONObject.has("dlt")) {
                    enathaVar.f41516p = jSONObject.getInt("dlt");
                }
                return enathaVar;
            } catch (Exception e10) {
                com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            }
        }
        return null;
    }
}
