package defpackage;

import android.net.Uri;
import com.yandex.div.data.VariableMutationException;
import com.yandex.div.internal.parser.ParsingConvertersKt;
import com.yandex.div2.ArrayVariable;
import com.yandex.div2.BoolVariable;
import com.yandex.div2.ColorVariable;
import com.yandex.div2.DictVariable;
import com.yandex.div2.IntegerVariable;
import com.yandex.div2.NumberVariable;
import com.yandex.div2.StrVariable;
import com.yandex.div2.UrlVariable;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class qnb {
    public final qd7 a;

    public static class a extends qnb {
        public final String b;
        public final JSONArray c;
        public JSONArray d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, JSONArray jSONArray) {
            super(null);
            y45.j(str, "name");
            y45.j(jSONArray, "defaultValue");
            this.b = str;
            this.c = jSONArray;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public JSONArray r() {
            return this.c;
        }

        public JSONArray s() {
            return this.d;
        }

        public void t(JSONArray jSONArray) {
            y45.j(jSONArray, "newValue");
            u(jSONArray);
        }

        public void u(JSONArray jSONArray) {
            y45.j(jSONArray, ES6Iterator.VALUE_PROPERTY);
            if (y45.e(this.d, jSONArray)) {
                return;
            }
            this.d = jSONArray;
            d(this);
        }
    }

    public static class b extends qnb {
        public final String b;
        public final boolean c;
        public boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, boolean z) {
            super(null);
            y45.j(str, "name");
            this.b = str;
            this.c = z;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public boolean r() {
            return this.c;
        }

        public boolean s() {
            return this.d;
        }

        public void t(boolean z) {
            u(z);
        }

        public void u(boolean z) {
            if (this.d == z) {
                return;
            }
            this.d = z;
            d(this);
        }
    }

    public static class c extends qnb {
        public final String b;
        public final int c;
        public int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, int i) {
            super(null);
            y45.j(str, "name");
            this.b = str;
            this.c = i;
            this.d = k81.d(r());
        }

        @Override
        public String b() {
            return this.b;
        }

        public int r() {
            return this.c;
        }

        public int s() {
            return this.d;
        }

        public void t(int i) {
            Integer num = (Integer) ParsingConvertersKt.b.invoke(k81.c(i));
            if (num != null) {
                u(k81.d(num.intValue()));
                return;
            }
            throw new VariableMutationException("Wrong value format for color variable: '" + ((Object) k81.j(i)) + '\'', null, 2, null);
        }

        public void u(int i) {
            if (k81.f(this.d, i)) {
                return;
            }
            this.d = i;
            d(this);
        }
    }

    public static class d extends qnb {
        public final String b;
        public final JSONObject c;
        public JSONObject d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, JSONObject jSONObject) {
            super(null);
            y45.j(str, "name");
            y45.j(jSONObject, "defaultValue");
            this.b = str;
            this.c = jSONObject;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public JSONObject r() {
            return this.c;
        }

        public JSONObject s() {
            return this.d;
        }

        public void t(JSONObject jSONObject) {
            y45.j(jSONObject, "newValue");
            u(jSONObject);
        }

        public void u(JSONObject jSONObject) {
            y45.j(jSONObject, ES6Iterator.VALUE_PROPERTY);
            if (y45.e(this.d, jSONObject)) {
                return;
            }
            this.d = jSONObject;
            d(this);
        }
    }

    public static class e extends qnb {
        public final String b;
        public final double c;
        public double d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, double d) {
            super(null);
            y45.j(str, "name");
            this.b = str;
            this.c = d;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public double r() {
            return this.c;
        }

        public double s() {
            return this.d;
        }

        public void t(double d) {
            u(d);
        }

        public void u(double d) {
            if (this.d == d) {
                return;
            }
            this.d = d;
            d(this);
        }
    }

    public static class f extends qnb {
        public final String b;
        public final long c;
        public long d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, long j) {
            super(null);
            y45.j(str, "name");
            this.b = str;
            this.c = j;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public long r() {
            return this.c;
        }

        public long s() {
            return this.d;
        }

        public void t(long j) {
            u(j);
        }

        public void u(long j) {
            if (this.d == j) {
                return;
            }
            this.d = j;
            d(this);
        }
    }

    public static class g extends qnb {
        public final String b;
        public final String c;
        public String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, String str2) {
            super(null);
            y45.j(str, "name");
            y45.j(str2, "defaultValue");
            this.b = str;
            this.c = str2;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public String r() {
            return this.c;
        }

        public String s() {
            return this.d;
        }

        public void t(String str) {
            y45.j(str, ES6Iterator.VALUE_PROPERTY);
            if (y45.e(this.d, str)) {
                return;
            }
            this.d = str;
            d(this);
        }
    }

    public static class h extends qnb {
        public final String b;
        public final Uri c;
        public Uri d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, Uri uri) {
            super(null);
            y45.j(str, "name");
            y45.j(uri, "defaultValue");
            this.b = str;
            this.c = uri;
            this.d = r();
        }

        @Override
        public String b() {
            return this.b;
        }

        public Uri r() {
            return this.c;
        }

        public Uri s() {
            return this.d;
        }

        public void t(Uri uri) {
            y45.j(uri, "newValue");
            u(uri);
        }

        public void u(Uri uri) {
            y45.j(uri, ES6Iterator.VALUE_PROPERTY);
            if (y45.e(this.d, uri)) {
                return;
            }
            this.d = uri;
            d(this);
        }
    }

    public qnb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public void a(e74 e74Var) {
        y45.j(e74Var, "observer");
        this.a.j(e74Var);
    }

    public abstract String b();

    public Object c() {
        if (this instanceof g) {
            return ((g) this).s();
        }
        if (this instanceof f) {
            return Long.valueOf(((f) this).s());
        }
        if (this instanceof b) {
            return Boolean.valueOf(((b) this).s());
        }
        if (this instanceof e) {
            return Double.valueOf(((e) this).s());
        }
        if (this instanceof c) {
            return k81.c(((c) this).s());
        }
        if (this instanceof h) {
            return ((h) this).s();
        }
        if (this instanceof d) {
            return ((d) this).s();
        }
        if (this instanceof a) {
            return ((a) this).s();
        }
        throw new NoWhenBranchMatchedException();
    }

    public void d(qnb qnbVar) {
        y45.j(qnbVar, "v");
        xi.c();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((e74) it.next()).invoke(qnbVar);
        }
    }

    public final boolean e(String str) {
        Boolean boolH1 = j1a.h1(str);
        if (boolH1 != null) {
            return boolH1.booleanValue();
        }
        Boolean boolB = li1.b(h(str));
        if (boolB != null) {
            return boolB.booleanValue();
        }
        throw new VariableMutationException("Unable to convert " + str + " to boolean", null, 2, null);
    }

    public final int f(String str) {
        Integer num = (Integer) ParsingConvertersKt.b.invoke(str);
        if (num != null) {
            return k81.d(num.intValue());
        }
        throw new VariableMutationException("Wrong value format for color variable: '" + str + '\'', null, 2, null);
    }

    public final double g(String str) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public final int h(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public final JSONArray i(String str) {
        try {
            return new JSONArray(str);
        } catch (JSONException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public final JSONObject j(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public final long k(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public final Uri l(String str) {
        try {
            Uri uri = Uri.parse(str);
            y45.i(uri, "{\n            Uri.parse(this)\n        }");
            return uri;
        } catch (IllegalArgumentException e2) {
            throw new VariableMutationException(null, e2, 1, null);
        }
    }

    public void m(e74 e74Var) {
        y45.j(e74Var, "observer");
        this.a.p(e74Var);
    }

    public void n(String str) {
        y45.j(str, "newValue");
        if (this instanceof g) {
            ((g) this).t(str);
            return;
        }
        if (this instanceof f) {
            ((f) this).u(k(str));
            return;
        }
        if (this instanceof b) {
            ((b) this).u(e(str));
            return;
        }
        if (this instanceof e) {
            ((e) this).u(g(str));
            return;
        }
        if (this instanceof c) {
            ((c) this).u(f(str));
            return;
        }
        if (this instanceof h) {
            ((h) this).u(l(str));
        } else if (this instanceof d) {
            ((d) this).u(j(str));
        } else {
            if (!(this instanceof a)) {
                throw new NoWhenBranchMatchedException();
            }
            ((a) this).u(i(str));
        }
    }

    public void o(qnb qnbVar) {
        y45.j(qnbVar, "from");
        if ((this instanceof g) && (qnbVar instanceof g)) {
            ((g) this).t(((g) qnbVar).s());
            return;
        }
        if ((this instanceof f) && (qnbVar instanceof f)) {
            ((f) this).u(((f) qnbVar).s());
            return;
        }
        if ((this instanceof b) && (qnbVar instanceof b)) {
            ((b) this).u(((b) qnbVar).s());
            return;
        }
        if ((this instanceof e) && (qnbVar instanceof e)) {
            ((e) this).u(((e) qnbVar).s());
            return;
        }
        if ((this instanceof c) && (qnbVar instanceof c)) {
            ((c) this).u(((c) qnbVar).s());
            return;
        }
        if ((this instanceof h) && (qnbVar instanceof h)) {
            ((h) this).u(((h) qnbVar).s());
            return;
        }
        if ((this instanceof d) && (qnbVar instanceof d)) {
            ((d) this).u(((d) qnbVar).s());
            return;
        }
        if ((this instanceof a) && (qnbVar instanceof a)) {
            ((a) this).u(((a) qnbVar).s());
            return;
        }
        throw new VariableMutationException("Setting value to " + this + " from " + qnbVar + " not supported!", null, 2, null);
    }

    public void p(Object obj) {
        y45.j(obj, "newValue");
        try {
            if (this instanceof g) {
                ((g) this).t((String) obj);
                return;
            }
            if (this instanceof f) {
                ((f) this).u(((Number) obj).longValue());
                return;
            }
            if (this instanceof b) {
                ((b) this).u(((Boolean) obj).booleanValue());
                return;
            }
            if (this instanceof e) {
                ((e) this).u(((Number) obj).doubleValue());
                return;
            }
            if (this instanceof c) {
                ((c) this).u(((k81) obj).k());
                return;
            }
            if (this instanceof h) {
                ((h) this).u((Uri) obj);
            } else if (this instanceof d) {
                ((d) this).u((JSONObject) obj);
            } else {
                if (!(this instanceof a)) {
                    throw new NoWhenBranchMatchedException();
                }
                ((a) this).u((JSONArray) obj);
            }
        } catch (ClassCastException unused) {
            throw new VariableMutationException("Unable to set value with type " + obj.getClass() + " to " + this, null, 2, null);
        }
    }

    public JSONObject q() {
        d65 urlVariable;
        if (this instanceof a) {
            urlVariable = new ArrayVariable(b(), ((a) this).s());
        } else if (this instanceof b) {
            urlVariable = new BoolVariable(b(), ((b) this).s());
        } else if (this instanceof c) {
            urlVariable = new ColorVariable(b(), ((c) this).s());
        } else if (this instanceof d) {
            urlVariable = new DictVariable(b(), ((d) this).s());
        } else if (this instanceof e) {
            urlVariable = new NumberVariable(b(), ((e) this).s());
        } else if (this instanceof f) {
            urlVariable = new IntegerVariable(b(), ((f) this).s());
        } else if (this instanceof g) {
            urlVariable = new StrVariable(b(), ((g) this).s());
        } else {
            if (!(this instanceof h)) {
                throw new NoWhenBranchMatchedException();
            }
            urlVariable = new UrlVariable(b(), ((h) this).s());
        }
        JSONObject jSONObjectS = urlVariable.s();
        y45.i(jSONObjectS, "serializable.writeToJSON()");
        return jSONObjectS;
    }

    public qnb() {
        this.a = new qd7();
    }
}
