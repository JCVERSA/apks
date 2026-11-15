package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import org.mozilla.javascript.ES6Iterator;

public final class id {
    public final qq6 a;
    public final NotFoundClasses b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.CLASS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ENUM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ANNOTATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ProtoBuf$Annotation.Argument.Value.Type.ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            a = iArr;
        }
    }

    public id(qq6 qq6Var, NotFoundClasses notFoundClasses) {
        y45.j(qq6Var, "module");
        y45.j(notFoundClasses, "notFoundClasses");
        this.a = qq6Var;
        this.b = notFoundClasses;
    }

    public final gd a(ProtoBuf$Annotation protoBuf$Annotation, cy6 cy6Var) {
        y45.j(protoBuf$Annotation, "proto");
        y45.j(cy6Var, "nameResolver");
        qw0 qw0VarE = e(ey6.a(cy6Var, protoBuf$Annotation.getId()));
        Map mapL = kotlin.collections.a.l();
        if (protoBuf$Annotation.getArgumentCount() != 0 && !id3.m(qw0VarE) && y82.t(qw0VarE)) {
            Collection collectionN = qw0VarE.n();
            y45.i(collectionN, "annotationClass.constructors");
            b bVar = (b) i81.P0(collectionN);
            if (bVar != null) {
                List listF = bVar.f();
                y45.i(listF, "constructor.valueParameters");
                List list = listF;
                LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
                for (Object obj : list) {
                    linkedHashMap.put(((h) obj).getName(), obj);
                }
                List<ProtoBuf$Annotation.Argument> argumentList = protoBuf$Annotation.getArgumentList();
                y45.i(argumentList, "proto.argumentList");
                ArrayList arrayList = new ArrayList();
                for (ProtoBuf$Annotation.Argument argument : argumentList) {
                    y45.i(argument, "it");
                    Pair pairD = d(argument, linkedHashMap, cy6Var);
                    if (pairD != null) {
                        arrayList.add(pairD);
                    }
                }
                mapL = kotlin.collections.a.y(arrayList);
            }
        }
        return new hd(qw0VarE.q(), mapL, yt9.a);
    }

    public final boolean b(pf1 pf1Var, eh5 eh5Var, ProtoBuf$Annotation.Argument.Value value) {
        ProtoBuf$Annotation.Argument.Value.Type type = value.getType();
        int i = type == null ? -1 : a.a[type.ordinal()];
        if (i == 10) {
            px0 px0VarC = eh5Var.I0().c();
            qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            if (qw0Var != null && !d.l0(qw0Var)) {
                return false;
            }
        } else {
            if (i != 13) {
                return y45.e(pf1Var.a(this.a), eh5Var);
            }
            if (!(pf1Var instanceof vh) || ((List) ((vh) pf1Var).b()).size() != value.getArrayElementList().size()) {
                throw new IllegalStateException(("Deserialized ArrayValue should have the same number of elements as the original array value: " + pf1Var).toString());
            }
            eh5 eh5VarK = c().k(eh5Var);
            y45.i(eh5VarK, "builtIns.getArrayElementType(expectedType)");
            vh vhVar = (vh) pf1Var;
            Iterable iterableL = y71.l((Collection) vhVar.b());
            if (!(iterableL instanceof Collection) || !((Collection) iterableL).isEmpty()) {
                Iterator it = iterableL.iterator();
                while (it.hasNext()) {
                    int iNextInt = ((q15) it).nextInt();
                    pf1 pf1Var2 = (pf1) ((List) vhVar.b()).get(iNextInt);
                    ProtoBuf$Annotation.Argument.Value arrayElement = value.getArrayElement(iNextInt);
                    y45.i(arrayElement, "value.getArrayElement(i)");
                    if (!b(pf1Var2, eh5VarK, arrayElement)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final d c() {
        return this.a.o();
    }

    public final Pair d(ProtoBuf$Annotation.Argument argument, Map map, cy6 cy6Var) {
        h hVar = (h) map.get(ey6.b(cy6Var, argument.getNameId()));
        if (hVar == null) {
            return null;
        }
        by6 by6VarB = ey6.b(cy6Var, argument.getNameId());
        eh5 type = hVar.getType();
        y45.i(type, "parameter.type");
        ProtoBuf$Annotation.Argument.Value value = argument.getValue();
        y45.i(value, "proto.value");
        return new Pair(by6VarB, g(type, value, cy6Var));
    }

    public final qw0 e(xw0 xw0Var) {
        return FindClassInModuleKt.c(this.a, xw0Var, this.b);
    }

    public final pf1 f(eh5 eh5Var, ProtoBuf$Annotation.Argument.Value value, cy6 cy6Var) {
        pf1 eebVar;
        y45.j(eh5Var, "expectedType");
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        y45.j(cy6Var, "nameResolver");
        Boolean boolD = ay3.O.d(value.getFlags());
        y45.i(boolD, "IS_UNSIGNED.get(value.flags)");
        boolean zBooleanValue = boolD.booleanValue();
        ProtoBuf$Annotation.Argument.Value.Type type = value.getType();
        switch (type == null ? -1 : a.a[type.ordinal()]) {
            case 1:
                byte intValue = (byte) value.getIntValue();
                eebVar = zBooleanValue ? new eeb(intValue) : new qo0(intValue);
                break;
            case 2:
                return new kv0((char) value.getIntValue());
            case 3:
                short intValue2 = (short) value.getIntValue();
                eebVar = zBooleanValue ? new gfb(intValue2) : new ei9(intValue2);
                break;
            case 4:
                int intValue3 = (int) value.getIntValue();
                eebVar = zBooleanValue ? new peb(intValue3) : new x15(intValue3);
                break;
            case 5:
                long intValue4 = value.getIntValue();
                return zBooleanValue ? new veb(intValue4) : new nr5(intValue4);
            case 6:
                return new ez3(value.getFloatValue());
            case 7:
                return new ux2(value.getDoubleValue());
            case 8:
                return new gi0(value.getIntValue() != 0);
            case 9:
                return new s0a(cy6Var.getString(value.getStringValue()));
            case 10:
                return new ee5(ey6.a(cy6Var, value.getClassId()), value.getArrayDimensionCount());
            case 11:
                return new fb3(ey6.a(cy6Var, value.getClassId()), ey6.b(cy6Var, value.getEnumValueId()));
            case 12:
                ProtoBuf$Annotation annotation = value.getAnnotation();
                y45.i(annotation, "value.annotation");
                eebVar = new ld(a(annotation, cy6Var));
                break;
            case 13:
                ConstantValueFactory constantValueFactory = ConstantValueFactory.a;
                List<ProtoBuf$Annotation.Argument.Value> arrayElementList = value.getArrayElementList();
                y45.i(arrayElementList, "value.arrayElementList");
                List<ProtoBuf$Annotation.Argument.Value> list = arrayElementList;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                for (ProtoBuf$Annotation.Argument.Value value2 : list) {
                    sm9 sm9VarI = c().i();
                    y45.i(sm9VarI, "builtIns.anyType");
                    y45.i(value2, "it");
                    arrayList.add(f(sm9VarI, value2, cy6Var));
                }
                return constantValueFactory.a(arrayList, eh5Var);
            default:
                throw new IllegalStateException(("Unsupported annotation argument type: " + value.getType() + " (expected " + eh5Var + ')').toString());
        }
        return eebVar;
    }

    public final pf1 g(eh5 eh5Var, ProtoBuf$Annotation.Argument.Value value, cy6 cy6Var) {
        pf1 pf1VarF = f(eh5Var, value, cy6Var);
        if (!b(pf1VarF, eh5Var, value)) {
            pf1VarF = null;
        }
        if (pf1VarF != null) {
            return pf1VarF;
        }
        return jd3.b.a("Unexpected argument value: actual type " + value.getType() + " != expected type " + eh5Var);
    }
}
