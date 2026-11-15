package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import org.json.JSONObject;

public class yr1 {
    public static volatile yr1 b;
    public Context a;

    public yr1(Context context) {
        if (context == null) {
            throw new NullPointerException("DataCacheManager context can`t be null!");
        }
        this.a = context;
    }

    public static yr1 d(Context context) {
        if (b == null) {
            synchronized (yr1.class) {
                try {
                    if (b == null) {
                        b = new yr1(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public synchronized void a(String str) {
        try {
            SharedPreferences.Editor editorEdit = e().edit();
            editorEdit.remove(str);
            editorEdit.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized void b() {
        try {
            SharedPreferences sharedPreferencesE = e();
            for (String str : sharedPreferencesE.getAll().keySet()) {
                String string = sharedPreferencesE.getString(str, "");
                if (!TextUtils.isEmpty(string) && new JSONObject(string).getLong("expired_time") > System.currentTimeMillis()) {
                    a(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized String c(String str) {
        String string;
        string = "";
        try {
            String string2 = e().getString(str, "");
            if (!TextUtils.isEmpty(string2)) {
                string = new JSONObject(string2).getString("cache_data");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return string;
    }

    public final SharedPreferences e() {
        return this.a.getSharedPreferences("mma.viewabilityjs.data", 0);
    }

    public synchronized void f(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expired_time", System.currentTimeMillis() + 259200000);
            jSONObject.put("cache_data", str2);
            SharedPreferences.Editor editorEdit = e().edit();
            editorEdit.putString(str, jSONObject.toString());
            editorEdit.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
