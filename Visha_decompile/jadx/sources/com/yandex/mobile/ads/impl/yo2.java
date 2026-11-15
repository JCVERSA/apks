package com.yandex.mobile.ads.impl;

import java.util.HashSet;
import org.json.JSONObject;

public final class yo2 extends co2 {
    public yo2(lo2.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    @Override
    public final void onPostExecute(String str) {
        wn2 wn2VarA = wn2.a();
        if (wn2VarA != null) {
            for (vn2 vn2Var : wn2VarA.b()) {
                if (this.c.contains(vn2Var.i())) {
                    vn2Var.j().b(str, this.e);
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override
    public final String doInBackground(Object[] objArr) {
        return this.d.toString();
    }
}
