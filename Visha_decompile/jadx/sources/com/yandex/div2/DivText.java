package com.yandex.div2;

import androidx.media3.common.C;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
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
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivText implements d65, ko4, og2 {
    public static final Expression A0;
    public static final Expression B0;
    public static final Expression C0;
    public static final Expression D0;
    public static final Expression E0;
    public static final Expression F0;
    public static final Expression G0;
    public static final Expression H0;
    public static final Expression I0;
    public static final Expression J0;
    public static final DivSize.c K0;
    public static final s74 L0;
    public static final a s0 = new a(null);
    public static final DivAnimation t0;
    public static final Expression u0;
    public static final Expression v0;
    public static final Expression w0;
    public static final Expression x0;
    public static final Expression y0;
    public static final DivSize.d z0;
    public final List A;
    public final DivSize B;
    public final List C;
    public final List D;
    public final String E;
    public final List F;
    public final DivLayoutProvider G;
    public final Expression H;
    public final Expression I;
    public final List J;
    public final DivEdgeInsets K;
    public final Expression L;
    public final Expression M;
    public final DivEdgeInsets N;
    public final List O;
    public final List P;
    public final List Q;
    public final Expression R;
    public final Expression S;
    public final Expression T;
    public final List U;
    public final Expression V;
    public final Expression W;
    public final Expression X;
    public final Expression Y;
    public final Expression Z;
    public final DivAccessibility a;
    public final DivTextGradient a0;
    public final DivAction b;
    public final DivShadow b0;
    public final DivAnimation c;
    public final Expression c0;
    public final List d;
    public final List d0;
    public final Expression e;
    public final DivTransform e0;
    public final Expression f;
    public final DivChangeTransition f0;
    public final Expression g;
    public final DivAppearanceTransition g0;
    public final List h;
    public final DivAppearanceTransition h0;
    public final Expression i;
    public final List i0;
    public final List j;
    public final Expression j0;
    public final DivBorder k;
    public final Expression k0;
    public final Expression l;
    public final List l0;
    public final Expression m;
    public final List m0;
    public final List n;
    public final Expression n0;
    public final List o;
    public final DivVisibilityAction o0;
    public final Ellipsis p;
    public final List p0;
    public final List q;
    public final DivSize q0;
    public final DivFocus r;
    public Integer r0;
    public final Expression s;
    public final Expression t;
    public final Expression u;
    public final Expression v;
    public final Expression w;
    public final Expression x;
    public final Expression y;
    public final Expression z;

    public static final class Ellipsis implements d65, ko4 {
        public static final a f = new a(null);
        public static final s74 g = new s74() {
            @Override
            public final DivText.Ellipsis invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivText.Ellipsis.f.a(hx7Var, jSONObject);
            }
        };
        public final List a;
        public final List b;
        public final List c;
        public final Expression d;
        public Integer e;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Ellipsis a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((g4) ml0.a().X7().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Ellipsis(List list, List list2, List list3, Expression expression) {
            y45.j(expression, "text");
            this.a = list;
            this.b = list2;
            this.c = list3;
            this.d = expression;
        }

        public final boolean a(Ellipsis ellipsis, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (ellipsis == null) {
                return false;
            }
            List list = this.a;
            if (list != null) {
                List list2 = ellipsis.a;
                if (list2 == null || list.size() != list2.size()) {
                    return false;
                }
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    if (!((DivAction) obj).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                        return false;
                    }
                    i = i2;
                }
            } else if (ellipsis.a != null) {
                return false;
            }
            List list3 = this.b;
            if (list3 != null) {
                List list4 = ellipsis.b;
                if (list4 == null || list3.size() != list4.size()) {
                    return false;
                }
                int i3 = 0;
                for (Object obj2 : list3) {
                    int i4 = i3 + 1;
                    if (i3 < 0) {
                        y71.u();
                    }
                    if (!((Image) obj2).a((Image) list4.get(i3), oj3Var, oj3Var2)) {
                        return false;
                    }
                    i3 = i4;
                }
            } else if (ellipsis.b != null) {
                return false;
            }
            List list5 = this.c;
            if (list5 != null) {
                List list6 = ellipsis.c;
                if (list6 == null || list5.size() != list6.size()) {
                    return false;
                }
                int i5 = 0;
                for (Object obj3 : list5) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        y71.u();
                    }
                    if (!((Range) obj3).a((Range) list6.get(i5), oj3Var, oj3Var2)) {
                        return false;
                    }
                    i5 = i6;
                }
            } else if (ellipsis.c != null) {
                return false;
            }
            return y45.e(this.d.b(oj3Var), ellipsis.d.b(oj3Var2));
        }

        @Override
        public int hash() {
            int iHash;
            int iHash2;
            Integer num = this.e;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Ellipsis.class).hashCode();
            List list = this.a;
            int iHash3 = 0;
            if (list != null) {
                Iterator it = list.iterator();
                iHash = 0;
                while (it.hasNext()) {
                    iHash += ((DivAction) it.next()).hash();
                }
            } else {
                iHash = 0;
            }
            int i = iHashCode + iHash;
            List list2 = this.b;
            if (list2 != null) {
                Iterator it2 = list2.iterator();
                iHash2 = 0;
                while (it2.hasNext()) {
                    iHash2 += ((Image) it2.next()).hash();
                }
            } else {
                iHash2 = 0;
            }
            int i2 = i + iHash2;
            List list3 = this.c;
            if (list3 != null) {
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    iHash3 += ((Range) it3.next()).hash();
                }
            }
            int iHashCode2 = i2 + iHash3 + this.d.hashCode();
            this.e = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((g4) ml0.a().X7().getValue()).b(ml0.b(), this);
        }
    }

    public static final class Image implements d65, ko4 {
        public static final a l = new a(null);
        public static final Expression m;
        public static final DivFixedSize n;
        public static final Expression o;
        public static final Expression p;
        public static final Expression q;
        public static final DivFixedSize r;
        public static final s74 s;
        public final Accessibility a;
        public final Expression b;
        public final DivFixedSize c;
        public final Expression d;
        public final Expression e;
        public final Expression f;
        public final Expression g;
        public final Expression h;
        public final Expression i;
        public final DivFixedSize j;
        public Integer k;

        public static final class Accessibility implements d65, ko4 {
            public static final a d = new a(null);
            public static final Type e = Type.AUTO;
            public static final s74 f = new s74() {
                @Override
                public final DivText.Image.Accessibility invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivText.Image.Accessibility.d.a(hx7Var, jSONObject);
                }
            };
            public final Expression a;
            public final Type b;
            public Integer c;

            @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/yandex/div2/DivText$Image$Accessibility$Type;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NONE", "BUTTON", "IMAGE", "TEXT", "AUTO", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            public enum Type {
                NONE("none"),
                BUTTON(AuthInfo.Component.CODE_BUTTON),
                IMAGE("image"),
                TEXT("text"),
                AUTO(TtmlNode.TEXT_EMPHASIS_AUTO);

                private final String value;

                public static final Companion INSTANCE = new Companion(null);
                public static final e74 TO_STRING = new e74() {
                    @Override
                    public final String invoke(DivText.Image.Accessibility.Type type) {
                        y45.j(type, ES6Iterator.VALUE_PROPERTY);
                        return DivText.Image.Accessibility.Type.INSTANCE.b(type);
                    }
                };
                public static final e74 FROM_STRING = new e74() {
                    @Override
                    public final DivText.Image.Accessibility.Type invoke(String str) {
                        y45.j(str, ES6Iterator.VALUE_PROPERTY);
                        return DivText.Image.Accessibility.Type.INSTANCE.a(str);
                    }
                };

                public static final class Companion {
                    public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    public final Type a(String str) {
                        y45.j(str, ES6Iterator.VALUE_PROPERTY);
                        Type type = Type.NONE;
                        if (y45.e(str, type.value)) {
                            return type;
                        }
                        Type type2 = Type.BUTTON;
                        if (y45.e(str, type2.value)) {
                            return type2;
                        }
                        Type type3 = Type.IMAGE;
                        if (y45.e(str, type3.value)) {
                            return type3;
                        }
                        Type type4 = Type.TEXT;
                        if (y45.e(str, type4.value)) {
                            return type4;
                        }
                        Type type5 = Type.AUTO;
                        if (y45.e(str, type5.value)) {
                            return type5;
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

            public static final class a {
                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final Accessibility a(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "json");
                    return ((m4.b) ml0.a().d8().getValue()).a(hx7Var, jSONObject);
                }

                public a() {
                }
            }

            public Accessibility(Expression expression, Type type) {
                y45.j(type, "type");
                this.a = expression;
                this.b = type;
            }

            public final boolean a(Accessibility accessibility, oj3 oj3Var, oj3 oj3Var2) {
                y45.j(oj3Var, "resolver");
                y45.j(oj3Var2, "otherResolver");
                if (accessibility == null) {
                    return false;
                }
                Expression expression = this.a;
                String str = expression != null ? (String) expression.b(oj3Var) : null;
                Expression expression2 = accessibility.a;
                return y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) && this.b == accessibility.b;
            }

            @Override
            public int hash() {
                Integer num = this.c;
                if (num != null) {
                    return num.intValue();
                }
                int iHashCode = xq8.b(Accessibility.class).hashCode();
                Expression expression = this.a;
                int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hashCode();
                this.c = Integer.valueOf(iHashCode2);
                return iHashCode2;
            }

            @Override
            public JSONObject s() {
                return ((m4.b) ml0.a().d8().getValue()).b(ml0.b(), this);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div2/DivText$Image$IndexingDirection;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NORMAL", "REVERSED", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum IndexingDirection {
            NORMAL("normal"),
            REVERSED("reversed");

            private final String value;

            public static final Companion INSTANCE = new Companion(null);
            public static final e74 TO_STRING = new e74() {
                @Override
                public final String invoke(DivText.Image.IndexingDirection indexingDirection) {
                    y45.j(indexingDirection, ES6Iterator.VALUE_PROPERTY);
                    return DivText.Image.IndexingDirection.INSTANCE.b(indexingDirection);
                }
            };
            public static final e74 FROM_STRING = new e74() {
                @Override
                public final DivText.Image.IndexingDirection invoke(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    return DivText.Image.IndexingDirection.INSTANCE.a(str);
                }
            };

            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final IndexingDirection a(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    IndexingDirection indexingDirection = IndexingDirection.NORMAL;
                    if (y45.e(str, indexingDirection.value)) {
                        return indexingDirection;
                    }
                    IndexingDirection indexingDirection2 = IndexingDirection.REVERSED;
                    if (y45.e(str, indexingDirection2.value)) {
                        return indexingDirection2;
                    }
                    return null;
                }

                public final String b(IndexingDirection indexingDirection) {
                    y45.j(indexingDirection, "obj");
                    return indexingDirection.value;
                }

                public Companion() {
                }
            }

            IndexingDirection(String str) {
                this.value = str;
            }
        }

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Image a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivTextImageJsonParser.b) ml0.a().g8().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        static {
            Expression.a aVar = Expression.a;
            m = aVar.a(DivTextAlignmentVertical.CENTER);
            int i = 1;
            n = new DivFixedSize(null == true ? 1 : 0, aVar.a(20L), i, null == true ? 1 : 0);
            o = aVar.a(IndexingDirection.NORMAL);
            p = aVar.a(Boolean.FALSE);
            q = aVar.a(DivBlendMode.SOURCE_IN);
            r = new DivFixedSize(null == true ? 1 : 0, aVar.a(20L), i, null == true ? 1 : 0);
            s = new s74() {
                @Override
                public final DivText.Image invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivText.Image.l.a(hx7Var, jSONObject);
                }
            };
        }

        public Image(Accessibility accessibility, Expression expression, DivFixedSize divFixedSize, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, DivFixedSize divFixedSize2) {
            y45.j(expression, "alignmentVertical");
            y45.j(divFixedSize, "height");
            y45.j(expression2, "indexingDirection");
            y45.j(expression3, "preloadRequired");
            y45.j(expression4, TtmlNode.START);
            y45.j(expression6, "tintMode");
            y45.j(expression7, "url");
            y45.j(divFixedSize2, "width");
            this.a = accessibility;
            this.b = expression;
            this.c = divFixedSize;
            this.d = expression2;
            this.e = expression3;
            this.f = expression4;
            this.g = expression5;
            this.h = expression6;
            this.i = expression7;
            this.j = divFixedSize2;
        }

        public final boolean a(Image image, oj3 oj3Var, oj3 oj3Var2) {
            boolean zA;
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (image == null) {
                return false;
            }
            Accessibility accessibility = this.a;
            if (accessibility != null) {
                zA = accessibility.a(image.a, oj3Var, oj3Var2);
            } else {
                zA = image.a == null;
            }
            if (!zA || this.b.b(oj3Var) != image.b.b(oj3Var2) || !this.c.a(image.c, oj3Var, oj3Var2) || this.d.b(oj3Var) != image.d.b(oj3Var2) || ((Boolean) this.e.b(oj3Var)).booleanValue() != ((Boolean) image.e.b(oj3Var2)).booleanValue() || ((Number) this.f.b(oj3Var)).longValue() != ((Number) image.f.b(oj3Var2)).longValue()) {
                return false;
            }
            Expression expression = this.g;
            Integer num = expression != null ? (Integer) expression.b(oj3Var) : null;
            Expression expression2 = image.g;
            return y45.e(num, expression2 != null ? (Integer) expression2.b(oj3Var2) : null) && this.h.b(oj3Var) == image.h.b(oj3Var2) && y45.e(this.i.b(oj3Var), image.i.b(oj3Var2)) && this.j.a(image.j, oj3Var, oj3Var2);
        }

        @Override
        public int hash() {
            Integer num = this.k;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Image.class).hashCode();
            Accessibility accessibility = this.a;
            int iHash = iHashCode + (accessibility != null ? accessibility.hash() : 0) + this.b.hashCode() + this.c.hash() + this.d.hashCode() + this.e.hashCode() + this.f.hashCode();
            Expression expression = this.g;
            int iHashCode2 = iHash + (expression != null ? expression.hashCode() : 0) + this.h.hashCode() + this.i.hashCode() + this.j.hash();
            this.k = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((DivTextImageJsonParser.b) ml0.a().g8().getValue()).b(ml0.b(), this);
        }
    }

    public static final class Range implements d65, ko4 {
        public static final Expression A;
        public static final s74 B;
        public static final a x = new a(null);
        public static final Expression y;
        public static final Expression z;
        public final List a;
        public final Expression b;
        public final DivTextRangeBackground c;
        public final Expression d;
        public final DivTextRangeBorder e;
        public final Expression f;
        public final Expression g;
        public final Expression h;
        public final Expression i;
        public final Expression j;
        public final Expression k;
        public final Expression l;
        public final Expression m;
        public final Expression n;
        public final Expression o;
        public final DivTextRangeMask p;
        public final Expression q;
        public final Expression r;
        public final Expression s;
        public final DivShadow t;
        public final Expression u;
        public final Expression v;
        public Integer w;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Range a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivTextRangeJsonParser.b) ml0.a().s8().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        static {
            Expression.a aVar = Expression.a;
            y = aVar.a(Double.valueOf(0.0d));
            z = aVar.a(DivSizeUnit.SP);
            A = aVar.a(0L);
            B = new s74() {
                @Override
                public final DivText.Range invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivText.Range.x.a(hx7Var, jSONObject);
                }
            };
        }

        public Range(List list, Expression expression, DivTextRangeBackground divTextRangeBackground, Expression expression2, DivTextRangeBorder divTextRangeBorder, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, DivTextRangeMask divTextRangeMask, Expression expression13, Expression expression14, Expression expression15, DivShadow divShadow, Expression expression16, Expression expression17) {
            y45.j(expression2, "baselineOffset");
            y45.j(expression7, "fontSizeUnit");
            y45.j(expression13, TtmlNode.START);
            this.a = list;
            this.b = expression;
            this.c = divTextRangeBackground;
            this.d = expression2;
            this.e = divTextRangeBorder;
            this.f = expression3;
            this.g = expression4;
            this.h = expression5;
            this.i = expression6;
            this.j = expression7;
            this.k = expression8;
            this.l = expression9;
            this.m = expression10;
            this.n = expression11;
            this.o = expression12;
            this.p = divTextRangeMask;
            this.q = expression13;
            this.r = expression14;
            this.s = expression15;
            this.t = divShadow;
            this.u = expression16;
            this.v = expression17;
        }

        public final boolean a(Range range, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (range == null) {
                return false;
            }
            List list = this.a;
            if (list != null) {
                List list2 = range.a;
                if (list2 == null || list.size() != list2.size()) {
                    return false;
                }
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    if (!((DivAction) obj).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                        return false;
                    }
                    i = i2;
                }
            } else if (range.a != null) {
                return false;
            }
            Expression expression = this.b;
            DivTextAlignmentVertical divTextAlignmentVertical = expression != null ? (DivTextAlignmentVertical) expression.b(oj3Var) : null;
            Expression expression2 = range.b;
            if (divTextAlignmentVertical != (expression2 != null ? (DivTextAlignmentVertical) expression2.b(oj3Var2) : null)) {
                return false;
            }
            DivTextRangeBackground divTextRangeBackground = this.c;
            if (!(divTextRangeBackground != null ? divTextRangeBackground.a(range.c, oj3Var, oj3Var2) : range.c == null)) {
                return false;
            }
            if (!(((Number) this.d.b(oj3Var)).doubleValue() == ((Number) range.d.b(oj3Var2)).doubleValue())) {
                return false;
            }
            DivTextRangeBorder divTextRangeBorder = this.e;
            if (!(divTextRangeBorder != null ? divTextRangeBorder.a(range.e, oj3Var, oj3Var2) : range.e == null)) {
                return false;
            }
            Expression expression3 = this.f;
            Long l = expression3 != null ? (Long) expression3.b(oj3Var) : null;
            Expression expression4 = range.f;
            if (!y45.e(l, expression4 != null ? (Long) expression4.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression5 = this.g;
            String str = expression5 != null ? (String) expression5.b(oj3Var) : null;
            Expression expression6 = range.g;
            if (!y45.e(str, expression6 != null ? (String) expression6.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression7 = this.h;
            String str2 = expression7 != null ? (String) expression7.b(oj3Var) : null;
            Expression expression8 = range.h;
            if (!y45.e(str2, expression8 != null ? (String) expression8.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression9 = this.i;
            Long l2 = expression9 != null ? (Long) expression9.b(oj3Var) : null;
            Expression expression10 = range.i;
            if (!y45.e(l2, expression10 != null ? (Long) expression10.b(oj3Var2) : null) || this.j.b(oj3Var) != range.j.b(oj3Var2)) {
                return false;
            }
            Expression expression11 = this.k;
            JSONObject jSONObject = expression11 != null ? (JSONObject) expression11.b(oj3Var) : null;
            Expression expression12 = range.k;
            if (!y45.e(jSONObject, expression12 != null ? (JSONObject) expression12.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression13 = this.l;
            DivFontWeight divFontWeight = expression13 != null ? (DivFontWeight) expression13.b(oj3Var) : null;
            Expression expression14 = range.l;
            if (divFontWeight != (expression14 != null ? (DivFontWeight) expression14.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression15 = this.m;
            Long l3 = expression15 != null ? (Long) expression15.b(oj3Var) : null;
            Expression expression16 = range.m;
            if (!y45.e(l3, expression16 != null ? (Long) expression16.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression17 = this.n;
            Double d = expression17 != null ? (Double) expression17.b(oj3Var) : null;
            Expression expression18 = range.n;
            if (!y45.b(d, expression18 != null ? (Double) expression18.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression19 = this.o;
            Long l4 = expression19 != null ? (Long) expression19.b(oj3Var) : null;
            Expression expression20 = range.o;
            if (!y45.e(l4, expression20 != null ? (Long) expression20.b(oj3Var2) : null)) {
                return false;
            }
            DivTextRangeMask divTextRangeMask = this.p;
            if (!(divTextRangeMask != null ? divTextRangeMask.a(range.p, oj3Var, oj3Var2) : range.p == null) || ((Number) this.q.b(oj3Var)).longValue() != ((Number) range.q.b(oj3Var2)).longValue()) {
                return false;
            }
            Expression expression21 = this.r;
            DivLineStyle divLineStyle = expression21 != null ? (DivLineStyle) expression21.b(oj3Var) : null;
            Expression expression22 = range.r;
            if (divLineStyle != (expression22 != null ? (DivLineStyle) expression22.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression23 = this.s;
            Integer num = expression23 != null ? (Integer) expression23.b(oj3Var) : null;
            Expression expression24 = range.s;
            if (!y45.e(num, expression24 != null ? (Integer) expression24.b(oj3Var2) : null)) {
                return false;
            }
            DivShadow divShadow = this.t;
            if (!(divShadow != null ? divShadow.a(range.t, oj3Var, oj3Var2) : range.t == null)) {
                return false;
            }
            Expression expression25 = this.u;
            Long l5 = expression25 != null ? (Long) expression25.b(oj3Var) : null;
            Expression expression26 = range.u;
            if (!y45.e(l5, expression26 != null ? (Long) expression26.b(oj3Var2) : null)) {
                return false;
            }
            Expression expression27 = this.v;
            DivLineStyle divLineStyle2 = expression27 != null ? (DivLineStyle) expression27.b(oj3Var) : null;
            Expression expression28 = range.v;
            return divLineStyle2 == (expression28 != null ? (DivLineStyle) expression28.b(oj3Var2) : null);
        }

        @Override
        public int hash() {
            int iHash;
            Integer num = this.w;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Range.class).hashCode();
            List list = this.a;
            if (list != null) {
                Iterator it = list.iterator();
                iHash = 0;
                while (it.hasNext()) {
                    iHash += ((DivAction) it.next()).hash();
                }
            } else {
                iHash = 0;
            }
            int i = iHashCode + iHash;
            Expression expression = this.b;
            int iHashCode2 = i + (expression != null ? expression.hashCode() : 0);
            DivTextRangeBackground divTextRangeBackground = this.c;
            int iHash2 = iHashCode2 + (divTextRangeBackground != null ? divTextRangeBackground.hash() : 0) + this.d.hashCode();
            DivTextRangeBorder divTextRangeBorder = this.e;
            int iHash3 = iHash2 + (divTextRangeBorder != null ? divTextRangeBorder.hash() : 0);
            Expression expression2 = this.f;
            int iHashCode3 = iHash3 + (expression2 != null ? expression2.hashCode() : 0);
            Expression expression3 = this.g;
            int iHashCode4 = iHashCode3 + (expression3 != null ? expression3.hashCode() : 0);
            Expression expression4 = this.h;
            int iHashCode5 = iHashCode4 + (expression4 != null ? expression4.hashCode() : 0);
            Expression expression5 = this.i;
            int iHashCode6 = iHashCode5 + (expression5 != null ? expression5.hashCode() : 0) + this.j.hashCode();
            Expression expression6 = this.k;
            int iHashCode7 = iHashCode6 + (expression6 != null ? expression6.hashCode() : 0);
            Expression expression7 = this.l;
            int iHashCode8 = iHashCode7 + (expression7 != null ? expression7.hashCode() : 0);
            Expression expression8 = this.m;
            int iHashCode9 = iHashCode8 + (expression8 != null ? expression8.hashCode() : 0);
            Expression expression9 = this.n;
            int iHashCode10 = iHashCode9 + (expression9 != null ? expression9.hashCode() : 0);
            Expression expression10 = this.o;
            int iHashCode11 = iHashCode10 + (expression10 != null ? expression10.hashCode() : 0);
            DivTextRangeMask divTextRangeMask = this.p;
            int iHash4 = iHashCode11 + (divTextRangeMask != null ? divTextRangeMask.hash() : 0) + this.q.hashCode();
            Expression expression11 = this.r;
            int iHashCode12 = iHash4 + (expression11 != null ? expression11.hashCode() : 0);
            Expression expression12 = this.s;
            int iHashCode13 = iHashCode12 + (expression12 != null ? expression12.hashCode() : 0);
            DivShadow divShadow = this.t;
            int iHash5 = iHashCode13 + (divShadow != null ? divShadow.hash() : 0);
            Expression expression13 = this.u;
            int iHashCode14 = iHash5 + (expression13 != null ? expression13.hashCode() : 0);
            Expression expression14 = this.v;
            int iHashCode15 = iHashCode14 + (expression14 != null ? expression14.hashCode() : 0);
            this.w = Integer.valueOf(iHashCode15);
            return iHashCode15;
        }

        @Override
        public JSONObject s() {
            return ((DivTextRangeJsonParser.b) ml0.a().s8().getValue()).b(ml0.b(), this);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/yandex/div2/DivText$Truncate;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "NONE", "START", "END", "MIDDLE", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum Truncate {
        NONE("none"),
        START(TtmlNode.START),
        END(TtmlNode.END),
        MIDDLE("middle");

        private final String value;

        public static final Companion INSTANCE = new Companion(null);
        public static final e74 TO_STRING = new e74() {
            @Override
            public final String invoke(DivText.Truncate truncate) {
                y45.j(truncate, ES6Iterator.VALUE_PROPERTY);
                return DivText.Truncate.INSTANCE.b(truncate);
            }
        };
        public static final e74 FROM_STRING = new e74() {
            @Override
            public final DivText.Truncate invoke(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                return DivText.Truncate.INSTANCE.a(str);
            }
        };

        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Truncate a(String str) {
                y45.j(str, ES6Iterator.VALUE_PROPERTY);
                Truncate truncate = Truncate.NONE;
                if (y45.e(str, truncate.value)) {
                    return truncate;
                }
                Truncate truncate2 = Truncate.START;
                if (y45.e(str, truncate2.value)) {
                    return truncate2;
                }
                Truncate truncate3 = Truncate.END;
                if (y45.e(str, truncate3.value)) {
                    return truncate3;
                }
                Truncate truncate4 = Truncate.MIDDLE;
                if (y45.e(str, truncate4.value)) {
                    return truncate4;
                }
                return null;
            }

            public final String b(Truncate truncate) {
                y45.j(truncate, "obj");
                return truncate.value;
            }

            public Companion() {
            }
        }

        Truncate(String str) {
            this.value = str;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivText a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivTextJsonParser.b) ml0.a().j8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        Expression expressionA = aVar.a(100L);
        Expression expressionA2 = aVar.a(Double.valueOf(0.6d));
        Expression expressionA3 = aVar.a(DivAnimation.Name.FADE);
        Double dValueOf = Double.valueOf(1.0d);
        t0 = new DivAnimation(expressionA, expressionA2, null, null, expressionA3, null, null, aVar.a(dValueOf), 108, null);
        u0 = aVar.a(dValueOf);
        v0 = aVar.a(Boolean.TRUE);
        w0 = aVar.a(12L);
        x0 = aVar.a(DivSizeUnit.SP);
        y0 = aVar.a(DivFontWeight.REGULAR);
        z0 = new DivSize.d(new DivWrapContentSize(null, null, null == true ? 1 : 0, 7, null));
        A0 = aVar.a(Double.valueOf(0.0d));
        Boolean bool = Boolean.FALSE;
        B0 = aVar.a(bool);
        DivLineStyle divLineStyle = DivLineStyle.NONE;
        C0 = aVar.a(divLineStyle);
        D0 = aVar.a(DivAlignmentHorizontal.START);
        E0 = aVar.a(DivAlignmentVertical.TOP);
        F0 = aVar.a(-16777216);
        G0 = aVar.a(bool);
        H0 = aVar.a(Truncate.END);
        I0 = aVar.a(divLineStyle);
        J0 = aVar.a(DivVisibility.VISIBLE);
        K0 = new DivSize.c(new DivMatchParentSize(null == true ? 1 : 0, 1, null == true ? 1 : 0));
        L0 = new s74() {
            @Override
            public final DivText invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivText.s0.a(hx7Var, jSONObject);
            }
        };
    }

    public DivText(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, Expression expression4, List list3, DivBorder divBorder, Expression expression5, Expression expression6, List list4, List list5, Ellipsis ellipsis, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, Expression expression15, Expression expression16, List list11, DivEdgeInsets divEdgeInsets, Expression expression17, Expression expression18, DivEdgeInsets divEdgeInsets2, List list12, List list13, List list14, Expression expression19, Expression expression20, Expression expression21, List list15, Expression expression22, Expression expression23, Expression expression24, Expression expression25, Expression expression26, DivTextGradient divTextGradient, DivShadow divShadow, Expression expression27, List list16, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list17, Expression expression28, Expression expression29, List list18, List list19, Expression expression30, DivVisibilityAction divVisibilityAction, List list20, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression5, "captureFocusOnAction");
        y45.j(expression10, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression11, "fontSizeUnit");
        y45.j(expression13, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression15, "letterSpacing");
        y45.j(expression21, "selectable");
        y45.j(expression22, "strike");
        y45.j(expression23, "text");
        y45.j(expression24, "textAlignmentHorizontal");
        y45.j(expression25, "textAlignmentVertical");
        y45.j(expression26, "textColor");
        y45.j(expression27, "tightenWidth");
        y45.j(expression28, "truncate");
        y45.j(expression29, TtmlNode.UNDERLINE);
        y45.j(expression30, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = divAction;
        this.c = divAnimation;
        this.d = list;
        this.e = expression;
        this.f = expression2;
        this.g = expression3;
        this.h = list2;
        this.i = expression4;
        this.j = list3;
        this.k = divBorder;
        this.l = expression5;
        this.m = expression6;
        this.n = list4;
        this.o = list5;
        this.p = ellipsis;
        this.q = list6;
        this.r = divFocus;
        this.s = expression7;
        this.t = expression8;
        this.u = expression9;
        this.v = expression10;
        this.w = expression11;
        this.x = expression12;
        this.y = expression13;
        this.z = expression14;
        this.A = list7;
        this.B = divSize;
        this.C = list8;
        this.D = list9;
        this.E = str;
        this.F = list10;
        this.G = divLayoutProvider;
        this.H = expression15;
        this.I = expression16;
        this.J = list11;
        this.K = divEdgeInsets;
        this.L = expression17;
        this.M = expression18;
        this.N = divEdgeInsets2;
        this.O = list12;
        this.P = list13;
        this.Q = list14;
        this.R = expression19;
        this.S = expression20;
        this.T = expression21;
        this.U = list15;
        this.V = expression22;
        this.W = expression23;
        this.X = expression24;
        this.Y = expression25;
        this.Z = expression26;
        this.a0 = divTextGradient;
        this.b0 = divShadow;
        this.c0 = expression27;
        this.d0 = list16;
        this.e0 = divTransform;
        this.f0 = divChangeTransition;
        this.g0 = divAppearanceTransition;
        this.h0 = divAppearanceTransition2;
        this.i0 = list17;
        this.j0 = expression28;
        this.k0 = expression29;
        this.l0 = list18;
        this.m0 = list19;
        this.n0 = expression30;
        this.o0 = divVisibilityAction;
        this.p0 = list20;
        this.q0 = divSize2;
    }

    public static DivText D(DivText divText, DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, Expression expression4, List list3, DivBorder divBorder, Expression expression5, Expression expression6, List list4, List list5, Ellipsis ellipsis, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, Expression expression15, Expression expression16, List list11, DivEdgeInsets divEdgeInsets, Expression expression17, Expression expression18, DivEdgeInsets divEdgeInsets2, List list12, List list13, List list14, Expression expression19, Expression expression20, Expression expression21, List list15, Expression expression22, Expression expression23, Expression expression24, Expression expression25, Expression expression26, DivTextGradient divTextGradient, DivShadow divShadow, Expression expression27, List list16, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list17, Expression expression28, Expression expression29, List list18, List list19, Expression expression30, DivVisibilityAction divVisibilityAction, List list20, DivSize divSize2, int i, int i2, int i3, Object obj) {
        DivAccessibility divAccessibilityR = (i & 1) != 0 ? divText.r() : divAccessibility;
        DivAction divAction2 = (i & 2) != 0 ? divText.b : divAction;
        DivAnimation divAnimation2 = (i & 4) != 0 ? divText.c : divAnimation;
        List list21 = (i & 8) != 0 ? divText.d : list;
        Expression expressionG = (i & 16) != 0 ? divText.g() : expression;
        Expression expressionO = (i & 32) != 0 ? divText.o() : expression2;
        Expression expressionP = (i & 64) != 0 ? divText.p() : expression3;
        List listA = (i & 128) != 0 ? divText.A() : list2;
        Expression expression31 = (i & 256) != 0 ? divText.i : expression4;
        List background = (i & 512) != 0 ? divText.getBackground() : list3;
        DivBorder divBorderB = (i & 1024) != 0 ? divText.B() : divBorder;
        Expression expression32 = (i & 2048) != 0 ? divText.l : expression5;
        Expression expressionB = (i & 4096) != 0 ? divText.b() : expression6;
        List listK = (i & 8192) != 0 ? divText.k() : list4;
        List list22 = (i & 16384) != 0 ? divText.o : list5;
        Ellipsis ellipsis2 = (i & 32768) != 0 ? divText.p : ellipsis;
        List extensions = (i & 65536) != 0 ? divText.getExtensions() : list6;
        DivFocus divFocusQ = (i & 131072) != 0 ? divText.q() : divFocus;
        Ellipsis ellipsis3 = ellipsis2;
        Expression expression33 = (i & 262144) != 0 ? divText.s : expression7;
        Expression expression34 = (i & 524288) != 0 ? divText.t : expression8;
        Expression expression35 = (i & 1048576) != 0 ? divText.u : expression9;
        Expression expression36 = (i & 2097152) != 0 ? divText.v : expression10;
        Expression expression37 = (i & 4194304) != 0 ? divText.w : expression11;
        Expression expression38 = (i & 8388608) != 0 ? divText.x : expression12;
        Expression expression39 = (i & 16777216) != 0 ? divText.y : expression13;
        Expression expression40 = (i & 33554432) != 0 ? divText.z : expression14;
        List listY = (i & 67108864) != 0 ? divText.y() : list7;
        DivSize height = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divText.getHeight() : divSize;
        Expression expression41 = expression40;
        List list23 = (i & 268435456) != 0 ? divText.C : list8;
        List list24 = (i & 536870912) != 0 ? divText.D : list9;
        String id = (i & 1073741824) != 0 ? divText.getId() : str;
        List list25 = (i & Integer.MIN_VALUE) != 0 ? divText.F : list10;
        DivLayoutProvider divLayoutProviderV = (i2 & 1) != 0 ? divText.v() : divLayoutProvider;
        List list26 = list25;
        Expression expression42 = (i2 & 2) != 0 ? divText.H : expression15;
        Expression expression43 = (i2 & 4) != 0 ? divText.I : expression16;
        List list27 = (i2 & 8) != 0 ? divText.J : list11;
        return divText.C(divAccessibilityR, divAction2, divAnimation2, list21, expressionG, expressionO, expressionP, listA, expression31, background, divBorderB, expression32, expressionB, listK, list22, ellipsis3, extensions, divFocusQ, expression33, expression34, expression35, expression36, expression37, expression38, expression39, expression41, listY, height, list23, list24, id, list26, divLayoutProviderV, expression42, expression43, list27, (i2 & 16) != 0 ? divText.d() : divEdgeInsets, (i2 & 32) != 0 ? divText.L : expression17, (i2 & 64) != 0 ? divText.M : expression18, (i2 & 128) != 0 ? divText.t() : divEdgeInsets2, (i2 & 256) != 0 ? divText.O : list12, (i2 & 512) != 0 ? divText.P : list13, (i2 & 1024) != 0 ? divText.Q : list14, (i2 & 2048) != 0 ? divText.f() : expression19, (i2 & 4096) != 0 ? divText.e() : expression20, (i2 & 8192) != 0 ? divText.T : expression21, (i2 & 16384) != 0 ? divText.u() : list15, (i2 & 32768) != 0 ? divText.V : expression22, (i2 & 65536) != 0 ? divText.W : expression23, (i2 & 131072) != 0 ? divText.X : expression24, (i2 & 262144) != 0 ? divText.Y : expression25, (i2 & 524288) != 0 ? divText.Z : expression26, (i2 & 1048576) != 0 ? divText.a0 : divTextGradient, (i2 & 2097152) != 0 ? divText.b0 : divShadow, (i2 & 4194304) != 0 ? divText.c0 : expression27, (i2 & 8388608) != 0 ? divText.h() : list16, (i2 & 16777216) != 0 ? divText.m() : divTransform, (i2 & 33554432) != 0 ? divText.j() : divChangeTransition, (i2 & 67108864) != 0 ? divText.z() : divAppearanceTransition, (i2 & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? divText.i() : divAppearanceTransition2, (i2 & 268435456) != 0 ? divText.n() : list17, (i2 & 536870912) != 0 ? divText.j0 : expression28, (i2 & 1073741824) != 0 ? divText.k0 : expression29, (i2 & Integer.MIN_VALUE) != 0 ? divText.w() : list18, (i3 & 1) != 0 ? divText.c() : list19, (i3 & 2) != 0 ? divText.getVisibility() : expression30, (i3 & 4) != 0 ? divText.x() : divVisibilityAction, (i3 & 8) != 0 ? divText.a() : list20, (i3 & 16) != 0 ? divText.getWidth() : divSize2);
    }

    @Override
    public List A() {
        return this.h;
    }

    @Override
    public DivBorder B() {
        return this.k;
    }

    public final DivText C(DivAccessibility divAccessibility, DivAction divAction, DivAnimation divAnimation, List list, Expression expression, Expression expression2, Expression expression3, List list2, Expression expression4, List list3, DivBorder divBorder, Expression expression5, Expression expression6, List list4, List list5, Ellipsis ellipsis, List list6, DivFocus divFocus, Expression expression7, Expression expression8, Expression expression9, Expression expression10, Expression expression11, Expression expression12, Expression expression13, Expression expression14, List list7, DivSize divSize, List list8, List list9, String str, List list10, DivLayoutProvider divLayoutProvider, Expression expression15, Expression expression16, List list11, DivEdgeInsets divEdgeInsets, Expression expression17, Expression expression18, DivEdgeInsets divEdgeInsets2, List list12, List list13, List list14, Expression expression19, Expression expression20, Expression expression21, List list15, Expression expression22, Expression expression23, Expression expression24, Expression expression25, Expression expression26, DivTextGradient divTextGradient, DivShadow divShadow, Expression expression27, List list16, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list17, Expression expression28, Expression expression29, List list18, List list19, Expression expression30, DivVisibilityAction divVisibilityAction, List list20, DivSize divSize2) {
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression3, "alpha");
        y45.j(expression5, "captureFocusOnAction");
        y45.j(expression10, TtmlNode.ATTR_TTS_FONT_SIZE);
        y45.j(expression11, "fontSizeUnit");
        y45.j(expression13, TtmlNode.ATTR_TTS_FONT_WEIGHT);
        y45.j(divSize, "height");
        y45.j(expression15, "letterSpacing");
        y45.j(expression21, "selectable");
        y45.j(expression22, "strike");
        y45.j(expression23, "text");
        y45.j(expression24, "textAlignmentHorizontal");
        y45.j(expression25, "textAlignmentVertical");
        y45.j(expression26, "textColor");
        y45.j(expression27, "tightenWidth");
        y45.j(expression28, "truncate");
        y45.j(expression29, TtmlNode.UNDERLINE);
        y45.j(expression30, "visibility");
        y45.j(divSize2, "width");
        return new DivText(divAccessibility, divAction, divAnimation, list, expression, expression2, expression3, list2, expression4, list3, divBorder, expression5, expression6, list4, list5, ellipsis, list6, divFocus, expression7, expression8, expression9, expression10, expression11, expression12, expression13, expression14, list7, divSize, list8, list9, str, list10, divLayoutProvider, expression15, expression16, list11, divEdgeInsets, expression17, expression18, divEdgeInsets2, list12, list13, list14, expression19, expression20, expression21, list15, expression22, expression23, expression24, expression25, expression26, divTextGradient, divShadow, expression27, list16, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list17, expression28, expression29, list18, list19, expression30, divVisibilityAction, list20, divSize2);
    }

    public final boolean E(DivText divText, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean zA3;
        boolean z4;
        boolean z5;
        boolean zA4;
        boolean z6;
        boolean zA5;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zA6;
        boolean z11;
        boolean zA7;
        boolean zA8;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean zA9;
        boolean zA10;
        boolean z16;
        boolean zA11;
        boolean zA12;
        boolean zA13;
        boolean zA14;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean zG;
        boolean z20;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divText == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divText.r(), oj3Var, oj3Var2);
        } else {
            zA = divText.r() == null;
        }
        if (!zA) {
            return false;
        }
        DivAction divAction = this.b;
        if (divAction != null) {
            zA2 = divAction.a(divText.b, oj3Var, oj3Var2);
        } else {
            zA2 = divText.b == null;
        }
        if (!zA2 || !this.c.a(divText.c, oj3Var, oj3Var2)) {
            return false;
        }
        List list = this.d;
        if (list != null) {
            List list2 = divText.d;
            if (list2 == null) {
                return false;
            }
            if (list.size() == list2.size()) {
                Iterator it = list.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((DivAction) next).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divText.d == null;
        }
        if (!z) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divText.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divText.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divText.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divText.A();
            if (listA2 == null) {
                return false;
            }
            if (listA.size() == listA2.size()) {
                Iterator it2 = listA.iterator();
                int i3 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivAnimator) next2).a((DivAnimator) listA2.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z2 = divText.A() == null;
        }
        if (!z2) {
            return false;
        }
        Expression expression = this.i;
        Boolean bool = expression != null ? (Boolean) expression.b(oj3Var) : null;
        Expression expression2 = divText.i;
        if (!y45.e(bool, expression2 != null ? (Boolean) expression2.b(oj3Var2) : null)) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divText.getBackground();
            if (background2 == null) {
                return false;
            }
            if (background.size() == background2.size()) {
                Iterator it3 = background.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivBackground) next3).a((DivBackground) background2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divText.getBackground() == null;
        }
        if (!z3) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA3 = divBorderB.a(divText.B(), oj3Var, oj3Var2);
        } else {
            zA3 = divText.B() == null;
        }
        if (!zA3 || ((Boolean) this.l.b(oj3Var)).booleanValue() != ((Boolean) divText.l.b(oj3Var2)).booleanValue()) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divText.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divText.k();
            if (listK2 == null) {
                return false;
            }
            if (listK.size() == listK2.size()) {
                Iterator it4 = listK.iterator();
                int i7 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        Object next4 = it4.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y71.u();
                        }
                        if (((DivDisappearAction) next4).g((DivDisappearAction) listK2.get(i7), oj3Var, oj3Var2)) {
                            i7 = i8;
                        }
                    }
                }
            }
        } else {
            z4 = divText.k() == null;
        }
        if (!z4) {
            return false;
        }
        List list3 = this.o;
        if (list3 != null) {
            List list4 = divText.o;
            if (list4 == null) {
                return false;
            }
            if (list3.size() == list4.size()) {
                Iterator it5 = list3.iterator();
                int i9 = 0;
                while (true) {
                    if (it5.hasNext()) {
                        Object next5 = it5.next();
                        int i10 = i9 + 1;
                        if (i9 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next5).a((DivAction) list4.get(i9), oj3Var, oj3Var2)) {
                            i9 = i10;
                        }
                    }
                }
            }
        } else {
            z5 = divText.o == null;
        }
        if (!z5) {
            return false;
        }
        Ellipsis ellipsis = this.p;
        if (ellipsis != null) {
            zA4 = ellipsis.a(divText.p, oj3Var, oj3Var2);
        } else {
            zA4 = divText.p == null;
        }
        if (!zA4) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divText.getExtensions();
            if (extensions2 == null) {
                return false;
            }
            if (extensions.size() == extensions2.size()) {
                Iterator it6 = extensions.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((DivExtension) next6).a((DivExtension) extensions2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divText.getExtensions() == null;
        }
        if (!z6) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA5 = divFocusQ.a(divText.q(), oj3Var, oj3Var2);
        } else {
            zA5 = divText.q() == null;
        }
        if (!zA5) {
            return false;
        }
        Expression expression3 = this.s;
        Integer num = expression3 != null ? (Integer) expression3.b(oj3Var) : null;
        Expression expression4 = divText.s;
        if (!y45.e(num, expression4 != null ? (Integer) expression4.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression5 = this.t;
        String str = expression5 != null ? (String) expression5.b(oj3Var) : null;
        Expression expression6 = divText.t;
        if (!y45.e(str, expression6 != null ? (String) expression6.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression7 = this.u;
        String str2 = expression7 != null ? (String) expression7.b(oj3Var) : null;
        Expression expression8 = divText.u;
        if (!y45.e(str2, expression8 != null ? (String) expression8.b(oj3Var2) : null) || ((Number) this.v.b(oj3Var)).longValue() != ((Number) divText.v.b(oj3Var2)).longValue() || this.w.b(oj3Var) != divText.w.b(oj3Var2)) {
            return false;
        }
        Expression expression9 = this.x;
        JSONObject jSONObject = expression9 != null ? (JSONObject) expression9.b(oj3Var) : null;
        Expression expression10 = divText.x;
        if (!y45.e(jSONObject, expression10 != null ? (JSONObject) expression10.b(oj3Var2) : null) || this.y.b(oj3Var) != divText.y.b(oj3Var2)) {
            return false;
        }
        Expression expression11 = this.z;
        Long l2 = expression11 != null ? (Long) expression11.b(oj3Var) : null;
        Expression expression12 = divText.z;
        if (!y45.e(l2, expression12 != null ? (Long) expression12.b(oj3Var2) : null)) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divText.y();
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
            z7 = divText.y() == null;
        }
        if (!z7 || !getHeight().a(divText.getHeight(), oj3Var, oj3Var2)) {
            return false;
        }
        List list5 = this.C;
        if (list5 != null) {
            List list6 = divText.C;
            if (list6 == null) {
                return false;
            }
            if (list5.size() == list6.size()) {
                Iterator it8 = list5.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next8).a((DivAction) list6.get(i15), oj3Var, oj3Var2)) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divText.C == null;
        }
        if (!z8) {
            return false;
        }
        List list7 = this.D;
        if (list7 != null) {
            List list8 = divText.D;
            if (list8 == null) {
                return false;
            }
            if (list7.size() == list8.size()) {
                Iterator it9 = list7.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next9).a((DivAction) list8.get(i17), oj3Var, oj3Var2)) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divText.D == null;
        }
        if (!z9 || !y45.e(getId(), divText.getId())) {
            return false;
        }
        List list9 = this.F;
        if (list9 != null) {
            List list10 = divText.F;
            if (list10 == null) {
                return false;
            }
            if (list9.size() == list10.size()) {
                Iterator it10 = list9.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((Image) next10).a((Image) list10.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divText.F == null;
        }
        if (!z10) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA6 = divLayoutProviderV.a(divText.v(), oj3Var, oj3Var2);
        } else {
            zA6 = divText.v() == null;
        }
        if (!zA6) {
            return false;
        }
        if (!(((Number) this.H.b(oj3Var)).doubleValue() == ((Number) divText.H.b(oj3Var2)).doubleValue())) {
            return false;
        }
        Expression expression13 = this.I;
        Long l3 = expression13 != null ? (Long) expression13.b(oj3Var) : null;
        Expression expression14 = divText.I;
        if (!y45.e(l3, expression14 != null ? (Long) expression14.b(oj3Var2) : null)) {
            return false;
        }
        List list11 = this.J;
        if (list11 != null) {
            List list12 = divText.J;
            if (list12 == null) {
                return false;
            }
            if (list11.size() == list12.size()) {
                Iterator it11 = list11.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next11).a((DivAction) list12.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divText.J == null;
        }
        if (!z11) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA7 = divEdgeInsetsD.a(divText.d(), oj3Var, oj3Var2);
        } else {
            zA7 = divText.d() == null;
        }
        if (!zA7) {
            return false;
        }
        Expression expression15 = this.L;
        Long l4 = expression15 != null ? (Long) expression15.b(oj3Var) : null;
        Expression expression16 = divText.L;
        if (!y45.e(l4, expression16 != null ? (Long) expression16.b(oj3Var2) : null)) {
            return false;
        }
        Expression expression17 = this.M;
        Long l5 = expression17 != null ? (Long) expression17.b(oj3Var) : null;
        Expression expression18 = divText.M;
        if (!y45.e(l5, expression18 != null ? (Long) expression18.b(oj3Var2) : null)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA8 = divEdgeInsetsT.a(divText.t(), oj3Var, oj3Var2);
        } else {
            zA8 = divText.t() == null;
        }
        if (!zA8) {
            return false;
        }
        List list13 = this.O;
        if (list13 != null) {
            List list14 = divText.O;
            if (list14 == null) {
                return false;
            }
            if (list13.size() == list14.size()) {
                Iterator it12 = list13.iterator();
                int i23 = 0;
                while (true) {
                    if (it12.hasNext()) {
                        Object next12 = it12.next();
                        int i24 = i23 + 1;
                        if (i23 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next12).a((DivAction) list14.get(i23), oj3Var, oj3Var2)) {
                            i23 = i24;
                        }
                    }
                }
            }
        } else {
            z12 = divText.O == null;
        }
        if (!z12) {
            return false;
        }
        List list15 = this.P;
        if (list15 != null) {
            List list16 = divText.P;
            if (list16 == null) {
                return false;
            }
            if (list15.size() == list16.size()) {
                Iterator it13 = list15.iterator();
                int i25 = 0;
                while (true) {
                    if (it13.hasNext()) {
                        Object next13 = it13.next();
                        int i26 = i25 + 1;
                        if (i25 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next13).a((DivAction) list16.get(i25), oj3Var, oj3Var2)) {
                            i25 = i26;
                        }
                    }
                }
            }
        } else {
            z13 = divText.P == null;
        }
        if (!z13) {
            return false;
        }
        List list17 = this.Q;
        if (list17 != null) {
            List list18 = divText.Q;
            if (list18 == null) {
                return false;
            }
            if (list17.size() == list18.size()) {
                Iterator it14 = list17.iterator();
                int i27 = 0;
                while (true) {
                    if (it14.hasNext()) {
                        Object next14 = it14.next();
                        int i28 = i27 + 1;
                        if (i27 < 0) {
                            y71.u();
                        }
                        if (((Range) next14).a((Range) list18.get(i27), oj3Var, oj3Var2)) {
                            i27 = i28;
                        }
                    }
                }
            }
        } else {
            z14 = divText.Q == null;
        }
        if (!z14) {
            return false;
        }
        Expression expressionF = f();
        String str3 = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divText.f();
        if (!y45.e(str3, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l6 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divText.e();
        if (!y45.e(l6, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null) || ((Boolean) this.T.b(oj3Var)).booleanValue() != ((Boolean) divText.T.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divText.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it15 = listU.iterator();
                int i29 = 0;
                while (true) {
                    if (it15.hasNext()) {
                        Object next15 = it15.next();
                        int i30 = i29 + 1;
                        if (i29 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next15).a((DivAction) listU2.get(i29), oj3Var, oj3Var2)) {
                            i29 = i30;
                        }
                    }
                }
            }
        } else {
            z15 = divText.u() == null;
        }
        if (!z15 || this.V.b(oj3Var) != divText.V.b(oj3Var2) || !y45.e(this.W.b(oj3Var), divText.W.b(oj3Var2)) || this.X.b(oj3Var) != divText.X.b(oj3Var2) || this.Y.b(oj3Var) != divText.Y.b(oj3Var2) || ((Number) this.Z.b(oj3Var)).intValue() != ((Number) divText.Z.b(oj3Var2)).intValue()) {
            return false;
        }
        DivTextGradient divTextGradient = this.a0;
        if (divTextGradient != null) {
            zA9 = divTextGradient.a(divText.a0, oj3Var, oj3Var2);
        } else {
            zA9 = divText.a0 == null;
        }
        if (!zA9) {
            return false;
        }
        DivShadow divShadow = this.b0;
        if (divShadow != null) {
            zA10 = divShadow.a(divText.b0, oj3Var, oj3Var2);
        } else {
            zA10 = divText.b0 == null;
        }
        if (!zA10 || ((Boolean) this.c0.b(oj3Var)).booleanValue() != ((Boolean) divText.c0.b(oj3Var2)).booleanValue()) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divText.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it16 = listH.iterator();
                int i31 = 0;
                while (true) {
                    if (it16.hasNext()) {
                        Object next16 = it16.next();
                        int i32 = i31 + 1;
                        if (i31 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next16).a((DivTooltip) listH2.get(i31), oj3Var, oj3Var2)) {
                            i31 = i32;
                        }
                    }
                }
            }
        } else {
            z16 = divText.h() == null;
        }
        if (!z16) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA11 = divTransformM.a(divText.m(), oj3Var, oj3Var2);
        } else {
            zA11 = divText.m() == null;
        }
        if (!zA11) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA12 = divChangeTransitionJ.a(divText.j(), oj3Var, oj3Var2);
        } else {
            zA12 = divText.j() == null;
        }
        if (!zA12) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA13 = divAppearanceTransitionZ.a(divText.z(), oj3Var, oj3Var2);
        } else {
            zA13 = divText.z() == null;
        }
        if (!zA13) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA14 = divAppearanceTransitionI.a(divText.i(), oj3Var, oj3Var2);
        } else {
            zA14 = divText.i() == null;
        }
        if (!zA14) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divText.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it17 = listN.iterator();
                int i33 = 0;
                while (true) {
                    if (it17.hasNext()) {
                        Object next17 = it17.next();
                        int i34 = i33 + 1;
                        if (i33 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next17) == ((DivTransitionTrigger) listN2.get(i33))) {
                            i33 = i34;
                        }
                    }
                }
            }
        } else {
            z17 = divText.n() == null;
        }
        if (!z17 || this.j0.b(oj3Var) != divText.j0.b(oj3Var2) || this.k0.b(oj3Var) != divText.k0.b(oj3Var2)) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divText.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it18 = listW.iterator();
                int i35 = 0;
                while (true) {
                    if (it18.hasNext()) {
                        Object next18 = it18.next();
                        int i36 = i35 + 1;
                        if (i35 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next18).a((DivTrigger) listW2.get(i35), oj3Var, oj3Var2)) {
                            i35 = i36;
                        }
                    }
                }
            }
        } else {
            z18 = divText.w() == null;
        }
        if (!z18) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divText.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it19 = listC.iterator();
                int i37 = 0;
                while (true) {
                    if (it19.hasNext()) {
                        Object next19 = it19.next();
                        int i38 = i37 + 1;
                        if (i37 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next19).a((DivVariable) listC2.get(i37), oj3Var, oj3Var2)) {
                            i37 = i38;
                        }
                    }
                }
            }
        } else {
            z19 = divText.c() == null;
        }
        if (!z19 || getVisibility().b(oj3Var) != divText.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divText.x(), oj3Var, oj3Var2);
        } else {
            zG = divText.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divText.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it20 = listA3.iterator();
                int i39 = 0;
                while (true) {
                    if (it20.hasNext()) {
                        Object next20 = it20.next();
                        int i40 = i39 + 1;
                        if (i39 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next20).g((DivVisibilityAction) listA4.get(i39), oj3Var, oj3Var2)) {
                            i39 = i40;
                        }
                    }
                }
            }
        } else {
            z20 = divText.a() == null;
        }
        return z20 && getWidth().a(divText.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.p0;
    }

    @Override
    public Expression b() {
        return this.m;
    }

    @Override
    public List c() {
        return this.m0;
    }

    @Override
    public DivEdgeInsets d() {
        return this.K;
    }

    @Override
    public Expression e() {
        return this.S;
    }

    @Override
    public Expression f() {
        return this.R;
    }

    @Override
    public Expression g() {
        return this.e;
    }

    @Override
    public List getBackground() {
        return this.j;
    }

    @Override
    public List getExtensions() {
        return this.q;
    }

    @Override
    public DivSize getHeight() {
        return this.B;
    }

    @Override
    public String getId() {
        return this.E;
    }

    @Override
    public Expression getVisibility() {
        return this.n0;
    }

    @Override
    public DivSize getWidth() {
        return this.q0;
    }

    @Override
    public List h() {
        return this.d0;
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
        int iHash13;
        int iHash14;
        int iHash15;
        int iHash16;
        int iHash17;
        int iHash18;
        Integer num = this.r0;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivText.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash19 = 0;
        int iHash20 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        DivAction divAction = this.b;
        int iHash21 = iHash20 + (divAction != null ? divAction.hash() : 0) + this.c.hash();
        List list = this.d;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHash21 + iHash;
        Expression expressionG = g();
        int iHashCode2 = i + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode();
        List listA = A();
        if (listA != null) {
            Iterator it2 = listA.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivAnimator) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i2 = iHashCode3 + iHash2;
        Expression expression = this.i;
        int iHashCode4 = i2 + (expression != null ? expression.hashCode() : 0);
        List background = getBackground();
        if (background != null) {
            Iterator it3 = background.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivBackground) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i3 = iHashCode4 + iHash3;
        DivBorder divBorderB = B();
        int iHash22 = i3 + (divBorderB != null ? divBorderB.hash() : 0) + this.l.hashCode();
        Expression expressionB = b();
        int iHashCode5 = iHash22 + (expressionB != null ? expressionB.hashCode() : 0);
        List listK = k();
        if (listK != null) {
            Iterator it4 = listK.iterator();
            iHash4 = 0;
            while (it4.hasNext()) {
                iHash4 += ((DivDisappearAction) it4.next()).hash();
            }
        } else {
            iHash4 = 0;
        }
        int i4 = iHashCode5 + iHash4;
        List list2 = this.o;
        if (list2 != null) {
            Iterator it5 = list2.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivAction) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int i5 = i4 + iHash5;
        Ellipsis ellipsis = this.p;
        int iHash23 = i5 + (ellipsis != null ? ellipsis.hash() : 0);
        List extensions = getExtensions();
        if (extensions != null) {
            Iterator it6 = extensions.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((DivExtension) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i6 = iHash23 + iHash6;
        DivFocus divFocusQ = q();
        int iHash24 = i6 + (divFocusQ != null ? divFocusQ.hash() : 0);
        Expression expression2 = this.s;
        int iHashCode6 = iHash24 + (expression2 != null ? expression2.hashCode() : 0);
        Expression expression3 = this.t;
        int iHashCode7 = iHashCode6 + (expression3 != null ? expression3.hashCode() : 0);
        Expression expression4 = this.u;
        int iHashCode8 = iHashCode7 + (expression4 != null ? expression4.hashCode() : 0) + this.v.hashCode() + this.w.hashCode();
        Expression expression5 = this.x;
        int iHashCode9 = iHashCode8 + (expression5 != null ? expression5.hashCode() : 0) + this.y.hashCode();
        Expression expression6 = this.z;
        int iHashCode10 = iHashCode9 + (expression6 != null ? expression6.hashCode() : 0);
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
        int iHash25 = iHashCode10 + iHash7 + getHeight().hash();
        List list3 = this.C;
        if (list3 != null) {
            Iterator it8 = list3.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivAction) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHash25 + iHash8;
        List list4 = this.D;
        if (list4 != null) {
            Iterator it9 = list4.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivAction) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int i8 = i7 + iHash9;
        String id = getId();
        int iHashCode11 = i8 + (id != null ? id.hashCode() : 0);
        List list5 = this.F;
        if (list5 != null) {
            Iterator it10 = list5.iterator();
            iHash10 = 0;
            while (it10.hasNext()) {
                iHash10 += ((Image) it10.next()).hash();
            }
        } else {
            iHash10 = 0;
        }
        int i9 = iHashCode11 + iHash10;
        DivLayoutProvider divLayoutProviderV = v();
        int iHash26 = i9 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0) + this.H.hashCode();
        Expression expression7 = this.I;
        int iHashCode12 = iHash26 + (expression7 != null ? expression7.hashCode() : 0);
        List list6 = this.J;
        if (list6 != null) {
            Iterator it11 = list6.iterator();
            iHash11 = 0;
            while (it11.hasNext()) {
                iHash11 += ((DivAction) it11.next()).hash();
            }
        } else {
            iHash11 = 0;
        }
        int i10 = iHashCode12 + iHash11;
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash27 = i10 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        Expression expression8 = this.L;
        int iHashCode13 = iHash27 + (expression8 != null ? expression8.hashCode() : 0);
        Expression expression9 = this.M;
        int iHashCode14 = iHashCode13 + (expression9 != null ? expression9.hashCode() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash28 = iHashCode14 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        List list7 = this.O;
        if (list7 != null) {
            Iterator it12 = list7.iterator();
            iHash12 = 0;
            while (it12.hasNext()) {
                iHash12 += ((DivAction) it12.next()).hash();
            }
        } else {
            iHash12 = 0;
        }
        int i11 = iHash28 + iHash12;
        List list8 = this.P;
        if (list8 != null) {
            Iterator it13 = list8.iterator();
            iHash13 = 0;
            while (it13.hasNext()) {
                iHash13 += ((DivAction) it13.next()).hash();
            }
        } else {
            iHash13 = 0;
        }
        int i12 = i11 + iHash13;
        List list9 = this.Q;
        if (list9 != null) {
            Iterator it14 = list9.iterator();
            iHash14 = 0;
            while (it14.hasNext()) {
                iHash14 += ((Range) it14.next()).hash();
            }
        } else {
            iHash14 = 0;
        }
        int i13 = i12 + iHash14;
        Expression expressionF = f();
        int iHashCode15 = i13 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode16 = iHashCode15 + (expressionE != null ? expressionE.hashCode() : 0) + this.T.hashCode();
        List listU = u();
        if (listU != null) {
            Iterator it15 = listU.iterator();
            iHash15 = 0;
            while (it15.hasNext()) {
                iHash15 += ((DivAction) it15.next()).hash();
            }
        } else {
            iHash15 = 0;
        }
        int iHashCode17 = iHashCode16 + iHash15 + this.V.hashCode() + this.W.hashCode() + this.X.hashCode() + this.Y.hashCode() + this.Z.hashCode();
        DivTextGradient divTextGradient = this.a0;
        int iHash29 = iHashCode17 + (divTextGradient != null ? divTextGradient.hash() : 0);
        DivShadow divShadow = this.b0;
        int iHash30 = iHash29 + (divShadow != null ? divShadow.hash() : 0) + this.c0.hashCode();
        List listH = h();
        if (listH != null) {
            Iterator it16 = listH.iterator();
            iHash16 = 0;
            while (it16.hasNext()) {
                iHash16 += ((DivTooltip) it16.next()).hash();
            }
        } else {
            iHash16 = 0;
        }
        int i14 = iHash30 + iHash16;
        DivTransform divTransformM = m();
        int iHash31 = i14 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash32 = iHash31 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash33 = iHash32 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash34 = iHash33 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode18 = iHash34 + (listN != null ? listN.hashCode() : 0) + this.j0.hashCode() + this.k0.hashCode();
        List listW = w();
        if (listW != null) {
            Iterator it17 = listW.iterator();
            iHash17 = 0;
            while (it17.hasNext()) {
                iHash17 += ((DivTrigger) it17.next()).hash();
            }
        } else {
            iHash17 = 0;
        }
        int i15 = iHashCode18 + iHash17;
        List listC = c();
        if (listC != null) {
            Iterator it18 = listC.iterator();
            iHash18 = 0;
            while (it18.hasNext()) {
                iHash18 += ((DivVariable) it18.next()).hash();
            }
        } else {
            iHash18 = 0;
        }
        int iHashCode19 = i15 + iHash18 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash35 = iHashCode19 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it19 = listA2.iterator();
            while (it19.hasNext()) {
                iHash19 += ((DivVisibilityAction) it19.next()).hash();
            }
        }
        int iHash36 = iHash35 + iHash19 + getWidth().hash();
        this.r0 = Integer.valueOf(iHash36);
        return iHash36;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.h0;
    }

    @Override
    public DivChangeTransition j() {
        return this.f0;
    }

    @Override
    public List k() {
        return this.n;
    }

    @Override
    public DivTransform m() {
        return this.e0;
    }

    @Override
    public List n() {
        return this.i0;
    }

    @Override
    public Expression o() {
        return this.f;
    }

    @Override
    public Expression p() {
        return this.g;
    }

    @Override
    public DivFocus q() {
        return this.r;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivTextJsonParser.b) ml0.a().j8().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.N;
    }

    @Override
    public List u() {
        return this.U;
    }

    @Override
    public DivLayoutProvider v() {
        return this.G;
    }

    @Override
    public List w() {
        return this.l0;
    }

    @Override
    public DivVisibilityAction x() {
        return this.o0;
    }

    @Override
    public List y() {
        return this.A;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.g0;
    }
}
