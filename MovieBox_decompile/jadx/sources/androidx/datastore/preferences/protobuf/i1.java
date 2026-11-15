package androidx.datastore.preferences.protobuf;

import java.util.Arrays;

public final class i1 {

    private static final i1 f8522f = new i1(0, new int[0], new Object[0], false);

    private int f8523a;

    private int[] f8524b;

    private Object[] f8525c;

    private int f8526d;

    private boolean f8527e;

    private i1() {
        this(0, new int[8], new Object[8], true);
    }

    private void b(int i10) {
        int[] iArr = this.f8524b;
        if (i10 > iArr.length) {
            int i11 = this.f8523a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f8524b = Arrays.copyOf(iArr, i10);
            this.f8525c = Arrays.copyOf(this.f8525c, i10);
        }
    }

    public static i1 c() {
        return f8522f;
    }

    private static int f(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private static int g(Object[] objArr, int i10) {
        int iHashCode = 17;
        for (int i11 = 0; i11 < i10; i11++) {
            iHashCode = (iHashCode * 31) + objArr[i11].hashCode();
        }
        return iHashCode;
    }

    static i1 j(i1 i1Var, i1 i1Var2) {
        int i10 = i1Var.f8523a + i1Var2.f8523a;
        int[] iArrCopyOf = Arrays.copyOf(i1Var.f8524b, i10);
        System.arraycopy(i1Var2.f8524b, 0, iArrCopyOf, i1Var.f8523a, i1Var2.f8523a);
        Object[] objArrCopyOf = Arrays.copyOf(i1Var.f8525c, i10);
        System.arraycopy(i1Var2.f8525c, 0, objArrCopyOf, i1Var.f8523a, i1Var2.f8523a);
        return new i1(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static i1 k() {
        return new i1();
    }

    private static boolean l(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    private static boolean o(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static void q(int i10, Object obj, Writer writer) {
        int iA = WireFormat.a(i10);
        int iB = WireFormat.b(i10);
        if (iB == 0) {
            writer.writeInt64(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 1) {
            writer.writeFixed64(iA, ((Long) obj).longValue());
            return;
        }
        if (iB == 2) {
            writer.b(iA, (ByteString) obj);
            return;
        }
        if (iB != 3) {
            if (iB != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.writeFixed32(iA, ((Integer) obj).intValue());
        } else if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            writer.writeStartGroup(iA);
            ((i1) obj).r(writer);
            writer.writeEndGroup(iA);
        } else {
            writer.writeEndGroup(iA);
            ((i1) obj).r(writer);
            writer.writeStartGroup(iA);
        }
    }

    void a() {
        if (!this.f8527e) {
            throw new UnsupportedOperationException();
        }
    }

    public int d() {
        int iV;
        int i10 = this.f8526d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f8523a; i12++) {
            int i13 = this.f8524b[i12];
            int iA = WireFormat.a(i13);
            int iB = WireFormat.b(i13);
            if (iB == 0) {
                iV = CodedOutputStream.V(iA, ((Long) this.f8525c[i12]).longValue());
            } else if (iB == 1) {
                iV = CodedOutputStream.p(iA, ((Long) this.f8525c[i12]).longValue());
            } else if (iB == 2) {
                iV = CodedOutputStream.h(iA, (ByteString) this.f8525c[i12]);
            } else if (iB == 3) {
                iV = (CodedOutputStream.S(iA) * 2) + ((i1) this.f8525c[i12]).d();
            } else {
                if (iB != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                }
                iV = CodedOutputStream.n(iA, ((Integer) this.f8525c[i12]).intValue());
            }
            i11 += iV;
        }
        this.f8526d = i11;
        return i11;
    }

    public int e() {
        int i10 = this.f8526d;
        if (i10 != -1) {
            return i10;
        }
        int iH = 0;
        for (int i11 = 0; i11 < this.f8523a; i11++) {
            iH += CodedOutputStream.H(WireFormat.a(this.f8524b[i11]), (ByteString) this.f8525c[i11]);
        }
        this.f8526d = iH;
        return iH;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof i1)) {
            return false;
        }
        i1 i1Var = (i1) obj;
        int i10 = this.f8523a;
        return i10 == i1Var.f8523a && o(this.f8524b, i1Var.f8524b, i10) && l(this.f8525c, i1Var.f8525c, this.f8523a);
    }

    public void h() {
        if (this.f8527e) {
            this.f8527e = false;
        }
    }

    public int hashCode() {
        int i10 = this.f8523a;
        return ((((527 + i10) * 31) + f(this.f8524b, i10)) * 31) + g(this.f8525c, this.f8523a);
    }

    i1 i(i1 i1Var) {
        if (i1Var.equals(c())) {
            return this;
        }
        a();
        int i10 = this.f8523a + i1Var.f8523a;
        b(i10);
        System.arraycopy(i1Var.f8524b, 0, this.f8524b, this.f8523a, i1Var.f8523a);
        System.arraycopy(i1Var.f8525c, 0, this.f8525c, this.f8523a, i1Var.f8523a);
        this.f8523a = i10;
        return this;
    }

    final void m(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f8523a; i11++) {
            p0.d(sb2, i10, String.valueOf(WireFormat.a(this.f8524b[i11])), this.f8525c[i11]);
        }
    }

    void n(int i10, Object obj) {
        a();
        b(this.f8523a + 1);
        int[] iArr = this.f8524b;
        int i11 = this.f8523a;
        iArr[i11] = i10;
        this.f8525c[i11] = obj;
        this.f8523a = i11 + 1;
    }

    void p(Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (int i10 = this.f8523a - 1; i10 >= 0; i10--) {
                writer.writeMessageSetItem(WireFormat.a(this.f8524b[i10]), this.f8525c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f8523a; i11++) {
            writer.writeMessageSetItem(WireFormat.a(this.f8524b[i11]), this.f8525c[i11]);
        }
    }

    public void r(Writer writer) {
        if (this.f8523a == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            for (int i10 = 0; i10 < this.f8523a; i10++) {
                q(this.f8524b[i10], this.f8525c[i10], writer);
            }
            return;
        }
        for (int i11 = this.f8523a - 1; i11 >= 0; i11--) {
            q(this.f8524b[i11], this.f8525c[i11], writer);
        }
    }

    private i1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f8526d = -1;
        this.f8523a = i10;
        this.f8524b = iArr;
        this.f8525c = objArr;
        this.f8527e = z10;
    }
}
