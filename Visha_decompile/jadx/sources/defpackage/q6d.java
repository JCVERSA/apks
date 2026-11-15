package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import mgtv.qt.e;
import mgtv.qt.h;
import mgtv.qt.i;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class q6d {
    public Context a;
    public boolean b;

    public q6d(Context context) {
        this(context, (byte) 0);
    }

    public static List a(Context context, String str) throws Throwable {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        if (!y4d.i(str)) {
            File file = new File(str);
            if (file.exists() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
                HashMap map = new HashMap();
                for (File file2 : fileArrListFiles) {
                    if (file2 != null && file2.exists()) {
                        String name = file2.getName();
                        if (file2.isDirectory() || !name.contains(".csv")) {
                            i.c(file2);
                        } else if (!name.endsWith(".lock")) {
                            try {
                                String strSubstring = name.substring(0, name.indexOf(".csv"));
                                StringBuilder sb = new StringBuilder();
                                if (map.containsKey(strSubstring)) {
                                    sb.append((CharSequence) map.get(strSubstring));
                                }
                                String strE = e(context, y4d.b(y4d.j(file2)));
                                if (!TextUtils.isEmpty(strE)) {
                                    sb.append(strE);
                                    map.put(strSubstring, sb);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            file2.delete();
                        }
                    }
                }
                for (String str2 : map.keySet()) {
                    String string = ((StringBuilder) map.get(str2)).toString();
                    if (!TextUtils.isEmpty(string)) {
                        File fileB = i.b(str + (str2 + ".csv-" + System.currentTimeMillis()), y4d.v(string));
                        if (fileB != null && fileB.exists()) {
                            arrayList.add(fileB);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static void b(Context context) {
        String strD = e.d(context);
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append(".qmt");
        sb.append(str);
        sb.append("QD");
        sb.append(str);
        String[] strArr = {strD, sb.toString()};
        for (int i = 0; i < 2; i++) {
            String str2 = strArr[i];
            try {
                a(context, str2);
                f(context, str2);
                i.c(new File(str2));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void c(String str, boolean z) {
        try {
            File[] fileArrListFiles = new File(str).listFiles();
            if (fileArrListFiles != null) {
                int i = 0;
                if (!z && fileArrListFiles.length <= 0) {
                    int length = fileArrListFiles.length;
                    while (i < length) {
                        File file = fileArrListFiles[i];
                        if (file != null && file.exists() && !file.getName().endsWith(".lock")) {
                            file.renameTo(new File(file.getAbsolutePath() + ".lock"));
                        }
                        i++;
                    }
                    return;
                }
                int length2 = fileArrListFiles.length;
                while (i < length2) {
                    File file2 = fileArrListFiles[i];
                    if (file2 != null && file2.exists()) {
                        i.c(file2);
                    }
                    i++;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String d(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appkey", y4d.p(context));
            jSONObject.put("uid", tid.c(context));
            jSONObject.put("sdk", "20250401");
            if ("".equals(m4d.a.optString("rootdir", ""))) {
                jSONObject.put("sm", "1");
            }
            jSONObject = y4d.d(jSONObject);
            jSONObject.put(CmcdData.OBJECT_TYPE_MANIFEST, "1");
            jSONObject.put("type", "3");
        } catch (JSONException e) {
            e.printStackTrace();
        }
        aqd.g();
        return "?".concat(String.valueOf(aqd.e(jSONObject).toString()));
    }

    public static String e(Context context, String str) {
        try {
            return str.contains(context.getPackageName()) ? str : y4d.q(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static void f(Context context, String str) {
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        HashMap map = new HashMap();
        for (File file : fileArrListFiles) {
            if (file != null && file.exists() && file.isFile()) {
                map.put(file.getName(), file);
            }
        }
        try {
            JSONArray jSONArrayOptJSONArray = m4d.a.optJSONArray("truthurls");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put("https://b.qchannel03.cn/n/ard");
            }
            String strD = d(context);
            ArrayList arrayList = new ArrayList();
            int i = m4d.a.optInt("repeatReportTruth", 0) == 0 ? 1 : 0;
            boolean z = false;
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                String strOptString = jSONArrayOptJSONArray.optString(i2, "https://b.qchannel03.cn/n/ard");
                new h();
                h hVarF = e.f(strOptString + (i2 > 0 ? strD + "&r=" + i : strD), new JSONObject(), map);
                StringBuilder sb = new StringBuilder("STATUS:");
                sb.append(hVarF.e());
                Log.d("qlog", sb.toString());
                if (hVarF.e()) {
                    if (!z) {
                        z = true;
                    }
                    if (i != 0) {
                        break;
                    }
                } else {
                    Object objA = hVarF.a();
                    if (objA != null) {
                        arrayList.add(new String[]{strOptString, objA.toString(), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())});
                    }
                }
            }
            c(str, z);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public q6d(Context context, byte b) {
        this.a = context;
        this.b = false;
    }
}
