package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.ga.AthenaAnalytics;
import org.json.JSONObject;

public class aatnhe {

    private int f41445a = 0;

    private int f41446b = 100;

    private int f41447c = 1;

    private long f41448d = 0;

    private int f41449e = 0;

    private int f41450f = 0;

    private int f41451g = 100;

    private int f41452h = 1;

    private long f41453i = 0;

    private int f41454j = 0;

    private int f41455k = 0;

    private long f41456l = 30000;

    private long f41457m;

    private int f41458n;

    public void a(long j10) {
        this.f41457m = j10;
    }

    public long b() {
        return this.f41457m;
    }

    public void c(long j10) {
        this.f41453i = j10;
    }

    public int d() {
        return this.f41450f;
    }

    public void e(int i10) {
        this.f41454j = i10;
    }

    public void f(int i10) {
        this.f41449e = i10;
    }

    public void g(int i10) {
        this.f41458n = i10;
    }

    public int h() {
        return this.f41458n;
    }

    public long i() {
        long j10 = this.f41448d;
        try {
            if (!ehanat.v()) {
                return j10;
            }
            return anehat.a(AthenaAnalytics.J(), "debug.athena.push_during", this.f41448d).longValue();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b("SystemPropertiesProxy.getLong " + e10.getMessage());
            return j10;
        }
    }

    public void j(int i10) {
        this.f41446b = i10;
    }

    public long k() {
        return this.f41456l;
    }

    public int l() {
        return this.f41447c;
    }

    public int m() {
        return this.f41446b;
    }

    JSONObject n() {
        try {
            return new JSONObject().put("ci", this.f41455k).put("gmax", this.f41451g).put("gmin", this.f41450f).put("mi", this.f41454j).put("nf", this.f41449e).put("pd", i()).put("pt", this.f41453i).put("se", this.f41456l).put("urhash", this.f41446b).put("frq", this.f41457m).put("ct", this.f41445a).put("pr", this.f41458n).put("upct", this.f41447c).put("gpct", this.f41452h);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    public String o() {
        try {
            return new JSONObject().put("gmax", this.f41451g).put("gmin", this.f41450f).put("mi", this.f41454j).put("nf", this.f41449e).put("pd", i()).put("se", this.f41456l).put("urhash", this.f41446b).put("frq", this.f41457m).put("ct", this.f41445a).put("pr", this.f41458n).put("upct", this.f41447c).put("gpct", this.f41452h).toString();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    @NonNull
    public String toString() {
        return "TidConfig { pushTime=" + this.f41453i + ", pushDuration=" + this.f41448d + ", maxCachedItems=" + this.f41454j + ", cachedItems=" + this.f41455k + ", netWorkFlag=" + this.f41449e + '}';
    }

    public void a(int i10) {
        this.f41455k = i10;
    }

    public void b(long j10) {
        this.f41448d = j10;
    }

    public int c() {
        return this.f41451g;
    }

    public void d(long j10) {
        this.f41456l = j10;
    }

    public int e() {
        return this.f41452h;
    }

    public int f() {
        return this.f41454j;
    }

    public int g() {
        return this.f41449e;
    }

    public void h(int i10) {
        this.f41445a = i10;
    }

    public long j() {
        return this.f41453i;
    }

    public int a() {
        return this.f41455k;
    }

    public void b(int i10) {
        this.f41451g = i10;
    }

    public void c(int i10) {
        this.f41450f = i10;
    }

    public void d(int i10) {
        this.f41452h = i10;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f41451g = jSONObject.getInt("gmax");
            this.f41450f = jSONObject.getInt("gmin");
            this.f41454j = jSONObject.getInt("mi");
            this.f41449e = jSONObject.getInt("nf");
            this.f41448d = jSONObject.getLong("pd");
            this.f41456l = jSONObject.getLong("se");
            this.f41446b = jSONObject.getInt("urhash");
            this.f41457m = jSONObject.getInt("frq");
            this.f41445a = jSONObject.optInt("ct", 0);
            this.f41458n = jSONObject.optInt("pr", 0);
            this.f41447c = jSONObject.optInt("upct", 1);
            this.f41452h = jSONObject.optInt("gpct", 1);
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
    }

    public void i(int i10) {
        this.f41447c = i10;
    }

    @Nullable
    static aatnhe a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            aatnhe aatnheVar = new aatnhe();
            aatnheVar.f41455k = jSONObject.getInt("ci");
            aatnheVar.f41451g = jSONObject.getInt("gmax");
            aatnheVar.f41450f = jSONObject.getInt("gmin");
            aatnheVar.f41454j = jSONObject.getInt("mi");
            aatnheVar.f41449e = jSONObject.getInt("nf");
            aatnheVar.f41448d = jSONObject.getLong("pd");
            aatnheVar.f41453i = jSONObject.getLong("pt");
            aatnheVar.f41456l = jSONObject.getLong("se");
            aatnheVar.f41446b = jSONObject.getInt("urhash");
            aatnheVar.f41458n = jSONObject.optInt("pr");
            aatnheVar.f41447c = jSONObject.optInt("upct");
            aatnheVar.f41452h = jSONObject.optInt("gpct");
            return aatnheVar;
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }
}
