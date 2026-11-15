package com.squareup.moshi;

import defpackage.f37;
import defpackage.n17;
import defpackage.rc5;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Set;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;

public abstract class e {

    public class a extends e {
        public final e a;

        public a(e eVar) {
            this.a = eVar;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            return this.a.fromJson(jsonReader);
        }

        @Override
        public boolean isLenient() {
            return this.a.isLenient();
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            boolean zN = rc5Var.n();
            rc5Var.M(true);
            try {
                this.a.toJson(rc5Var, obj);
            } finally {
                rc5Var.M(zN);
            }
        }

        public String toString() {
            return this.a + ".serializeNulls()";
        }
    }

    public class b extends e {
        public final e a;

        public b(e eVar) {
            this.a = eVar;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            boolean zN = jsonReader.n();
            jsonReader.R(true);
            try {
                return this.a.fromJson(jsonReader);
            } finally {
                jsonReader.R(zN);
            }
        }

        @Override
        public boolean isLenient() {
            return true;
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            boolean zO = rc5Var.o();
            rc5Var.L(true);
            try {
                this.a.toJson(rc5Var, obj);
            } finally {
                rc5Var.L(zO);
            }
        }

        public String toString() {
            return this.a + ".lenient()";
        }
    }

    public class c extends e {
        public final e a;

        public c(e eVar) {
            this.a = eVar;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            boolean zH = jsonReader.h();
            jsonReader.Q(true);
            try {
                return this.a.fromJson(jsonReader);
            } finally {
                jsonReader.Q(zH);
            }
        }

        @Override
        public boolean isLenient() {
            return this.a.isLenient();
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            this.a.toJson(rc5Var, obj);
        }

        public String toString() {
            return this.a + ".failOnUnknown()";
        }
    }

    public class d extends e {
        public final e a;
        public final String b;

        public d(e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        @Override
        public Object fromJson(JsonReader jsonReader) {
            return this.a.fromJson(jsonReader);
        }

        @Override
        public boolean isLenient() {
            return this.a.isLenient();
        }

        @Override
        public void toJson(rc5 rc5Var, Object obj) {
            String strK = rc5Var.k();
            rc5Var.K(this.b);
            try {
                this.a.toJson(rc5Var, obj);
            } finally {
                rc5Var.K(strK);
            }
        }

        public String toString() {
            return this.a + ".indent(\"" + this.b + "\")";
        }
    }

    public interface InterfaceC0196e {
        e a(Type type, Set set, j jVar);
    }

    public final e failOnUnknown() {
        return new c(this);
    }

    public abstract Object fromJson(JsonReader jsonReader);

    public final Object fromJson(BufferedSource bufferedSource) throws IOException {
        return fromJson(JsonReader.J(bufferedSource));
    }

    public final Object fromJsonValue(Object obj) {
        try {
            return fromJson(new g(obj));
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public e indent(String str) {
        if (str != null) {
            return new d(this, str);
        }
        throw new NullPointerException("indent == null");
    }

    public boolean isLenient() {
        return false;
    }

    public final e lenient() {
        return new b(this);
    }

    public final e nonNull() {
        return this instanceof n17 ? this : new n17(this);
    }

    public final e nullSafe() {
        return this instanceof f37 ? this : new f37(this);
    }

    public final e serializeNulls() {
        return new a(this);
    }

    public final void toJson(BufferedSink bufferedSink, Object obj) throws IOException {
        toJson(rc5.F(bufferedSink), obj);
    }

    public abstract void toJson(rc5 rc5Var, Object obj);

    public final Object toJsonValue(Object obj) {
        h hVar = new h();
        try {
            toJson(hVar, obj);
            return hVar.T();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final Object fromJson(String str) throws IOException {
        JsonReader jsonReaderJ = JsonReader.J(new Buffer().writeUtf8(str));
        Object objFromJson = fromJson(jsonReaderJ);
        if (isLenient() || jsonReaderJ.K() == JsonReader.Token.END_DOCUMENT) {
            return objFromJson;
        }
        throw new JsonDataException("JSON document was not fully consumed.");
    }

    public final String toJson(Object obj) {
        Buffer buffer = new Buffer();
        try {
            toJson(buffer, obj);
            return buffer.readUtf8();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
