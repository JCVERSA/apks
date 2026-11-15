package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

public final class bp2 extends co2 {
    public bp2(lo2.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    @Override
    public final void onPostExecute(String str) {
        wn2 wn2VarA;
        if (!TextUtils.isEmpty(str) && (wn2VarA = wn2.a()) != null) {
            for (vn2 vn2Var : wn2VarA.b()) {
                if (this.c.contains(vn2Var.i())) {
                    vn2Var.j().a(str, this.e);
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override
    public final String doInBackground(Object[] objArr) {
        if (io2.b(this.d, ((ko2) this.b).b())) {
            return null;
        }
        ((ko2) this.b).a(this.d);
        return this.d.toString();
    }
}
