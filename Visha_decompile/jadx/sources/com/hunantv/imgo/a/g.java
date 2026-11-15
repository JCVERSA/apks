package com.hunantv.imgo.a;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.hunantv.imgo.data.KbbData;
import com.hunantv.imgo.net.RequestParams;
import java.util.Map;

public class g extends b {
    private g(Context context) {
        super(context);
    }

    public static g a(Context context) {
        return new g(context);
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.v();
    }

    public void a(String str) {
        this.a.a(b(), new RequestParams((Map<String, String>) com.mgtv.json.a.a(new KbbData("0", str).toString(), new TypeToken<Map<String, String>>() {
        }.getType())).toJson(), (com.hunantv.imgo.report.a) null);
    }
}
