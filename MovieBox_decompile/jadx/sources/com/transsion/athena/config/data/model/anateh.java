package com.transsion.athena.config.data.model;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class anateh {

    private enatha f41462a = new enatha();

    private List<athena> f41463b = new CopyOnWriteArrayList();

    public List<athena> a() {
        return this.f41463b;
    }

    public enatha b() {
        return this.f41462a;
    }

    public List<TidConfigBean> c() {
        ArrayList arrayList = new ArrayList();
        Iterator<athena> it = this.f41463b.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().j());
        }
        return arrayList;
    }

    public void d() {
        for (athena athenaVar : this.f41463b) {
            athenaVar.c(0L);
            athenaVar.b(-1L);
        }
        this.f41462a.f(0L);
        this.f41462a.c(-1L);
    }

    public String e() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("global_config", this.f41462a.j());
            return jSONObject.toString();
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            com.transsion.ga.anateh.a("toJSON", e10);
            return "";
        }
    }

    public void a(List<athena> list) {
        this.f41463b.clear();
        this.f41463b.addAll(list);
    }

    public String a(long j10) {
        return this.f41462a.a(j10);
    }

    public athena a(int i10) {
        if (!anehat.b(this.f41463b)) {
            return null;
        }
        for (athena athenaVar : this.f41463b) {
            if (athenaVar.b() == i10) {
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
                anatehVar.f41462a = enathaVarA;
            }
            return anatehVar;
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            com.transsion.ga.anateh.a("fromJSON", e10);
            return null;
        }
    }
}
