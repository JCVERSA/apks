package c5;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.TypeUtils;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public class a {

    static final String f16489c = com.alibaba.fastjson.util.b.g(o0.class);

    static final String f16490d;

    static final String f16491e;

    static final String f16492f;

    static final String f16493g;

    static final String f16494h;

    static final String f16495i;

    static final String f16496j;

    static final String f16497k;

    protected final com.alibaba.fastjson.util.a f16498a = new com.alibaba.fastjson.util.a();

    private final AtomicLong f16499b = new AtomicLong();

    static class C0147a {

        static int f16500h = 6;

        static int f16501i = 7;

        static int f16502j = 8;

        private final com.alibaba.fastjson.util.d[] f16503a;

        private final String f16504b;

        private final f1 f16505c;

        private final boolean f16506d;

        private Map f16507e = new HashMap();

        private int f16508f = 9;

        private final boolean f16509g;

        public C0147a(com.alibaba.fastjson.util.d[] dVarArr, f1 f1Var, String str, boolean z10, boolean z11) {
            this.f16503a = dVarArr;
            this.f16504b = str;
            this.f16505c = f1Var;
            this.f16506d = z10;
            this.f16509g = z11 || f1Var.f16522a.isEnum();
        }

        public int f(String str) {
            int length = this.f16503a.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (this.f16503a[i10].f17580a.equals(str)) {
                    return i10;
                }
            }
            return -1;
        }

        public int g(String str) {
            if (((Integer) this.f16507e.get(str)) == null) {
                Map map = this.f16507e;
                int i10 = this.f16508f;
                this.f16508f = i10 + 1;
                map.put(str, Integer.valueOf(i10));
            }
            return ((Integer) this.f16507e.get(str)).intValue();
        }

        public int h(String str, int i10) {
            if (((Integer) this.f16507e.get(str)) == null) {
                this.f16507e.put(str, Integer.valueOf(this.f16508f));
                this.f16508f += i10;
            }
            return ((Integer) this.f16507e.get(str)).intValue();
        }
    }

    static {
        String strG = com.alibaba.fastjson.util.b.g(z0.class);
        f16490d = strG;
        f16491e = "L" + strG + ";";
        String strG2 = com.alibaba.fastjson.util.b.g(j1.class);
        f16492f = strG2;
        f16493g = "L" + strG2 + ";";
        f16494h = com.alibaba.fastjson.util.b.g(p0.class);
        f16495i = "L" + com.alibaba.fastjson.util.b.g(p0.class) + ";";
        f16496j = com.alibaba.fastjson.util.b.b(e1.class);
        f16497k = com.alibaba.fastjson.util.b.b(i1.class);
    }

    private void A(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d[] dVarArr, C0147a c0147a) {
        String str;
        char c10;
        boolean z10;
        a aVar;
        char c11;
        int i10;
        Class cls2;
        com.alibaba.fastjson.asm.f fVar;
        int i11;
        int i12;
        String str2;
        int i13;
        char c12;
        a aVar2 = this;
        com.alibaba.fastjson.util.d[] dVarArr2 = dVarArr;
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 1);
        hVar.c(25, 0);
        String str3 = f16489c;
        hVar.j(182, str3, "hasPropertyFilters", "(" + f16497k + ")Z");
        hVar.a(154, fVar2);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, 3);
        hVar.c(25, 4);
        hVar.c(21, 5);
        String str4 = f16494h;
        StringBuilder sb2 = new StringBuilder();
        String str5 = "(L";
        sb2.append("(L");
        sb2.append(str3);
        String str6 = ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
        sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        hVar.j(183, str4, "writeNoneASM", sb2.toString());
        hVar.h(177);
        hVar.l(fVar2);
        String str7 = "out";
        hVar.c(25, c0147a.g("out"));
        hVar.c(16, 91);
        String str8 = f16492f;
        String str9 = "(I)V";
        hVar.j(182, str8, "write", "(I)V");
        int length = dVarArr2.length;
        if (length == 0) {
            hVar.c(25, c0147a.g("out"));
            hVar.c(16, 93);
            hVar.j(182, str8, "write", "(I)V");
            return;
        }
        int i14 = 0;
        while (i14 < length) {
            int i15 = i14 == length + (-1) ? 93 : 44;
            com.alibaba.fastjson.util.d dVar = dVarArr2[i14];
            Class cls3 = dVar.f17584e;
            hVar.d(dVar.f17580a);
            hVar.c(58, C0147a.f16500h);
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                str = str7;
                length = length;
                i14 = i14;
                str5 = str5;
                str9 = str9;
                c10 = 25;
                z10 = false;
                hVar.c(25, c0147a.g(str));
                hVar.h(89);
                aVar = this;
                aVar.i(hVar, c0147a, dVar);
                String str10 = f16492f;
                hVar.j(182, str10, "writeInt", str9);
                c11 = 16;
                hVar.c(16, i15);
                hVar.j(182, str10, "write", str9);
            } else {
                if (cls3 == Long.TYPE) {
                    hVar.c(25, c0147a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0147a, dVar);
                    String str11 = f16492f;
                    c12 = 182;
                    hVar.j(182, str11, "writeLong", "(J)V");
                    hVar.c(16, i15);
                    hVar.j(182, str11, "write", str9);
                } else if (cls3 == Float.TYPE) {
                    hVar.c(25, c0147a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0147a, dVar);
                    hVar.h(4);
                    String str12 = f16492f;
                    c12 = 182;
                    hVar.j(182, str12, "writeFloat", "(FZ)V");
                    hVar.c(16, i15);
                    hVar.j(182, str12, "write", str9);
                } else if (cls3 == Double.TYPE) {
                    hVar.c(25, c0147a.g(str7));
                    hVar.h(89);
                    aVar2.i(hVar, c0147a, dVar);
                    hVar.h(4);
                    String str13 = f16492f;
                    c12 = 182;
                    hVar.j(182, str13, "writeDouble", "(DZ)V");
                    hVar.c(16, i15);
                    hVar.j(182, str13, "write", str9);
                } else {
                    if (cls3 == Boolean.TYPE) {
                        hVar.c(25, c0147a.g(str7));
                        hVar.h(89);
                        aVar2.i(hVar, c0147a, dVar);
                        String str14 = f16492f;
                        hVar.j(182, str14, "write", "(Z)V");
                        hVar.c(16, i15);
                        hVar.j(182, str14, "write", str9);
                    } else if (cls3 == Character.TYPE) {
                        hVar.c(25, c0147a.g(str7));
                        aVar2.i(hVar, c0147a, dVar);
                        hVar.j(184, "java/lang/Character", "toString", "(C)Ljava/lang/String;");
                        hVar.c(16, i15);
                        hVar.j(182, f16492f, "writeString", "(Ljava/lang/String;C)V");
                        z10 = false;
                        c11 = 16;
                        aVar = aVar2;
                        str = str7;
                        c10 = 25;
                    } else if (cls3 == String.class) {
                        hVar.c(25, c0147a.g(str7));
                        aVar2.i(hVar, c0147a, dVar);
                        hVar.c(16, i15);
                        hVar.j(182, f16492f, "writeString", "(Ljava/lang/String;C)V");
                        length = length;
                        i14 = i14;
                        str5 = str5;
                        str9 = str9;
                        z10 = false;
                        c11 = 16;
                        aVar = aVar2;
                        str = str7;
                        c10 = 25;
                    } else {
                        if (cls3.isEnum()) {
                            hVar.c(25, c0147a.g(str7));
                            hVar.h(89);
                            aVar2.i(hVar, c0147a, dVar);
                            String str15 = f16492f;
                            hVar.j(182, str15, "writeEnum", "(Ljava/lang/Enum;)V");
                            hVar.c(16, i15);
                            hVar.j(182, str15, "write", str9);
                        } else if (List.class.isAssignableFrom(cls3)) {
                            Type type = dVar.f17585f;
                            Type type2 = type instanceof Class ? Object.class : ((ParameterizedType) type).getActualTypeArguments()[0];
                            if (!(type2 instanceof Class) || (cls2 = (Class) type2) == Object.class) {
                                cls2 = null;
                            }
                            aVar2.i(hVar, c0147a, dVar);
                            hVar.f(PsExtractor.AUDIO_STREAM, "java/util/List");
                            hVar.c(58, c0147a.g("list"));
                            if (cls2 == String.class && c0147a.f16506d) {
                                hVar.c(25, c0147a.g(str7));
                                hVar.c(25, c0147a.g("list"));
                                hVar.j(182, f16492f, "write", "(Ljava/util/List;)V");
                                str = str7;
                                i13 = 182;
                                str5 = str5;
                                str2 = str9;
                                i11 = 25;
                                i12 = 16;
                            } else {
                                com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
                                hVar.c(25, c0147a.g("list"));
                                hVar.a(199, fVar4);
                                hVar.c(25, c0147a.g(str7));
                                String str16 = f16492f;
                                Type type3 = type2;
                                String str17 = str6;
                                hVar.j(182, str16, "writeNull", "()V");
                                hVar.a(167, fVar3);
                                hVar.l(fVar4);
                                hVar.c(25, c0147a.g("list"));
                                hVar.j(185, "java/util/List", "size", "()I");
                                hVar.c(54, c0147a.g("size"));
                                hVar.c(25, c0147a.g(str7));
                                hVar.c(16, 91);
                                hVar.j(182, str16, "write", str9);
                                com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
                                hVar.h(3);
                                String str18 = str5;
                                hVar.c(54, c0147a.g("i"));
                                hVar.l(fVar5);
                                hVar.c(21, c0147a.g("i"));
                                hVar.c(21, c0147a.g("size"));
                                hVar.a(162, fVar7);
                                hVar.c(21, c0147a.g("i"));
                                hVar.a(153, fVar6);
                                hVar.c(25, c0147a.g(str7));
                                hVar.c(16, 44);
                                hVar.j(182, str16, "write", str9);
                                hVar.l(fVar6);
                                hVar.c(25, c0147a.g("list"));
                                hVar.c(21, c0147a.g("i"));
                                hVar.j(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
                                hVar.c(58, c0147a.g("list_item"));
                                com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
                                String str19 = str9;
                                hVar.c(25, c0147a.g("list_item"));
                                hVar.a(199, fVar9);
                                hVar.c(25, c0147a.g(str7));
                                String str20 = str7;
                                hVar.j(182, str16, "writeNull", "()V");
                                hVar.a(167, fVar8);
                                hVar.l(fVar9);
                                com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
                                com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
                                if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                                    fVar5 = fVar5;
                                    fVar8 = fVar8;
                                    str6 = str17;
                                    str5 = str18;
                                    fVar = fVar11;
                                } else {
                                    hVar.c(25, c0147a.g("list_item"));
                                    hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                    hVar.a(166, fVar11);
                                    aVar2.k(c0147a, hVar, dVar, cls2);
                                    hVar.c(58, c0147a.g("list_item_desc"));
                                    com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
                                    com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
                                    if (c0147a.f16506d) {
                                        hVar.c(25, c0147a.g("list_item_desc"));
                                        String str21 = f16494h;
                                        hVar.f(193, str21);
                                        hVar.a(153, fVar12);
                                        hVar.c(25, c0147a.g("list_item_desc"));
                                        hVar.f(PsExtractor.AUDIO_STREAM, str21);
                                        hVar.c(25, 1);
                                        hVar.c(25, c0147a.g("list_item"));
                                        if (c0147a.f16509g) {
                                            hVar.h(1);
                                        } else {
                                            hVar.c(21, c0147a.g("i"));
                                            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                        }
                                        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                        hVar.d(Integer.valueOf(dVar.f17588i));
                                        StringBuilder sb3 = new StringBuilder();
                                        str5 = str18;
                                        sb3.append(str5);
                                        sb3.append(f16489c);
                                        str6 = str17;
                                        sb3.append(str6);
                                        hVar.j(182, str21, "writeAsArrayNonContext", sb3.toString());
                                        hVar.a(167, fVar13);
                                        hVar.l(fVar12);
                                    } else {
                                        fVar8 = fVar8;
                                        fVar11 = fVar11;
                                        str6 = str17;
                                        str5 = str18;
                                    }
                                    hVar.c(25, c0147a.g("list_item_desc"));
                                    hVar.c(25, 1);
                                    hVar.c(25, c0147a.g("list_item"));
                                    if (c0147a.f16509g) {
                                        hVar.h(1);
                                    } else {
                                        hVar.c(21, c0147a.g("i"));
                                        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                    }
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                                    hVar.d(Integer.valueOf(dVar.f17588i));
                                    hVar.j(185, f16490d, "write", str5 + f16489c + str6);
                                    hVar.l(fVar13);
                                    fVar10 = fVar10;
                                    hVar.a(167, fVar10);
                                    fVar = fVar11;
                                }
                                hVar.l(fVar);
                                hVar.c(25, 1);
                                hVar.c(25, c0147a.g("list_item"));
                                if (c0147a.f16509g) {
                                    hVar.h(1);
                                } else {
                                    hVar.c(21, c0147a.g("i"));
                                    hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                                }
                                if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                                    hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                                } else {
                                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b((Class) type3)));
                                    hVar.d(Integer.valueOf(dVar.f17588i));
                                    hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                                }
                                hVar.l(fVar10);
                                hVar.l(fVar8);
                                hVar.e(c0147a.g("i"), 1);
                                hVar.a(167, fVar5);
                                hVar.l(fVar7);
                                str = str20;
                                i11 = 25;
                                hVar.c(25, c0147a.g(str));
                                i12 = 16;
                                hVar.c(16, 93);
                                str2 = str19;
                                i13 = 182;
                                hVar.j(182, str16, "write", str2);
                                hVar.l(fVar3);
                            }
                            hVar.c(i11, c0147a.g(str));
                            hVar.c(i12, i15);
                            hVar.j(i13, f16492f, "write", str2);
                            aVar = this;
                            str9 = str2;
                            c10 = 25;
                            z10 = false;
                        } else {
                            String str22 = str7;
                            length = length;
                            i14 = i14;
                            str5 = str5;
                            String str23 = str9;
                            com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar15 = new com.alibaba.fastjson.asm.f();
                            i(hVar, c0147a, dVar);
                            hVar.h(89);
                            hVar.c(58, c0147a.g("field_" + dVar.f17584e.getName()));
                            hVar.a(199, fVar15);
                            hVar.c(25, c0147a.g(str22));
                            String str24 = f16492f;
                            int i16 = i15;
                            hVar.j(182, str24, "writeNull", "()V");
                            hVar.a(167, fVar14);
                            hVar.l(fVar15);
                            com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar17 = new com.alibaba.fastjson.asm.f();
                            hVar.c(25, c0147a.g("field_" + dVar.f17584e.getName()));
                            hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                            hVar.a(166, fVar17);
                            j(c0147a, hVar, dVar);
                            hVar.c(58, c0147a.g("fied_ser"));
                            com.alibaba.fastjson.asm.f fVar18 = new com.alibaba.fastjson.asm.f();
                            com.alibaba.fastjson.asm.f fVar19 = new com.alibaba.fastjson.asm.f();
                            if (c0147a.f16506d && Modifier.isPublic(cls3.getModifiers())) {
                                hVar.c(25, c0147a.g("fied_ser"));
                                String str25 = f16494h;
                                hVar.f(193, str25);
                                hVar.a(153, fVar18);
                                hVar.c(25, c0147a.g("fied_ser"));
                                hVar.f(PsExtractor.AUDIO_STREAM, str25);
                                hVar.c(25, 1);
                                hVar.c(25, c0147a.g("field_" + dVar.f17584e.getName()));
                                hVar.c(25, C0147a.f16500h);
                                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                                hVar.d(Integer.valueOf(dVar.f17588i));
                                hVar.j(182, str25, "writeAsArrayNonContext", str5 + f16489c + str6);
                                hVar.a(167, fVar19);
                                hVar.l(fVar18);
                            }
                            hVar.c(25, c0147a.g("fied_ser"));
                            hVar.c(25, 1);
                            hVar.c(25, c0147a.g("field_" + dVar.f17584e.getName()));
                            hVar.c(25, C0147a.f16500h);
                            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls3)));
                            hVar.d(Integer.valueOf(dVar.f17588i));
                            String str26 = f16490d;
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str5);
                            String str27 = f16489c;
                            sb4.append(str27);
                            sb4.append(str6);
                            hVar.j(185, str26, "write", sb4.toString());
                            hVar.l(fVar19);
                            hVar.a(167, fVar16);
                            hVar.l(fVar17);
                            String strK = dVar.k();
                            hVar.c(25, 1);
                            hVar.c(25, c0147a.g("field_" + dVar.f17584e.getName()));
                            if (strK != null) {
                                hVar.d(strK);
                                i10 = 182;
                                hVar.j(182, str27, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
                            } else {
                                i10 = 182;
                                hVar.c(25, C0147a.f16500h);
                                Type type4 = dVar.f17585f;
                                if ((type4 instanceof Class) && ((Class) type4).isPrimitive()) {
                                    hVar.j(182, str27, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
                                } else {
                                    z10 = false;
                                    hVar.c(25, 0);
                                    hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                                    hVar.d(Integer.valueOf(dVar.f17588i));
                                    i10 = 182;
                                    hVar.j(182, str27, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                                }
                                hVar.l(fVar16);
                                hVar.l(fVar14);
                                str = str22;
                                c10 = 25;
                                hVar.c(25, c0147a.g(str));
                                hVar.c(16, i16);
                                str9 = str23;
                                hVar.j(i10, str24, "write", str9);
                                aVar = this;
                            }
                            z10 = false;
                            hVar.l(fVar16);
                            hVar.l(fVar14);
                            str = str22;
                            c10 = 25;
                            hVar.c(25, c0147a.g(str));
                            hVar.c(16, i16);
                            str9 = str23;
                            hVar.j(i10, str24, "write", str9);
                            aVar = this;
                        }
                        c11 = 16;
                    }
                    aVar = aVar2;
                    str = str7;
                    str5 = str5;
                    str9 = str9;
                    c10 = 25;
                    z10 = false;
                    c11 = 16;
                }
                z10 = false;
                c11 = 16;
                aVar = aVar2;
                str = str7;
                c10 = 25;
            }
            str9 = str9;
            i14++;
            dVarArr2 = dVarArr;
            length = length;
            str7 = str;
            aVar2 = aVar;
            str5 = str5;
        }
    }

    private void B(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d[] dVarArr, C0147a c0147a) {
        String str;
        int i10;
        int i11;
        String str2;
        Class cls2;
        com.alibaba.fastjson.util.d[] dVarArr2 = dVarArr;
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        int length = dVarArr2.length;
        String str3 = "out";
        if (!c0147a.f16506d) {
            com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0147a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.PrettyFormat.mask));
            hVar.j(182, f16492f, "isEnabled", "(I)Z");
            hVar.a(154, fVar3);
            int length2 = dVarArr2.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length2) {
                    hVar.a(167, fVar2);
                    break;
                }
                int i13 = length2;
                if (dVarArr2[i12].f17581b != null) {
                    hVar.c(25, c0147a.g("out"));
                    hVar.d(Integer.valueOf(SerializerFeature.IgnoreErrorGetter.mask));
                    hVar.j(182, f16492f, "isEnabled", "(I)Z");
                    hVar.a(153, fVar2);
                    break;
                }
                i12++;
                length2 = i13;
            }
            hVar.l(fVar3);
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(183, f16494h, "write", "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
            hVar.l(fVar2);
        }
        if (!c0147a.f16509g) {
            com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(21, 5);
            hVar.j(182, f16494h, "writeReference", "(L" + f16489c + ";Ljava/lang/Object;I)Z");
            hVar.a(153, fVar4);
            hVar.h(177);
            hVar.l(fVar4);
        }
        if (c0147a.f16506d) {
            str = c0147a.f16509g ? "writeAsArrayNonContext" : "writeAsArray";
        } else {
            str = "writeAsArrayNormal";
        }
        int i14 = c0147a.f16505c.f16528g;
        SerializerFeature serializerFeature = SerializerFeature.BeanToArray;
        if ((i14 & serializerFeature.mask) == 0) {
            com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0147a.g("out"));
            hVar.d(Integer.valueOf(serializerFeature.mask));
            hVar.j(182, f16492f, "isEnabled", "(I)Z");
            hVar.a(153, fVar5);
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(182, c0147a.f16504b, str, "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
            hVar.l(fVar5);
        } else {
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.c(25, 4);
            hVar.c(21, 5);
            hVar.j(182, c0147a.f16504b, str, "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.h(177);
        }
        String str4 = "parent";
        if (!c0147a.f16509g) {
            hVar.c(25, 1);
            String str5 = f16489c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("()");
            String str6 = f16496j;
            sb2.append(str6);
            hVar.j(182, str5, "getContext", sb2.toString());
            hVar.c(58, c0147a.g("parent"));
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("parent"));
            hVar.c(25, 2);
            hVar.c(25, 3);
            hVar.d(Integer.valueOf(c0147a.f16505c.f16528g));
            hVar.j(182, str5, "setContext", "(" + str6 + "Ljava/lang/Object;Ljava/lang/Object;I)V");
        }
        boolean z10 = (c0147a.f16505c.f16528g & SerializerFeature.WriteClassName.mask) != 0;
        if (z10 || !c0147a.f16506d) {
            com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            if (z10) {
                i10 = 182;
            } else {
                hVar.c(25, 1);
                hVar.c(25, 4);
                hVar.c(25, 2);
                i10 = 182;
                hVar.j(182, f16489c, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                hVar.a(153, fVar7);
            }
            hVar.c(25, 4);
            hVar.c(25, 2);
            hVar.j(i10, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            hVar.a(165, fVar7);
            hVar.l(fVar8);
            hVar.c(25, c0147a.g("out"));
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            hVar.j(i10, f16492f, "write", "(I)V");
            hVar.c(25, 0);
            hVar.c(25, 1);
            if (c0147a.f16505c.f16524c != null) {
                hVar.d(c0147a.f16505c.f16524c);
            } else {
                hVar.h(1);
            }
            hVar.c(25, 2);
            hVar.j(182, f16494h, "writeClassName", "(L" + f16489c + ";Ljava/lang/String;Ljava/lang/Object;)V");
            hVar.c(16, 44);
            hVar.a(167, fVar6);
            hVar.l(fVar7);
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            hVar.l(fVar6);
        } else {
            hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            str4 = "parent";
        }
        hVar.c(54, c0147a.g("seperator"));
        if (!c0147a.f16506d) {
            c(hVar, c0147a);
        }
        if (c0147a.f16506d) {
            i11 = 0;
        } else {
            hVar.c(25, c0147a.g("out"));
            hVar.j(182, f16492f, "isNotWriteDefaultValue", "()Z");
            hVar.c(54, c0147a.g("notWriteDefaultValue"));
            hVar.c(25, 1);
            hVar.c(25, 0);
            String str7 = f16489c;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("(");
            String str8 = f16497k;
            sb3.append(str8);
            sb3.append(")Z");
            hVar.j(182, str7, "checkValue", sb3.toString());
            hVar.c(54, c0147a.g("checkValue"));
            hVar.c(25, 1);
            i11 = 0;
            hVar.c(25, 0);
            hVar.j(182, str7, "hasNameFilters", "(" + str8 + ")Z");
            hVar.c(54, c0147a.g("hasNameFilters"));
        }
        while (i11 < length) {
            com.alibaba.fastjson.util.d dVar = dVarArr2[i11];
            Class cls3 = dVar.f17584e;
            hVar.d(dVar.f17580a);
            hVar.c(58, C0147a.f16500h);
            if (cls3 == Byte.TYPE || cls3 == Short.TYPE || cls3 == Integer.TYPE) {
                str2 = str3;
                m(cls, hVar, dVar, c0147a, c0147a.g(cls3.getName()), 'I');
            } else {
                if (cls3 == Long.TYPE) {
                    cls2 = cls;
                    p(cls2, hVar, dVar, c0147a);
                } else {
                    cls2 = cls;
                    if (cls3 == Float.TYPE) {
                        h(cls2, hVar, dVar, c0147a);
                    } else if (cls3 == Double.TYPE) {
                        e(cls2, hVar, dVar, c0147a);
                    } else if (cls3 == Boolean.TYPE) {
                        str2 = str3;
                        m(cls, hVar, dVar, c0147a, c0147a.g("boolean"), 'Z');
                    } else {
                        str2 = str3;
                        if (cls3 == Character.TYPE) {
                            m(cls, hVar, dVar, c0147a, c0147a.g("char"), 'C');
                        } else if (cls3 == String.class) {
                            w(cls2, hVar, dVar, c0147a);
                        } else if (cls3 == BigDecimal.class) {
                            d(cls2, hVar, dVar, c0147a);
                        } else if (List.class.isAssignableFrom(cls3)) {
                            o(cls2, hVar, dVar, c0147a);
                        } else if (cls3.isEnum()) {
                            f(cls2, hVar, dVar, c0147a);
                        } else {
                            s(cls2, hVar, dVar, c0147a);
                        }
                    }
                }
                str2 = str3;
            }
            i11++;
            dVarArr2 = dVarArr;
            str3 = str2;
        }
        String str9 = str3;
        if (!c0147a.f16506d) {
            a(hVar, c0147a);
        }
        com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0147a.g("seperator"));
        hVar.g(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        hVar.a(160, fVar9);
        hVar.c(25, c0147a.g(str9));
        hVar.c(16, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        String str10 = f16492f;
        hVar.j(182, str10, "write", "(I)V");
        hVar.l(fVar9);
        hVar.c(25, c0147a.g(str9));
        hVar.c(16, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        hVar.j(182, str10, "write", "(I)V");
        hVar.l(fVar10);
        hVar.l(fVar);
        if (c0147a.f16509g) {
            return;
        }
        hVar.c(25, 1);
        hVar.c(25, c0147a.g(str4));
        hVar.j(182, f16489c, "setContext", "(" + f16496j + ")V");
    }

    private void a(com.alibaba.fastjson.asm.h hVar, C0147a c0147a) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(21, c0147a.g("seperator"));
        hVar.j(182, f16494h, "writeAfter", "(L" + f16489c + ";Ljava/lang/Object;C)C");
        hVar.c(54, c0147a.g("seperator"));
    }

    private void b(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        Class cls = dVar.f17584e;
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, C0147a.f16500h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0147a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0147a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0147a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0147a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0147a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0147a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0147a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0147a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0147a.g("decimal"));
        } else if (cls == String.class) {
            hVar.c(25, c0147a.g("string"));
        } else if (cls.isEnum()) {
            hVar.c(25, c0147a.g("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0147a.g("list"));
        } else {
            hVar.c(25, c0147a.g("object"));
        }
        hVar.j(182, f16494h, "apply", "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z");
    }

    private void c(com.alibaba.fastjson.asm.h hVar, C0147a c0147a) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(21, c0147a.g("seperator"));
        hVar.j(182, f16494h, "writeBefore", "(L" + f16489c + ";Ljava/lang/Object;C)C");
        hVar.c(54, c0147a.g("seperator"));
    }

    private void d(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(58, c0147a.g("decimal"));
        g(hVar, dVar, c0147a, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        hVar.l(fVar2);
        hVar.c(25, c0147a.g("decimal"));
        hVar.a(199, fVar3);
        l(hVar, dVar, c0147a);
        hVar.a(167, fVar4);
        hVar.l(fVar3);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.c(25, C0147a.f16500h);
        hVar.c(25, c0147a.g("decimal"));
        hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        v(hVar, c0147a);
        hVar.a(167, fVar4);
        hVar.l(fVar4);
        hVar.l(fVar);
    }

    private void e(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(57, c0147a.h("double", 2));
        g(hVar, dVar, c0147a, fVar);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.c(25, C0147a.f16500h);
        hVar.c(24, c0147a.h("double", 2));
        hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;D)V");
        v(hVar, c0147a);
        hVar.l(fVar);
    }

    private void f(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar3);
        i(hVar, c0147a, dVar);
        hVar.f(PsExtractor.AUDIO_STREAM, "java/lang/Enum");
        hVar.c(58, c0147a.g("enum"));
        g(hVar, dVar, c0147a, fVar3);
        hVar.c(25, c0147a.g("enum"));
        hVar.a(199, fVar);
        l(hVar, dVar, c0147a);
        hVar.a(167, fVar2);
        hVar.l(fVar);
        if (c0147a.f16506d) {
            hVar.c(25, c0147a.g("out"));
            hVar.c(21, c0147a.g("seperator"));
            hVar.c(25, C0147a.f16500h);
            hVar.c(25, c0147a.g("enum"));
            hVar.j(182, "java/lang/Enum", "name", "()Ljava/lang/String;");
            hVar.j(182, f16492f, "writeFieldValueStringWithDoubleQuote", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0147a.g("out"));
            hVar.c(21, c0147a.g("seperator"));
            String str = f16492f;
            hVar.j(182, str, "write", "(I)V");
            hVar.c(25, c0147a.g("out"));
            hVar.c(25, C0147a.f16500h);
            hVar.h(3);
            hVar.j(182, str, "writeFieldName", "(Ljava/lang/String;Z)V");
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("enum"));
            hVar.c(25, C0147a.f16500h);
            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f17584e)));
            hVar.d(Integer.valueOf(dVar.f17588i));
            hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
        }
        v(hVar, c0147a);
        hVar.l(fVar2);
        hVar.l(fVar3);
    }

    private void g(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        if (dVar.f17594o) {
            hVar.c(25, c0147a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.SkipTransientField.mask));
            hVar.j(182, f16492f, "isEnabled", "(I)Z");
            hVar.a(154, fVar);
        }
        r(hVar, dVar, c0147a, fVar);
        if (c0147a.f16506d) {
            return;
        }
        b(hVar, dVar, c0147a);
        hVar.a(153, fVar);
        t(hVar, dVar, c0147a);
        u(hVar, dVar, c0147a, fVar);
    }

    private void h(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(56, c0147a.g("float"));
        g(hVar, dVar, c0147a, fVar);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.c(25, C0147a.f16500h);
        hVar.c(23, c0147a.g("float"));
        hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;F)V");
        v(hVar, c0147a);
        hVar.l(fVar);
    }

    private void i(com.alibaba.fastjson.asm.h hVar, C0147a c0147a, com.alibaba.fastjson.util.d dVar) {
        Method method = dVar.f17581b;
        if (method != null) {
            hVar.c(25, c0147a.g("entity"));
            Class<?> declaringClass = method.getDeclaringClass();
            hVar.j(declaringClass.isInterface() ? 185 : 182, com.alibaba.fastjson.util.b.g(declaringClass), method.getName(), com.alibaba.fastjson.util.b.c(method));
            if (method.getReturnType().equals(dVar.f17584e)) {
                return;
            }
            hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(dVar.f17584e));
            return;
        }
        hVar.c(25, c0147a.g("entity"));
        Field field = dVar.f17582c;
        hVar.b(180, com.alibaba.fastjson.util.b.g(dVar.f17586g), field.getName(), com.alibaba.fastjson.util.b.b(field.getType()));
        if (field.getType().equals(dVar.f17584e)) {
            return;
        }
        hVar.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(dVar.f17584e));
    }

    private void j(C0147a c0147a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        String str = c0147a.f16504b;
        String str2 = dVar.f17580a + "_asm_ser_";
        String str3 = f16491e;
        hVar.b(180, str, str2, str3);
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar.f17584e)));
        hVar.j(182, f16489c, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        hVar.b(181, c0147a.f16504b, dVar.f17580a + "_asm_ser_", str3);
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_ser_", str3);
    }

    private void k(C0147a c0147a, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, Class cls) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(25, 0);
        String str = c0147a.f16504b;
        String str2 = dVar.f17580a + "_asm_list_item_ser_";
        String str3 = f16491e;
        hVar.b(180, str, str2, str3);
        hVar.a(199, fVar);
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls)));
        hVar.j(182, f16489c, "getObjectWriter", "(Ljava/lang/Class;)" + str3);
        hVar.b(181, c0147a.f16504b, dVar.f17580a + "_asm_list_item_ser_", str3);
        hVar.l(fVar);
        hVar.c(25, 0);
        hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_list_item_ser_", str3);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0099  */
    /* JADX WARN: Code duplicated, block: B:25:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:43:0x0138  */
    private void l(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        int i10;
        int mask;
        int mask2;
        Class cls = dVar.f17584e;
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        hVar.l(fVar);
        z4.b bVarE = dVar.e();
        int iOf = bVarE != null ? SerializerFeature.of(bVarE.serialzeFeatures()) : 0;
        z4.d dVar2 = c0147a.f16505c.f16525d;
        if (dVar2 != null) {
            iOf |= SerializerFeature.of(dVar2.serialzeFeatures());
        }
        if (cls == String.class) {
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullStringAsEmpty.getMask();
        } else if (Number.class.isAssignableFrom(cls)) {
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullNumberAsZero.getMask();
        } else {
            if (!Collection.class.isAssignableFrom(cls)) {
                if (Boolean.class == cls) {
                    mask = SerializerFeature.WriteMapNullValue.getMask();
                    mask2 = SerializerFeature.WriteNullBooleanAsFalse.getMask();
                } else {
                    i10 = SerializerFeature.WRITE_MAP_NULL_FEATURES;
                }
                if ((iOf & i10) == 0) {
                    hVar.c(25, c0147a.g("out"));
                    hVar.d(Integer.valueOf(i10));
                    hVar.j(182, f16492f, "isEnabled", "(I)Z");
                    hVar.a(153, fVar2);
                }
                hVar.l(fVar3);
                hVar.c(25, c0147a.g("out"));
                hVar.c(21, c0147a.g("seperator"));
                String str = f16492f;
                hVar.j(182, str, "write", "(I)V");
                x(hVar, c0147a);
                hVar.c(25, c0147a.g("out"));
                hVar.d(Integer.valueOf(iOf));
                if (cls != String.class || cls == Character.class) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
                } else if (Number.class.isAssignableFrom(cls)) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullNumberAsZero.mask));
                } else if (cls == Boolean.class) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullBooleanAsFalse.mask));
                } else if (Collection.class.isAssignableFrom(cls) || cls.isArray()) {
                    hVar.d(Integer.valueOf(SerializerFeature.WriteNullListAsEmpty.mask));
                } else {
                    hVar.d(0);
                }
                hVar.j(182, str, "writeNull", "(II)V");
                v(hVar, c0147a);
                hVar.a(167, fVar4);
                hVar.l(fVar2);
                hVar.l(fVar4);
            }
            mask = SerializerFeature.WriteMapNullValue.getMask();
            mask2 = SerializerFeature.WriteNullListAsEmpty.getMask();
        }
        i10 = mask | mask2;
        if ((iOf & i10) == 0) {
            hVar.c(25, c0147a.g("out"));
            hVar.d(Integer.valueOf(i10));
            hVar.j(182, f16492f, "isEnabled", "(I)Z");
            hVar.a(153, fVar2);
        }
        hVar.l(fVar3);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        String str2 = f16492f;
        hVar.j(182, str2, "write", "(I)V");
        x(hVar, c0147a);
        hVar.c(25, c0147a.g("out"));
        hVar.d(Integer.valueOf(iOf));
        if (cls != String.class) {
            hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
        } else {
            hVar.d(Integer.valueOf(SerializerFeature.WriteNullStringAsEmpty.mask));
        }
        hVar.j(182, str2, "writeNull", "(II)V");
        v(hVar, c0147a);
        hVar.a(167, fVar4);
        hVar.l(fVar2);
        hVar.l(fVar4);
    }

    private void m(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, int i10, char c10) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(54, i10);
        g(hVar, dVar, c0147a, fVar);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.c(25, C0147a.f16500h);
        hVar.c(21, i10);
        hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;" + c10 + ")V");
        v(hVar, c0147a);
        hVar.l(fVar);
    }

    private void n(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.d(dVar.f17590k);
        hVar.j(182, f16494h, "applyLabel", "(L" + f16489c + ";Ljava/lang/String;)Z");
        hVar.a(153, fVar);
    }

    private void o(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar;
        String str;
        com.alibaba.fastjson.util.d dVar2;
        com.alibaba.fastjson.asm.f fVar2;
        int i10;
        int i11;
        int i12;
        Type typeV = TypeUtils.V(dVar.f17585f);
        Class cls2 = null;
        Class cls3 = typeV instanceof Class ? (Class) typeV : null;
        if (cls3 != Object.class && cls3 != Serializable.class) {
            cls2 = cls3;
        }
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar3);
        i(hVar, c0147a, dVar);
        hVar.f(PsExtractor.AUDIO_STREAM, "java/util/List");
        hVar.c(58, c0147a.g("list"));
        g(hVar, dVar, c0147a, fVar3);
        hVar.c(25, c0147a.g("list"));
        hVar.a(199, fVar4);
        l(hVar, dVar, c0147a);
        hVar.a(167, fVar5);
        hVar.l(fVar4);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        String str2 = f16492f;
        hVar.j(182, str2, "write", "(I)V");
        x(hVar, c0147a);
        hVar.c(25, c0147a.g("list"));
        hVar.j(185, "java/util/List", "size", "()I");
        hVar.c(54, c0147a.g("size"));
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0147a.g("size"));
        hVar.h(3);
        hVar.a(160, fVar6);
        hVar.c(25, c0147a.g("out"));
        hVar.d("[]");
        hVar.j(182, str2, "write", "(Ljava/lang/String;)V");
        hVar.a(167, fVar7);
        hVar.l(fVar6);
        if (!c0147a.f16509g) {
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("list"));
            hVar.c(25, C0147a.f16500h);
            hVar.j(182, f16489c, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (typeV == String.class && c0147a.f16506d) {
            hVar.c(25, c0147a.g("out"));
            hVar.c(25, c0147a.g("list"));
            hVar.j(182, str2, "write", "(Ljava/util/List;)V");
            i11 = 25;
            i12 = 182;
            i10 = 1;
        } else {
            hVar.c(25, c0147a.g("out"));
            hVar.c(16, 91);
            hVar.j(182, str2, "write", "(I)V");
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar9 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar10 = new com.alibaba.fastjson.asm.f();
            hVar.h(3);
            hVar.c(54, c0147a.g("i"));
            hVar.l(fVar8);
            hVar.c(21, c0147a.g("i"));
            hVar.c(21, c0147a.g("size"));
            hVar.a(162, fVar10);
            hVar.c(21, c0147a.g("i"));
            hVar.a(153, fVar9);
            hVar.c(25, c0147a.g("out"));
            hVar.c(16, 44);
            hVar.j(182, str2, "write", "(I)V");
            hVar.l(fVar9);
            hVar.c(25, c0147a.g("list"));
            hVar.c(21, c0147a.g("i"));
            hVar.j(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            hVar.c(58, c0147a.g("list_item"));
            com.alibaba.fastjson.asm.f fVar11 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar12 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0147a.g("list_item"));
            hVar.a(199, fVar12);
            hVar.c(25, c0147a.g("out"));
            hVar.j(182, str2, "writeNull", "()V");
            hVar.a(167, fVar11);
            hVar.l(fVar12);
            com.alibaba.fastjson.asm.f fVar13 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar14 = new com.alibaba.fastjson.asm.f();
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                fVar11 = fVar11;
                fVar = fVar13;
                str = "write";
                dVar2 = dVar;
                fVar2 = fVar14;
            } else {
                hVar.c(25, c0147a.g("list_item"));
                hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                hVar.a(166, fVar14);
                dVar2 = dVar;
                k(c0147a, hVar, dVar2, cls2);
                hVar.c(58, c0147a.g("list_item_desc"));
                com.alibaba.fastjson.asm.f fVar15 = new com.alibaba.fastjson.asm.f();
                com.alibaba.fastjson.asm.f fVar16 = new com.alibaba.fastjson.asm.f();
                if (c0147a.f16506d) {
                    String str3 = (c0147a.f16509g && c0147a.f16506d) ? "writeDirectNonContext" : "write";
                    hVar.c(25, c0147a.g("list_item_desc"));
                    String str4 = f16494h;
                    hVar.f(193, str4);
                    hVar.a(153, fVar15);
                    hVar.c(25, c0147a.g("list_item_desc"));
                    hVar.f(PsExtractor.AUDIO_STREAM, str4);
                    hVar.c(25, 1);
                    hVar.c(25, c0147a.g("list_item"));
                    if (c0147a.f16509g) {
                        hVar.h(1);
                    } else {
                        hVar.c(21, c0147a.g("i"));
                        hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                    hVar.d(Integer.valueOf(dVar2.f17588i));
                    hVar.j(182, str4, str3, "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                    hVar.a(167, fVar16);
                    hVar.l(fVar15);
                } else {
                    fVar11 = fVar11;
                    fVar14 = fVar14;
                }
                hVar.c(25, c0147a.g("list_item_desc"));
                hVar.c(25, 1);
                hVar.c(25, c0147a.g("list_item"));
                if (c0147a.f16509g) {
                    hVar.h(1);
                } else {
                    hVar.c(21, c0147a.g("i"));
                    hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls2)));
                hVar.d(Integer.valueOf(dVar2.f17588i));
                str = "write";
                hVar.j(185, f16490d, str, "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                hVar.l(fVar16);
                fVar = fVar13;
                hVar.a(167, fVar);
                fVar2 = fVar14;
            }
            hVar.l(fVar2);
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("list_item"));
            if (c0147a.f16509g) {
                hVar.h(1);
            } else {
                hVar.c(21, c0147a.g("i"));
                hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (cls2 == null || !Modifier.isPublic(cls2.getModifiers())) {
                hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b((Class) typeV)));
                hVar.d(Integer.valueOf(dVar2.f17588i));
                hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
            hVar.l(fVar);
            hVar.l(fVar11);
            i10 = 1;
            hVar.e(c0147a.g("i"), 1);
            hVar.a(167, fVar8);
            hVar.l(fVar10);
            i11 = 25;
            hVar.c(25, c0147a.g("out"));
            hVar.c(16, 93);
            i12 = 182;
            hVar.j(182, str2, str, "(I)V");
        }
        hVar.c(i11, i10);
        hVar.j(i12, f16489c, "popContext", "()V");
        hVar.l(fVar7);
        v(hVar, c0147a);
        hVar.l(fVar5);
        hVar.l(fVar3);
    }

    private void p(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(55, c0147a.h("long", 2));
        g(hVar, dVar, c0147a, fVar);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.c(25, C0147a.f16500h);
        hVar.c(22, c0147a.h("long", 2));
        hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;J)V");
        v(hVar, c0147a);
        hVar.l(fVar);
    }

    private void q(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        if (!c0147a.f16506d) {
            hVar.c(25, 0);
            hVar.c(25, 1);
            hVar.c(25, 2);
            hVar.c(25, C0147a.f16500h);
            hVar.j(182, f16494h, "applyName", "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/String;)Z");
            hVar.a(153, fVar);
            n(hVar, dVar, c0147a, fVar);
        }
        if (dVar.f17582c == null) {
            hVar.c(25, c0147a.g("out"));
            hVar.d(Integer.valueOf(SerializerFeature.IgnoreNonFieldGetter.mask));
            hVar.j(182, f16492f, "isEnabled", "(I)Z");
            hVar.a(154, fVar);
        }
    }

    private void r(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        if (c0147a.f16506d) {
            return;
        }
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0147a.g("notWriteDefaultValue"));
        hVar.a(153, fVar2);
        Class cls = dVar.f17584e;
        if (cls == Boolean.TYPE) {
            hVar.c(21, c0147a.g("boolean"));
            hVar.a(153, fVar);
        } else if (cls == Byte.TYPE) {
            hVar.c(21, c0147a.g("byte"));
            hVar.a(153, fVar);
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0147a.g("short"));
            hVar.a(153, fVar);
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0147a.g("int"));
            hVar.a(153, fVar);
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0147a.g("long"));
            hVar.h(9);
            hVar.h(148);
            hVar.a(153, fVar);
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0147a.g("float"));
            hVar.h(11);
            hVar.h(149);
            hVar.a(153, fVar);
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0147a.g("double"));
            hVar.h(14);
            hVar.h(151);
            hVar.a(153, fVar);
        }
        hVar.l(fVar2);
    }

    private void s(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(58, c0147a.g("object"));
        g(hVar, dVar, c0147a, fVar);
        y(hVar, dVar, c0147a, fVar);
        hVar.l(fVar);
    }

    private void t(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        hVar.c(21, c0147a.g("hasNameFilters"));
        hVar.a(153, fVar);
        Class cls = dVar.f17584e;
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 2);
        hVar.c(25, C0147a.f16500h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0147a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0147a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0147a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0147a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0147a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0147a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0147a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0147a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0147a.g("decimal"));
        } else if (cls == String.class) {
            hVar.c(25, c0147a.g("string"));
        } else if (cls.isEnum()) {
            hVar.c(25, c0147a.g("enum"));
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0147a.g("list"));
        } else {
            hVar.c(25, c0147a.g("object"));
        }
        hVar.j(182, f16494h, "processKey", "(L" + f16489c + ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;");
        hVar.c(58, C0147a.f16500h);
        hVar.l(fVar);
    }

    private void u(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        Class cls = dVar.f17584e;
        if (cls.isPrimitive()) {
            com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
            hVar.c(21, c0147a.g("checkValue"));
            hVar.a(154, fVar3);
            hVar.h(1);
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
            hVar.c(58, C0147a.f16502j);
            hVar.a(167, fVar2);
            hVar.l(fVar3);
        }
        hVar.c(25, 0);
        hVar.c(25, 1);
        hVar.c(25, 0);
        hVar.d(Integer.valueOf(c0147a.f(dVar.f17580a)));
        String str = f16494h;
        hVar.j(182, str, "getBeanContext", "(I)" + com.alibaba.fastjson.util.b.b(p.class));
        hVar.c(25, 2);
        hVar.c(25, C0147a.f16500h);
        if (cls == Byte.TYPE) {
            hVar.c(21, c0147a.g("byte"));
            hVar.j(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Short.TYPE) {
            hVar.c(21, c0147a.g("short"));
            hVar.j(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Integer.TYPE) {
            hVar.c(21, c0147a.g("int"));
            hVar.j(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Character.TYPE) {
            hVar.c(21, c0147a.g("char"));
            hVar.j(184, "java/lang/Character", "valueOf", "(C)Ljava/lang/Character;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Long.TYPE) {
            hVar.c(22, c0147a.h("long", 2));
            hVar.j(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Float.TYPE) {
            hVar.c(23, c0147a.g("float"));
            hVar.j(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Double.TYPE) {
            hVar.c(24, c0147a.h("double", 2));
            hVar.j(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == Boolean.TYPE) {
            hVar.c(21, c0147a.g("boolean"));
            hVar.j(184, "java/lang/Boolean", "valueOf", "(Z)Ljava/lang/Boolean;");
            hVar.h(89);
            hVar.c(58, C0147a.f16501i);
        } else if (cls == BigDecimal.class) {
            hVar.c(25, c0147a.g("decimal"));
            hVar.c(58, C0147a.f16501i);
            hVar.c(25, C0147a.f16501i);
        } else if (cls == String.class) {
            hVar.c(25, c0147a.g("string"));
            hVar.c(58, C0147a.f16501i);
            hVar.c(25, C0147a.f16501i);
        } else if (cls.isEnum()) {
            hVar.c(25, c0147a.g("enum"));
            hVar.c(58, C0147a.f16501i);
            hVar.c(25, C0147a.f16501i);
        } else if (List.class.isAssignableFrom(cls)) {
            hVar.c(25, c0147a.g("list"));
            hVar.c(58, C0147a.f16501i);
            hVar.c(25, C0147a.f16501i);
        } else {
            hVar.c(25, c0147a.g("object"));
            hVar.c(58, C0147a.f16501i);
            hVar.c(25, C0147a.f16501i);
        }
        hVar.j(182, str, "processValue", "(L" + f16489c + ";" + com.alibaba.fastjson.util.b.b(p.class) + "Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;");
        hVar.c(58, C0147a.f16502j);
        hVar.c(25, C0147a.f16501i);
        hVar.c(25, C0147a.f16502j);
        hVar.a(165, fVar2);
        y(hVar, dVar, c0147a, fVar);
        hVar.a(167, fVar);
        hVar.l(fVar2);
    }

    private void v(com.alibaba.fastjson.asm.h hVar, C0147a c0147a) {
        hVar.c(16, 44);
        hVar.c(54, c0147a.g("seperator"));
    }

    private void w(Class cls, com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a) {
        com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
        if (dVar.f17580a.equals(c0147a.f16505c.f16524c)) {
            hVar.c(25, 1);
            hVar.c(25, 4);
            hVar.c(25, 2);
            hVar.j(182, f16489c, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            hVar.a(154, fVar);
        }
        q(hVar, dVar, c0147a, fVar);
        i(hVar, c0147a, dVar);
        hVar.c(58, c0147a.g("string"));
        g(hVar, dVar, c0147a, fVar);
        com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
        hVar.c(25, c0147a.g("string"));
        hVar.a(199, fVar2);
        l(hVar, dVar, c0147a);
        hVar.a(167, fVar3);
        hVar.l(fVar2);
        if ("trim".equals(dVar.f17599t)) {
            hVar.c(25, c0147a.g("string"));
            hVar.j(182, "java/lang/String", "trim", "()Ljava/lang/String;");
            hVar.c(58, c0147a.g("string"));
        }
        if (c0147a.f16506d) {
            hVar.c(25, c0147a.g("out"));
            hVar.c(21, c0147a.g("seperator"));
            hVar.c(25, C0147a.f16500h);
            hVar.c(25, c0147a.g("string"));
            hVar.j(182, f16492f, "writeFieldValueStringWithDoubleQuoteCheck", "(CLjava/lang/String;Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0147a.g("out"));
            hVar.c(21, c0147a.g("seperator"));
            hVar.c(25, C0147a.f16500h);
            hVar.c(25, c0147a.g("string"));
            hVar.j(182, f16492f, "writeFieldValue", "(CLjava/lang/String;Ljava/lang/String;)V");
        }
        v(hVar, c0147a);
        hVar.l(fVar3);
        hVar.l(fVar);
    }

    private void x(com.alibaba.fastjson.asm.h hVar, C0147a c0147a) {
        if (c0147a.f16506d) {
            hVar.c(25, c0147a.g("out"));
            hVar.c(25, C0147a.f16500h);
            hVar.j(182, f16492f, "writeFieldNameDirect", "(Ljava/lang/String;)V");
        } else {
            hVar.c(25, c0147a.g("out"));
            hVar.c(25, C0147a.f16500h);
            hVar.h(3);
            hVar.j(182, f16492f, "writeFieldName", "(Ljava/lang/String;Z)V");
        }
    }

    private void y(com.alibaba.fastjson.asm.h hVar, com.alibaba.fastjson.util.d dVar, C0147a c0147a, com.alibaba.fastjson.asm.f fVar) {
        com.alibaba.fastjson.asm.f fVar2;
        com.alibaba.fastjson.asm.f fVar3;
        String str;
        String strK = dVar.k();
        Class cls = dVar.f17584e;
        com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
        if (c0147a.f16506d) {
            hVar.c(25, c0147a.g("object"));
        } else {
            hVar.c(25, C0147a.f16502j);
        }
        hVar.h(89);
        hVar.c(58, c0147a.g("object"));
        hVar.a(199, fVar4);
        l(hVar, dVar, c0147a);
        hVar.a(167, fVar);
        hVar.l(fVar4);
        hVar.c(25, c0147a.g("out"));
        hVar.c(21, c0147a.g("seperator"));
        hVar.j(182, f16492f, "write", "(I)V");
        x(hVar, c0147a);
        com.alibaba.fastjson.asm.f fVar5 = new com.alibaba.fastjson.asm.f();
        com.alibaba.fastjson.asm.f fVar6 = new com.alibaba.fastjson.asm.f();
        if (!Modifier.isPublic(cls.getModifiers()) || a5.h.w(cls)) {
            fVar2 = fVar5;
            fVar3 = fVar6;
        } else {
            hVar.c(25, c0147a.g("object"));
            hVar.j(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(cls)));
            hVar.a(166, fVar6);
            j(c0147a, hVar, dVar);
            hVar.c(58, c0147a.g("fied_ser"));
            com.alibaba.fastjson.asm.f fVar7 = new com.alibaba.fastjson.asm.f();
            com.alibaba.fastjson.asm.f fVar8 = new com.alibaba.fastjson.asm.f();
            hVar.c(25, c0147a.g("fied_ser"));
            String str2 = f16494h;
            hVar.f(193, str2);
            hVar.a(153, fVar7);
            int i10 = dVar.f17588i;
            boolean z10 = (SerializerFeature.DisableCircularReferenceDetect.mask & i10) != 0;
            boolean z11 = (SerializerFeature.BeanToArray.mask & i10) != 0;
            if (z10 || (c0147a.f16509g && c0147a.f16506d)) {
                str = z11 ? "writeAsArrayNonContext" : "writeDirectNonContext";
            } else {
                str = z11 ? "writeAsArray" : "write";
            }
            hVar.c(25, c0147a.g("fied_ser"));
            hVar.f(PsExtractor.AUDIO_STREAM, str2);
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("object"));
            hVar.c(25, C0147a.f16500h);
            hVar.c(25, 0);
            hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            hVar.d(Integer.valueOf(dVar.f17588i));
            StringBuilder sb2 = new StringBuilder();
            sb2.append("(L");
            String str3 = f16489c;
            sb2.append(str3);
            sb2.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.j(182, str2, str, sb2.toString());
            hVar.a(167, fVar8);
            hVar.l(fVar7);
            hVar.c(25, c0147a.g("fied_ser"));
            hVar.c(25, 1);
            hVar.c(25, c0147a.g("object"));
            hVar.c(25, C0147a.f16500h);
            hVar.c(25, 0);
            hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
            hVar.d(Integer.valueOf(dVar.f17588i));
            hVar.j(185, f16490d, "write", "(L" + str3 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            hVar.l(fVar8);
            fVar2 = fVar5;
            hVar.a(167, fVar2);
            fVar3 = fVar6;
        }
        hVar.l(fVar3);
        hVar.c(25, 1);
        if (c0147a.f16506d) {
            hVar.c(25, c0147a.g("object"));
        } else {
            hVar.c(25, C0147a.f16502j);
        }
        if (strK != 0) {
            hVar.d(strK);
            hVar.j(182, f16489c, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            hVar.c(25, C0147a.f16500h);
            Type type = dVar.f17585f;
            if ((type instanceof Class) && ((Class) type).isPrimitive()) {
                hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            } else {
                if (dVar.f17584e == String.class) {
                    hVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(String.class)));
                } else {
                    hVar.c(25, 0);
                    hVar.b(180, c0147a.f16504b, dVar.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                hVar.d(Integer.valueOf(dVar.f17588i));
                hVar.j(182, f16489c, "writeWithFieldName", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            }
        }
        hVar.l(fVar2);
        v(hVar, c0147a);
    }

    public p0 z(f1 f1Var) {
        String str;
        String str2;
        String str3;
        Class<String> cls;
        boolean z10;
        Class<f1> cls2;
        boolean z11;
        com.alibaba.fastjson.util.d[] dVarArr;
        a aVar;
        int i10;
        String str4;
        boolean z12;
        boolean z13;
        String str5;
        boolean z14;
        boolean z15;
        int i11;
        char c10;
        int i12;
        int i13;
        Method method;
        Class cls3 = f1Var.f16522a;
        if (cls3.isPrimitive()) {
            throw new JSONException("unsupportd class " + cls3.getName());
        }
        z4.d dVar = (z4.d) TypeUtils.N(cls3, z4.d.class);
        com.alibaba.fastjson.util.d[] dVarArr2 = f1Var.f16526e;
        for (com.alibaba.fastjson.util.d dVar2 : dVarArr2) {
            if (dVar2.f17582c == null && (method = dVar2.f17581b) != null && method.getDeclaringClass().isInterface()) {
                return new p0(f1Var);
            }
        }
        com.alibaba.fastjson.util.d[] dVarArr3 = f1Var.f16527f;
        boolean z16 = dVarArr3 == f1Var.f16526e;
        if (dVarArr3.length > 256) {
            return new p0(f1Var);
        }
        for (com.alibaba.fastjson.util.d dVar3 : dVarArr3) {
            if (!com.alibaba.fastjson.util.b.a(dVar3.m().getName())) {
                return new p0(f1Var);
            }
        }
        String str6 = "ASMSerializer_" + this.f16499b.incrementAndGet() + "_" + cls3.getSimpleName();
        Package r10 = a.class.getPackage();
        if (r10 != null) {
            String name = r10.getName();
            str2 = name + "." + str6;
            str = name.replace('.', '/') + "/" + str6;
        } else {
            str = str6;
            str2 = str;
        }
        com.alibaba.fastjson.asm.c cVar = new com.alibaba.fastjson.asm.c();
        cVar.k(49, 33, str, f16494h, new String[]{f16490d});
        int length = dVarArr3.length;
        int i14 = 0;
        while (true) {
            str3 = str2;
            cls = String.class;
            if (i14 >= length) {
                break;
            }
            int i15 = length;
            com.alibaba.fastjson.util.d dVar4 = dVarArr3[i14];
            com.alibaba.fastjson.util.d[] dVarArr4 = dVarArr2;
            if (dVar4.f17584e.isPrimitive() || dVar4.f17584e == cls) {
                i13 = 1;
            } else {
                new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;").c();
                if (List.class.isAssignableFrom(dVar4.f17584e)) {
                    new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f17580a + "_asm_list_item_ser_", f16491e).c();
                }
                i13 = 1;
                new com.alibaba.fastjson.asm.d(cVar, 1, dVar4.f17580a + "_asm_ser_", f16491e).c();
            }
            i14 += i13;
            length = i15;
            str2 = str3;
            dVarArr2 = dVarArr4;
        }
        com.alibaba.fastjson.util.d[] dVarArr5 = dVarArr2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        Class<f1> cls4 = f1.class;
        sb2.append(com.alibaba.fastjson.util.b.b(cls4));
        sb2.append(")V");
        com.alibaba.fastjson.asm.i iVar = new com.alibaba.fastjson.asm.i(cVar, 1, "<init>", sb2.toString(), null, null);
        iVar.c(25, 0);
        iVar.c(25, 1);
        iVar.j(183, f16494h, "<init>", "(" + com.alibaba.fastjson.util.b.b(cls4) + ")V");
        int i16 = 0;
        while (i16 < dVarArr3.length) {
            com.alibaba.fastjson.util.d dVar5 = dVarArr3[i16];
            if (dVar5.f17584e.isPrimitive()) {
                cVar = cVar;
                cls = cls;
            } else {
                if (dVar5.f17584e == cls) {
                    cVar = cVar;
                    cls = cls;
                    i12 = 1;
                } else {
                    iVar.c(25, 0);
                    if (dVar5.f17581b != null) {
                        iVar.d(com.alibaba.fastjson.asm.j.g(com.alibaba.fastjson.util.b.b(dVar5.f17586g)));
                        iVar.d(dVar5.f17581b.getName());
                        iVar.j(184, com.alibaba.fastjson.util.b.g(com.alibaba.fastjson.util.b.class), "getMethodType", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;");
                    } else {
                        iVar.c(25, 0);
                        iVar.d(Integer.valueOf(i16));
                        iVar.j(183, f16494h, "getFieldType", "(I)Ljava/lang/reflect/Type;");
                    }
                    iVar.b(181, str, dVar5.f17580a + "_asm_fieldType", "Ljava/lang/reflect/Type;");
                }
                i16 += i12;
                cVar = cVar;
                cls = cls;
            }
            i12 = 1;
            i16 += i12;
            cVar = cVar;
            cls = cls;
        }
        com.alibaba.fastjson.asm.c cVar2 = cVar;
        iVar.h(177);
        iVar.i(4, 4);
        iVar.k();
        if (dVar == null) {
            z10 = false;
            break;
        }
        SerializerFeature[] serializerFeatureArrSerialzeFeatures = dVar.serialzeFeatures();
        int length2 = serializerFeatureArrSerialzeFeatures.length;
        int i17 = 0;
        while (true) {
            if (i17 >= length2) {
                z10 = false;
                break;
            }
            if (serializerFeatureArrSerialzeFeatures[i17] == SerializerFeature.DisableCircularReferenceDetect) {
                z10 = true;
                break;
            }
            i17++;
        }
        int i18 = 0;
        while (true) {
            cls2 = cls4;
            z11 = z10;
            if (i18 >= 3) {
                break;
            }
            if (i18 == 0) {
                str5 = "write";
                z15 = z11;
                z14 = true;
            } else if (i18 == 1) {
                str5 = "writeNormal";
                z15 = z11;
                z14 = false;
            } else {
                str5 = "writeDirectNonContext";
                z14 = true;
                z15 = true;
            }
            com.alibaba.fastjson.util.d[] dVarArr6 = dVarArr3;
            int i19 = i18;
            com.alibaba.fastjson.asm.c cVar3 = cVar2;
            C0147a c0147a = new C0147a(dVarArr3, f1Var, str, z14, z15);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("(L");
            String str7 = f16489c;
            sb3.append(str7);
            sb3.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar2 = new com.alibaba.fastjson.asm.i(cVar2, 1, str5, sb3.toString(), null, new String[]{"java/io/IOException"});
            com.alibaba.fastjson.asm.f fVar = new com.alibaba.fastjson.asm.f();
            iVar2.c(25, 2);
            iVar2.a(199, fVar);
            iVar2.c(25, 1);
            iVar2.j(182, str7, "writeNull", "()V");
            iVar2.h(177);
            iVar2.l(fVar);
            iVar2.c(25, 1);
            iVar2.b(180, str7, "out", f16493g);
            iVar2.c(58, c0147a.g("out"));
            if (!z16 && !c0147a.f16506d && (dVar == null || dVar.alphabetic())) {
                com.alibaba.fastjson.asm.f fVar2 = new com.alibaba.fastjson.asm.f();
                iVar2.c(25, c0147a.g("out"));
                iVar2.j(182, f16492f, "isSortField", "()Z");
                iVar2.a(154, fVar2);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeUnsorted", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                iVar2.h(177);
                iVar2.l(fVar2);
            }
            if (!c0147a.f16506d || z15) {
                i11 = 177;
                c10 = 4;
            } else {
                com.alibaba.fastjson.asm.f fVar3 = new com.alibaba.fastjson.asm.f();
                com.alibaba.fastjson.asm.f fVar4 = new com.alibaba.fastjson.asm.f();
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.j(182, f16494h, "writeDirect", "(L" + str7 + ";)Z");
                iVar2.a(154, fVar4);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeNormal", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                iVar2.h(177);
                iVar2.l(fVar4);
                iVar2.c(25, c0147a.g("out"));
                iVar2.d(Integer.valueOf(SerializerFeature.DisableCircularReferenceDetect.mask));
                iVar2.j(182, f16492f, "isEnabled", "(I)Z");
                iVar2.a(153, fVar3);
                iVar2.c(25, 0);
                iVar2.c(25, 1);
                iVar2.c(25, 2);
                iVar2.c(25, 3);
                c10 = 4;
                iVar2.c(25, 4);
                iVar2.c(21, 5);
                iVar2.j(182, str, "writeDirectNonContext", "(L" + str7 + ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
                i11 = 177;
                iVar2.h(177);
                iVar2.l(fVar3);
            }
            iVar2.c(25, 2);
            iVar2.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar2.c(58, c0147a.g("entity"));
            B(cls3, iVar2, dVarArr6, c0147a);
            iVar2.h(i11);
            iVar2.i(7, c0147a.f16508f + 2);
            iVar2.k();
            i18 = i19 + 1;
            dVarArr3 = dVarArr6;
            dVar = dVar;
            cls4 = cls2;
            z10 = z11;
            cVar2 = cVar3;
        }
        com.alibaba.fastjson.util.d[] dVarArr7 = dVarArr3;
        com.alibaba.fastjson.asm.c cVar4 = cVar2;
        if (z16) {
            dVarArr = dVarArr7;
            aVar = this;
            i10 = 180;
        } else {
            dVarArr = dVarArr7;
            aVar = this;
            i10 = 180;
            C0147a c0147a2 = new C0147a(dVarArr, f1Var, str, false, z11);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("(L");
            String str8 = f16489c;
            sb4.append(str8);
            sb4.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar3 = new com.alibaba.fastjson.asm.i(cVar4, 1, "writeUnsorted", sb4.toString(), null, new String[]{"java/io/IOException"});
            iVar3.c(25, 1);
            iVar3.b(180, str8, "out", f16493g);
            iVar3.c(58, c0147a2.g("out"));
            iVar3.c(25, 2);
            iVar3.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar3.c(58, c0147a2.g("entity"));
            aVar.B(cls3, iVar3, dVarArr5, c0147a2);
            iVar3.h(177);
            iVar3.i(7, c0147a2.f16508f + 2);
            iVar3.k();
        }
        int i20 = 0;
        for (int i21 = 3; i20 < i21; i21 = i21) {
            if (i20 == 0) {
                str4 = "writeAsArray";
                z13 = z11;
                z12 = true;
            } else if (i20 == 1) {
                str4 = "writeAsArrayNormal";
                z13 = z11;
                z12 = false;
            } else {
                str4 = "writeAsArrayNonContext";
                z12 = true;
                z13 = true;
            }
            C0147a c0147a3 = new C0147a(dVarArr, f1Var, str, z12, z13);
            StringBuilder sb5 = new StringBuilder();
            sb5.append("(L");
            String str9 = f16489c;
            sb5.append(str9);
            sb5.append(";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V");
            com.alibaba.fastjson.asm.i iVar4 = new com.alibaba.fastjson.asm.i(cVar4, 1, str4, sb5.toString(), null, new String[]{"java/io/IOException"});
            iVar4.c(25, 1);
            iVar4.b(i10, str9, "out", f16493g);
            iVar4.c(58, c0147a3.g("out"));
            iVar4.c(25, 2);
            iVar4.f(PsExtractor.AUDIO_STREAM, com.alibaba.fastjson.util.b.g(cls3));
            iVar4.c(58, c0147a3.g("entity"));
            aVar.A(cls3, iVar4, dVarArr, c0147a3);
            iVar4.h(177);
            iVar4.i(7, c0147a3.f16508f + 2);
            iVar4.k();
            i20++;
        }
        byte[] bArrJ = cVar4.j();
        return (p0) aVar.f16498a.a(str3, bArrJ, 0, bArrJ.length).getConstructor(cls2).newInstance(f1Var);
    }
}
