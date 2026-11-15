package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class athena {

    private int f41464a;

    private long f41467d;

    private int f41468e;

    private String f41470g;

    private String f41471h;

    private int f41472i;

    private int f41473j;

    private String f41474k;

    private long f41465b = -1;

    private int f41466c = 0;

    private final List<TidConfigBean> f41469f = new CopyOnWriteArrayList();

    public void a(int i10) {
        this.f41464a = i10;
    }

    public int b() {
        return this.f41464a;
    }

    public void c(long j10) {
        this.f41467d = j10;
    }

    public void d(String str) {
        this.f41470g = str;
    }

    public void e(int i10) {
        this.f41466c = i10;
    }

    public String f() {
        return this.f41470g;
    }

    public int g() {
        return this.f41466c;
    }

    public String h() {
        return this.f41471h;
    }

    public long i() {
        if (anehat.a(this.f41469f)) {
            return 0L;
        }
        return this.f41469f.get(0).getTidConfig().k();
    }

    public List<TidConfigBean> j() {
        return this.f41469f;
    }

    public long k() {
        return this.f41467d;
    }

    public boolean l() {
        return anehat.a(this.f41469f);
    }

    public String m() {
        try {
            return new JSONObject().put("npt", this.f41465b).put("rt", this.f41466c).put("ver", this.f41467d).put("dim", this.f41468e).put("url", this.f41471h).put("url_config", this.f41474k).put("interval", this.f41472i).put(OfflineConstantsKt.OFFLINE, this.f41473j).put("opcode", this.f41470g).toString();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }

    public void a(TidConfigBean tidConfigBean) {
        this.f41469f.add(tidConfigBean);
    }

    public TidConfigBean b(String str) {
        for (TidConfigBean tidConfigBean : this.f41469f) {
            if (TextUtils.equals(tidConfigBean.getEvent(), str)) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public String c() {
        String str = this.f41474k;
        return str == null ? "" : str;
    }

    public int d() {
        return this.f41468e;
    }

    public void e(String str) {
        this.f41471h = str;
    }

    public TidConfigBean a(long j10) {
        for (TidConfigBean tidConfigBean : this.f41469f) {
            if (tidConfigBean.getTid() == j10) {
                return tidConfigBean;
            }
        }
        return null;
    }

    public void c(String str) {
        this.f41474k = str;
    }

    public void d(int i10) {
        this.f41473j = i10;
    }

    public int e() {
        return this.f41472i;
    }

    public void b(int i10) {
        this.f41468e = i10;
    }

    public void c(int i10) {
        this.f41472i = i10;
    }

    public boolean a(long j10, int i10) {
        if (this.f41465b == -1 || j10 == -1) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = jCurrentTimeMillis - this.f41465b;
        if (Math.abs(j11) >= j10) {
            b(jCurrentTimeMillis);
            return true;
        }
        if (j11 >= 0) {
            return this.f41466c < i10;
        }
        long j12 = this.f41465b;
        Calendar calendar = Calendar.getInstance();
        calendar.get(1);
        calendar.get(2);
        calendar.get(5);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        calendar.add(5, 1);
        return j12 >= timeInMillis && j12 < calendar.getTimeInMillis();
    }

    public void b(long j10) {
        this.f41465b = j10;
        this.f41466c = 0;
    }

    public boolean a() {
        return this.f41473j == 2;
    }

    @Nullable
    public static athena a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            athena athenaVar = new athena();
            athenaVar.f41465b = jSONObject.getLong("npt");
            athenaVar.f41466c = jSONObject.getInt("rt");
            athenaVar.f41467d = jSONObject.getLong("ver");
            athenaVar.f41468e = jSONObject.optInt("dim");
            athenaVar.f41471h = jSONObject.optString("url");
            athenaVar.f41474k = jSONObject.optString("url_config");
            athenaVar.f41470g = jSONObject.optString("opcode");
            athenaVar.f41472i = jSONObject.optInt("interval");
            athenaVar.f41473j = jSONObject.optInt(OfflineConstantsKt.OFFLINE);
            return athenaVar;
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return null;
        }
    }
}
