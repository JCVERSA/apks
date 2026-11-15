package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import defpackage.c4d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class anateh {
    private enatha a = new enatha();
    private List<athena> b = new CopyOnWriteArrayList();

    public List<athena> a() {
        return this.b;
    }

    public enatha b() {
        return this.a;
    }

    public List<TidConfigBean> c() {
        ArrayList arrayList = new ArrayList();
        Iterator<athena> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().j());
        }
        return arrayList;
    }

    public void d() {
        for (athena athenaVar : this.b) {
            athenaVar.c(0L);
            athenaVar.b(-1L);
        }
        this.a.f(0L);
        this.a.c(-1L);
    }

    public String e() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("global_config", this.a.j());
            return jSONObject.toString();
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            com.transsion.ga.anateh.a("toJSON", e);
            return "";
        }
    }

    public void a(List<athena> list) {
        this.b.clear();
        this.b.addAll(list);
    }

    public String a(long j) {
        return this.a.a(j);
    }

    public athena a(int i) {
        if (!anehat.b(this.b)) {
            return null;
        }
        for (athena athenaVar : this.b) {
            if (athenaVar.b() == i) {
                return athenaVar;
            }
        }
        return null;
    }

    @Nullable
    public static anateh a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            anateh anatehVar = new anateh();
            enatha enathaVarA = enatha.a(jSONObject.getJSONObject("global_config"));
            if (enathaVarA != null) {
                anatehVar.a = enathaVarA;
            }
            return anatehVar;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            com.transsion.ga.anateh.a("fromJSON", e);
            return null;
        }
    }
}
