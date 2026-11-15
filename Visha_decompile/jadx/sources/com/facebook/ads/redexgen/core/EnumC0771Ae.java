package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'A02' uses external variables
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
public abstract class EnumC0771Ae implements InterfaceC1957ip<Map.Entry<?, ?>, Object> {
    public static byte[] A00;
    public static final EnumC0771Ae[] A01;
    public static final EnumC0771Ae A02;
    public static final EnumC0771Ae A03;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-61, -67, -47, 4, -17, -6, 3, -13};
    }

    static {
        A02();
        final String strA01 = A01(0, 3, 56);
        final int i = 0;
        A02 = new EnumC0771Ae(strA01, i) {
            {
                C0773Ag c0773Ag = null;
            }

            @Override
            @CheckForNull
            public final Object A43(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        };
        final String strA02 = A01(3, 5, 110);
        final int i2 = 1;
        A03 = new EnumC0771Ae(strA02, i2) {
            {
                C0773Ag c0773Ag = null;
            }

            @Override
            @CheckForNull
            public final Object A43(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        };
        A01 = A03();
    }

    public EnumC0771Ae(String $enum$name, int $enum$ordinal) {
        super($enum$name, $enum$ordinal);
    }

    public EnumC0771Ae(String str, int i, C0773Ag c0773Ag) {
        this(str, i);
    }

    public static EnumC0771Ae[] A03() {
        return new EnumC0771Ae[]{A02, A03};
    }

    public static EnumC0771Ae valueOf(String name) {
        return (EnumC0771Ae) Enum.valueOf(EnumC0771Ae.class, name);
    }

    public static EnumC0771Ae[] values() {
        return (EnumC0771Ae[]) A01.clone();
    }
}
