package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

class y0 {

    final SharedPreferences f31358a;

    static class a {

        private static final long f31359d = TimeUnit.DAYS.toMillis(7);

        final String f31360a;

        final String f31361b;

        final long f31362c;

        private a(String str, String str2, long j10) {
            this.f31360a = str;
            this.f31361b = str2;
            this.f31362c = j10;
        }

        static String a(String str, String str2, long j10) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put(TmcStartParams.KEY_APP_VERSION, str2);
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, j10);
                return jSONObject.toString();
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to encode token: " + e10);
                return null;
            }
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.getString("token"), jSONObject.getString(TmcStartParams.KEY_APP_VERSION), jSONObject.getLong(CampaignEx.JSON_KEY_TIMESTAMP));
            } catch (JSONException e10) {
                Log.w("FirebaseMessaging", "Failed to parse token: " + e10);
                return null;
            }
        }

        boolean b(String str) {
            return System.currentTimeMillis() > this.f31362c + f31359d || !str.equals(this.f31361b);
        }
    }

    public y0(Context context) {
        this.f31358a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a(context, "com.google.android.gms.appid-no-backup");
    }

    private void a(Context context, String str) {
        File file = new File(androidx.core.content.b.getNoBackupFilesDir(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || e()) {
                return;
            }
            c();
        } catch (IOException e10) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error creating file in no backup dir: ");
                sb2.append(e10.getMessage());
            }
        }
    }

    private String b(String str, String str2) {
        return str + "|T|" + str2 + "|*";
    }

    public synchronized void c() {
        this.f31358a.edit().clear().commit();
    }

    public synchronized a d(String str, String str2) {
        return a.c(this.f31358a.getString(b(str, str2), null));
    }

    public synchronized boolean e() {
        return this.f31358a.getAll().isEmpty();
    }

    public synchronized void f(String str, String str2, String str3, String str4) {
        String strA = a.a(str3, str4, System.currentTimeMillis());
        if (strA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f31358a.edit();
        editorEdit.putString(b(str, str2), strA);
        editorEdit.commit();
    }
}
