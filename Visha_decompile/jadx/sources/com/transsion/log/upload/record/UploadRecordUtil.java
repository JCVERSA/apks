package com.transsion.log.upload.record;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.log.upload.record.UploadRecordUtil;
import defpackage.c74;
import defpackage.yi5;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.b;

public final class UploadRecordUtil {
    public static final UploadRecordUtil a = new UploadRecordUtil();
    public static final yi5 b = b.a(new c74() {
        @Override
        public final Object invoke() {
            return UploadRecordUtil.f();
        }
    });

    public static final ExecutorService f() {
        return Executors.newCachedThreadPool();
    }

    public static final void h(Context context) {
        try {
            SharedPreferences sharedPreferencesD = a.d(context);
            SharedPreferences.Editor editorEdit = sharedPreferencesD != null ? sharedPreferencesD.edit() : null;
            if (editorEdit != null) {
                editorEdit.remove("upload_feedback_id");
            }
            if (editorEdit != null) {
                editorEdit.apply();
            }
        } catch (Exception unused) {
        }
    }

    public final ExecutorService c() {
        return (ExecutorService) b.getValue();
    }

    public final SharedPreferences d(Context context) {
        if (context != null) {
            return context.getSharedPreferences("ubt_upload_record", 0);
        }
        return null;
    }

    public final synchronized Map e(Context context) {
        String string;
        Map map;
        try {
            SharedPreferences sharedPreferencesD = d(context);
            if (sharedPreferencesD == null || (string = sharedPreferencesD.getString("upload_feedback_id", "")) == null) {
                string = "";
            }
            map = (Map) new Gson().fromJson(string, new TypeToken<Map<String, ? extends String>>() {
            }.getType());
        } catch (Exception unused) {
            return null;
        } catch (Throwable th) {
            throw th;
        }
        return map != null ? map : null;
    }

    public final synchronized void g(final Context context) {
        c().execute(new Runnable() {
            @Override
            public final void run() {
                UploadRecordUtil.h(context);
            }
        });
    }

    public final synchronized void i(Context context, String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        try {
            SharedPreferences sharedPreferencesD = d(context);
            SharedPreferences.Editor editorEdit = sharedPreferencesD != null ? sharedPreferencesD.edit() : null;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(str, str2);
            String json = new Gson().toJson(linkedHashMap);
            if (editorEdit != null) {
                if (json == null) {
                    json = "";
                }
                editorEdit.putString("upload_feedback_id", json);
            }
            if (editorEdit != null) {
                editorEdit.apply();
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            throw th;
        }
    }
}
