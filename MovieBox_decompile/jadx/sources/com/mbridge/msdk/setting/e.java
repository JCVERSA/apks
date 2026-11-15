package com.mbridge.msdk.setting;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class e {

    public int f36481a;

    private HashMap<String, f> f36482b;

    static class b {

        private static final e f36483a = new e();
    }

    public static e a() {
        return b.f36483a;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (this.f36482b == null) {
                this.f36482b = new HashMap<>();
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                f fVar = new f();
                fVar.a(next);
                fVar.b(string);
                this.f36482b.put(next, fVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private e() {
        this.f36481a = 6;
        this.f36482b = new HashMap<>();
    }

    public int a(String str) {
        HashMap<String, f> map;
        f fVar;
        int i10;
        if (TextUtils.isEmpty(str) || (map = this.f36482b) == null || !map.containsKey(str) || (fVar = this.f36482b.get(str)) == null) {
            return 0;
        }
        if (fVar.b()) {
            i10 = 1;
        } else {
            i10 = fVar.a() >= this.f36481a ? 2 : 0;
        }
        fVar.a(false);
        return i10;
    }
}
