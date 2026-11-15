package com.facebook.biddingkit.logging;

import android.os.AsyncTask;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class e {

    private String f23458a;

    private String f23459b;

    private final Map f23460c = new HashMap();

    private String f23461d;

    class a extends AsyncTask {
        a() {
        }

        @Override
        public Void doInBackground(e... eVarArr) {
            f.g(eVarArr[0]);
            return null;
        }
    }

    public void a(String str) {
        this.f23459b = str;
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f23460c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f23460c.put(str, map);
        }
        map.put("cpm_cents", str2);
    }

    protected void c(String str) {
        this.f23458a = str;
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f23460c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f23460c.put(str, map);
        }
        map.put("error", str2);
    }

    public void e(String str) {
        this.f23461d = str;
    }

    public void f(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f23460c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f23460c.put(str, map);
        }
        map.put("latency_ms", str2);
    }

    public void g(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        Map map = (Map) this.f23460c.get(str);
        if (map == null) {
            map = new HashMap();
            this.f23460c.put(str, map);
        }
        map.put("result", str2);
    }

    protected JSONObject h() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Iterator it = this.f23460c.entrySet().iterator();
        while (it.hasNext()) {
            String str = (String) ((Map.Entry) it.next()).getKey();
            jSONObject.put(str, j(str));
        }
        return jSONObject;
    }

    protected String i() {
        return TextUtils.isEmpty(this.f23459b) ? "" : this.f23459b;
    }

    protected JSONObject j(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (!this.f23460c.containsKey(str)) {
            return jSONObject;
        }
        for (Map.Entry entry : ((Map) this.f23460c.get(str)).entrySet()) {
            if ("cpm_cents".equals(entry.getKey())) {
                jSONObject.put((String) entry.getKey(), Double.parseDouble((String) entry.getValue()));
            } else if ("latency_ms".equals(entry.getKey())) {
                jSONObject.put((String) entry.getKey(), Long.parseLong((String) entry.getValue()));
            } else {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        return jSONObject;
    }

    protected String k() {
        return this.f23458a;
    }

    protected String l() {
        return TextUtils.isEmpty(this.f23461d) ? "" : this.f23461d;
    }

    protected JSONObject m() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f23459b)) {
                jSONObject.put("auction_id", this.f23459b);
            }
            if (!TextUtils.isEmpty(this.f23461d)) {
                jSONObject.put("exception", this.f23461d);
            }
            Iterator it = this.f23460c.entrySet().iterator();
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                jSONObject.put(str, j(str));
            }
        } catch (JSONException e10) {
            b.d("EventLog", "Failed to create json data", e10);
        }
        return jSONObject;
    }

    public void n() {
        new a().execute(this);
    }
}
