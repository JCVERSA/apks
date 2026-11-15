package com.yandex.div.core.view2.errors;

import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.errors.ErrorModel;
import com.yandex.div.json.ParsingException;
import com.yandex.div2.DivData;
import defpackage.bb5;
import defpackage.e74;
import defpackage.i81;
import defpackage.md3;
import defpackage.nd3;
import defpackage.qc2;
import defpackage.qnb;
import defpackage.s74;
import defpackage.te0;
import defpackage.ue3;
import defpackage.vj3;
import defpackage.xc3;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.a;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ErrorModel {
    public final xc3 a;
    public final Div2View b;
    public final boolean c;
    public final Set d;
    public final List e;
    public final List f;
    public qc2 g;
    public final s74 h;
    public md3 i;

    public ErrorModel(xc3 xc3Var, Div2View div2View, boolean z) {
        y45.j(xc3Var, "errorCollectors");
        y45.j(div2View, "div2View");
        this.a = xc3Var;
        this.b = div2View;
        this.c = z;
        this.d = new LinkedHashSet();
        this.e = new ArrayList();
        this.f = new ArrayList();
        this.h = new s74() {
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((List<? extends Throwable>) obj, (List<? extends Throwable>) obj2);
                return zfb.a;
            }

            public final void invoke(List<? extends Throwable> list, List<? extends Throwable> list2) {
                y45.j(list, "errors");
                y45.j(list2, "warnings");
                if (this.this$0.c) {
                    List list3 = this.this$0.e;
                    list3.clear();
                    list3.addAll(i81.M0(list));
                    List list4 = this.this$0.f;
                    list4.clear();
                    list4.addAll(i81.M0(list2));
                    ErrorModel errorModel = this.this$0;
                    md3 md3Var = errorModel.i;
                    int size = this.this$0.e.size();
                    ErrorModel errorModel2 = this.this$0;
                    String strL = errorModel2.l(errorModel2.e);
                    int size2 = this.this$0.f.size();
                    ErrorModel errorModel3 = this.this$0;
                    errorModel.t(md3.b(md3Var, false, size, size2, strL, errorModel3.v(errorModel3.f), 1, null));
                }
            }
        };
        this.i = new md3(false, 0, 0, null, null, 31, null);
    }

    public static String n(ErrorModel errorModel, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return errorModel.m(z);
    }

    public static final void s(ErrorModel errorModel, e74 e74Var) {
        y45.j(errorModel, "this$0");
        y45.j(e74Var, "$observer");
        errorModel.d.remove(e74Var);
    }

    public final void i(te0 te0Var) {
        y45.j(te0Var, "binding");
        qc2 qc2Var = this.g;
        if (qc2Var != null) {
            qc2Var.close();
        }
        this.g = this.a.a(te0Var.b(), te0Var.a()).h(this.h);
    }

    public final JSONObject j() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("templates", new JSONObject());
        DivData divData = this.b.getDivData();
        jSONObject.put("card", divData != null ? divData.s() : null);
        jSONObject.put("variables", k());
        return jSONObject;
    }

    public final JSONArray k() {
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.b.getDiv2Component().y().d().iterator();
        while (it.hasNext()) {
            jSONArray.put(((qnb) it.next()).q());
        }
        return jSONArray;
    }

    public final String l(List list) {
        return "Last 25 errors:\n" + i81.y0(i81.U0(list, 25), "\n", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(Throwable th) {
                y45.j(th, "it");
                if (!(th instanceof ParsingException)) {
                    return " - " + nd3.b(th);
                }
                return " - " + ((ParsingException) th).getReason() + ": " + nd3.b(th);
            }
        }, 30, null);
    }

    public final String m(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (this.e.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (Throwable th : this.e) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", nd3.b(th));
                jSONObject2.put("stacktrace", ue3.b(th));
                if (th instanceof ParsingException) {
                    ParsingException parsingException = (ParsingException) th;
                    jSONObject2.put("reason", parsingException.getReason());
                    bb5 source = parsingException.getSource();
                    jSONObject2.put("json_source", source != null ? source.a() : null);
                    jSONObject2.put("json_summary", parsingException.getJsonSummary());
                }
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("errors", jSONArray);
        }
        if (this.f.size() > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (Throwable th2 : this.f) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("warning_message", th2.getMessage());
                jSONObject3.put("stacktrace", ue3.b(th2));
                jSONArray2.put(jSONObject3);
            }
            jSONObject.put("warnings", jSONArray2);
        }
        if (z) {
            jSONObject.put("card", j());
        }
        String string = jSONObject.toString(4);
        y45.i(string, "results.toString(/*indentSpaces*/ 4)");
        return string;
    }

    public final Map o() {
        RuntimeStore runtimeStore = this.b.getRuntimeStore();
        if (runtimeStore == null) {
            return a.l();
        }
        Map mapL = runtimeStore.l();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        vj3 vj3VarG = runtimeStore.g();
        if (vj3VarG != null) {
            linkedHashMap.put("", vj3VarG.g());
        }
        for (Map.Entry entry : mapL.entrySet()) {
            linkedHashMap.put((String) entry.getKey(), ((vj3) entry.getValue()).g());
        }
        return linkedHashMap;
    }

    public final e74 p() {
        return new ErrorModel$getErrorHandler$1(this.b);
    }

    public final void q() {
        t(md3.b(this.i, false, 0, 0, null, null, 30, null));
    }

    public final qc2 r(final e74 e74Var) {
        y45.j(e74Var, "observer");
        this.d.add(e74Var);
        e74Var.invoke(this.i);
        return new qc2() {
            @Override
            public final void close() {
                ErrorModel.s(this.b, e74Var);
            }
        };
    }

    public final void t(md3 md3Var) {
        this.i = md3Var;
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((e74) it.next()).invoke(md3Var);
        }
    }

    public final void u() {
        t(md3.b(this.i, true, 0, 0, null, null, 30, null));
    }

    public final String v(List list) {
        return "Last 25 warnings:\n" + i81.y0(i81.U0(list, 25), "\n", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(Throwable th) {
                y45.j(th, "it");
                return " - " + nd3.b(th);
            }
        }, 30, null);
    }
}
