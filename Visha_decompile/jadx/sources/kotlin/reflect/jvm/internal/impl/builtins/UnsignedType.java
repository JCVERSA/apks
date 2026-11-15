package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.by6;
import defpackage.xw0;
import defpackage.y45;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'UBYTE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class UnsignedType {
    private static final UnsignedType[] $VALUES;
    public static final UnsignedType UBYTE;
    public static final UnsignedType UINT;
    public static final UnsignedType ULONG;
    public static final UnsignedType USHORT;
    private final xw0 arrayClassId;
    private final xw0 classId;
    private final by6 typeName;

    private static final UnsignedType[] $values() {
        return new UnsignedType[]{UBYTE, USHORT, UINT, ULONG};
    }

    static {
        xw0 xw0VarE = xw0.e("kotlin/UByte");
        y45.i(xw0VarE, "fromString(\"kotlin/UByte\")");
        UBYTE = new UnsignedType("UBYTE", 0, xw0VarE);
        xw0 xw0VarE2 = xw0.e("kotlin/UShort");
        y45.i(xw0VarE2, "fromString(\"kotlin/UShort\")");
        USHORT = new UnsignedType("USHORT", 1, xw0VarE2);
        xw0 xw0VarE3 = xw0.e("kotlin/UInt");
        y45.i(xw0VarE3, "fromString(\"kotlin/UInt\")");
        UINT = new UnsignedType("UINT", 2, xw0VarE3);
        xw0 xw0VarE4 = xw0.e("kotlin/ULong");
        y45.i(xw0VarE4, "fromString(\"kotlin/ULong\")");
        ULONG = new UnsignedType("ULONG", 3, xw0VarE4);
        $VALUES = $values();
    }

    private UnsignedType(String str, int i, xw0 xw0Var) {
        super(str, i);
        this.classId = xw0Var;
        by6 by6VarJ = xw0Var.j();
        y45.i(by6VarJ, "classId.shortClassName");
        this.typeName = by6VarJ;
        this.arrayClassId = new xw0(xw0Var.h(), by6.g(by6VarJ.b() + "Array"));
    }

    public static UnsignedType valueOf(String str) {
        return (UnsignedType) Enum.valueOf(UnsignedType.class, str);
    }

    public static UnsignedType[] values() {
        return (UnsignedType[]) $VALUES.clone();
    }

    public final xw0 getArrayClassId() {
        return this.arrayClassId;
    }

    public final xw0 getClassId() {
        return this.classId;
    }

    public final by6 getTypeName() {
        return this.typeName;
    }
}
