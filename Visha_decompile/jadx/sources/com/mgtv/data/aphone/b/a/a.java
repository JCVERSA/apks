package com.mgtv.data.aphone.b.a;

import android.content.Context;
import android.os.AsyncTask;
import androidx.annotation.Nullable;
import com.hunantv.imgo.util.b;
import com.mgtv.data.aphone.core.constants.EventContants;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.task.g;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.m;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

public class a extends AsyncTask<String, Integer, com.mgtv.data.aphone.b.b.a> {
    private Context c;
    private String d;
    private HashMap<String, String> e;
    private com.mgtv.data.aphone.b.c.a f;
    private String g;
    private String h;
    protected m b = new m(null);
    ConcurrentHashMap<String, g> a = new ConcurrentHashMap<>();

    public a(Context context, String str, String str2, String str3, HashMap<String, String> map, com.mgtv.data.aphone.b.c.a aVar) {
        this.c = context;
        this.g = str;
        this.h = str2;
        this.d = str3;
        this.e = map;
        this.f = aVar;
    }

    @Override
    public synchronized com.mgtv.data.aphone.b.b.a doInBackground(String... strArr) {
        com.mgtv.data.aphone.b.b.a aVar = new com.mgtv.data.aphone.b.b.a();
        if (this.c == null) {
            return null;
        }
        if (strArr[0] == null) {
            aVar.b = -1;
            aVar.c = "请求地址为空";
            return aVar;
        }
        try {
            return new com.mgtv.data.aphone.b.a().a(strArr[0], this.g, this.h, this.d, this.e);
        } catch (Exception e) {
            aVar.b = -1;
            aVar.c = e.getMessage();
            c.b("big_data_sdk", "################  doInBackground() catch  " + e.toString());
            return aVar;
        }
    }

    @Override
    public void onPostExecute(com.mgtv.data.aphone.b.b.a aVar) {
        if (aVar == null) {
            com.mgtv.data.aphone.b.b.a aVar2 = new com.mgtv.data.aphone.b.b.a();
            aVar2.b = -1;
            aVar2.c = "请求方式错误";
            aVar2.d = "";
            this.f.a(aVar);
            return;
        }
        this.f.a(aVar);
    }

    public void a(String str, HashMap<String, String> map) {
        HttpParams httpParams = new HttpParams();
        try {
            if (this.d.equals("POST")) {
                HttpParams.Type type = HttpParams.Type.HEADER;
                httpParams.put("Content-Type", "application/json", type);
                httpParams.put("User-Agent", b.G(), type);
                httpParams.setBodyJson(a(this.g, new JSONObject(map).toString()));
            } else {
                httpParams.putParams(map);
            }
            c.a("big_data_sdk", "$$$$$$$$$$$$$$$ params:" + httpParams + "  p: " + map);
            this.b.a(true).a(str, httpParams, new com.mgtv.data.aphone.core.a.a<Object>() {
                @Override
                public void a(Object obj) {
                    com.mgtv.data.aphone.b.b.a aVar = new com.mgtv.data.aphone.b.b.a();
                    aVar.a = e().getHttpStatus();
                    aVar.d = e().getBodyText();
                    aVar.b = 0;
                    aVar.e = e().getFinalUrl();
                    aVar.f = e().getMethod();
                    a.this.f.a(aVar);
                }

                @Override
                public void b(Object obj) {
                }

                @Override
                @Deprecated
                public void a(Object obj, int i, int i2, @Nullable String str2, @Nullable Throwable th) {
                    com.mgtv.data.aphone.b.b.a aVar = new com.mgtv.data.aphone.b.b.a();
                    aVar.a = e().getHttpStatus();
                    aVar.d = e().getBodyText();
                    aVar.e = e().getFinalUrl();
                    aVar.b = -1;
                    aVar.f = e().getMethod();
                    a.this.f.a(aVar);
                }
            });
        } catch (Exception unused) {
        }
    }

    private String a(String str, String str2) {
        if (!str.equals(EventContants.EventType.EVENT_APPLS.getEventId()) && !str.equals(EventContants.EventType.EVENT_PHONEWIFI.getEventId()) && !str.equals(EventContants.EventType.EVENT_OFLHB.getEventId())) {
            return str2.toString();
        }
        return str2.toString().replace("\\", "").replace("\"[", "[").replace("]\"", "]");
    }
}
