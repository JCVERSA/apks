package tb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class f {

    private static final Charset f72629b = Charset.forName("UTF-8");

    private final xb.g f72630a;

    class a extends JSONObject {

        final String f72631a;

        a(String str) throws JSONException {
            this.f72631a = str;
            put("userId", str);
        }
    }

    public f(xb.g gVar) {
        this.f72630a = gVar;
    }

    private static Map e(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, p(jSONObject, next));
        }
        return map;
    }

    private static List f(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            String string = jSONArray.getString(i10);
            try {
                arrayList.add(i.a(string));
            } catch (Exception e10) {
                qb.g.f().l("Failed de-serializing rollouts state. " + string, e10);
            }
        }
        return arrayList;
    }

    private String g(String str) {
        return p(new JSONObject(str), "userId");
    }

    private static String h(Map map) {
        return new JSONObject(map).toString();
    }

    private static String l(List list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                jSONArray.put(new JSONObject(i.f72657a.b(list.get(i10))));
            } catch (JSONException e10) {
                qb.g.f().l("Exception parsing rollout assignment!", e10);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    private static void m(File file) {
        if (file.exists() && file.delete()) {
            qb.g.f().g("Deleted corrupt file: " + file.getAbsolutePath());
        }
    }

    private static void n(File file, String str) {
        if (file.exists() && file.delete()) {
            qb.g.f().g(String.format("Deleted corrupt file: %s\nReason: %s", file.getAbsolutePath(), str));
        }
    }

    private static String o(String str) {
        return new a(str).toString();
    }

    private static String p(JSONObject jSONObject, String str) {
        if (jSONObject.isNull(str)) {
            return null;
        }
        return jSONObject.optString(str, null);
    }

    public File a(String str) {
        return this.f72630a.q(str, "internal-keys");
    }

    public File b(String str) {
        return this.f72630a.q(str, "keys");
    }

    public File c(String str) {
        return this.f72630a.q(str, "rollouts-state");
    }

    public File d(String str) {
        return this.f72630a.q(str, "user-data");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.Closeable] */
    Map i(String str, boolean z10) throws Throwable {
        Throwable th2;
        FileInputStream fileInputStream;
        Exception e10;
        File fileA = z10 ? a(str) : b(str);
        if (!fileA.exists() || fileA.length() == 0) {
            n(fileA, "The file has a length of zero for session: " + str);
            return Collections.emptyMap();
        }
        try {
            try {
                fileInputStream = new FileInputStream(fileA);
                try {
                    Map mapE = e(CommonUtils.A(fileInputStream));
                    CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                    return mapE;
                } catch (Exception e11) {
                    e10 = e11;
                    qb.g.f().l("Error deserializing user metadata.", e10);
                    m(fileA);
                    CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                    return Collections.emptyMap();
                }
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(, "Failed to close user metadata file.");
                throw th2;
            }
        } catch (Exception e12) {
            fileInputStream = null;
            e10 = e12;
        } catch (Throwable th4) {
            ?? r10 = 0;
            th2 = th4;
            CommonUtils.f(r10, "Failed to close user metadata file.");
            throw th2;
        }
    }

    public List j(String str) throws Throwable {
        File fileC = c(str);
        if (!fileC.exists() || fileC.length() == 0) {
            n(fileC, "The file has a length of zero for session: " + str);
            return Collections.emptyList();
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileC);
                try {
                    List listF = f(CommonUtils.A(fileInputStream2));
                    qb.g.f().b("Loaded rollouts state:\n" + listF + "\nfor session " + str);
                    CommonUtils.f(fileInputStream2, "Failed to close rollouts state file.");
                    return listF;
                } catch (Exception e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    qb.g.f().l("Error deserializing rollouts state.", e);
                    m(fileC);
                    CommonUtils.f(fileInputStream, "Failed to close rollouts state file.");
                    return Collections.emptyList();
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    CommonUtils.f(fileInputStream, "Failed to close rollouts state file.");
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String k(String str) throws Throwable {
        FileInputStream fileInputStream;
        File fileD = d(str);
        FileInputStream fileInputStream2 = null;
        if (!fileD.exists() || fileD.length() == 0) {
            qb.g.f().b("No userId set for session " + str);
            m(fileD);
            return null;
        }
        try {
            fileInputStream = new FileInputStream(fileD);
            try {
                try {
                    String strG = g(CommonUtils.A(fileInputStream));
                    qb.g.f().b("Loaded userId " + strG + " for session " + str);
                    CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                    return strG;
                } catch (Exception e10) {
                    e = e10;
                    qb.g.f().l("Error deserializing user metadata.", e);
                    m(fileD);
                    CommonUtils.f(fileInputStream, "Failed to close user metadata file.");
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                CommonUtils.f(fileInputStream2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            CommonUtils.f(fileInputStream2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void q(String str, Map map) throws Throwable {
        r(str, map, false);
    }

    public void r(String str, Map map, boolean z10) throws Throwable {
        File fileA = z10 ? a(str) : b(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String strH = h(map);
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileA), f72629b));
                try {
                    bufferedWriter2.write(strH);
                    bufferedWriter2.flush();
                    CommonUtils.f(bufferedWriter2, "Failed to close key/value metadata file.");
                } catch (Exception e10) {
                    e = e10;
                    bufferedWriter = bufferedWriter2;
                    qb.g.f().l("Error serializing key/value metadata.", e);
                    m(fileA);
                    CommonUtils.f(bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter = bufferedWriter2;
                    CommonUtils.f(bufferedWriter, "Failed to close key/value metadata file.");
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public void s(String str, List list) throws Throwable {
        Throwable th2;
        BufferedWriter bufferedWriter;
        Exception e10;
        File fileC = c(str);
        ?? IsEmpty = list.isEmpty();
        if (IsEmpty != 0) {
            n(fileC, "Rollout state is empty for session: " + str);
            return;
        }
        try {
            try {
                String strL = l(list);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileC), f72629b));
                try {
                    bufferedWriter.write(strL);
                    bufferedWriter.flush();
                    IsEmpty = bufferedWriter;
                } catch (Exception e11) {
                    e10 = e11;
                    qb.g.f().l("Error serializing rollouts state.", e10);
                    m(fileC);
                    IsEmpty = bufferedWriter;
                }
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.f(IsEmpty, "Failed to close rollouts state file.");
                throw th2;
            }
        } catch (Exception e12) {
            bufferedWriter = null;
            e10 = e12;
        } catch (Throwable th4) {
            IsEmpty = 0;
            th2 = th4;
            CommonUtils.f(IsEmpty, "Failed to close rollouts state file.");
            throw th2;
        }
        CommonUtils.f(IsEmpty, "Failed to close rollouts state file.");
    }

    public void t(String str, String str2) throws Throwable {
        File fileD = d(str);
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String strO = o(str2);
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileD), f72629b));
                try {
                    bufferedWriter2.write(strO);
                    bufferedWriter2.flush();
                    CommonUtils.f(bufferedWriter2, "Failed to close user metadata file.");
                } catch (Exception e10) {
                    e = e10;
                    bufferedWriter = bufferedWriter2;
                    qb.g.f().l("Error serializing user metadata.", e);
                    CommonUtils.f(bufferedWriter, "Failed to close user metadata file.");
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter = bufferedWriter2;
                    CommonUtils.f(bufferedWriter, "Failed to close user metadata file.");
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
