package kotlinx.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlin.time.Duration;

public abstract class t1 {

    private static final Map f65233a = MapsKt.l(TuplesKt.a(Reflection.b(String.class), ry.a.G(StringCompanionObject.f64324a)), TuplesKt.a(Reflection.b(Character.TYPE), ry.a.A(CharCompanionObject.f64305a)), TuplesKt.a(Reflection.b(char[].class), ry.a.d()), TuplesKt.a(Reflection.b(Double.TYPE), ry.a.B(DoubleCompanionObject.f64314a)), TuplesKt.a(Reflection.b(double[].class), ry.a.e()), TuplesKt.a(Reflection.b(Float.TYPE), ry.a.C(FloatCompanionObject.f64316a)), TuplesKt.a(Reflection.b(float[].class), ry.a.f()), TuplesKt.a(Reflection.b(Long.TYPE), ry.a.E(LongCompanionObject.f64318a)), TuplesKt.a(Reflection.b(long[].class), ry.a.i()), TuplesKt.a(Reflection.b(ULong.class), ry.a.v(ULong.INSTANCE)), TuplesKt.a(Reflection.b(ULongArray.class), ry.a.q()), TuplesKt.a(Reflection.b(Integer.TYPE), ry.a.D(IntCompanionObject.f64317a)), TuplesKt.a(Reflection.b(int[].class), ry.a.g()), TuplesKt.a(Reflection.b(UInt.class), ry.a.u(UInt.INSTANCE)), TuplesKt.a(Reflection.b(UIntArray.class), ry.a.p()), TuplesKt.a(Reflection.b(Short.TYPE), ry.a.F(ShortCompanionObject.f64323a)), TuplesKt.a(Reflection.b(short[].class), ry.a.m()), TuplesKt.a(Reflection.b(UShort.class), ry.a.w(UShort.INSTANCE)), TuplesKt.a(Reflection.b(UShortArray.class), ry.a.r()), TuplesKt.a(Reflection.b(Byte.TYPE), ry.a.z(ByteCompanionObject.f64303a)), TuplesKt.a(Reflection.b(byte[].class), ry.a.c()), TuplesKt.a(Reflection.b(UByte.class), ry.a.t(UByte.INSTANCE)), TuplesKt.a(Reflection.b(UByteArray.class), ry.a.o()), TuplesKt.a(Reflection.b(Boolean.TYPE), ry.a.y(BooleanCompanionObject.f64302a)), TuplesKt.a(Reflection.b(boolean[].class), ry.a.b()), TuplesKt.a(Reflection.b(Unit.class), ry.a.x(Unit.f64096a)), TuplesKt.a(Reflection.b(Duration.class), ry.a.H(Duration.INSTANCE)));

    public static final kotlinx.serialization.descriptors.f a(String serialName, kotlinx.serialization.descriptors.e kind) {
        Intrinsics.h(serialName, "serialName");
        Intrinsics.h(kind, "kind");
        d(serialName);
        return new s1(serialName, kind);
    }

    public static final kotlinx.serialization.b b(KClass kClass) {
        Intrinsics.h(kClass, "<this>");
        return (kotlinx.serialization.b) f65233a.get(kClass);
    }

    private static final String c(String str) {
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        char cCharAt = str.charAt(0);
        sb2.append((Object) (Character.isLowerCase(cCharAt) ? CharsKt.h(cCharAt) : String.valueOf(cCharAt)));
        String strSubstring = str.substring(1);
        Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        sb2.append(strSubstring);
        return sb2.toString();
    }

    private static final void d(String str) {
        Iterator it = f65233a.keySet().iterator();
        while (it.hasNext()) {
            String strG = ((KClass) it.next()).g();
            Intrinsics.e(strG);
            String strC = c(strG);
            if (StringsKt.H(str, "kotlin." + strC, true) || StringsKt.H(str, strC, true)) {
                throw new IllegalArgumentException(StringsKt.n("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exist " + c(strC) + "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
            }
        }
    }
}
