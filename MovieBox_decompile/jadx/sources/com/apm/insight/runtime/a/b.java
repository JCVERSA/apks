package com.apm.insight.runtime.a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b {

    private static boolean f19120a = true;

    private static boolean f19121b = false;

    private static boolean f19122c = false;

    private static int f19123d = 1;

    private static boolean f19124e = false;

    private static long f19125f = -1;

    private static volatile b f19126z;
    private int B;

    private Application f19127g;

    private Context f19128h;

    private String f19134n;

    private long f19135o;

    private String f19136p;

    private long f19137q;

    private String f19138r;

    private long f19139s;

    private String f19140t;

    private long f19141u;

    private String f19142v;

    private long f19143w;

    private List<String> f19129i = new ArrayList();

    private List<Long> f19130j = new ArrayList();

    private List<String> f19131k = new ArrayList();

    private List<Long> f19132l = new ArrayList();

    private LinkedList<a> f19133m = new LinkedList<>();

    private boolean f19144x = false;

    private long f19145y = -1;
    private int A = 50;

    static class a {

        String f19147a;

        String f19148b;

        long f19149c;

        a(String str, String str2, long j10) {
            this.f19148b = str2;
            this.f19149c = j10;
            this.f19147a = str;
        }

        public final String toString() {
            return com.apm.insight.l.b.a().format(new Date(this.f19149c)) + " : " + this.f19147a + ' ' + this.f19148b;
        }
    }

    private b(@NonNull Application application) {
        this.f19128h = application;
        this.f19127g = application;
        if (application != null) {
            try {
                this.f19127g.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() {
                    @Override
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                        b.this.f19134n = activity.getClass().getName();
                        b.this.f19135o = System.currentTimeMillis();
                        boolean unused = b.f19121b = bundle != null;
                        boolean unused2 = b.f19122c = true;
                        b.this.f19129i.add(b.this.f19134n);
                        b.this.f19130j.add(Long.valueOf(b.this.f19135o));
                        b bVar = b.this;
                        b.a(bVar, bVar.f19134n, b.this.f19135o, "onCreate");
                    }

                    @Override
                    public final void onActivityDestroyed(Activity activity) {
                        String name = activity.getClass().getName();
                        int iIndexOf = b.this.f19129i.indexOf(name);
                        if (iIndexOf >= 0 && iIndexOf < b.this.f19129i.size()) {
                            b.this.f19129i.remove(iIndexOf);
                            b.this.f19130j.remove(iIndexOf);
                        }
                        b.this.f19131k.add(name);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        b.this.f19132l.add(Long.valueOf(jCurrentTimeMillis));
                        b.a(b.this, name, jCurrentTimeMillis, "onDestroy");
                    }

                    @Override
                    public final void onActivityPaused(Activity activity) {
                        b.this.f19140t = activity.getClass().getName();
                        b.this.f19141u = System.currentTimeMillis();
                        b.l(b.this);
                        if (b.this.B == 0) {
                            b.this.f19144x = false;
                            boolean unused = b.f19122c = false;
                            b.this.f19145y = SystemClock.uptimeMillis();
                        } else if (b.this.B < 0) {
                            b.n(b.this);
                            b.this.f19144x = false;
                            boolean unused2 = b.f19122c = false;
                            b.this.f19145y = SystemClock.uptimeMillis();
                        }
                        b bVar = b.this;
                        b.a(bVar, bVar.f19140t, b.this.f19141u, "onPause");
                    }

                    @Override
                    public final void onActivityResumed(Activity activity) {
                        b.this.f19138r = activity.getClass().getName();
                        b.this.f19139s = System.currentTimeMillis();
                        b.g(b.this);
                        if (!b.this.f19144x) {
                            if (b.f19120a) {
                                b.k();
                                int unused = b.f19123d = 1;
                                long unused2 = b.f19125f = b.this.f19139s;
                            }
                            if (!b.this.f19138r.equals(b.this.f19140t)) {
                                return;
                            }
                            if (b.f19122c && !b.f19121b) {
                                int unused3 = b.f19123d = 4;
                                long unused4 = b.f19125f = b.this.f19139s;
                                return;
                            } else if (!b.f19122c) {
                                int unused5 = b.f19123d = 3;
                                long unused6 = b.f19125f = b.this.f19139s;
                                return;
                            }
                        }
                        b.this.f19144x = true;
                        b bVar = b.this;
                        b.a(bVar, bVar.f19138r, b.this.f19139s, "onResume");
                    }

                    @Override
                    public final void onActivityStarted(Activity activity) {
                        b.this.f19136p = activity.getClass().getName();
                        b.this.f19137q = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f19136p, b.this.f19137q, TmcConstants.NAVIGATION_ON_START);
                    }

                    @Override
                    public final void onActivityStopped(Activity activity) {
                        b.this.f19142v = activity.getClass().getName();
                        b.this.f19143w = System.currentTimeMillis();
                        b bVar = b.this;
                        b.a(bVar, bVar.f19142v, b.this.f19143w, "onStop");
                    }

                    @Override
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    static int g(b bVar) {
        int i10 = bVar.B;
        bVar.B = i10 + 1;
        return i10;
    }

    static int l(b bVar) {
        int i10 = bVar.B;
        bVar.B = i10 - 1;
        return i10;
    }

    static int n(b bVar) {
        bVar.B = 0;
        return 0;
    }

    static boolean k() {
        f19120a = false;
        return false;
    }

    private JSONArray n() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f19129i;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.f19129i.size(); i10++) {
                try {
                    jSONArray.put(a(this.f19129i.get(i10), this.f19130j.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray o() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.f19131k;
        if (list != null && !list.isEmpty()) {
            for (int i10 = 0; i10 < this.f19131k.size(); i10++) {
                try {
                    jSONArray.put(a(this.f19131k.get(i10), this.f19132l.get(i10).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    public final JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        if (com.apm.insight.e.w()) {
            try {
                jSONObject.put("last_create_activity", a(this.f19134n, this.f19135o));
                jSONObject.put("last_start_activity", a(this.f19136p, this.f19137q));
                jSONObject.put("last_resume_activity", a(this.f19138r, this.f19139s));
                jSONObject.put("last_pause_activity", a(this.f19140t, this.f19141u));
                jSONObject.put("last_stop_activity", a(this.f19142v, this.f19143w));
                jSONObject.put("alive_activities", n());
                jSONObject.put("finish_activities", o());
            } catch (JSONException unused) {
            }
        }
        return jSONObject;
    }

    @NonNull
    public final String h() {
        return String.valueOf(this.f19138r);
    }

    public final JSONArray i() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = new ArrayList(this.f19133m).iterator();
        while (it.hasNext()) {
            jSONArray.put(((a) it.next()).toString());
        }
        return jSONArray;
    }

    public final boolean f() {
        return this.f19144x;
    }

    public static long c() {
        return f19125f;
    }

    public static b d() {
        if (f19126z == null) {
            synchronized (b.class) {
                try {
                    if (f19126z == null) {
                        f19126z = new b(com.apm.insight.e.h());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19126z;
    }

    public final long e() {
        return SystemClock.uptimeMillis() - this.f19145y;
    }

    public static int b() {
        int i10 = f19123d;
        if (i10 == 1) {
            return f19124e ? 2 : 1;
        }
        return i10;
    }

    public static void a() {
        f19124e = true;
    }

    private static JSONObject a(String str, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put(EventConstants.KEY_TIME, j10);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    static void a(b bVar, String str, long j10, String str2) {
        a aVar;
        if (com.apm.insight.e.w()) {
            try {
                if (bVar.f19133m.size() >= bVar.A) {
                    aVar = bVar.f19133m.poll();
                    if (aVar != null) {
                        bVar.f19133m.add(aVar);
                    }
                } else {
                    aVar = null;
                }
                if (aVar == null) {
                    aVar = new a(str, str2, j10);
                    bVar.f19133m.add(aVar);
                }
                aVar.f19148b = str2;
                aVar.f19147a = str;
                aVar.f19149c = j10;
            } catch (Throwable unused) {
            }
        }
    }
}
