package kotlin.reflect.jvm.internal.impl.builtins;

import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.by6;
import defpackage.c74;
import defpackage.dv7;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fn6;
import defpackage.kgb;
import defpackage.lbb;
import defpackage.mcb;
import defpackage.md;
import defpackage.n8;
import defpackage.nn0;
import defpackage.o54;
import defpackage.ocb;
import defpackage.p54;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.ti8;
import defpackage.v18;
import defpackage.vi8;
import defpackage.vx9;
import defpackage.x17;
import defpackage.x82;
import defpackage.xi8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y82;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class d {
    public static final by6 g = by6.j("<built-ins module>");
    public ModuleDescriptorImpl a;
    public x17 b;
    public final x17 c;
    public final x17 d;
    public final fn6 e;
    public final vx9 f;

    public class a implements c74 {
        public a() {
        }

        @Override
        public Collection invoke() {
            return Arrays.asList(d.this.r().C(kotlin.reflect.jvm.internal.impl.builtins.e.v), d.this.r().C(kotlin.reflect.jvm.internal.impl.builtins.e.x), d.this.r().C(kotlin.reflect.jvm.internal.impl.builtins.e.y), d.this.r().C(kotlin.reflect.jvm.internal.impl.builtins.e.w));
        }
    }

    public class b implements c74 {
        public b() {
        }

        @Override
        public e invoke() {
            EnumMap enumMap = new EnumMap(PrimitiveType.class);
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            for (PrimitiveType primitiveType : PrimitiveType.values()) {
                sm9 sm9VarQ = d.this.q(primitiveType.getTypeName().b());
                sm9 sm9VarQ2 = d.this.q(primitiveType.getArrayTypeName().b());
                enumMap.put(primitiveType, sm9VarQ2);
                map.put(sm9VarQ, sm9VarQ2);
                map2.put(sm9VarQ2, sm9VarQ);
            }
            return new e(enumMap, map, map2, null);
        }
    }

    public class c implements e74 {
        public c() {
        }

        @Override
        public qw0 invoke(by6 by6Var) {
            px0 px0VarF = d.this.s().f(by6Var, NoLookupLocation.FROM_BUILTINS);
            if (px0VarF == null) {
                throw new AssertionError("Built-in class " + kotlin.reflect.jvm.internal.impl.builtins.e.v.c(by6Var) + " is not found");
            }
            if (px0VarF instanceof qw0) {
                return (qw0) px0VarF;
            }
            throw new AssertionError("Must be a class descriptor " + by6Var + ", but was " + px0VarF);
        }
    }

    public class C0376d implements c74 {
        public final ModuleDescriptorImpl b;

        public C0376d(ModuleDescriptorImpl moduleDescriptorImpl) {
            this.b = moduleDescriptorImpl;
        }

        @Override
        public Void invoke() {
            if (d.this.a == null) {
                d.this.a = this.b;
                return null;
            }
            throw new AssertionError("Built-ins module is already set: " + d.this.a + " (attempting to reset to " + this.b + ")");
        }
    }

    public static class e {
        public final Map a;
        public final Map b;
        public final Map c;

        public e(Map map, Map map2, Map map3, a aVar) {
            this(map, map2, map3);
        }

        public static void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "primitiveKotlinTypeToKotlinArrayType";
            } else if (i != 2) {
                objArr[0] = "primitiveTypeToArrayKotlinType";
            } else {
                objArr[0] = "kotlinArrayTypeToPrimitiveKotlinType";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives";
            objArr[2] = MethodDecl.initName;
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        public e(Map map, Map map2, Map map3) {
            if (map == null) {
                a(0);
            }
            if (map2 == null) {
                a(1);
            }
            if (map3 == null) {
                a(2);
            }
            this.a = map;
            this.b = map2;
            this.c = map3;
        }
    }

    public d(vx9 vx9Var) {
        if (vx9Var == null) {
            a(0);
        }
        this.f = vx9Var;
        this.d = vx9Var.c(new a());
        this.c = vx9Var.c(new b());
        this.e = vx9Var.i(new c());
    }

    public static eh5 A(eh5 eh5Var, qq6 qq6Var) {
        xw0 xw0VarK;
        xw0 xw0VarA;
        qw0 qw0VarA;
        if (eh5Var == null) {
            a(71);
        }
        if (qq6Var == null) {
            a(72);
        }
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC == null) {
            return null;
        }
        kgb kgbVar = kgb.a;
        if (!kgbVar.b(px0VarC.getName()) || (xw0VarK = DescriptorUtilsKt.k(px0VarC)) == null || (xw0VarA = kgbVar.a(xw0VarK)) == null || (qw0VarA = FindClassInModuleKt.a(qq6Var, xw0VarA)) == null) {
            return null;
        }
        return qw0VarA.q();
    }

    public static boolean A0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(129);
        }
        return i0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.E0.j());
    }

    public static boolean B0(xt1 xt1Var) {
        if (xt1Var == null) {
            a(10);
        }
        while (xt1Var != null) {
            if (xt1Var instanceof dv7) {
                return ((dv7) xt1Var).d().i(kotlin.reflect.jvm.internal.impl.builtins.e.u);
            }
            xt1Var = xt1Var.b();
        }
        return false;
    }

    public static boolean C0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(142);
        }
        return m0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.f);
    }

    public static boolean D0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(132);
        }
        return x0(eh5Var) || A0(eh5Var) || y0(eh5Var) || z0(eh5Var);
    }

    public static PrimitiveType N(eh5 eh5Var) {
        if (eh5Var == null) {
            a(92);
        }
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC == null) {
            return null;
        }
        return P(px0VarC);
    }

    public static PrimitiveType P(xt1 xt1Var) {
        if (xt1Var == null) {
            a(77);
        }
        if (kotlin.reflect.jvm.internal.impl.builtins.e.a.I0.contains(xt1Var.getName())) {
            return (PrimitiveType) kotlin.reflect.jvm.internal.impl.builtins.e.a.K0.get(y82.m(xt1Var));
        }
        return null;
    }

    public static PrimitiveType S(xt1 xt1Var) {
        if (xt1Var == null) {
            a(76);
        }
        if (kotlin.reflect.jvm.internal.impl.builtins.e.a.H0.contains(xt1Var.getName())) {
            return (PrimitiveType) kotlin.reflect.jvm.internal.impl.builtins.e.a.J0.get(y82.m(xt1Var));
        }
        return null;
    }

    public static void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case 77:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case 143:
            case 146:
            case 147:
            case 149:
            case 157:
            case 158:
            case 159:
            case 160:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case 14:
                objArr[0] = "simpleName";
                break;
            case 16:
            case 17:
            case 53:
            case 88:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case 99:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 144:
            case 145:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 162:
                objArr[0] = "type";
                break;
            case 46:
                objArr[0] = "classSimpleName";
                break;
            case 67:
                objArr[0] = "arrayType";
                break;
            case 71:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case 75:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case 82:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case 80:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 161:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 3:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 4:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 5:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 6:
                objArr[1] = "getStorageManager";
                break;
            case 7:
                objArr[1] = "getBuiltInsModule";
                break;
            case 8:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 11:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 13:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 15:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 18:
                objArr[1] = "getSuspendFunction";
                break;
            case 19:
                objArr[1] = "getKFunction";
                break;
            case 20:
                objArr[1] = "getKSuspendFunction";
                break;
            case 21:
                objArr[1] = "getKClass";
                break;
            case 22:
                objArr[1] = "getKCallable";
                break;
            case 23:
                objArr[1] = "getKProperty";
                break;
            case 24:
                objArr[1] = "getKProperty0";
                break;
            case 25:
                objArr[1] = "getKProperty1";
                break;
            case 26:
                objArr[1] = "getKProperty2";
                break;
            case 27:
                objArr[1] = "getKMutableProperty0";
                break;
            case 28:
                objArr[1] = "getKMutableProperty1";
                break;
            case 29:
                objArr[1] = "getKMutableProperty2";
                break;
            case 30:
                objArr[1] = "getIterator";
                break;
            case 31:
                objArr[1] = "getIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterable";
                break;
            case 33:
                objArr[1] = "getMutableIterator";
                break;
            case 34:
                objArr[1] = "getCollection";
                break;
            case 35:
                objArr[1] = "getMutableCollection";
                break;
            case 36:
                objArr[1] = "getList";
                break;
            case 37:
                objArr[1] = "getMutableList";
                break;
            case 38:
                objArr[1] = "getSet";
                break;
            case 39:
                objArr[1] = "getMutableSet";
                break;
            case 40:
                objArr[1] = "getMap";
                break;
            case 41:
                objArr[1] = "getMutableMap";
                break;
            case 42:
                objArr[1] = "getMapEntry";
                break;
            case 43:
                objArr[1] = "getMutableMapEntry";
                break;
            case 44:
                objArr[1] = "getListIterator";
                break;
            case 45:
                objArr[1] = "getMutableListIterator";
                break;
            case 47:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 48:
                objArr[1] = "getNothingType";
                break;
            case 49:
                objArr[1] = "getNullableNothingType";
                break;
            case 50:
                objArr[1] = "getAnyType";
                break;
            case 51:
                objArr[1] = "getNullableAnyType";
                break;
            case 52:
                objArr[1] = "getDefaultBound";
                break;
            case 54:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 55:
                objArr[1] = "getNumberType";
                break;
            case 56:
                objArr[1] = "getByteType";
                break;
            case 57:
                objArr[1] = "getShortType";
                break;
            case 58:
                objArr[1] = "getIntType";
                break;
            case 59:
                objArr[1] = "getLongType";
                break;
            case 60:
                objArr[1] = "getFloatType";
                break;
            case 61:
                objArr[1] = "getDoubleType";
                break;
            case 62:
                objArr[1] = "getCharType";
                break;
            case 63:
                objArr[1] = "getBooleanType";
                break;
            case 64:
                objArr[1] = "getUnitType";
                break;
            case 65:
                objArr[1] = "getStringType";
                break;
            case 66:
                objArr[1] = "getIterableType";
                break;
            case 68:
            case 69:
            case 70:
                objArr[1] = "getArrayElementType";
                break;
            case 74:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 81:
            case 84:
                objArr[1] = "getArrayType";
                break;
            case 86:
                objArr[1] = "getEnumType";
                break;
            case 87:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 16:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 17:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 46:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 53:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 67:
                objArr[2] = "getArrayElementType";
                break;
            case 71:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 75:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case 90:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case 99:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case 127:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case 130:
                objArr[2] = "isUIntArray";
                break;
            case 131:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 134:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 136:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case 143:
                objArr[2] = "mayReturnNonUnitValue";
                break;
            case 144:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 145:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 146:
                objArr[2] = "isMemberOfAny";
                break;
            case 147:
            case 148:
                objArr[2] = "isEnum";
                break;
            case 149:
            case 150:
                objArr[2] = "isComparable";
                break;
            case 151:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 152:
                objArr[2] = "isListOrNullableList";
                break;
            case 153:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 154:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 155:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 156:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 157:
                objArr[2] = "isThrowable";
                break;
            case 158:
                objArr[2] = "isKClass";
                break;
            case 159:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 160:
                objArr[2] = "isCloneable";
                break;
            case 161:
                objArr[2] = "isDeprecated";
                break;
            case 162:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = MethodDecl.initName;
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 13:
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 12:
            case 14:
            case 16:
            case 17:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean a0(qw0 qw0Var) {
        if (qw0Var == null) {
            a(108);
        }
        return e(qw0Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.b);
    }

    public static boolean b0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(139);
        }
        return h0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.b);
    }

    public static boolean c0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(88);
        }
        return h0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.i);
    }

    public static boolean d0(qw0 qw0Var) {
        if (qw0Var == null) {
            a(89);
        }
        return e(qw0Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.i) || P(qw0Var) != null;
    }

    public static boolean e(px0 px0Var, p54 p54Var) {
        if (px0Var == null) {
            a(103);
        }
        if (p54Var == null) {
            a(104);
        }
        return px0Var.getName().equals(p54Var.i()) && p54Var.equals(y82.m(px0Var));
    }

    public static boolean e0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(90);
        }
        return c0(eh5Var) || q0(eh5Var);
    }

    public static boolean f0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(110);
        }
        return i0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.j);
    }

    public static boolean g0(xt1 xt1Var) {
        if (xt1Var == null) {
            a(9);
        }
        return y82.r(xt1Var, nn0.class, false) != null;
    }

    public static boolean h0(eh5 eh5Var, p54 p54Var) {
        if (eh5Var == null) {
            a(97);
        }
        if (p54Var == null) {
            a(98);
        }
        return w0(eh5Var.I0(), p54Var);
    }

    public static boolean i0(eh5 eh5Var, p54 p54Var) {
        if (eh5Var == null) {
            a(134);
        }
        if (p54Var == null) {
            a(135);
        }
        return h0(eh5Var, p54Var) && !eh5Var.J0();
    }

    public static boolean j0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(141);
        }
        return p0(eh5Var);
    }

    public static boolean k0(xt1 xt1Var) {
        if (xt1Var == null) {
            a(161);
        }
        if (xt1Var.a().getAnnotations().h(kotlin.reflect.jvm.internal.impl.builtins.e.a.y)) {
            return true;
        }
        if (!(xt1Var instanceof ti8)) {
            return false;
        }
        ti8 ti8Var = (ti8) xt1Var;
        boolean zY = ti8Var.y();
        vi8 getter = ti8Var.getGetter();
        xi8 setter = ti8Var.getSetter();
        if (getter != null && k0(getter)) {
            if (!zY) {
                return true;
            }
            if (setter != null && k0(setter)) {
                return true;
            }
        }
        return false;
    }

    public static boolean l0(qw0 qw0Var) {
        if (qw0Var == null) {
            a(158);
        }
        return e(qw0Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.j0);
    }

    public static boolean m0(eh5 eh5Var, p54 p54Var) {
        if (eh5Var == null) {
            a(105);
        }
        if (p54Var == null) {
            a(106);
        }
        return !eh5Var.J0() && h0(eh5Var, p54Var);
    }

    public static boolean n0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(136);
        }
        return o0(eh5Var) && !n.l(eh5Var);
    }

    public static boolean o0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(138);
        }
        return h0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.c);
    }

    public static boolean p0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(140);
        }
        return b0(eh5Var) && eh5Var.J0();
    }

    public static boolean q0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(91);
        }
        px0 px0VarC = eh5Var.I0().c();
        return (px0VarC == null || P(px0VarC) == null) ? false : true;
    }

    public static boolean r0(qw0 qw0Var) {
        if (qw0Var == null) {
            a(96);
        }
        return S(qw0Var) != null;
    }

    public static boolean s0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(94);
        }
        return !eh5Var.J0() && t0(eh5Var);
    }

    public static boolean t0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(95);
        }
        px0 px0VarC = eh5Var.I0().c();
        return (px0VarC instanceof qw0) && r0((qw0) px0VarC);
    }

    public static boolean u0(qw0 qw0Var) {
        if (qw0Var == null) {
            a(107);
        }
        return e(qw0Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.b) || e(qw0Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.c);
    }

    public static boolean v0(eh5 eh5Var) {
        return eh5Var != null && m0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.h);
    }

    public static boolean w0(sbb sbbVar, p54 p54Var) {
        if (sbbVar == null) {
            a(101);
        }
        if (p54Var == null) {
            a(102);
        }
        px0 px0VarC = sbbVar.c();
        return (px0VarC instanceof qw0) && e(px0VarC, p54Var);
    }

    public static boolean x0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(128);
        }
        return i0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.D0.j());
    }

    public static boolean y0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(130);
        }
        return i0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.F0.j());
    }

    public static boolean z0(eh5 eh5Var) {
        if (eh5Var == null) {
            a(131);
        }
        return i0(eh5Var, kotlin.reflect.jvm.internal.impl.builtins.e.a.G0.j());
    }

    public sm9 B() {
        sm9 sm9VarR = R(PrimitiveType.FLOAT);
        if (sm9VarR == null) {
            a(60);
        }
        return sm9VarR;
    }

    public qw0 C(int i) {
        return p(kotlin.reflect.jvm.internal.impl.builtins.e.b(i));
    }

    public sm9 D() {
        sm9 sm9VarR = R(PrimitiveType.INT);
        if (sm9VarR == null) {
            a(58);
        }
        return sm9VarR;
    }

    public qw0 E() {
        qw0 qw0VarO = o(kotlin.reflect.jvm.internal.impl.builtins.e.a.j0.l());
        if (qw0VarO == null) {
            a(21);
        }
        return qw0VarO;
    }

    public void E0(ModuleDescriptorImpl moduleDescriptorImpl) {
        if (moduleDescriptorImpl == null) {
            a(1);
        }
        this.f.g(new C0376d(moduleDescriptorImpl));
    }

    public sm9 F() {
        sm9 sm9VarR = R(PrimitiveType.LONG);
        if (sm9VarR == null) {
            a(59);
        }
        return sm9VarR;
    }

    public qw0 G() {
        return p("Nothing");
    }

    public sm9 H() {
        sm9 sm9VarQ = G().q();
        if (sm9VarQ == null) {
            a(48);
        }
        return sm9VarQ;
    }

    public sm9 I() {
        sm9 sm9VarP0 = i().M0(true);
        if (sm9VarP0 == null) {
            a(51);
        }
        return sm9VarP0;
    }

    public sm9 J() {
        sm9 sm9VarP0 = H().M0(true);
        if (sm9VarP0 == null) {
            a(49);
        }
        return sm9VarP0;
    }

    public qw0 K() {
        return p(DataTypes.OBJ_NUMBER);
    }

    public sm9 L() {
        sm9 sm9VarQ = K().q();
        if (sm9VarQ == null) {
            a(55);
        }
        return sm9VarQ;
    }

    public v18 M() {
        v18.b bVar = v18.b.a;
        if (bVar == null) {
            a(4);
        }
        return bVar;
    }

    public sm9 O(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(73);
        }
        sm9 sm9Var = (sm9) ((e) this.c.invoke()).a.get(primitiveType);
        if (sm9Var == null) {
            a(74);
        }
        return sm9Var;
    }

    public final qw0 Q(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(16);
        }
        return p(primitiveType.getTypeName().b());
    }

    public sm9 R(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(53);
        }
        sm9 sm9VarQ = Q(primitiveType).q();
        if (sm9VarQ == null) {
            a(54);
        }
        return sm9VarQ;
    }

    public sm9 T() {
        sm9 sm9VarR = R(PrimitiveType.SHORT);
        if (sm9VarR == null) {
            a(57);
        }
        return sm9VarR;
    }

    public vx9 U() {
        vx9 vx9Var = this.f;
        if (vx9Var == null) {
            a(6);
        }
        return vx9Var;
    }

    public qw0 V() {
        return p("String");
    }

    public sm9 W() {
        sm9 sm9VarQ = V().q();
        if (sm9VarQ == null) {
            a(65);
        }
        return sm9VarQ;
    }

    public qw0 X(int i) {
        qw0 qw0VarO = o(kotlin.reflect.jvm.internal.impl.builtins.e.n.c(by6.g(kotlin.reflect.jvm.internal.impl.builtins.e.d(i))));
        if (qw0VarO == null) {
            a(18);
        }
        return qw0VarO;
    }

    public qw0 Y() {
        return p("Unit");
    }

    public sm9 Z() {
        sm9 sm9VarQ = Y().q();
        if (sm9VarQ == null) {
            a(64);
        }
        return sm9VarQ;
    }

    public void f(boolean z) {
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(g, this.f, this, null);
        this.a = moduleDescriptorImpl;
        moduleDescriptorImpl.N0(BuiltInsLoader.a.a().a(this.f, this.a, v(), M(), g(), z));
        ModuleDescriptorImpl moduleDescriptorImpl2 = this.a;
        moduleDescriptorImpl2.T0(moduleDescriptorImpl2);
    }

    public n8 g() {
        n8.a aVar = n8.a.a;
        if (aVar == null) {
            a(3);
        }
        return aVar;
    }

    public qw0 h() {
        return p("Any");
    }

    public sm9 i() {
        sm9 sm9VarQ = h().q();
        if (sm9VarQ == null) {
            a(50);
        }
        return sm9VarQ;
    }

    public qw0 j() {
        return p("Array");
    }

    public eh5 k(eh5 eh5Var) {
        eh5 eh5VarA;
        if (eh5Var == null) {
            a(67);
        }
        if (c0(eh5Var)) {
            if (eh5Var.G0().size() != 1) {
                throw new IllegalStateException();
            }
            eh5 type = ((mcb) eh5Var.G0().get(0)).getType();
            if (type == null) {
                a(68);
            }
            return type;
        }
        eh5 eh5VarN = n.n(eh5Var);
        eh5 eh5Var2 = (eh5) ((e) this.c.invoke()).c.get(eh5VarN);
        if (eh5Var2 != null) {
            return eh5Var2;
        }
        qq6 qq6VarI = y82.i(eh5VarN);
        if (qq6VarI != null && (eh5VarA = A(eh5VarN, qq6VarI)) != null) {
            return eh5VarA;
        }
        throw new IllegalStateException("not array: " + eh5Var);
    }

    public sm9 l(Variance variance, eh5 eh5Var) {
        if (variance == null) {
            a(82);
        }
        if (eh5Var == null) {
            a(83);
        }
        sm9 sm9VarM = m(variance, eh5Var, md.u1.b());
        if (sm9VarM == null) {
            a(84);
        }
        return sm9VarM;
    }

    public sm9 m(Variance variance, eh5 eh5Var, md mdVar) {
        if (variance == null) {
            a(78);
        }
        if (eh5Var == null) {
            a(79);
        }
        if (mdVar == null) {
            a(80);
        }
        sm9 sm9VarG = KotlinTypeFactory.g(lbb.b(mdVar), j(), Collections.singletonList(new ocb(variance, eh5Var)));
        if (sm9VarG == null) {
            a(81);
        }
        return sm9VarG;
    }

    public sm9 n() {
        sm9 sm9VarR = R(PrimitiveType.BOOLEAN);
        if (sm9VarR == null) {
            a(63);
        }
        return sm9VarR;
    }

    public qw0 o(o54 o54Var) {
        if (o54Var == null) {
            a(12);
        }
        qw0 qw0VarD = x82.d(r(), o54Var, NoLookupLocation.FROM_BUILTINS);
        if (qw0VarD == null) {
            a(13);
        }
        return qw0VarD;
    }

    public final qw0 p(String str) {
        if (str == null) {
            a(14);
        }
        qw0 qw0Var = (qw0) this.e.invoke(by6.g(str));
        if (qw0Var == null) {
            a(15);
        }
        return qw0Var;
    }

    public final sm9 q(String str) {
        if (str == null) {
            a(46);
        }
        sm9 sm9VarQ = p(str).q();
        if (sm9VarQ == null) {
            a(47);
        }
        return sm9VarQ;
    }

    public ModuleDescriptorImpl r() {
        if (this.a == null) {
            this.a = (ModuleDescriptorImpl) this.b.invoke();
        }
        ModuleDescriptorImpl moduleDescriptorImpl = this.a;
        if (moduleDescriptorImpl == null) {
            a(7);
        }
        return moduleDescriptorImpl;
    }

    public MemberScope s() {
        MemberScope memberScopeP = r().C(kotlin.reflect.jvm.internal.impl.builtins.e.v).p();
        if (memberScopeP == null) {
            a(11);
        }
        return memberScopeP;
    }

    public sm9 t() {
        sm9 sm9VarR = R(PrimitiveType.BYTE);
        if (sm9VarR == null) {
            a(56);
        }
        return sm9VarR;
    }

    public sm9 u() {
        sm9 sm9VarR = R(PrimitiveType.CHAR);
        if (sm9VarR == null) {
            a(62);
        }
        return sm9VarR;
    }

    public Iterable v() {
        List listSingletonList = Collections.singletonList(new kotlin.reflect.jvm.internal.impl.builtins.functions.a(this.f, r()));
        if (listSingletonList == null) {
            a(5);
        }
        return listSingletonList;
    }

    public qw0 w() {
        qw0 qw0VarO = o(kotlin.reflect.jvm.internal.impl.builtins.e.a.V);
        if (qw0VarO == null) {
            a(34);
        }
        return qw0VarO;
    }

    public qw0 x() {
        return p("Comparable");
    }

    public sm9 y() {
        sm9 sm9VarI = I();
        if (sm9VarI == null) {
            a(52);
        }
        return sm9VarI;
    }

    public sm9 z() {
        sm9 sm9VarR = R(PrimitiveType.DOUBLE);
        if (sm9VarR == null) {
            a(61);
        }
        return sm9VarR;
    }
}
