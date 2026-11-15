package org.acra.data;

import defpackage.abb;
import defpackage.c;
import defpackage.e74;
import defpackage.y45;
import defpackage.y71;
import defpackage.zc9;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.a;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.acra.ReportField;
import org.json.JSONException;
import org.json.JSONObject;

public final class CrashReportData {
    public final JSONObject a;

    public CrashReportData(String str) {
        y45.j(str, "json");
        this.a = new JSONObject(str);
    }

    public final Object a(String str) {
        y45.j(str, "key");
        return this.a.opt(str);
    }

    public final synchronized void b(String str, int i) {
        y45.j(str, "key");
        try {
            this.a.put(str, i);
        } catch (JSONException unused) {
            c.d.w(c.c, "Failed to put value into CrashReportData: " + i);
        }
    }

    public final synchronized void c(String str, long j) {
        y45.j(str, "key");
        try {
            this.a.put(str, j);
        } catch (JSONException unused) {
            c.d.w(c.c, "Failed to put value into CrashReportData: " + j);
        }
    }

    public final synchronized void d(String str, String str2) {
        y45.j(str, "key");
        if (str2 == null) {
            j(str);
            return;
        }
        try {
            this.a.put(str, str2);
        } catch (JSONException unused) {
            c.d.w(c.c, "Failed to put value into CrashReportData: " + str2);
        }
    }

    public final synchronized void e(String str, JSONObject jSONObject) {
        y45.j(str, "key");
        if (jSONObject == null) {
            j(str);
            return;
        }
        try {
            this.a.put(str, jSONObject);
        } catch (JSONException unused) {
            c.d.w(c.c, "Failed to put value into CrashReportData: " + jSONObject);
        }
    }

    public final synchronized void f(ReportField reportField, int i) {
        y45.j(reportField, "key");
        b(reportField.toString(), i);
    }

    public final synchronized void g(ReportField reportField, long j) {
        y45.j(reportField, "key");
        c(reportField.toString(), j);
    }

    public final synchronized void h(ReportField reportField, String str) {
        y45.j(reportField, "key");
        d(reportField.toString(), str);
    }

    public final synchronized void i(ReportField reportField, JSONObject jSONObject) {
        y45.j(reportField, "key");
        e(reportField.toString(), jSONObject);
    }

    public final void j(String str) {
        try {
            this.a.put(str, "N/A");
        } catch (JSONException unused) {
        }
    }

    public final String k() throws JSONException {
        try {
            return StringFormat.JSON.toFormattedString(this, y71.k(), "", "", false);
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage());
        }
    }

    public final Map l() {
        Iterator<String> itKeys = this.a.keys();
        y45.i(itKeys, "content.keys()");
        return a.w(SequencesKt___SequencesKt.R(zc9.g(itKeys), new e74() {
            {
                super(1);
            }

            @Override
            public final Pair<String, Object> invoke(String str) {
                CrashReportData crashReportData = this.this$0;
                y45.i(str, "it");
                return abb.a(str, crashReportData.a(str));
            }
        }));
    }
}
