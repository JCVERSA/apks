package kotlin.reflect.jvm.internal.impl.builtins;

import defpackage.by6;
import defpackage.xw0;
import defpackage.y45;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'UBYTEARRAY' uses external variables
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
public final class UnsignedArrayType {
    private static final UnsignedArrayType[] $VALUES;
    public static final UnsignedArrayType UBYTEARRAY;
    public static final UnsignedArrayType UINTARRAY;
    public static final UnsignedArrayType ULONGARRAY;
    public static final UnsignedArrayType USHORTARRAY;
    private final xw0 classId;
    private final by6 typeName;

    private static final UnsignedArrayType[] $values() {
        return new UnsignedArrayType[]{UBYTEARRAY, USHORTARRAY, UINTARRAY, ULONGARRAY};
    }

    static {
        xw0 xw0VarE = xw0.e("kotlin/UByteArray");
        y45.i(xw0VarE, "fromString(\"kotlin/UByteArray\")");
        UBYTEARRAY = new UnsignedArrayType("UBYTEARRAY", 0, xw0VarE);
        xw0 xw0VarE2 = xw0.e("kotlin/UShortArray");
        y45.i(xw0VarE2, "fromString(\"kotlin/UShortArray\")");
        USHORTARRAY = new UnsignedArrayType("USHORTARRAY", 1, xw0VarE2);
        xw0 xw0VarE3 = xw0.e("kotlin/UIntArray");
        y45.i(xw0VarE3, "fromString(\"kotlin/UIntArray\")");
        UINTARRAY = new UnsignedArrayType("UINTARRAY", 2, xw0VarE3);
        xw0 xw0VarE4 = xw0.e("kotlin/ULongArray");
        y45.i(xw0VarE4, "fromString(\"kotlin/ULongArray\")");
        ULONGARRAY = new UnsignedArrayType("ULONGARRAY", 3, xw0VarE4);
        $VALUES = $values();
    }

    private UnsignedArrayType(String str, int i, xw0 xw0Var) {
        super(str, i);
        this.classId = xw0Var;
        by6 by6VarJ = xw0Var.j();
        y45.i(by6VarJ, "classId.shortClassName");
        this.typeName = by6VarJ;
    }

    public static UnsignedArrayType valueOf(String str) {
        return (UnsignedArrayType) Enum.valueOf(UnsignedArrayType.class, str);
    }

    public static UnsignedArrayType[] values() {
        return (UnsignedArrayType[]) $VALUES.clone();
    }

    public final by6 getTypeName() {
        return this.typeName;
    }
}
