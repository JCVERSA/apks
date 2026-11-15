package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;
import org.json.JSONObject;

public class aatnhe {
    private int a = 0;
    private int b = 100;
    private int c = 1;
    private long d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 100;
    private int h = 1;
    private long i = 0;
    private int j = 0;
    private int k = 0;
    private long l = 30000;
    private long m;
    private int n;

    public void a(long j) {
        this.m = j;
    }

    public long b() {
        return this.m;
    }

    public void c(long j) {
        this.i = j;
    }

    public int d() {
        return this.f;
    }

    public void e(int i) {
        this.j = i;
    }

    public void f(int i) {
        this.e = i;
    }

    public void g(int i) {
        this.n = i;
    }

    public int h() {
        return this.n;
    }

    public long i() {
        long j = this.d;
        try {
            if (!ehanat.v()) {
                return j;
            }
            return anehat.a(AthenaAnalytics.I(), "debug.athena.push_during", this.d).longValue();
        } catch (Exception e) {
            c4d.d("SystemPropertiesProxy.getLong " + e.getMessage());
            return j;
        }
    }

    public void j(int i) {
        this.b = i;
    }

    public long k() {
        return this.l;
    }

    public int l() {
        return this.c;
    }

    public int m() {
        return this.b;
    }

    public JSONObject n() {
        try {
            return new JSONObject().put("ci", this.k).put("gmax", this.g).put("gmin", this.f).put("mi", this.j).put("nf", this.e).put("pd", i()).put("pt", this.i).put("se", this.l).put("urhash", this.b).put("frq", this.m).put("ct", this.a).put(CmcdConfiguration.KEY_PLAYBACK_RATE, this.n).put("upct", this.c).put("gpct", this.h);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    public String o() {
        try {
            return new JSONObject().put("gmax", this.g).put("gmin", this.f).put("mi", this.j).put("nf", this.e).put("pd", i()).put("se", this.l).put("urhash", this.b).put("frq", this.m).put("ct", this.a).put(CmcdConfiguration.KEY_PLAYBACK_RATE, this.n).put("upct", this.c).put("gpct", this.h).toString();
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }

    @NonNull
    public String toString() {
        return "TidConfig { pushTime=" + this.i + ", pushDuration=" + this.d + ", maxCachedItems=" + this.j + ", cachedItems=" + this.k + ", netWorkFlag=" + this.e + '}';
    }

    public void a(int i) {
        this.k = i;
    }

    public void b(long j) {
        this.d = j;
    }

    public int c() {
        return this.g;
    }

    public void d(long j) {
        this.l = j;
    }

    public int e() {
        return this.h;
    }

    public int f() {
        return this.j;
    }

    public int g() {
        return this.e;
    }

    public void h(int i) {
        this.a = i;
    }

    public long j() {
        return this.i;
    }

    public int a() {
        return this.k;
    }

    public void b(int i) {
        this.g = i;
    }

    public void c(int i) {
        this.f = i;
    }

    public void d(int i) {
        this.h = i;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.g = jSONObject.getInt("gmax");
            this.f = jSONObject.getInt("gmin");
            this.j = jSONObject.getInt("mi");
            this.e = jSONObject.getInt("nf");
            this.d = jSONObject.getLong("pd");
            this.l = jSONObject.getLong("se");
            this.b = jSONObject.getInt("urhash");
            this.m = jSONObject.getInt("frq");
            this.a = jSONObject.optInt("ct", 0);
            this.n = jSONObject.optInt(CmcdConfiguration.KEY_PLAYBACK_RATE, 0);
            this.c = jSONObject.optInt("upct", 1);
            this.h = jSONObject.optInt("gpct", 1);
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
        }
    }

    public void i(int i) {
        this.c = i;
    }

    @Nullable
    public static aatnhe a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            aatnhe aatnheVar = new aatnhe();
            aatnheVar.k = jSONObject.getInt("ci");
            aatnheVar.g = jSONObject.getInt("gmax");
            aatnheVar.f = jSONObject.getInt("gmin");
            aatnheVar.j = jSONObject.getInt("mi");
            aatnheVar.e = jSONObject.getInt("nf");
            aatnheVar.d = jSONObject.getLong("pd");
            aatnheVar.i = jSONObject.getLong("pt");
            aatnheVar.l = jSONObject.getLong("se");
            aatnheVar.b = jSONObject.getInt("urhash");
            aatnheVar.n = jSONObject.optInt(CmcdConfiguration.KEY_PLAYBACK_RATE);
            aatnheVar.c = jSONObject.optInt("upct");
            aatnheVar.h = jSONObject.optInt("gpct");
            return aatnheVar;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return null;
        }
    }
}
