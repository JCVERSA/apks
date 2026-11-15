package com.apm.insight.k;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.l.n;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b {

    private static volatile b f18957b;

    private Context f18958a;

    private C0159b f18962f;

    private HashMap<String, C0159b> f18963g;

    private List<File> f18959c = new ArrayList();

    private List<File> f18960d = new ArrayList();

    private int f18961e = -1;

    private volatile boolean f18964h = false;

    private Runnable f18965i = new Runnable() {
        @Override
        public final void run() throws Throwable {
            b.this.f();
        }
    };

    private Runnable f18966j = new Runnable() {
        @Override
        public final void run() throws Throwable {
            b.this.d();
        }
    };

    static class C0159b {

        String f18981a;

        a f18984d;

        a f18985e;

        List<a> f18982b = new ArrayList();

        List<a> f18983c = new ArrayList();

        boolean f18986f = false;

        int f18987g = 0;

        C0159b(String str) {
            this.f18981a = str;
        }
    }

    private b(Context context) {
        this.f18958a = context;
    }

    public void d() throws Throwable {
        if (this.f18964h || this.f18963g == null) {
            return;
        }
        if (!com.apm.insight.l.k.b(this.f18958a)) {
            e();
        }
        if (this.f18961e == -1) {
            if (com.apm.insight.runtime.a.a() && com.apm.insight.runtime.a.f()) {
                this.f18961e = 1;
            } else {
                this.f18961e = 0;
            }
        }
        boolean z10 = this.f18961e == 1;
        com.apm.insight.runtime.f fVar = new com.apm.insight.runtime.f(this.f18958a);
        Iterator<C0159b> it = this.f18963g.values().iterator();
        while (it.hasNext()) {
            b(it.next(), z10, fVar);
        }
        Iterator<C0159b> it2 = this.f18963g.values().iterator();
        while (it2.hasNext()) {
            a(it2.next(), z10, fVar);
        }
        Iterator<C0159b> it3 = this.f18963g.values().iterator();
        while (it3.hasNext()) {
            com.apm.insight.l.f.a(com.apm.insight.l.j.a(this.f18958a, it3.next().f18981a));
        }
        fVar.a();
        com.apm.insight.runtime.b.a();
        e();
    }

    private void e() {
        this.f18964h = true;
        this.f18963g = null;
        NativeImpl.j();
    }

    public void f() throws Throwable {
        if (this.f18964h) {
            return;
        }
        if (!com.apm.insight.l.k.b(this.f18958a) || (System.currentTimeMillis() - com.apm.insight.e.j() <= 5000 && com.apm.insight.e.i().isApmExists() && !Npth.hasCrash())) {
            m.a().a(this.f18965i, 5000L);
        } else {
            d();
        }
    }

    private void g() {
        File[] fileArrListFiles = com.apm.insight.l.j.i(this.f18958a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (int i10 = 0; i10 < fileArrListFiles.length && i10 < 5; i10++) {
            File file = fileArrListFiles[i10];
            if (file.getName().endsWith(".atmp")) {
                com.apm.insight.a.a.a();
                file.getAbsolutePath();
            } else {
                try {
                    com.apm.insight.f.b bVarC = com.apm.insight.l.f.c(file.getAbsolutePath());
                    if (bVarC != null) {
                        if (bVarC.b() != null) {
                            bVarC.b().put("upload_scene", "launch_scan");
                        }
                        if (e.a(e.d(), bVarC.e(), bVarC.d(), bVarC.f(), bVarC.g())) {
                            com.apm.insight.l.f.a(file);
                            String strC = bVarC.c();
                            if (!TextUtils.isEmpty(strC)) {
                                com.apm.insight.l.f.a(new File(strC));
                            }
                        }
                    } else {
                        com.apm.insight.l.f.a(file);
                    }
                } catch (Throwable th2) {
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                }
            }
        }
    }

    public static b a() {
        if (f18957b == null) {
            synchronized (b.class) {
                try {
                    if (f18957b == null) {
                        f18957b = new b(com.apm.insight.e.g());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f18957b;
    }

    public final void b() {
        try {
            if (!this.f18964h && com.apm.insight.l.a.b(com.apm.insight.e.g())) {
                m.a().a(this.f18966j);
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean c() {
        return this.f18964h;
    }

    private void b(HashMap<String, C0159b> map) {
        File[] fileArrListFiles = com.apm.insight.l.j.d(this.f18958a).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i10 = 0; i10 < fileArrListFiles.length && i10 < 5; i10++) {
            File file = fileArrListFiles[i10];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith("G")) {
                    String name = file.getName();
                    C0159b c0159b = map.get(name);
                    if (c0159b == null) {
                        c0159b = new C0159b(name);
                        map.put(name, c0159b);
                    }
                    c0159b.f18983c.add(new a(file, CrashType.NATIVE));
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    static class a {

        File f18976a;

        long f18977b;

        long f18978c;

        @Nullable
        CrashType f18979d;

        String f18980e;

        a(File file, @Nullable CrashType crashType) {
            this.f18977b = -1L;
            this.f18978c = -1L;
            this.f18976a = file;
            this.f18979d = crashType;
            this.f18980e = file.getName();
        }

        a(File file, long j10, @Nullable CrashType crashType) {
            this.f18978c = -1L;
            this.f18976a = file;
            this.f18977b = j10;
            this.f18979d = crashType;
            this.f18980e = file.getName();
        }
    }

    public final void a(boolean z10) throws Throwable {
        if (!Npth.isStopUpload() && z10) {
            if (this.f18962f == null) {
                this.f18962f = new C0159b("old_uuid");
                HashMap<String, C0159b> map = new HashMap<>();
                this.f18963g = map;
                a(map);
                a(this.f18963g, this.f18962f);
                com.apm.insight.l.f.a(com.apm.insight.l.j.b(this.f18958a));
                b(this.f18963g);
                b(this.f18962f, true, null);
                a(this.f18962f, true, null);
                this.f18962f = null;
                if (this.f18963g.isEmpty()) {
                    e();
                } else {
                    f();
                }
            }
            g();
            com.apm.insight.a.c();
        }
    }

    private void b(final C0159b c0159b, boolean z10, @Nullable com.apm.insight.runtime.f fVar) {
        boolean z11;
        if (c0159b.f18983c.size() <= 1 && c0159b.f18983c.isEmpty()) {
            c0159b.f18985e = c0159b.f18984d;
            return;
        }
        boolean zB = com.apm.insight.l.k.b(this.f18958a);
        c0159b.f18985e = c0159b.f18984d;
        com.apm.insight.nativecrash.a aVar = new com.apm.insight.nativecrash.a(this.f18958a);
        Iterator<a> it = c0159b.f18983c.iterator();
        while (it.hasNext()) {
            a next = it.next();
            final File file = next.f18976a;
            try {
                aVar.a(file);
                JSONObject jSONObjectA = a(aVar);
                if (jSONObjectA != null && jSONObjectA.length() != 0) {
                    if (jSONObjectA.length() != 0) {
                        if (!z10) {
                            long jOptLong = jSONObjectA.optLong("crash_time");
                            try {
                                a aVar2 = c0159b.f18985e;
                                if (aVar2 == null) {
                                    c0159b.f18985e = next;
                                    c0159b.f18986f = true;
                                    if (fVar == null || fVar.a("default")) {
                                        it = it;
                                        z11 = zB;
                                    } else {
                                        aVar.i();
                                    }
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                    com.apm.insight.l.f.a(file);
                                } else {
                                    it = it;
                                    try {
                                        if (c0159b.f18986f) {
                                            z11 = zB;
                                        } else {
                                            z11 = zB;
                                            try {
                                                if (jOptLong < aVar2.f18977b) {
                                                    c0159b.f18985e = next;
                                                    if (fVar != null && !fVar.a("default")) {
                                                        aVar.i();
                                                        zB = z11;
                                                        it = it;
                                                    } else {
                                                        a(file);
                                                        c0159b.f18986f = true;
                                                    }
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        }
                                        com.apm.insight.entity.a.a(jSONObjectA, "filters", "aid", String.valueOf(jSONObjectA.optJSONObject("header").opt("aid")));
                                        jSONObjectA.optJSONObject("header").put("aid", Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z11 = zB;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z11 = zB;
                            }
                        } else {
                            it = it;
                            z11 = zB;
                            if (fVar != null && !fVar.a("default")) {
                                aVar.i();
                            }
                        }
                        try {
                            com.apm.insight.entity.a.a(jSONObjectA, "filters", "start_uuid", c0159b.f18981a);
                            com.apm.insight.entity.a.a(jSONObjectA, "filters", "crash_thread_name", jSONObjectA.optString("crash_thread_name", TmcConstants.ROUTE_UNKNOWN));
                            if (z11) {
                                c.a aVar3 = new c.a(jSONObjectA, CrashType.NATIVE);
                                com.apm.insight.entity.b.a(jSONObjectA, com.apm.insight.entity.b.a(aVar3.c(), aVar3.a(), o.a().b(aVar3.b() == -1 ? System.currentTimeMillis() : aVar3.b())), new com.apm.insight.entity.b.a() {
                                    @Override
                                    public final void a(JSONObject jSONObject) {
                                        d.a();
                                        d.a(jSONObject, file, com.apm.insight.l.j.a(b.this.f18958a, c0159b.f18981a));
                                    }
                                });
                                if (!aVar.i()) {
                                    aVar.f();
                                }
                            }
                            c.a(CrashType.NATIVE, jSONObjectA);
                        } catch (Throwable th5) {
                            th = th5;
                            com.apm.insight.c.a();
                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                            com.apm.insight.l.f.a(file);
                        }
                    } else {
                        it = it;
                        z11 = zB;
                    }
                    zB = z11;
                    it = it;
                } else {
                    it = it;
                    z11 = zB;
                    aVar.i();
                    zB = z11;
                    it = it;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        }
    }

    private void a(HashMap<String, C0159b> map) {
        File[] fileArrListFiles = com.apm.insight.l.j.f(this.f18958a).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i10 = 0; i10 < fileArrListFiles.length && i10 < 5; i10++) {
            File file = fileArrListFiles[i10];
            try {
                if (!file.isDirectory()) {
                    com.apm.insight.l.f.a(file);
                } else if (file.getName().endsWith("G")) {
                    String name = file.getName();
                    C0159b c0159b = map.get(name);
                    if (c0159b == null) {
                        c0159b = new C0159b(name);
                        map.put(name, c0159b);
                    }
                    JSONArray jSONArrayA = com.apm.insight.nativecrash.b.a(com.apm.insight.l.j.l(file), com.apm.insight.l.j.m(file));
                    int length = jSONArrayA.length();
                    c0159b.f18987g = length;
                    if (length > 0) {
                        try {
                            com.apm.insight.l.f.a(com.apm.insight.l.j.n(file), jSONArrayA);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
                com.apm.insight.l.f.a(file);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00c4  */
    private void a(HashMap<String, C0159b> map, C0159b c0159b) {
        byte b10;
        CrashType crashType;
        File[] fileArrListFiles = com.apm.insight.l.j.a(this.f18958a).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        Arrays.sort(fileArrListFiles, Collections.reverseOrder());
        char c10 = 0;
        int i10 = 0;
        while (i10 < fileArrListFiles.length) {
            File file = fileArrListFiles[i10];
            try {
                if (com.apm.insight.e.a.a().a(file.getAbsolutePath())) {
                    com.apm.insight.l.f.a(file);
                } else if (!com.apm.insight.l.f.e(file) && !com.apm.insight.g.a.a().b(file.getName())) {
                    if (file.isFile()) {
                        com.apm.insight.l.f.a(file);
                    } else {
                        String name = file.getName();
                        if (name.endsWith("G")) {
                            String[] strArrSplit = name.split("_");
                            if (strArrSplit.length < 5) {
                                c0159b.f18982b.add(new a(file, null));
                            } else {
                                try {
                                    long j10 = Long.parseLong(strArrSplit[c10]);
                                    long j11 = Long.parseLong(strArrSplit[4]);
                                    String str = strArrSplit[2];
                                    String str2 = strArrSplit[1];
                                    int iHashCode = str2.hashCode();
                                    if (iHashCode != -1109843021) {
                                        if (iHashCode != 96741) {
                                            if (iHashCode == 3254818 && str2.equals("java")) {
                                                b10 = 1;
                                            } else {
                                                b10 = -1;
                                            }
                                        } else if (str2.equals("anr")) {
                                            b10 = 2;
                                        } else {
                                            b10 = -1;
                                        }
                                    } else if (str2.equals("launch")) {
                                        b10 = 0;
                                    } else {
                                        b10 = -1;
                                    }
                                    if (b10 == 0) {
                                        crashType = CrashType.LAUNCH;
                                    } else if (b10 != 1) {
                                        crashType = b10 != 2 ? null : CrashType.ANR;
                                    } else {
                                        crashType = CrashType.JAVA;
                                    }
                                    C0159b c0159b2 = map.get(str);
                                    if (c0159b2 == null) {
                                        c0159b2 = new C0159b(str);
                                        map.put(str, c0159b2);
                                    }
                                    a aVar = new a(file, j10, crashType);
                                    aVar.f18978c = j11;
                                    a aVar2 = c0159b2.f18984d;
                                    if ((aVar2 == null || aVar2.f18977b > aVar.f18977b) && crashType != null && crashType != CrashType.ANR && !name.contains("ignore")) {
                                        c0159b2.f18984d = aVar;
                                    }
                                    c0159b2.f18982b.add(aVar);
                                } catch (Throwable unused) {
                                    c0159b.f18982b.add(new a(file, null));
                                    com.apm.insight.c.a();
                                    com.apm.insight.runtime.j.a(new RuntimeException("err format crashTime:".concat(name)), "NPTH_CATCH");
                                }
                            }
                        } else {
                            com.apm.insight.l.f.a(file);
                        }
                    }
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a();
                com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
            }
            i10++;
            c10 = 0;
        }
    }

    private static JSONObject a(com.apm.insight.nativecrash.a aVar) {
        JSONObject jSONObjectB = aVar.b();
        if (jSONObjectB != null && jSONObjectB.length() != 0) {
            return jSONObjectB;
        }
        if (com.apm.insight.e.d()) {
            aVar.j();
        }
        if (!aVar.a()) {
            aVar.i();
            return null;
        }
        if (!aVar.d()) {
            aVar.i();
            return null;
        }
        if (aVar.e()) {
            aVar.i();
            return null;
        }
        aVar.c();
        return aVar.h();
    }

    private void a(final C0159b c0159b, boolean z10, @Nullable com.apm.insight.runtime.f fVar) {
        Iterator<a> it;
        final File file;
        CrashType crashType;
        if (c0159b.f18982b.isEmpty()) {
            return;
        }
        if (c0159b.f18985e == null) {
            c0159b.f18985e = c0159b.f18984d;
        }
        for (Iterator<a> it2 = c0159b.f18982b.iterator(); it2.hasNext(); it2 = it) {
            a next = it2.next();
            try {
                File file2 = next.f18976a;
                CrashType crashType2 = next.f18979d;
                it = it2;
                try {
                    final com.apm.insight.f.b bVarA = a(file2, crashType2, c0159b.f18981a, next.f18977b, next.f18978c);
                    if (bVarA == null) {
                        com.apm.insight.l.f.a(file2);
                    } else {
                        JSONObject jSONObjectB = bVarA.b();
                        if (jSONObjectB == null) {
                            com.apm.insight.l.f.a(file2);
                        } else {
                            JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject("header");
                            if (jSONObjectOptJSONObject == null) {
                                com.apm.insight.l.f.a(file2);
                            } else {
                                if (crashType2 == null) {
                                    file = file2;
                                    if (new File(file, file2.getName()).exists() || file.getName().split("_").length < 5) {
                                        if (e.b(bVarA.a(), jSONObjectB.toString()).a()) {
                                            com.apm.insight.l.f.a(file);
                                        }
                                    }
                                } else {
                                    file = file2;
                                }
                                File fileA = com.apm.insight.entity.b.a(file);
                                if (!fileA.exists()) {
                                    com.apm.insight.l.f.a(file);
                                } else {
                                    try {
                                        JSONArray jSONArray = new JSONArray(com.apm.insight.l.f.a(fileA, "\n"));
                                        JSONObject jSONObjectOptJSONObject2 = crashType2 == CrashType.LAUNCH ? ((JSONArray) jSONObjectB.opt("data")).optJSONObject(0) : jSONObjectB;
                                        if ((!z10 && c0159b.f18985e != next) || next.f18980e.contains("ignore")) {
                                            try {
                                                com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "aid", String.valueOf(jSONObjectOptJSONObject.opt("aid")));
                                                crashType = crashType2;
                                                try {
                                                    com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "has_ignore", String.valueOf(next.f18980e.contains("ignore")));
                                                    jSONObjectOptJSONObject.put("aid", Sdk$SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE);
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    com.apm.insight.c.a();
                                                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                crashType = crashType2;
                                            }
                                        } else {
                                            crashType = crashType2;
                                            if (fVar != null && !fVar.a(jSONObjectOptJSONObject2.optString("crash_md5", "default"))) {
                                                com.apm.insight.l.f.a(next.f18976a);
                                            }
                                        }
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "start_uuid", c0159b.f18981a);
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "leak_threads_count", String.valueOf(c0159b.f18987g));
                                        com.apm.insight.entity.a.a(jSONObjectOptJSONObject2, "filters", "crash_thread_name", jSONObjectOptJSONObject2.optString("crash_thread_name", TmcConstants.ROUTE_UNKNOWN));
                                        try {
                                            com.apm.insight.entity.b.a(jSONObjectB, jSONArray, new com.apm.insight.entity.b.a() {
                                                @Override
                                                public final void a(JSONObject jSONObject) {
                                                    e.a(bVarA.a(), jSONObject.toString(), new File(file, "logZip"), com.apm.insight.l.j.a(b.this.f18958a, c0159b.f18981a));
                                                }
                                            });
                                            if (!com.apm.insight.l.f.a(file)) {
                                                com.apm.insight.e.a.a().a(com.apm.insight.d.a.b(file.getAbsolutePath()));
                                            }
                                            c.a(crashType, jSONObjectB);
                                        } catch (Throwable th4) {
                                            th = th4;
                                            com.apm.insight.c.a();
                                            com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                                            com.apm.insight.l.f.a(next.f18976a);
                                        }
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    com.apm.insight.c.a();
                    com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                    com.apm.insight.l.f.a(next.f18976a);
                }
            } catch (Throwable th6) {
                th = th6;
                it = it2;
            }
        }
    }

    private static boolean a(File file) {
        String[] list = file.list();
        if (list == null) {
            return false;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && str.endsWith("")) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    private com.apm.insight.f.b a(File file, CrashType crashType, String str, long j10, long j11) {
        com.apm.insight.f.b bVar;
        try {
            try {
                if (file.isFile()) {
                    com.apm.insight.l.f.a(file);
                    return null;
                }
                boolean z10 = crashType == CrashType.LAUNCH;
                if (crashType == null) {
                    try {
                        return com.apm.insight.l.f.b(new File(file, file.getName()).getAbsolutePath());
                    } catch (Throwable th2) {
                        th = th2;
                        bVar = null;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                }
                com.apm.insight.f.b bVarA = com.apm.insight.l.f.a(file, crashType);
                try {
                    JSONObject jSONObjectB = bVarA.b();
                    try {
                        if (bVarA.b() != null) {
                            if (crashType == CrashType.ANR) {
                                return bVarA;
                            }
                            jSONObjectB.put("crash_time", j10);
                            jSONObjectB.put("app_start_time", j11);
                            JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject("header");
                            if (jSONObjectOptJSONObject == null) {
                                jSONObjectOptJSONObject = Header.a(j10).f();
                            } else if (z10) {
                                jSONObjectB.remove("header");
                            }
                            String strOptString = jSONObjectOptJSONObject.optString("sdk_version_name", null);
                            if (strOptString == null) {
                                strOptString = "2008-20250701130429";
                            }
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "sdk_version", strOptString);
                            JSONArray jSONArrayOptJSONArray = jSONObjectB.optJSONArray("logcat");
                            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() == 0) {
                                jSONObjectB.put("logcat", com.apm.insight.runtime.h.a(str));
                            }
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_dump", "true");
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_logcat", String.valueOf(!com.apm.insight.a.a(jSONObjectB, "logcat")));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "memory_leak", String.valueOf(com.apm.insight.entity.a.a(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "fd_leak", String.valueOf(com.apm.insight.entity.a.b(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "threads_leak", String.valueOf(com.apm.insight.entity.a.c(str)));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_devices", String.valueOf(Header.a()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_runtime", String.valueOf(NativeImpl.f()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_x86_devices", String.valueOf(Header.b()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_meminfo_file", String.valueOf(com.apm.insight.l.j.d(str).exists()));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_root", String.valueOf(com.apm.insight.nativecrash.a.k()));
                            jSONObjectB.put("launch_did", com.apm.insight.i.a.a(this.f18958a));
                            jSONObjectB.put("crash_uuid", file.getName());
                            try {
                                long j12 = Long.parseLong(com.apm.insight.runtime.b.a(j10, str));
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", Math.abs(j12 - j10) < 60000 ? "< 60s" : "> 60s");
                                jSONObjectB.put("lastAliveTime", String.valueOf(j12));
                            } catch (Throwable unused) {
                                jSONObjectB.put("lastAliveTime", TmcConstants.ROUTE_UNKNOWN);
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", TmcConstants.ROUTE_UNKNOWN);
                            }
                            jSONObjectB.put("has_dump", "true");
                            if (jSONObjectB.opt(PlaceTypes.STORAGE) == null) {
                                com.apm.insight.e.g();
                                com.apm.insight.entity.a.a(jSONObjectB, n.a());
                            }
                            if (Header.b(jSONObjectOptJSONObject)) {
                                com.apm.insight.entity.a.a(jSONObjectB, "filters", "unauthentic_version", "unauthentic_version");
                            }
                            com.apm.insight.entity.d.b(jSONObjectB);
                            bVarA.b().put("upload_scene", "launch_scan");
                            if (z10) {
                                JSONObject jSONObject = new JSONObject();
                                jSONObjectB.put("event_type", "start_crash");
                                jSONObjectB.put("stack", jSONObjectB.remove("data"));
                                jSONObject.put("data", new JSONArray().put(jSONObjectB));
                                jSONObject.put("header", jSONObjectOptJSONObject);
                                bVarA.a(jSONObject);
                            } else {
                                jSONObjectB.put("isJava", 1);
                            }
                        } else {
                            com.apm.insight.l.f.a(file);
                        }
                        return bVarA;
                    } catch (Throwable th3) {
                        th = th3;
                        bVar = bVarA;
                        com.apm.insight.l.f.a(file);
                        com.apm.insight.c.a();
                        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
                        return bVar;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            bVar = null;
        }
        com.apm.insight.l.f.a(file);
        com.apm.insight.c.a();
        com.apm.insight.runtime.j.a(th, "NPTH_CATCH");
        return bVar;
    }
}
