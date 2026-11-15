package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class o {

    private static o f19215a;

    private File f19216b;

    private File f19217c;

    private File f19218d;

    private Context f19219e;

    private a f19220f = null;

    static class a {

        private long f19223a;

        private long f19224b;

        private File f19225c;

        private JSONObject f19226d;

        a(File file, byte b10) {
            this(file);
        }

        static void d(a aVar) {
            aVar.f19225c.delete();
        }

        private a(File file) {
            this.f19226d = null;
            this.f19225c = file;
            String[] strArrSplit = file.getName().split("-|\\.");
            if (strArrSplit.length >= 2) {
                this.f19223a = Long.parseLong(strArrSplit[0]);
                this.f19224b = Long.parseLong(strArrSplit[1]);
                return;
            }
            String name = file.getName();
            if (TextUtils.isEmpty(name) || name.length() < 13) {
                return;
            }
            String strSubstring = name.substring(0, 13);
            if (TextUtils.isDigitsOnly(strSubstring)) {
                long j10 = Long.parseLong(strSubstring);
                this.f19223a = j10;
                this.f19224b = j10;
            }
        }

        public JSONObject a() {
            if (this.f19226d == null) {
                try {
                    this.f19226d = new JSONObject(com.apm.insight.l.f.a(this.f19225c.getAbsolutePath(), "\n"));
                } catch (Throwable unused) {
                }
                if (this.f19226d == null) {
                    this.f19226d = new JSONObject();
                }
            }
            return this.f19226d;
        }

        static boolean a(a aVar, long j10) {
            long j11 = aVar.f19223a;
            if (j11 > j10 && j11 - j10 > 604800000) {
                return true;
            }
            long j12 = aVar.f19224b;
            if (j12 >= j10 || j10 - j12 <= 604800000) {
                return aVar.f19225c.lastModified() < j10 && j10 - aVar.f19225c.lastModified() > 604800000;
            }
            return true;
        }
    }

    private o(Context context) {
        File fileC = com.apm.insight.l.j.c(context);
        if (!fileC.exists() || (!fileC.isDirectory() && fileC.delete())) {
            fileC.mkdirs();
            com.apm.insight.runtime.a.b.a();
        }
        this.f19216b = fileC;
        this.f19217c = new File(fileC, "did");
        this.f19218d = new File(fileC, "device_uuid");
        this.f19219e = context;
    }

    public static o a() {
        if (f19215a == null) {
            f19215a = new o(com.apm.insight.e.g());
        }
        return f19215a;
    }

    protected final String b() {
        try {
            return com.apm.insight.l.f.a(this.f19217c.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return "0";
        }
    }

    public final String c() {
        try {
            return com.apm.insight.l.f.a(this.f19218d.getAbsolutePath(), "\n");
        } catch (Throwable unused) {
            return null;
        }
    }

    private ArrayList<a> c(final String str) {
        File[] fileArrListFiles = this.f19216b.listFiles(new FilenameFilter() {
            @Override
            public final boolean accept(File file, String str2) {
                return str2.endsWith(str) && Pattern.compile("^\\d{1,13}-\\d{1,13}.*").matcher(str2).matches();
            }
        });
        ArrayList<a> arrayList = new ArrayList<>();
        if (fileArrListFiles == null) {
            return arrayList;
        }
        com.apm.insight.a.a((Object) ("foundRuntimeContextFiles " + fileArrListFiles.length));
        byte b10 = 0;
        a aVar = null;
        for (File file : fileArrListFiles) {
            try {
                a aVar2 = new a(file, b10);
                arrayList.add(aVar2);
                if (this.f19220f == null && ".ctx".equals(str) && (aVar == null || aVar2.f19224b >= aVar.f19224b)) {
                    aVar = aVar2;
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
            }
        }
        if (this.f19220f == null && aVar != null) {
            this.f19220f = aVar;
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    public final void a(Map<String, Object> map, JSONArray jSONArray) {
        char c10;
        JSONObject jSONObjectA = Header.a(this.f19219e).a(map);
        if (Header.c(jSONObjectA)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f19220f == null) {
            c(".ctx");
        }
        a aVar = this.f19220f;
        if (aVar != null) {
            JSONObject jSONObjectA2 = aVar.a();
            if (Header.c(jSONObjectA2)) {
                c10 = 2;
            } else if (Header.c(jSONObjectA)) {
                c10 = 0;
            } else if (String.valueOf(jSONObjectA.opt("update_version_code")).equals(String.valueOf(jSONObjectA2.opt("update_version_code"))) && Header.d(jSONObjectA2)) {
                c10 = 1;
            } else {
                c10 = 2;
            }
            if (c10 == 1) {
                a(aVar.f19223a, jCurrentTimeMillis, jSONObjectA, jSONArray);
                com.apm.insight.l.f.a(aVar.f19225c);
            } else if (c10 == 2) {
                a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
            }
            try {
                ArrayList<a> arrayListC = c("");
                if (arrayListC.size() <= 6) {
                    return;
                }
                for (a aVar2 : arrayListC) {
                    if (a.a(aVar2, jCurrentTimeMillis)) {
                        a.d(aVar2);
                    }
                }
                return;
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                j.a(th2, "NPTH_CATCH");
                return;
            }
        }
        a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
    }

    public final void b(String str) {
        try {
            com.apm.insight.l.f.a(this.f19218d, str, false);
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public final JSONArray b(long j10) {
        File file;
        String strA;
        Iterator<a> it = c(".allData").iterator();
        while (true) {
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j10 >= next.f19223a && j10 <= next.f19224b) {
                file = next.f19225c;
                break;
            }
        }
        if (file == null) {
            a aVar = null;
            for (a aVar2 : c(".allData")) {
                if (aVar == null || Math.abs(aVar.f19224b - j10) > Math.abs(aVar2.f19224b - j10)) {
                    aVar = aVar2;
                }
            }
            file = aVar == null ? null : aVar.f19225c;
        }
        if (file == null) {
            return null;
        }
        try {
            strA = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
            try {
                return new JSONArray(strA);
            } catch (Throwable th2) {
                th = th2;
                com.apm.insight.c.a();
                j.a(new IOException("content :".concat(String.valueOf(strA)), th), "NPTH_CATCH");
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            strA = null;
        }
    }

    private void a(long j10, long j11, JSONObject jSONObject, JSONArray jSONArray) {
        File file = new File(this.f19216b, j10 + "-" + j11 + ".ctx");
        File file2 = new File(this.f19216b, j10 + "-" + j11 + ".allData");
        try {
            com.apm.insight.l.f.a(file, jSONObject);
            com.apm.insight.l.f.a(file2, jSONArray);
            this.f19220f = new a(file, (byte) 0);
        } catch (IOException e10) {
            com.apm.insight.c.a();
            j.a(e10, "NPTH_CATCH");
        }
    }

    protected final void a(String str) {
        try {
            com.apm.insight.l.f.a(this.f19217c, str, false);
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public final JSONObject a(long j10) {
        JSONObject jSONObject;
        File file;
        boolean z10;
        String strA;
        Iterator<a> it = c(".ctx").iterator();
        while (true) {
            jSONObject = null;
            if (!it.hasNext()) {
                file = null;
                break;
            }
            a next = it.next();
            if (j10 >= next.f19223a && j10 <= next.f19224b) {
                file = next.f19225c;
                break;
            }
        }
        if (file == null) {
            a aVar = null;
            for (a aVar2 : c(".ctx")) {
                if (aVar == null || Math.abs(aVar.f19224b - j10) > Math.abs(aVar2.f19224b - j10)) {
                    aVar = aVar2;
                }
            }
            file = aVar == null ? null : aVar.f19225c;
            z10 = true;
        } else {
            z10 = false;
        }
        if (file != null) {
            try {
                strA = com.apm.insight.l.f.a(file.getAbsolutePath(), "\n");
                try {
                    jSONObject = new JSONObject(strA);
                } catch (Throwable th2) {
                    th = th2;
                    com.apm.insight.c.a();
                    j.a(new IOException("content :".concat(String.valueOf(strA)), th), "NPTH_CATCH");
                }
            } catch (Throwable th3) {
                th = th3;
                strA = null;
            }
        }
        if (jSONObject != null && z10) {
            try {
                jSONObject.put("unauthentic_version", 1);
            } catch (JSONException e10) {
                com.apm.insight.c.a();
                j.a(e10, "NPTH_CATCH");
            }
        }
        return jSONObject;
    }
}
