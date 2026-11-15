package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class wad {
    public static String a(Context context) {
        try {
            JSONArray jSONArray = new JSONArray();
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            PackageManager packageManager = context.getPackageManager();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            int size = listQueryIntentActivities.size();
            for (int i = 0; i < size; i++) {
                ActivityInfo activityInfo = listQueryIntentActivities.get(i).activityInfo;
                ApplicationInfo applicationInfo = activityInfo.applicationInfo;
                if (applicationInfo == null) {
                    String str = activityInfo.packageName;
                    CharSequence charSequenceLoadLabel = activityInfo.loadLabel(packageManager);
                    JSONObject jSONObject = new JSONObject();
                    if (charSequenceLoadLabel != null) {
                        jSONObject.put("name", charSequenceLoadLabel.toString());
                    }
                    jSONObject.put("packet", str);
                    jSONArray.put(jSONObject);
                } else if ((applicationInfo.flags & 1) == 0) {
                    String str2 = applicationInfo.packageName;
                    CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                    JSONObject jSONObject2 = new JSONObject();
                    if (applicationLabel != null) {
                        jSONObject2.put("name", applicationLabel.toString());
                    }
                    jSONObject2.put("packet", str2);
                    jSONArray.put(jSONObject2);
                }
            }
            return b(context, jSONArray);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b(Context context, JSONArray jSONArray) {
        String strB = u3d.b(context, "mgmi_app_store_cache", "");
        if (TextUtils.isEmpty(strB)) {
            String string = jSONArray.toString();
            qwd.c(string);
            return string;
        }
        String string2 = jSONArray.toString();
        if (qwd.c(string2).equals(strB)) {
            return null;
        }
        return string2;
    }
}
