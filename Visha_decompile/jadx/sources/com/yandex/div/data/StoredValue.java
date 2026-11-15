package com.yandex.div.data;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.k81;
import defpackage.vib;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class StoredValue {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/yandex/div/data/StoredValue$Type;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "STRING", "INTEGER", "BOOLEAN", "NUMBER", "COLOR", DataTypes.OBJ_URL, "ARRAY", "DICT", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Type {
        STRING("string"),
        INTEGER(TypedValues.Custom.S_INT),
        BOOLEAN(TypedValues.Custom.S_BOOLEAN),
        NUMBER("number"),
        COLOR("color"),
        URL("url"),
        ARRAY("array"),
        DICT("dict");


        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Type a(String str) {
                y45.j(str, "string");
                Type type = Type.STRING;
                if (y45.e(str, type.value)) {
                    return type;
                }
                Type type2 = Type.INTEGER;
                if (y45.e(str, type2.value)) {
                    return type2;
                }
                Type type3 = Type.BOOLEAN;
                if (y45.e(str, type3.value)) {
                    return type3;
                }
                Type type4 = Type.NUMBER;
                if (y45.e(str, type4.value)) {
                    return type4;
                }
                Type type5 = Type.COLOR;
                if (y45.e(str, type5.value)) {
                    return type5;
                }
                Type type6 = Type.URL;
                if (y45.e(str, type6.value)) {
                    return type6;
                }
                Type type7 = Type.ARRAY;
                if (y45.e(str, type7.value)) {
                    return type7;
                }
                Type type8 = Type.DICT;
                if (y45.e(str, type8.value)) {
                    return type8;
                }
                return null;
            }

            public final String b(Type type) {
                y45.j(type, "obj");
                return type.value;
            }

            public Companion() {
            }
        }

        Type(String str) {
            this.value = str;
        }
    }

    public static final class a extends StoredValue {
        public final String a;
        public final JSONArray b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, JSONArray jSONArray) {
            super(null);
            y45.j(str, "name");
            y45.j(jSONArray, ES6Iterator.VALUE_PROPERTY);
            this.a = str;
            this.b = jSONArray;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final JSONArray d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "ArrayStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class b extends StoredValue {
        public final String a;
        public final boolean b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, boolean z) {
            super(null);
            y45.j(str, "name");
            this.a = str;
            this.b = z;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final boolean d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && this.b == bVar.b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4 */
        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            boolean z = this.b;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode + r1;
        }

        public String toString() {
            return "BooleanStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class c extends StoredValue {
        public final String a;
        public final int b;

        public c(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i);
        }

        @Override
        public String a() {
            return this.a;
        }

        public final int d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return y45.e(this.a, cVar.a) && k81.f(this.b, cVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + k81.h(this.b);
        }

        public String toString() {
            return "ColorStoredValue(name=" + this.a + ", value=" + ((Object) k81.j(this.b)) + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, int i) {
            super(null);
            y45.j(str, "name");
            this.a = str;
            this.b = i;
        }
    }

    public static final class d extends StoredValue {
        public final String a;
        public final JSONObject b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, JSONObject jSONObject) {
            super(null);
            y45.j(str, "name");
            y45.j(jSONObject, ES6Iterator.VALUE_PROPERTY);
            this.a = str;
            this.b = jSONObject;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final JSONObject d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return y45.e(this.a, dVar.a) && y45.e(this.b, dVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "DictStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class e extends StoredValue {
        public final String a;
        public final double b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, double d) {
            super(null);
            y45.j(str, "name");
            this.a = str;
            this.b = d;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final double d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return y45.e(this.a, eVar.a) && Double.compare(this.b, eVar.b) == 0;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + Double.hashCode(this.b);
        }

        public String toString() {
            return "DoubleStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class f extends StoredValue {
        public final String a;
        public final long b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, long j) {
            super(null);
            y45.j(str, "name");
            this.a = str;
            this.b = j;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final long d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return y45.e(this.a, fVar.a) && this.b == fVar.b;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + Long.hashCode(this.b);
        }

        public String toString() {
            return "IntegerStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class g extends StoredValue {
        public final String a;
        public final String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, String str2) {
            super(null);
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            this.a = str;
            this.b = str2;
        }

        @Override
        public String a() {
            return this.a;
        }

        public final String d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return y45.e(this.a, gVar.a) && y45.e(this.b, gVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "StringStoredValue(name=" + this.a + ", value=" + this.b + ')';
        }
    }

    public static final class h extends StoredValue {
        public final String a;
        public final String b;

        public h(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2);
        }

        @Override
        public String a() {
            return this.a;
        }

        public final String d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return y45.e(this.a, hVar.a) && vib.d(this.b, hVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + vib.e(this.b);
        }

        public String toString() {
            return "UrlStoredValue(name=" + this.a + ", value=" + ((Object) vib.f(this.b)) + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, String str2) {
            super(null);
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            this.a = str;
            this.b = str2;
        }
    }

    public StoredValue(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String a();

    public final Type b() {
        if (this instanceof g) {
            return Type.STRING;
        }
        if (this instanceof f) {
            return Type.INTEGER;
        }
        if (this instanceof b) {
            return Type.BOOLEAN;
        }
        if (this instanceof e) {
            return Type.NUMBER;
        }
        if (this instanceof c) {
            return Type.COLOR;
        }
        if (this instanceof h) {
            return Type.URL;
        }
        if (this instanceof a) {
            return Type.ARRAY;
        }
        if (this instanceof d) {
            return Type.DICT;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final Object c() {
        if (this instanceof g) {
            return ((g) this).d();
        }
        if (this instanceof f) {
            return Long.valueOf(((f) this).d());
        }
        if (this instanceof b) {
            return Boolean.valueOf(((b) this).d());
        }
        if (this instanceof e) {
            return Double.valueOf(((e) this).d());
        }
        if (this instanceof c) {
            return k81.c(((c) this).d());
        }
        if (this instanceof h) {
            return vib.a(((h) this).d());
        }
        if (this instanceof a) {
            return ((a) this).d();
        }
        if (this instanceof d) {
            return ((d) this).d();
        }
        throw new NoWhenBranchMatchedException();
    }

    public StoredValue() {
    }
}
