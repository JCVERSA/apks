package com.transsion.athena.jsbridge;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.webkit.JavascriptInterface;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.athena;
import com.transsion.athena.taaneh.aethna;
import com.transsion.athena.taaneh.anehat;
import com.transsion.athena.taaneh.ehatna;
import hi.a;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class AthenaJsInterface {

    private final Context f41670a;

    public AthenaJsInterface(Context context) {
        this.f41670a = context;
    }

    @JavascriptInterface
    public String getAccountId() {
        return ehanat.b();
    }

    @JavascriptInterface
    public String getAppIds() {
        try {
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = athena.a().iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return jSONArray.toString();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            return "[]";
        }
    }

    @JavascriptInterface
    public String getGAID() {
        return anehat.a();
    }

    @JavascriptInterface
    public long getRealTime() {
        try {
            return com.transsion.athena.ehatna.aethna.b().a(System.currentTimeMillis(), SystemClock.elapsedRealtime());
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            return System.currentTimeMillis();
        }
    }

    @JavascriptInterface
    public String getVAID() {
        try {
            return ehatna.a();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
            return "";
        }
    }

    @JavascriptInterface
    public void track(int i10, String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("track appid = ");
        sb2.append(i10);
        sb2.append(", eventName = ");
        sb2.append(str);
        try {
            Bundle bundle = new Bundle();
            JSONObject jSONObject = new JSONObject(str2);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle.putString(next, jSONObject.get(next).toString());
            }
            new a(str, i10).c(bundle, null).b();
        } catch (Exception e10) {
            aethna.b(Log.getStackTraceString(e10));
        }
    }
}
