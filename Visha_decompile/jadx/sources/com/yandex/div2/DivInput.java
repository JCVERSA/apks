package com.yandex.div2;

import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.og2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivInput implements d65, ko4, og2 {
    public static final s74 A0;
    public static final a i0 = new a(null);
    public static final Expression j0;
    public static final Expression k0;
    public static final Expression l0;
    public static final Expression m0;
    public static final Expression n0;
    public static final Expression o0;
    public static final DivSize.d p0;
    public static final Expression q0;
    public static final Expression r0;
    public static final Expression s0;
    public static final Expression t0;
    public static final Expression u0;
    public static final Expression v0;
    public static final Expression w0;
    public static final Expression x0;
    public static final Expression y0;
    public static final DivSize.c z0;
    public final String A;
    public final Expression B;
    public final Expression C;
    public final DivLayoutProvider D;
    public final Expression E;
    public final Expression F;
    public final DivEdgeInsets G;
    public final DivInputMask H;
    public final Expression I;
    public final Expression J;
    public final NativeInterface K;
    public final DivEdgeInsets L;
    public final Expression M;
    public final Expression N;
    public final Expression O;
    public final List P;
    public final Expression Q;
    public final Expression R;
    public final Expression S;
    public final String T;
    public final List U;
    public final DivTransform V;
    public final DivChangeTransition W;
    public final DivAppearanceTransition X;
    public final DivAppearanceTransition Y;
    public final List Z;
    public final DivAccessibility a;
    public final List a0;
    public final Expression b;
    public final List b0;
    public final Expression c;
    public final List c0;
    public final Expression d;
    public final Expression d0;
    public final List e;
    public final DivVisibilityAction e0;
    public final Expression f;
    public final List f0;
    public final List g;
    public final DivSize g0;
    public final DivBorder h;
    public Integer h0;
    public final Expression i;
    public final List j;
    public final List k;
    public final Expression l;
    public final List m;
    public final List n;
    public final DivFocus o;
    public final Expression p;
    public final Expression q;
    public final Expression r;
    public final Expression s;
    public final Expression t;
    public final Expression u;
    public final List v;
    public final DivSize w;
    public final Expression x;
    public final Expression y;
    public final Expression z;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/yandex/div2/DivInput$Autocapitalization;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "AUTO", "NONE", "WORDS", "SENTENCES", "ALL_CHARACTERS", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Autocapitalization {
        AUTO(TtmlNode.TEXT_EMPHASIS_AUTO),
        NONE("none"),
        WORDS("words"),
        SENTENCES("sentences"),
        ALL_CHARACTERS("all_characters");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivInput.Autocapitalization autocapitalization) {
                y45.j(autocapitalization, ES6Iterator.VALUE_PROPERTY);
                return DivInput.Autocapitalization.INSTANCE.b(autocapitalization);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivInput.Autocapitalization invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivInput.Autocapitalization.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Autocapitalization a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Autocapitalization autocapitalization = Autocapitalization.AUTO;
                if (y45.e(str, autocapitalization.value)) {
                    return autocapitalization;
                }
                Autocapitalization autocapitalization2 = Autocapitalization.NONE;
                if (y45.e(str, autocapitalization2.value)) {
                    return autocapitalization2;
                }
                Autocapitalization autocapitalization3 = Autocapitalization.WORDS;
                if (y45.e(str, autocapitalization3.value)) {
                    return autocapitalization3;
                }
                Autocapitalization autocapitalization4 = Autocapitalization.SENTENCES;
                if (y45.e(str, autocapitalization4.value)) {
                    return autocapitalization4;
                }
                Autocapitalization autocapitalization5 = Autocapitalization.ALL_CHARACTERS;
                if (y45.e(str, autocapitalization5.value)) {
                    return autocapitalization5;
                }
                return null;
            }

            public final String b(Autocapitalization autocapitalization) {
                y45.j(autocapitalization, "obj");
                return autocapitalization.value;
            }

            public Companion() {
            }
        }

        Autocapitalization(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/yandex/div2/DivInput$EnterKeyType;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "DEFAULT", "GO", "SEARCH", "SEND", "DONE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum EnterKeyType {
        DEFAULT(Schema.DEFAULT_NAME),
        GO("go"),
        SEARCH("search"),
        SEND("send"),
        DONE(ES6Iterator.DONE_PROPERTY);

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivInput.EnterKeyType enterKeyType) {
                y45.j(enterKeyType, ES6Iterator.VALUE_PROPERTY);
                return DivInput.EnterKeyType.INSTANCE.b(enterKeyType);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivInput.EnterKeyType invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivInput.EnterKeyType.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final EnterKeyType a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                EnterKeyType enterKeyType = EnterKeyType.DEFAULT;
                if (y45.e(str, enterKeyType.value)) {
                    return enterKeyType;
                }
                EnterKeyType enterKeyType2 = EnterKeyType.GO;
                if (y45.e(str, enterKeyType2.value)) {
                    return enterKeyType2;
                }
                EnterKeyType enterKeyType3 = EnterKeyType.SEARCH;
                if (y45.e(str, enterKeyType3.value)) {
                    return enterKeyType3;
                }
                EnterKeyType enterKeyType4 = EnterKeyType.SEND;
                if (y45.e(str, enterKeyType4.value)) {
                    return enterKeyType4;
                }
                EnterKeyType enterKeyType5 = EnterKeyType.DONE;
                if (y45.e(str, enterKeyType5.value)) {
                    return enterKeyType5;
                }
                return null;
            }

            public final String b(EnterKeyType enterKeyType) {
                y45.j(enterKeyType, "obj");
                return enterKeyType.value;
            }

            public Companion() {
            }
        }

        EnterKeyType(String str) {
            this.value = str;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/div2/DivInput$KeyboardType;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "SINGLE_LINE_TEXT", "MULTI_LINE_TEXT", "PHONE", "NUMBER", "EMAIL", "URI", "PASSWORD", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum KeyboardType {
        SINGLE_LINE_TEXT("single_line_text"),
        MULTI_LINE_TEXT("multi_line_text"),
        PHONE("phone"),
        NUMBER("number"),
        EMAIL(NotificationCompat.CATEGORY_EMAIL),
        URI("uri"),
        PASSWORD("password");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivInput.KeyboardType keyboardType) {
                y45.j(keyboardType, ES6Iterator.VALUE_PROPERTY);
                return DivInput.KeyboardType.INSTANCE.b(keyboardType);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivInput.KeyboardType invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivInput.KeyboardType.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final KeyboardType a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                KeyboardType keyboardType = KeyboardType.SINGLE_LINE_TEXT;
                if (y45.e(str, keyboardType.value)) {
                    return keyboardType;
                }
                KeyboardType keyboardType2 = KeyboardType.MULTI_LINE_TEXT;
                if (y45.e(str, keyboardType2.value)) {
                    return keyboardType2;
                }
                KeyboardType keyboardType3 = KeyboardType.PHONE;
                if (y45.e(str, keyboardType3.value)) {
                    return keyboardType3;
                }
                KeyboardType keyboardType4 = KeyboardType.NUMBER;
                if (y45.e(str, keyboardType4.value)) {
                    return keyboardType4;
                }
                KeyboardType keyboardType5 = KeyboardType.EMAIL;
                if (y45.e(str, keyboardType5.value)) {
                    return keyboardType5;
                }
                KeyboardType keyboardType6 = KeyboardType.URI;
                if (y45.e(str, keyboardType6.value)) {
                    return keyboardType6;
                }
                KeyboardType keyboardType7 = KeyboardType.PASSWORD;
                if (y45.e(str, keyboardType7.value)) {
                    return keyboardType7;
                }
                return null;
            }

            public final String b(KeyboardType keyboardType) {
                y45.j(keyboardType, "obj");
                return keyboardType.value;
            }

            public Companion() {
            }
        }

        KeyboardType(String str) {
            this.value = str;
        }
    }

    public static final class NativeInterface implements d65, ko4 {
        public static final a c = new a(null);
        public static final s74 d = new s74() {
            @Override
            public final DivInput.NativeInterface invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivInput.NativeInterface.c.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public Integer b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final NativeInterface a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((x1) ml0.a().v4().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public NativeInterface(Expression expression) {
            y45.j(expression, "color");
            this.a = expression;
        }

        public final boolean a(NativeInterface nativeInterface, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return nativeInterface != null && ((Number) this.a.b(oj3Var)).intValue() == ((Number) nativeInterface.a.b(oj3Var2)).intValue();
        }

        @Override
        public int hash() {
            Integer num = this.b;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(NativeInterface.class).hashCode() + this.a.hashCode();
            this.b = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((x1) ml0.a().v4().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInput a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivInputJsonParser.b) ml0.a().p4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        j0 = aVar.a(Double.valueOf(1.0d));
        k0 = aVar.a(Autocapitalization.AUTO);
        l0 = aVar.a(EnterKeyType.DEFAULT);
        m0 = aVar.a(12L);
        n0 = aVar.a(DivSizeUnit.SP);
        o0 = aVar.a(DivFontWeight.REGULAR);
        p0 = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        q0 = aVar.a(1929379840);
        r0 = aVar.a(Boolean.TRUE);
        s0 = aVar.a(KeyboardType.MULTI_LINE_TEXT);
        t0 = aVar.a(Double.valueOf(0.0d));
        u0 = aVar.a(Boolean.FALSE);
        v0 = aVar.a(DivAlignmentHorizontal.START);
        w0 = aVar.a(DivAlignmentVertical.CENTER);
        x0 = aVar.a(-16777216);
        y0 = aVar.a(DivVisibility.VISIBLE);
        z0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        A0 = new s74() {
            @Override
            public final DivInput invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivInput.i0.a(hx7Var, jSONObject);
            }
        };
    }

    public DivInput(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, List list2, DivBorder divBorder, Expression expression5, List list3, List list4, Expression expression6, List list5, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, DivSize divSize, Expression expression13, Expression expression14, Expression expression15, String str, Expression expression16, Expression expression17, DivLayoutProvider divLayoutProvider, Expression expression18, Expression expression19, DivEdgeInsets divEdgeInsets, DivInputMask divInputMask, Expression expression20, Expression expression21, NativeInterface nativeInterface, DivEdgeInsets divEdgeInsets2, Expression expression22, Expression expression23, Expression expression24, List list8, Expression expression25, Expression expression26, Expression expression27, String str2, List list9, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list10, List list11, List list12, List list13, Expression expression28, DivVisibilityAction divVisibilityAction, List list14, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "autocapitalization");
        y45.j(expression6, "enterKeyType");
        y45.j(expression8, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression9, "fontSizeUnit");
        y45.j(expression11, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression14, "hintColor");
        y45.j(expression16, "isEnabled");
        y45.j(expression17, "keyboardType");
        y45.j(expression18, "letterSpacing");
        y45.j(expression24, "selectAllOnFocus");
        y45.j(expression25, "textAlignmentHorizontal");
        y45.j(expression26, "textAlignmentVertical");
        y45.j(expression27, "textColor");
        y45.j(str2, "textVariable");
        y45.j(expression28, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = list;
        this.f = expression4;
        this.g = list2;
        this.h = divBorder;
        this.i = expression5;
        this.j = list3;
        this.k = list4;
        this.l = expression6;
        this.m = list5;
        this.n = list6;
        this.o = divFocus;
        this.p = expression7;
        this.q = expression8;
        this.r = expression9;
        this.s = expression10;
        this.t = expression11;
        this.u = expression12;
        this.v = list7;
        this.w = divSize;
        this.x = expression13;
        this.y = expression14;
        this.z = expression15;
        this.A = str;
        this.B = expression16;
        this.C = expression17;
        this.D = divLayoutProvider;
        this.E = expression18;
        this.F = expression19;
        this.G = divEdgeInsets;
        this.H = divInputMask;
        this.I = expression20;
        this.J = expression21;
        this.K = nativeInterface;
        this.L = divEdgeInsets2;
        this.M = expression22;
        this.N = expression23;
        this.O = expression24;
        this.P = list8;
        this.Q = expression25;
        this.R = expression26;
        this.S = expression27;
        this.T = str2;
        this.U = list9;
        this.V = divTransform;
        this.W = divChangeTransition;
        this.X = divAppearanceTransition;
        this.Y = divAppearanceTransition2;
        this.Z = list10;
        this.a0 = list11;
        this.b0 = list12;
        this.c0 = list13;
        this.d0 = expression28;
        this.e0 = divVisibilityAction;
        this.f0 = list14;
        this.g0 = divSize2;
    }

    public static DivInput D(DivInput divInput, DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, List list2, DivBorder divBorder, Expression expression5, List list3, List list4, Expression expression6, List list5, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, DivSize divSize, Expression expression13, Expression expression14, Expression expression15, String str, Expression expression16, Expression expression17, DivLayoutProvider divLayoutProvider, Expression expression18, Expression expression19, DivEdgeInsets divEdgeInsets, DivInputMask divInputMask, Expression expression20, Expression expression21, NativeInterface nativeInterface, DivEdgeInsets divEdgeInsets2, Expression expression22, Expression expression23, Expression expression24, List list8, Expression expression25, Expression expression26, Expression expression27, String str2, List list9, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list10, List list11, List list12, List list13, Expression expression28, DivVisibilityAction divVisibilityAction, List list14, DivSize divSize2, int i, int i2, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divInput.r() : divAccessibility;
        Expression expressionG = (i & 2) != 0 ? divInput.g() : expression;
        Expression expressionO = (i & 4) != 0 ? divInput.o() : expression2;
        Expression expressionP = (i & 8) != 0 ? divInput.p() : expression3;
        List listA = (i & 16) != 0 ? divInput.A() : list;
        Expression expression29 = (i & 32) != 0 ? divInput.f : expression4;
        List background = (i & 64) != 0 ? divInput.getBackground() : list2;
        DivBorder divBorderB = (i & 128) != 0 ? divInput.B() : divBorder;
        Expression expressionB = (i & 256) != 0 ? divInput.b() : expression5;
        List listK = (i & 512) != 0 ? divInput.k() : list3;
        List list15 = (i & 1024) != 0 ? divInput.k : list4;
        Expression expression30 = (i & 2048) != 0 ? divInput.l : expression6;
        List extensions = (i & 4096) != 0 ? divInput.getExtensions() : list5;
        List list16 = (i & 8192) != 0 ? divInput.n : list6;
        DivFocus divFocusQ = (i & 16384) != 0 ? divInput.q() : divFocus;
        Expression expression31 = (i & 32768) != 0 ? divInput.p : expression7;
        Expression expression32 = (i & 65536) != 0 ? divInput.q : expression8;
        Expression expression33 = (i & 131072) != 0 ? divInput.r : expression9;
        Expression expression34 = (i & 262144) != 0 ? divInput.s : expression10;
        Expression expression35 = (i & 524288) != 0 ? divInput.t : expression11;
        Expression expression36 = (i & 1048576) != 0 ? divInput.u : expression12;
        List listY = (i & 2097152) != 0 ? divInput.y() : list7;
        DivSize height = (i & 4194304) != 0 ? divInput.getHeight() : divSize;
        Expression expression37 = expression36;
        Expression expression38 = (i & 8388608) != 0 ? divInput.x : expression13;
        Expression expression39 = (i & 16777216) != 0 ? divInput.y : expression14;
        Expression expression40 = (i & 33554432) != 0 ? divInput.z : expression15;
        String id = (i & 67108864) != 0 ? divInput.getId() : str;
        Expression expression41 = expression40;
        Expression expression42 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divInput.B : expression16;
        Expression expression43 = (i & 268435456) != 0 ? divInput.C : expression17;
        DivLayoutProvider divLayoutProviderV = (i & 536870912) != 0 ? divInput.v() : divLayoutProvider;
        Expression expression44 = expression43;
        Expression expression45 = (i & 1073741824) != 0 ? divInput.E : expression18;
        Expression expression46 = (i & Integer.MIN_VALUE) != 0 ? divInput.F : expression19;
        DivEdgeInsets divEdgeInsetsD = (i2 & 1) != 0 ? divInput.d() : divEdgeInsets;
        Expression expression47 = expression46;
        DivInputMask divInputMask2 = (i2 & 2) != 0 ? divInput.H : divInputMask;
        Expression expression48 = (i2 & 4) != 0 ? divInput.I : expression20;
        Expression expression49 = (i2 & 8) != 0 ? divInput.J : expression21;
        NativeInterface nativeInterface2 = (i2 & 16) != 0 ? divInput.K : nativeInterface;
        return divInput.C(divAccessibilityR, expressionG, expressionO, expressionP, listA, expression29, background, divBorderB, expressionB, listK, list15, expression30, extensions, list16, divFocusQ, expression31, expression32, expression33, expression34, expression35, expression37, listY, height, expression38, expression39, expression41, id, expression42, expression44, divLayoutProviderV, expression45, expression47, divEdgeInsetsD, divInputMask2, expression48, expression49, nativeInterface2, (i2 & 32) != 0 ? divInput.t() : divEdgeInsets2, (i2 & 64) != 0 ? divInput.f() : expression22, (i2 & 128) != 0 ? divInput.e() : expression23, (i2 & 256) != 0 ? divInput.O : expression24, (i2 & 512) != 0 ? divInput.u() : list8, (i2 & 1024) != 0 ? divInput.Q : expression25, (i2 & 2048) != 0 ? divInput.R : expression26, (i2 & 4096) != 0 ? divInput.S : expression27, (i2 & 8192) != 0 ? divInput.T : str2, (i2 & 16384) != 0 ? divInput.h() : list9, (i2 & 32768) != 0 ? divInput.m() : divTransform, (i2 & 65536) != 0 ? divInput.j() : divChangeTransition, (i2 & 131072) != 0 ? divInput.z() : divAppearanceTransition, (i2 & 262144) != 0 ? divInput.i() : divAppearanceTransition2, (i2 & 524288) != 0 ? divInput.n() : list10, (i2 & 1048576) != 0 ? divInput.a0 : list11, (i2 & 2097152) != 0 ? divInput.w() : list12, (i2 & 4194304) != 0 ? divInput.c() : list13, (i2 & 8388608) != 0 ? divInput.getVisibility() : expression28, (i2 & 16777216) != 0 ? divInput.x() : divVisibilityAction, (i2 & 33554432) != 0 ? divInput.a() : list14, (i2 & 67108864) != 0 ? divInput.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.h;
    }

    public final DivInput C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, Expression expression4, List list2, DivBorder divBorder, Expression expression5, List list3, List list4, Expression expression6, List list5, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, List list7, DivSize divSize, Expression expression13, Expression expression14, Expression expression15, String str, Expression expression16, Expression expression17, DivLayoutProvider divLayoutProvider, Expression expression18, Expression expression19, DivEdgeInsets divEdgeInsets, DivInputMask divInputMask, Expression expression20, Expression expression21, NativeInterface nativeInterface, DivEdgeInsets divEdgeInsets2, Expression expression22, Expression expression23, Expression expression24, List list8, Expression expression25, Expression expression26, Expression expression27, String str2, List list9, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list10, List list11, List list12, List list13, Expression expression28, DivVisibilityAction divVisibilityAction, List list14, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(expression4, "autocapitalization");
        y45.j(expression6, "enterKeyType");
        y45.j(expression8, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression9, "fontSizeUnit");
        y45.j(expression11, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression14, "hintColor");
        y45.j(expression16, "isEnabled");
        y45.j(expression17, "keyboardType");
        y45.j(expression18, "letterSpacing");
        y45.j(expression24, "selectAllOnFocus");
        y45.j(expression25, "textAlignmentHorizontal");
        y45.j(expression26, "textAlignmentVertical");
        y45.j(expression27, "textColor");
        y45.j(str2, "textVariable");
        y45.j(expression28, "visibility");
        y45.j(divSize2, "width");
        return new DivInput(divAccessibility, expression, expression2, expression3, list, expression4, list2, divBorder, expression5, list3, list4, expression6, list5, list6, divFocus, expression7, expression8, expression9, expression10, expression11, expression12, list7, divSize, expression13, expression14, expression15, str, expression16, expression17, divLayoutProvider, expression18, expression19, divEdgeInsets, divInputMask, expression20, expression21, nativeInterface, divEdgeInsets2, expression22, expression23, expression24, list8, expression25, expression26, expression27, str2, list9, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list10, list11, list12, list13, expression28, divVisibilityAction, list14, divSize2);
    }

    public final boolean E(DivInput divInput, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean zA2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean zA3;
        boolean z7;
        boolean zA4;
        boolean zA5;
        boolean zA6;
        boolean zA7;
        boolean zA8;
        boolean z8;
        boolean z9;
        boolean zA9;
        boolean zA10;
        boolean zA11;
        boolean zA12;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean zG;
        boolean z14;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divInput == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divInput.r(), oj3Var, oj3Var2);
        } else {
            zA = divInput.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divInput.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divInput.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divInput.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divInput.A();
            if (listA2 == null) {
                return false;
            }
            if (listA.size() == listA2.size()) {
                Iterator it = listA.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((DivAnimator) next).a((DivAnimator) listA2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divInput.A() == null;
        }
        if (!z || this.f.b(oj3Var) != divInput.f.b(oj3Var2)) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divInput.getBackground();
            if (background2 == null) {
                return false;
            }
            if (background.size() == background2.size()) {
                Iterator it2 = background.iterator();
                int i3 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivBackground) next2).a((DivBackground) background2.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z2 = divInput.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divInput.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divInput.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divInput.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divInput.k();
            if (listK2 == null) {
                return false;
            }
            if (listK.size() == listK2.size()) {
                Iterator it3 = listK.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivDisappearAction) next3).g((DivDisappearAction) listK2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divInput.k() == null;
        }
        if (!z3) {
            return false;
        }
        List list = this.k;
        if (list != null) {
            List list2 = divInput.k;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it4 = list.iterator();
                int i7 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        Object next4 = it4.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next4).a((DivAction) list2.get(i7), oj3Var, oj3Var2)) {
                            i7 = i8;
                        }
                    }
                }
            }
        } else {
            z4 = divInput.k == null;
        }
        if (!z4 || this.l.b(oj3Var) != divInput.l.b(oj3Var2)) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divInput.getExtensions();
            if (extensions2 == null) {
                return false;
            }
            if (extensions.size() == extensions2.size()) {
                Iterator it5 = extensions.iterator();
                int i9 = 0;
                while (true) {
                    if (it5.hasNext()) {
                        Object next5 = it5.next();
                        int i10 = i9 + 1;
                        if (i9 < 0) {
                            y71.u();
                        }
                        if (((DivExtension) next5).a((DivExtension) extensions2.get(i9), oj3Var, oj3Var2)) {
                            i9 = i10;
                        }
                    }
                }
            }
        } else {
            z5 = divInput.getExtensions() == null;
        }
        if (!z5) {
            return false;
        }
        List list3 = this.n;
        if (list3 != null) {
            List list4 = divInput.n;
            if (list4 == null) {
                return false;
            }
            if (list3.size() == list4.size()) {
                Iterator it6 = list3.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((DivInputFilter) next6).a((DivInputFilter) list4.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divInput.n == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divInput.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divInput.q() == null;
        }
        if (!zA3) {
            return false;
        }
        Expression expression = this.p;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divInput.p;
        if (!y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) || ((Number) this.q.b(oj3Var)).longValue() != ((Number) divInput.q.b(oj3Var2)).longValue() || this.r.b(oj3Var) != divInput.r.b(oj3Var2)) {
            return false;
        }
        Expression expression3 = this.s;
        JSONObject jSONObject = expression3 != null ? (JSONObject) expression3.b(oj3Var) : null;
        Expression expression4 = divInput.s;
        if (!y45.e(jSONObject, expression4 != null ? (JSONObject) expression4.b(oj3Var2) : null) || this.t.b(oj3Var) != divInput.t.b(oj3Var2)) {
            return false;
        }
        Expression expression5 = this.u;
        Long l2 = expression5 != null ? (Long) expression5.b(oj3Var) : null;
        Expression expression6 = divInput.u;
        if (!y45.e(l2, expression6 != null ? (Long) expression6.b(oj3Var2) : null)) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divInput.y();
            if (listY2 == null) {
                return false;
            }
            if (listY.size() == listY2.size()) {
                Iterator it7 = listY.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivFunction) next7).a((DivFunction) listY2.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divInput.y() == null;
        }
        if (!z7 || !getHeight().a(divInput.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        Expression expression7 = this.x;
        Integer num = expression7 != null ? (Integer) expression7.b(oj3Var) : null;
        Expression expression8 = divInput.x;
        if (!y45.e(num, expression8 != null ? (Integer) expression8.b(oj3Var2) : null) || ((Number) this.y.b(oj3Var)).intValue() != ((Number) divInput.y.b(oj3Var2)).intValue()) {
            return false;
        }
        Expression expression9 = this.z;
        String str2 = expression9 != null ? (String) expression9.b(oj3Var) : null;
        Expression expression10 = divInput.z;
        if (!y45.e(str2, expression10 != null ? (String) expression10.b(oj3Var2) : null) || !y45.e(getId(), divInput.getId()) || ((Boolean) this.B.b(oj3Var)).booleanValue() != ((Boolean) divInput.B.b(oj3Var2)).booleanValue() || this.C.b(oj3Var) != divInput.C.b(oj3Var2)) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divInput.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divInput.v() == null;
        }
        if (!zA4) {
            return false;
        }
        if (!(((Number) this.E.b(oj3Var)).doubleValue() == ((Number) divInput.E.b(oj3Var2)).doubleValue())) {
            return false;
        }
        Expression expression11 = this.F;
        Long l3 = expression11 != null ? (Long) expression11.b(oj3Var) : null;
        Expression expression12 = divInput.F;
        if (!y45.e(l3, expression12 != null ? (Long) expression12.b(oj3Var2) : null)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divInput.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divInput.d() == null;
        }
        if (!zA5) {
            return false;
        }
        DivInputMask divInputMask = this.H;
        if (divInputMask != null) {
            zA6 = divInputMask.a(divInput.H, oj3Var, oj3Var2);
        } else {
            zA6 = divInput.H == null;
        }
        if (!zA6) {
            return false;
        }
        Expression expression13 = this.I;
        Long l4 = expression13 != null ? (Long) expression13.b(oj3Var) : null;
        Expression expression14 = divInput.I;
        if (!y45.e(l4, expression14 != null ? (Long) expression14.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression15 = this.J;
        Long l5 = expression15 != null ? (Long) expression15.b(oj3Var) : null;
        Expression expression16 = divInput.J;
        if (!y45.e(l5, expression16 != null ? (Long) expression16.b(oj3Var2) : null)) {
            return false;
        }
        NativeInterface nativeInterface = this.K;
        if (nativeInterface != null) {
            zA7 = nativeInterface.a(divInput.K, oj3Var, oj3Var2);
        } else {
            zA7 = divInput.K == null;
        }
        if (!zA7) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA8 = divEdgeInsetsT.a(divInput.t(), oj3Var, oj3Var2);
        } else {
            zA8 = divInput.t() == null;
        }
        if (!zA8) {
            return false;
        }
        Expression expressionF = f();
        String str3 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divInput.f();
        if (!y45.e(str3, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l6 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divInput.e();
        if (!y45.e(l6, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || ((Boolean) this.O.b(oj3Var)).booleanValue() != ((Boolean) divInput.O.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divInput.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it8 = listU.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next8).a((DivAction) listU2.get(i15), oj3Var, oj3Var2)) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divInput.u() == null;
        }
        if (!z8 || this.Q.b(oj3Var) != divInput.Q.b(oj3Var2) || this.R.b(oj3Var) != divInput.R.b(oj3Var2) || ((Number) this.S.b(oj3Var)).intValue() != ((Number) divInput.S.b(oj3Var2)).intValue() || !y45.e(this.T, divInput.T)) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divInput.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it9 = listH.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next9).a((DivTooltip) listH2.get(i17), oj3Var, oj3Var2)) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divInput.h() == null;
        }
        if (!z9) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA9 = divTransformM.a(divInput.m(), oj3Var, oj3Var2);
        } else {
            zA9 = divInput.m() == null;
        }
        if (!zA9) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA10 = divChangeTransitionJ.a(divInput.j(), oj3Var, oj3Var2);
        } else {
            zA10 = divInput.j() == null;
        }
        if (!zA10) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA11 = divAppearanceTransitionZ.a(divInput.z(), oj3Var, oj3Var2);
        } else {
            zA11 = divInput.z() == null;
        }
        if (!zA11) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA12 = divAppearanceTransitionI.a(divInput.i(), oj3Var, oj3Var2);
        } else {
            zA12 = divInput.i() == null;
        }
        if (!zA12) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divInput.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it10 = listN.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next10) == ((DivTransitionTrigger) listN2.get(i19))) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divInput.n() == null;
        }
        if (!z10) {
            return false;
        }
        List list5 = this.a0;
        if (list5 != null) {
            List list6 = divInput.a0;
            if (list6 == null) {
                return false;
            }
            if (list5.size() == list6.size()) {
                Iterator it11 = list5.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivInputValidator) next11).a((DivInputValidator) list6.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divInput.a0 == null;
        }
        if (!z11) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divInput.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it12 = listW.iterator();
                int i23 = 0;
                while (true) {
                    if (it12.hasNext()) {
                        Object next12 = it12.next();
                        int i24 = i23 + 1;
                        if (i23 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next12).a((DivTrigger) listW2.get(i23), oj3Var, oj3Var2)) {
                            i23 = i24;
                        }
                    }
                }
            }
        } else {
            z12 = divInput.w() == null;
        }
        if (!z12) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divInput.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it13 = listC.iterator();
                int i25 = 0;
                while (true) {
                    if (it13.hasNext()) {
                        Object next13 = it13.next();
                        int i26 = i25 + 1;
                        if (i25 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next13).a((DivVariable) listC2.get(i25), oj3Var, oj3Var2)) {
                            i25 = i26;
                        }
                    }
                }
            }
        } else {
            z13 = divInput.c() == null;
        }
        if (!z13 || getVisibility().b(oj3Var) != divInput.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divInput.x(), oj3Var, oj3Var2);
        } else {
            zG = divInput.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divInput.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it14 = listA3.iterator();
                int i27 = 0;
                while (true) {
                    if (it14.hasNext()) {
                        Object next14 = it14.next();
                        int i28 = i27 + 1;
                        if (i27 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next14).g((DivVisibilityAction) listA4.get(i27), oj3Var, oj3Var2)) {
                            i27 = i28;
                        }
                    }
                }
            }
        } else {
            z14 = divInput.a() == null;
        }
        return z14 && getWidth().a(divInput.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.f0;
    }

    @Override
    public Expression b() {
        return this.i;
    }

    @Override
    public List c() {
        return this.c0;
    }

    @Override
    public DivEdgeInsets d() {
        return this.G;
    }

    @Override
    public Expression e() {
        return this.N;
    }

    @Override
    public Expression f() {
        return this.M;
    }

    @Override
    public Expression g() {
        return this.b;
    }

    @Override
    public List getBackground() {
        return this.g;
    }

    @Override
    public List getExtensions() {
        return this.m;
    }

    @Override
    public DivSize getHeight() {
        return this.w;
    }

    @Override
    public String getId() {
        return this.A;
    }

    @Override
    public Expression getVisibility() {
        return this.d0;
    }

    @Override
    public DivSize getWidth() {
        return this.g0;
    }

    @Override
    public List h() {
        return this.U;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        int iHash3;
        int iHash4;
        int iHash5;
        int iHash6;
        int iHash7;
        int iHash8;
        int iHash9;
        int iHash10;
        int iHash11;
        int iHash12;
        Integer num = this.h0;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivInput.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash13 = 0;
        int iHash14 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash14 + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode();
        List listA = A();
        if (listA != null) {
            Iterator it = listA.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAnimator) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int iHashCode4 = iHashCode3 + iHash + this.f.hashCode();
        List background = getBackground();
        if (background != null) {
            Iterator it2 = background.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivBackground) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i = iHashCode4 + iHash2;
        DivBorder divBorderB = B();
        int iHash15 = i + (divBorderB != null ? divBorderB.hash() : 0);
        Expression expressionB = b();
        int iHashCode5 = iHash15 + (expressionB != null ? expressionB.hashCode() : 0);
        List listK = k();
        if (listK != null) {
            Iterator it3 = listK.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivDisappearAction) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i2 = iHashCode5 + iHash3;
        List list = this.k;
        if (list != null) {
            Iterator it4 = list.iterator();
            iHash4 = 0;
            while (it4.hasNext()) {
                iHash4 += ((DivAction) it4.next()).hash();
            }
        } else {
            iHash4 = 0;
        }
        int iHashCode6 = i2 + iHash4 + this.l.hashCode();
        List extensions = getExtensions();
        if (extensions != null) {
            Iterator it5 = extensions.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivExtension) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int i3 = iHashCode6 + iHash5;
        List list2 = this.n;
        if (list2 != null) {
            Iterator it6 = list2.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((DivInputFilter) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i4 = i3 + iHash6;
        DivFocus divFocusQ = q();
        int iHash16 = i4 + (divFocusQ != null ? divFocusQ.hash() : 0);
        Expression expression = this.p;
        int iHashCode7 = iHash16 + (expression != null ? expression.hashCode() : 0) + this.q.hashCode() + this.r.hashCode();
        Expression expression2 = this.s;
        int iHashCode8 = iHashCode7 + (expression2 != null ? expression2.hashCode() : 0) + this.t.hashCode();
        Expression expression3 = this.u;
        int iHashCode9 = iHashCode8 + (expression3 != null ? expression3.hashCode() : 0);
        List listY = y();
        if (listY != null) {
            Iterator it7 = listY.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivFunction) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int iHash17 = iHashCode9 + iHash7 + getHeight().hash();
        Expression expression4 = this.x;
        int iHashCode10 = iHash17 + (expression4 != null ? expression4.hashCode() : 0) + this.y.hashCode();
        Expression expression5 = this.z;
        int iHashCode11 = iHashCode10 + (expression5 != null ? expression5.hashCode() : 0);
        String id = getId();
        int iHashCode12 = iHashCode11 + (id != null ? id.hashCode() : 0) + this.B.hashCode() + this.C.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash18 = iHashCode12 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0) + this.E.hashCode();
        Expression expression6 = this.F;
        int iHashCode13 = iHash18 + (expression6 != null ? expression6.hashCode() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash19 = iHashCode13 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        DivInputMask divInputMask = this.H;
        int iHash20 = iHash19 + (divInputMask != null ? divInputMask.hash() : 0);
        Expression expression7 = this.I;
        int iHashCode14 = iHash20 + (expression7 != null ? expression7.hashCode() : 0);
        Expression expression8 = this.J;
        int iHashCode15 = iHashCode14 + (expression8 != null ? expression8.hashCode() : 0);
        NativeInterface nativeInterface = this.K;
        int iHash21 = iHashCode15 + (nativeInterface != null ? nativeInterface.hash() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash22 = iHash21 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        Expression expressionF = f();
        int iHashCode16 = iHash22 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode17 = iHashCode16 + (expressionE != null ? expressionE.hashCode() : 0) + this.O.hashCode();
        List listU = u();
        if (listU != null) {
            Iterator it8 = listU.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivAction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int iHashCode18 = iHashCode17 + iHash8 + this.Q.hashCode() + this.R.hashCode() + this.S.hashCode() + this.T.hashCode();
        List listH = h();
        if (listH != null) {
            Iterator it9 = listH.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivTooltip) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int i5 = iHashCode18 + iHash9;
        DivTransform divTransformM = m();
        int iHash23 = i5 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash24 = iHash23 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash25 = iHash24 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash26 = iHash25 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode19 = iHash26 + (listN != null ? listN.hashCode() : 0);
        List list3 = this.a0;
        if (list3 != null) {
            Iterator it10 = list3.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((DivInputValidator) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i6 = iHashCode19 + iHash10;
        List listW = w();
        if (listW != null) {
            Iterator it11 = listW.iterator();
            iHash11 = 0;
            while (it11.hasNext()) {
                iHash11 += ((DivTrigger) it11.next()).hash();
            }
        } else {
            iHash11 = 0;
        }
        int i7 = i6 + iHash11;
        List listC = c();
        if (listC != null) {
            Iterator it12 = listC.iterator();
            iHash12 = 0;
            while (it12.hasNext()) {
                iHash12 += ((DivVariable) it12.next()).hash();
            }
        } else {
            iHash12 = 0;
        }
        int iHashCode20 = i7 + iHash12 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash27 = iHashCode20 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it13 = listA2.iterator();
            while (it13.hasNext()) {
                iHash13 += ((DivVisibilityAction) it13.next()).hash();
            }
        }
        int iHash28 = iHash27 + iHash13 + getWidth().hash();
        this.h0 = Integer.valueOf(iHash28);
        return iHash28;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.Y;
    }

    @Override
    public DivChangeTransition j() {
        return this.W;
    }

    @Override
    public List k() {
        return this.j;
    }

    @Override
    public DivTransform m() {
        return this.V;
    }

    @Override
    public List n() {
        return this.Z;
    }

    @Override
    public Expression o() {
        return this.c;
    }

    @Override
    public Expression p() {
        return this.d;
    }

    @Override
    public DivFocus q() {
        return this.o;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivInputJsonParser.b) ml0.a().p4().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.L;
    }

    @Override
    public List u() {
        return this.P;
    }

    @Override
    public DivLayoutProvider v() {
        return this.D;
    }

    @Override
    public List w() {
        return this.b0;
    }

    @Override
    public DivVisibilityAction x() {
        return this.e0;
    }

    @Override
    public List y() {
        return this.v;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.X;
    }
}
