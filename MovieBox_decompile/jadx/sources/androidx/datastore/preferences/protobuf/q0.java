package androidx.datastore.preferences.protobuf;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

final class q0 implements b1 {

    private static final int[] f8568r = new int[0];

    private static final Unsafe f8569s = k1.H();

    private final int[] f8570a;

    private final Object[] f8571b;

    private final int f8572c;

    private final int f8573d;

    private final n0 f8574e;

    private final boolean f8575f;

    private final boolean f8576g;

    private final ProtoSyntax f8577h;

    private final boolean f8578i;

    private final int[] f8579j;

    private final int f8580k;

    private final int f8581l;

    private final s0 f8582m;

    private final c0 f8583n;

    private final h1 f8584o;

    private final p f8585p;

    private final i0 f8586q;

    static class a {

        static final int[] f8587a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8587a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8587a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8587a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8587a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8587a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8587a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8587a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8587a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8587a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8587a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8587a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8587a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8587a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8587a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8587a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8587a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8587a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private q0(int[] iArr, Object[] objArr, int i10, int i11, n0 n0Var, ProtoSyntax protoSyntax, boolean z10, int[] iArr2, int i12, int i13, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        this.f8570a = iArr;
        this.f8571b = objArr;
        this.f8572c = i10;
        this.f8573d = i11;
        this.f8576g = n0Var instanceof GeneratedMessageLite;
        this.f8577h = protoSyntax;
        this.f8575f = pVar != null && pVar.e(n0Var);
        this.f8578i = z10;
        this.f8579j = iArr2;
        this.f8580k = i12;
        this.f8581l = i13;
        this.f8582m = s0Var;
        this.f8583n = c0Var;
        this.f8584o = h1Var;
        this.f8585p = pVar;
        this.f8574e = n0Var;
        this.f8586q = i0Var;
    }

    private static boolean A(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).z();
        }
        return true;
    }

    private boolean B(Object obj, Object obj2, int i10) {
        long jC0 = c0(i10) & 1048575;
        return k1.C(obj, jC0) == k1.C(obj2, jC0);
    }

    private boolean C(Object obj, int i10, int i11) {
        return k1.C(obj, (long) (c0(i11) & 1048575)) == i10;
    }

    private static boolean D(int i10) {
        return (i10 & ASTNode.DEOP) != 0;
    }

    private static long E(Object obj, long j10) {
        return k1.E(obj, j10);
    }

    /* JADX WARN: Code duplicated, block: B:170:0x064b A[Catch: all -> 0x0671, TRY_LEAVE, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0658 A[LOOP:2: B:173:0x0654->B:175:0x0658, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x066d  */
    /* JADX WARN: Code duplicated, block: B:181:0x0673 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x0675 A[Catch: all -> 0x0671, TRY_ENTER, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0687 A[LOOP:3: B:186:0x0683->B:188:0x0687, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x069c  */
    /* JADX WARN: Code duplicated, block: B:198:0x06b1 A[LOOP:4: B:196:0x06ad->B:198:0x06b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:227:0x0651 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0680 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:? A[RETURN, SYNTHETIC] */
    private void F(h1 h1Var, p pVar, Object obj, a1 a1Var, o oVar) throws Throwable {
        Object obj2;
        h1 h1Var2;
        int i10;
        Object objK;
        Object obj3;
        o oVar2;
        int i11;
        Object objK2;
        int i12;
        Object objK3;
        Object obj4;
        h1 h1Var3 = h1Var;
        Object obj5 = obj;
        o oVar3 = oVar;
        Object objF = null;
        s sVar = null;
        while (true) {
            try {
                int fieldNumber = a1Var.getFieldNumber();
                int iA0 = a0(fieldNumber);
                if (iA0 >= 0) {
                    obj2 = obj5;
                    try {
                        int iO0 = o0(iA0);
                        try {
                            switch (n0(iO0)) {
                                case 0:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.S(obj2, Q(iO0), a1Var.readDouble());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 1:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.T(obj2, Q(iO0), a1Var.readFloat());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 2:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 3:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readUInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 4:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 5:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readFixed64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 6:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readFixed32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 7:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.M(obj2, Q(iO0), a1Var.readBool());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 8:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    f0(obj2, iO0, a1Var);
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 9:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    n0 n0Var = (n0) K(obj2, iA0);
                                    a1Var.a(n0Var, p(iA0), oVar2);
                                    l0(obj2, iA0, n0Var);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 10:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.W(obj2, Q(iO0), a1Var.readBytes());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 11:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readUInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 12:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    int i13 = a1Var.readEnum();
                                    w.c cVarN = n(iA0);
                                    if (cVarN == null || cVarN.isInRange(i13)) {
                                        k1.U(obj2, Q(iO0), i13);
                                        i0(obj2, iA0);
                                        objF = obj4;
                                    } else {
                                        objF = d1.I(obj2, fieldNumber, i13, obj4, h1Var2);
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 13:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readSFixed32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 14:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readSFixed64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 15:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.U(obj2, Q(iO0), a1Var.readSInt32());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 16:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    k1.V(obj2, Q(iO0), a1Var.readSInt64());
                                    i0(obj2, iA0);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 17:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    n0 n0Var2 = (n0) K(obj2, iA0);
                                    a1Var.d(n0Var2, p(iA0), oVar2);
                                    l0(obj2, iA0, n0Var2);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 18:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readDoubleList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 19:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFloatList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 20:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 21:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 22:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 23:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 24:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 25:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBoolList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 26:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    g0(obj2, iO0, a1Var);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 27:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    e0(obj, iO0, a1Var, p(iA0), oVar);
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 28:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBytesList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case NOTIFICATION_REDIRECT_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 30:
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    List listC = this.f8583n.c(obj2, Q(iO0));
                                    a1Var.readEnumList(listC);
                                    objF = d1.z(obj, fieldNumber, listC, n(iA0), objF, h1Var);
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case TEMPLATE_HTML_SIZE_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 32:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 33:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 34:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 35:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readDoubleList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 36:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFloatList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 37:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 38:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 39:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 40:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 41:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readFixed32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 42:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readBoolList(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 43:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readUInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 44:
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    List listC2 = this.f8583n.c(obj2, Q(iO0));
                                    a1Var.readEnumList(listC2);
                                    objF = d1.z(obj, fieldNumber, listC2, n(iA0), objF, h1Var);
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 45:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 46:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSFixed64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 47:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt32List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    a1Var.readSInt64List(this.f8583n.c(obj2, Q(iO0)));
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    try {
                                        d0(obj, Q(iO0), a1Var, p(iA0), oVar);
                                        objF = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        objF = obj4;
                                        try {
                                            if (!h1Var2.q(a1Var)) {
                                                if (objF == null) {
                                                    objF = h1Var2.f(obj2);
                                                }
                                                if (!h1Var2.m(objF, a1Var, 0)) {
                                                    objK2 = objF;
                                                    for (i11 = this.f8580k; i11 < this.f8581l; i11++) {
                                                        objK2 = k(obj, this.f8579j[i11], objK2, h1Var, obj);
                                                    }
                                                    if (objK2 != null) {
                                                        h1Var2.o(obj2, objK2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!a1Var.skipField()) {
                                                objK3 = objF;
                                                for (i12 = this.f8580k; i12 < this.f8581l; i12++) {
                                                    objK3 = k(obj, this.f8579j[i12], objK3, h1Var, obj);
                                                }
                                                if (objK3 != null) {
                                                    h1Var2.o(obj2, objK3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        objF = obj4;
                                        objK = objF;
                                        for (i10 = this.f8580k; i10 < this.f8581l; i10++) {
                                            objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
                                        }
                                        if (objK != null) {
                                            h1Var2.o(obj2, objK);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 50:
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    try {
                                        G(obj, iA0, o(iA0), oVar, a1Var);
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                        if (!h1Var2.q(a1Var)) {
                                            if (objF == null) {
                                                objF = h1Var2.f(obj2);
                                            }
                                            if (!h1Var2.m(objF, a1Var, 0)) {
                                                objK2 = objF;
                                                while (i11 < this.f8581l) {
                                                    objK2 = k(obj, this.f8579j[i11], objK2, h1Var, obj);
                                                }
                                                if (objK2 != null) {
                                                    h1Var2.o(obj2, objK2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!a1Var.skipField()) {
                                            objK3 = objF;
                                            while (i12 < this.f8581l) {
                                                objK3 = k(obj, this.f8579j[i12], objK3, h1Var, obj);
                                            }
                                            if (objK3 != null) {
                                                h1Var2.o(obj2, objK3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        h1Var2 = h1Var3;
                                        objF = obj4;
                                        objK = objF;
                                        while (i10 < this.f8581l) {
                                            objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
                                        }
                                        if (objK != null) {
                                            h1Var2.o(obj2, objK);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REWARD_USER_VALUE:
                                    k1.W(obj2, Q(iO0), Double.valueOf(a1Var.readDouble()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Float.valueOf(a1Var.readFloat()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readUInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VISIBILITY_VALUE:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readFixed64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 57:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readFixed32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                    k1.W(obj2, Q(iO0), Boolean.valueOf(a1Var.readBool()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 59:
                                    f0(obj2, iO0, a1Var);
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 60:
                                    n0 n0Var3 = (n0) L(obj2, fieldNumber, iA0);
                                    a1Var.a(n0Var3, p(iA0), oVar3);
                                    m0(obj2, fieldNumber, iA0, n0Var3);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 61:
                                    k1.W(obj2, Q(iO0), a1Var.readBytes());
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 62:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readUInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 63:
                                    int i14 = a1Var.readEnum();
                                    w.c cVarN2 = n(iA0);
                                    if (cVarN2 != null && !cVarN2.isInRange(i14)) {
                                        objF = d1.I(obj2, fieldNumber, i14, objF, h1Var3);
                                        oVar2 = oVar3;
                                        h1Var2 = h1Var3;
                                        oVar3 = oVar2;
                                        h1Var3 = h1Var2;
                                        obj5 = obj2;
                                    }
                                    k1.W(obj2, Q(iO0), Integer.valueOf(i14));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 64:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readSFixed32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readSFixed64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 66:
                                    k1.W(obj2, Q(iO0), Integer.valueOf(a1Var.readSInt32()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 67:
                                    k1.W(obj2, Q(iO0), Long.valueOf(a1Var.readSInt64()));
                                    j0(obj2, fieldNumber, iA0);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                case 68:
                                    n0 n0Var4 = (n0) L(obj2, fieldNumber, iA0);
                                    a1Var.d(n0Var4, p(iA0), oVar3);
                                    m0(obj2, fieldNumber, iA0, n0Var4);
                                    obj4 = objF;
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    objF = obj4;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                                default:
                                    if (objF == null) {
                                        try {
                                            objF = h1Var3.f(obj2);
                                            break;
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            oVar2 = oVar3;
                                            h1Var2 = h1Var3;
                                            if (!h1Var2.q(a1Var)) {
                                                if (objF == null) {
                                                    objF = h1Var2.f(obj2);
                                                }
                                                if (!h1Var2.m(objF, a1Var, 0)) {
                                                    objK2 = objF;
                                                    while (i11 < this.f8581l) {
                                                        objK2 = k(obj, this.f8579j[i11], objK2, h1Var, obj);
                                                    }
                                                    if (objK2 != null) {
                                                        h1Var2.o(obj2, objK2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!a1Var.skipField()) {
                                                objK3 = objF;
                                                while (i12 < this.f8581l) {
                                                    objK3 = k(obj, this.f8579j[i12], objK3, h1Var, obj);
                                                }
                                                if (objK3 != null) {
                                                    h1Var2.o(obj2, objK3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            h1Var2 = h1Var3;
                                            objK = objF;
                                            while (i10 < this.f8581l) {
                                                objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
                                            }
                                            if (objK != null) {
                                                h1Var2.o(obj2, objK);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (!h1Var3.m(objF, a1Var, 0)) {
                                        Object objK4 = objF;
                                        for (int i15 = this.f8580k; i15 < this.f8581l; i15++) {
                                            objK4 = k(obj, this.f8579j[i15], objK4, h1Var, obj);
                                        }
                                        if (objK4 != null) {
                                            h1Var3.o(obj2, objK4);
                                            return;
                                        }
                                        return;
                                    }
                                    oVar2 = oVar3;
                                    h1Var2 = h1Var3;
                                    oVar3 = oVar2;
                                    h1Var3 = h1Var2;
                                    obj5 = obj2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objK5 = objF;
                        for (int i16 = this.f8580k; i16 < this.f8581l; i16++) {
                            objK5 = k(obj, this.f8579j[i16], objK5, h1Var, obj);
                        }
                        if (objK5 != null) {
                            h1Var3.o(obj5, objK5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objB = !this.f8575f ? null : pVar.b(oVar3, this.f8574e, fieldNumber);
                        if (objB != null) {
                            s sVarD = sVar == null ? pVar.d(obj) : sVar;
                            obj3 = obj5;
                            try {
                                objF = pVar.g(obj, a1Var, objB, oVar, sVarD, objF, h1Var);
                                sVar = sVarD;
                            } catch (Throwable th7) {
                                th = th7;
                                obj2 = obj3;
                                h1Var2 = h1Var3;
                                objK = objF;
                                while (i10 < this.f8581l) {
                                    objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
                                }
                                if (objK != null) {
                                    h1Var2.o(obj2, objK);
                                }
                                throw th;
                            }
                        } else {
                            obj3 = obj5;
                            if (!h1Var3.q(a1Var)) {
                                if (objF == null) {
                                    objF = h1Var3.f(obj3);
                                }
                                if (!h1Var3.m(objF, a1Var, 0)) {
                                }
                            } else if (!a1Var.skipField()) {
                            }
                        }
                        obj5 = obj3;
                    } catch (Throwable th8) {
                        th = th8;
                        obj2 = obj5;
                        h1Var2 = h1Var3;
                        objK = objF;
                        while (i10 < this.f8581l) {
                            objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
                        }
                        if (objK != null) {
                            h1Var2.o(obj2, objK);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objK = objF;
            while (i10 < this.f8581l) {
                objK = k(obj, this.f8579j[i10], objK, h1Var, obj);
            }
            if (objK != null) {
                h1Var2.o(obj2, objK);
            }
            throw th;
        }
        int i17 = this.f8580k;
        Object objK6 = objF;
        while (i17 < this.f8581l) {
            objK6 = k(obj, this.f8579j[i17], objK6, h1Var, obj);
            i17++;
            obj3 = obj3;
        }
        Object obj6 = obj3;
        if (objK6 != null) {
            h1Var3.o(obj6, objK6);
        }
    }

    private final void G(Object obj, int i10, Object obj2, o oVar, a1 a1Var) {
        long jQ = Q(o0(i10));
        Object objG = k1.G(obj, jQ);
        if (objG == null) {
            objG = this.f8586q.newMapField(obj2);
            k1.W(obj, jQ, objG);
        } else if (this.f8586q.isImmutable(objG)) {
            Object objNewMapField = this.f8586q.newMapField(obj2);
            this.f8586q.mergeFrom(objNewMapField, objG);
            k1.W(obj, jQ, objNewMapField);
            objG = objNewMapField;
        }
        a1Var.c(this.f8586q.forMutableMapData(objG), this.f8586q.forMapMetadata(obj2), oVar);
    }

    private void H(Object obj, Object obj2, int i10) {
        if (u(obj2, i10)) {
            long jQ = Q(o0(i10));
            Unsafe unsafe = f8569s;
            Object object = unsafe.getObject(obj2, jQ);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + P(i10) + " is present but null: " + obj2);
            }
            b1 b1VarP = p(i10);
            if (!u(obj, i10)) {
                if (A(object)) {
                    Object objNewInstance = b1VarP.newInstance();
                    b1VarP.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jQ, objNewInstance);
                } else {
                    unsafe.putObject(obj, jQ, object);
                }
                i0(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, jQ);
            if (!A(object2)) {
                Object objNewInstance2 = b1VarP.newInstance();
                b1VarP.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jQ, objNewInstance2);
                object2 = objNewInstance2;
            }
            b1VarP.mergeFrom(object2, object);
        }
    }

    private void I(Object obj, Object obj2, int i10) {
        int iP = P(i10);
        if (C(obj2, iP, i10)) {
            long jQ = Q(o0(i10));
            Unsafe unsafe = f8569s;
            Object object = unsafe.getObject(obj2, jQ);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + P(i10) + " is present but null: " + obj2);
            }
            b1 b1VarP = p(i10);
            if (!C(obj, iP, i10)) {
                if (A(object)) {
                    Object objNewInstance = b1VarP.newInstance();
                    b1VarP.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jQ, objNewInstance);
                } else {
                    unsafe.putObject(obj, jQ, object);
                }
                j0(obj, iP, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, jQ);
            if (!A(object2)) {
                Object objNewInstance2 = b1VarP.newInstance();
                b1VarP.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jQ, objNewInstance2);
                object2 = objNewInstance2;
            }
            b1VarP.mergeFrom(object2, object);
        }
    }

    private void J(Object obj, Object obj2, int i10) {
        int iO0 = o0(i10);
        long jQ = Q(iO0);
        int iP = P(i10);
        switch (n0(iO0)) {
            case 0:
                if (u(obj2, i10)) {
                    k1.S(obj, jQ, k1.A(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 1:
                if (u(obj2, i10)) {
                    k1.T(obj, jQ, k1.B(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 2:
                if (u(obj2, i10)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 3:
                if (u(obj2, i10)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 4:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 5:
                if (u(obj2, i10)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 6:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 7:
                if (u(obj2, i10)) {
                    k1.M(obj, jQ, k1.t(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 8:
                if (u(obj2, i10)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 9:
                H(obj, obj2, i10);
                break;
            case 10:
                if (u(obj2, i10)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 11:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 12:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 13:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 14:
                if (u(obj2, i10)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 15:
                if (u(obj2, i10)) {
                    k1.U(obj, jQ, k1.C(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 16:
                if (u(obj2, i10)) {
                    k1.V(obj, jQ, k1.E(obj2, jQ));
                    i0(obj, i10);
                }
                break;
            case 17:
                H(obj, obj2, i10);
                break;
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
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
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
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f8583n.b(obj, obj2, jQ);
                break;
            case 50:
                d1.E(this.f8586q, obj, obj2, jQ);
                break;
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
                if (C(obj2, iP, i10)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    j0(obj, iP, i10);
                }
                break;
            case 60:
                I(obj, obj2, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
            case 66:
            case 67:
                if (C(obj2, iP, i10)) {
                    k1.W(obj, jQ, k1.G(obj2, jQ));
                    j0(obj, iP, i10);
                }
                break;
            case 68:
                I(obj, obj2, i10);
                break;
        }
    }

    private Object K(Object obj, int i10) {
        b1 b1VarP = p(i10);
        long jQ = Q(o0(i10));
        if (!u(obj, i10)) {
            return b1VarP.newInstance();
        }
        Object object = f8569s.getObject(obj, jQ);
        if (A(object)) {
            return object;
        }
        Object objNewInstance = b1VarP.newInstance();
        if (object != null) {
            b1VarP.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private Object L(Object obj, int i10, int i11) {
        b1 b1VarP = p(i11);
        if (!C(obj, i10, i11)) {
            return b1VarP.newInstance();
        }
        Object object = f8569s.getObject(obj, Q(o0(i11)));
        if (A(object)) {
            return object;
        }
        Object objNewInstance = b1VarP.newInstance();
        if (object != null) {
            b1VarP.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    static q0 M(Class cls, l0 l0Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        if (l0Var instanceof z0) {
            return O((z0) l0Var, s0Var, c0Var, h1Var, pVar, i0Var);
        }
        android.support.v4.media.session.c.a(l0Var);
        return N(null, s0Var, c0Var, h1Var, pVar, i0Var);
    }

    static q0 N(f1 f1Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0249  */
    /* JADX WARN: Code duplicated, block: B:123:0x024e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0264  */
    /* JADX WARN: Code duplicated, block: B:127:0x0267  */
    static q0 O(z0 z0Var, s0 s0Var, c0 c0Var, h1 h1Var, p pVar, i0 i0Var) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int i27;
        int iObjectFieldOffset;
        int i28;
        int i29;
        int iObjectFieldOffset2;
        Field fieldH0;
        int i30;
        char cCharAt9;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldH1;
        int i34;
        Object obj2;
        Field fieldH2;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        String strB = z0Var.b();
        int length = strB.length();
        char c10 = 55296;
        if (strB.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (strB.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt3 = strB.charAt(i10);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = strB.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt3 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i14 = 0;
            i15 = 0;
            i11 = 0;
            i13 = 0;
            iArr = f8568r;
            i12 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt4 = strB.charAt(i40);
            if (iCharAt4 >= 55296) {
                int i44 = iCharAt4 & 8191;
                int i45 = 13;
                while (true) {
                    i23 = i43 + 1;
                    cCharAt8 = strB.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i23;
                }
                iCharAt4 = i44 | (cCharAt8 << i45);
                i43 = i23;
            }
            int i46 = i43 + 1;
            int iCharAt5 = strB.charAt(i43);
            if (iCharAt5 >= 55296) {
                int i47 = iCharAt5 & 8191;
                int i48 = 13;
                while (true) {
                    i22 = i46 + 1;
                    cCharAt7 = strB.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i22;
                }
                iCharAt5 = i47 | (cCharAt7 << i48);
                i46 = i22;
            }
            int i49 = i46 + 1;
            int iCharAt6 = strB.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i21 = i49 + 1;
                    cCharAt6 = strB.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i21;
                }
                iCharAt6 = i50 | (cCharAt6 << i51);
                i49 = i21;
            }
            int i52 = i49 + 1;
            int iCharAt7 = strB.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i20 = i52 + 1;
                    cCharAt5 = strB.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i20;
                }
                iCharAt7 = i53 | (cCharAt5 << i54);
                i52 = i20;
            }
            int i55 = i52 + 1;
            iCharAt = strB.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i19 = i55 + 1;
                    cCharAt4 = strB.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i19;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i19;
            }
            int i58 = i55 + 1;
            iCharAt2 = strB.charAt(i55);
            if (iCharAt2 >= 55296) {
                int i59 = iCharAt2 & 8191;
                int i60 = 13;
                while (true) {
                    i18 = i58 + 1;
                    cCharAt3 = strB.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i18;
                }
                iCharAt2 = i59 | (cCharAt3 << i60);
                i58 = i18;
            }
            int i61 = i58 + 1;
            int iCharAt8 = strB.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = 13;
                while (true) {
                    i17 = i61 + 1;
                    cCharAt2 = strB.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i17;
                }
                iCharAt8 = i62 | (cCharAt2 << i63);
                i61 = i17;
            }
            int i64 = i61 + 1;
            int iCharAt9 = strB.charAt(i61);
            if (iCharAt9 >= 55296) {
                int i65 = iCharAt9 & 8191;
                int i66 = 13;
                while (true) {
                    i16 = i64 + 1;
                    cCharAt = strB.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i16;
                }
                iCharAt9 = i65 | (cCharAt << i66);
                i64 = i16;
            }
            i11 = (iCharAt4 * 2) + iCharAt5;
            i12 = iCharAt4;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i13 = iCharAt9;
            i40 = i64;
            i14 = iCharAt6;
            i15 = iCharAt7;
        }
        Unsafe unsafe = f8569s;
        Object[] objArrA = z0Var.a();
        Class<?> cls = z0Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i67 = i13 + iCharAt2;
        int i68 = i13;
        int i69 = i67;
        int i70 = 0;
        int i71 = 0;
        while (i40 < length) {
            int i72 = i40 + 1;
            int iCharAt10 = strB.charAt(i40);
            if (iCharAt10 >= c10) {
                int i73 = iCharAt10 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i37 = i74 + 1;
                    cCharAt12 = strB.charAt(i74);
                    if (cCharAt12 < c10) {
                        break;
                    }
                    i73 |= (cCharAt12 & 8191) << i75;
                    i75 += 13;
                    i74 = i37;
                }
                iCharAt10 = i73 | (cCharAt12 << i75);
                i24 = i37;
            } else {
                i24 = i72;
            }
            int i76 = i24 + 1;
            int iCharAt11 = strB.charAt(i24);
            if (iCharAt11 >= c10) {
                int i77 = iCharAt11 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i36 = i78 + 1;
                    cCharAt11 = strB.charAt(i78);
                    if (cCharAt11 < c10) {
                        break;
                    }
                    i77 |= (cCharAt11 & 8191) << i79;
                    i79 += 13;
                    i78 = i36;
                }
                iCharAt11 = i77 | (cCharAt11 << i79);
                i25 = i36;
            } else {
                i25 = i76;
            }
            int i80 = iCharAt11 & 255;
            int i81 = length;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i70] = i71;
                i70++;
            }
            int i82 = i70;
            if (i80 >= 51) {
                int i83 = i25 + 1;
                int iCharAt12 = strB.charAt(i25);
                char c11 = 55296;
                if (iCharAt12 >= 55296) {
                    int i84 = iCharAt12 & 8191;
                    int i85 = 13;
                    while (true) {
                        i35 = i83 + 1;
                        cCharAt10 = strB.charAt(i83);
                        if (cCharAt10 < c11) {
                            break;
                        }
                        i84 |= (cCharAt10 & 8191) << i85;
                        i85 += 13;
                        i83 = i35;
                        c11 = 55296;
                    }
                    iCharAt12 = i84 | (cCharAt10 << i85);
                    i83 = i35;
                }
                int i86 = i80 - 51;
                int i87 = i83;
                if (i86 == 9 || i86 == 17) {
                    i32 = i11 + 1;
                    objArr[((i71 / 3) * 2) + 1] = objArrA[i11];
                } else {
                    if (i86 == 12 && (z0Var.getSyntax().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i32 = i11 + 1;
                        objArr[((i71 / 3) * 2) + 1] = objArrA[i11];
                    }
                    i33 = iCharAt12 * 2;
                    obj = objArrA[i33];
                    if (obj instanceof Field) {
                        fieldH1 = (Field) obj;
                    } else {
                        fieldH1 = h0(cls, (String) obj);
                        objArrA[i33] = fieldH1;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldH1);
                    i34 = i33 + 1;
                    obj2 = objArrA[i34];
                    if (obj2 instanceof Field) {
                        fieldH2 = (Field) obj2;
                    } else {
                        fieldH2 = h0(cls, (String) obj2);
                        objArrA[i34] = fieldH2;
                    }
                    i27 = i15;
                    i26 = i11;
                    i28 = i87;
                    strB = strB;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH2);
                    i29 = 0;
                }
                i11 = i32;
                i33 = iCharAt12 * 2;
                obj = objArrA[i33];
                if (obj instanceof Field) {
                    fieldH1 = (Field) obj;
                } else {
                    fieldH1 = h0(cls, (String) obj);
                    objArrA[i33] = fieldH1;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldH1);
                i34 = i33 + 1;
                obj2 = objArrA[i34];
                if (obj2 instanceof Field) {
                    fieldH2 = (Field) obj2;
                } else {
                    fieldH2 = h0(cls, (String) obj2);
                    objArrA[i34] = fieldH2;
                }
                i27 = i15;
                i26 = i11;
                i28 = i87;
                strB = strB;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH2);
                i29 = 0;
            } else {
                i26 = i11 + 1;
                Field fieldH3 = h0(cls, (String) objArrA[i11]);
                if (i80 == 9 || i80 == 17) {
                    i27 = i15;
                    objArr[((i71 / 3) * 2) + 1] = fieldH3.getType();
                } else {
                    if (i80 == 27 || i80 == 49) {
                        i27 = i15;
                        i31 = i11 + 2;
                        objArr[((i71 / 3) * 2) + 1] = objArrA[i26];
                    } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                        i27 = i15;
                        if (z0Var.getSyntax() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i31 = i11 + 2;
                            objArr[((i71 / 3) * 2) + 1] = objArrA[i26];
                        }
                    } else {
                        if (i80 == 50) {
                            int i88 = i68 + 1;
                            iArr[i68] = i71;
                            int i89 = (i71 / 3) * 2;
                            int i90 = i11 + 2;
                            objArr[i89] = objArrA[i26];
                            if ((iCharAt11 & 2048) != 0) {
                                i26 = i11 + 3;
                                objArr[i89 + 1] = objArrA[i90];
                                i68 = i88;
                            } else {
                                i68 = i88;
                                i26 = i90;
                            }
                        }
                        i27 = i15;
                    }
                    i26 = i31;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldH3);
                if ((iCharAt11 & 4096) == 0 || i80 > 17) {
                    iObjectFieldOffset = 1048575;
                    i28 = i25;
                    i29 = 0;
                } else {
                    i28 = i25 + 1;
                    int iCharAt13 = strB.charAt(i25);
                    if (iCharAt13 >= 55296) {
                        int i91 = iCharAt13 & 8191;
                        int i92 = 13;
                        while (true) {
                            i30 = i28 + 1;
                            cCharAt9 = strB.charAt(i28);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i91 |= (cCharAt9 & 8191) << i92;
                            i92 += 13;
                            i28 = i30;
                        }
                        iCharAt13 = i91 | (cCharAt9 << i92);
                        i28 = i30;
                    }
                    int i93 = (i12 * 2) + (iCharAt13 / 32);
                    Object obj3 = objArrA[i93];
                    if (obj3 instanceof Field) {
                        fieldH0 = (Field) obj3;
                    } else {
                        fieldH0 = h0(cls, (String) obj3);
                        objArrA[i93] = fieldH0;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldH0);
                    i29 = iCharAt13 % 32;
                }
                if (i80 >= 18 && i80 <= 49) {
                    iArr[i69] = iObjectFieldOffset3;
                    i69++;
                }
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i94 = i71 + 1;
            iArr2[i71] = iCharAt10;
            int i95 = i71 + 2;
            int i96 = i12;
            iArr2[i94] = iObjectFieldOffset2 | (i80 << 20) | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0);
            i71 += 3;
            iArr2[i95] = iObjectFieldOffset | (i29 << 20);
            i40 = i28;
            strB = strB;
            i11 = i26;
            length = i81;
            i15 = i27;
            i70 = i82;
            i12 = i96;
            i14 = i14;
            c10 = 55296;
        }
        return new q0(iArr2, objArr, i14, i15, z0Var.getDefaultInstance(), z0Var.getSyntax(), false, iArr, i13, i67, s0Var, c0Var, h1Var, pVar, i0Var);
    }

    private int P(int i10) {
        return this.f8570a[i10];
    }

    private static long Q(int i10) {
        return i10 & 1048575;
    }

    private static boolean R(Object obj, long j10) {
        return ((Boolean) k1.G(obj, j10)).booleanValue();
    }

    private static double S(Object obj, long j10) {
        return ((Double) k1.G(obj, j10)).doubleValue();
    }

    private static float T(Object obj, long j10) {
        return ((Float) k1.G(obj, j10)).floatValue();
    }

    private static int U(Object obj, long j10) {
        return ((Integer) k1.G(obj, j10)).intValue();
    }

    private static long V(Object obj, long j10) {
        return ((Long) k1.G(obj, j10)).longValue();
    }

    private int W(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, e.a aVar) {
        Unsafe unsafe = f8569s;
        Object objO = o(i12);
        Object object = unsafe.getObject(obj, j10);
        if (this.f8586q.isImmutable(object)) {
            Object objNewMapField = this.f8586q.newMapField(objO);
            this.f8586q.mergeFrom(objNewMapField, object);
            unsafe.putObject(obj, j10, objNewMapField);
            object = objNewMapField;
        }
        return g(bArr, i10, i11, this.f8586q.forMapMetadata(objO), this.f8586q.forMutableMapData(object), aVar);
    }

    private int Y(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, e.a aVar) throws InvalidProtocolBufferException {
        Unsafe unsafe = f8569s;
        long j11 = this.f8570a[i17 + 2] & 1048575;
        switch (i16) {
            case AD_REWARD_USER_VALUE:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Double.valueOf(e.e(bArr, i10)));
                int i18 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i18;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Float.valueOf(e.l(bArr, i10)));
                int i19 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i19;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iL = e.L(bArr, i10, aVar);
                unsafe.putObject(obj, j10, Long.valueOf(aVar.f8434b));
                unsafe.putInt(obj, j11, i13);
                return iL;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int I = e.I(bArr, i10, aVar);
                unsafe.putObject(obj, j10, Integer.valueOf(aVar.f8433a));
                unsafe.putInt(obj, j11, i13);
                return I;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Long.valueOf(e.j(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Integer.valueOf(e.h(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i21;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iL2 = e.L(bArr, i10, aVar);
                unsafe.putObject(obj, j10, Boolean.valueOf(aVar.f8434b != 0));
                unsafe.putInt(obj, j11, i13);
                return iL2;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int I2 = e.I(bArr, i10, aVar);
                int i22 = aVar.f8433a;
                if (i22 == 0) {
                    unsafe.putObject(obj, j10, "");
                } else {
                    if ((i15 & ASTNode.DISCARD) != 0 && !Utf8.s(bArr, I2, I2 + i22)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(obj, j10, new String(bArr, I2, i22, w.f8604b));
                    I2 += i22;
                }
                unsafe.putInt(obj, j11, i13);
                return I2;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                Object objL = L(obj, i13, i17);
                int iO = e.O(objL, p(i17), bArr, i10, i11, aVar);
                m0(obj, i13, i17, objL);
                return iO;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iC = e.c(bArr, i10, aVar);
                unsafe.putObject(obj, j10, aVar.f8435c);
                unsafe.putInt(obj, j11, i13);
                return iC;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int I3 = e.I(bArr, i10, aVar);
                int i23 = aVar.f8433a;
                w.c cVarN = n(i17);
                if (cVarN == null || cVarN.isInRange(i23)) {
                    unsafe.putObject(obj, j10, Integer.valueOf(i23));
                    unsafe.putInt(obj, j11, i13);
                } else {
                    q(obj).n(i12, Long.valueOf(i23));
                }
                return I3;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int I4 = e.I(bArr, i10, aVar);
                unsafe.putObject(obj, j10, Integer.valueOf(i.c(aVar.f8433a)));
                unsafe.putInt(obj, j11, i13);
                return I4;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iL3 = e.L(bArr, i10, aVar);
                unsafe.putObject(obj, j10, Long.valueOf(i.d(aVar.f8434b)));
                unsafe.putInt(obj, j11, i13);
                return iL3;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                Object objL2 = L(obj, i13, i17);
                int iN = e.N(objL2, p(i17), bArr, i10, i11, (i12 & (-8)) | 4, aVar);
                m0(obj, i13, i17, objL2);
                return iN;
            default:
                return i10;
        }
    }

    private int Z(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, e.a aVar) throws InvalidProtocolBufferException {
        int iJ;
        Unsafe unsafe = f8569s;
        w.d dVarMutableCopyWithCapacity = (w.d) unsafe.getObject(obj, j11);
        if (!dVarMutableCopyWithCapacity.isModifiable()) {
            int size = dVarMutableCopyWithCapacity.size();
            dVarMutableCopyWithCapacity = dVarMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j11, dVarMutableCopyWithCapacity);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return e.s(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 1 ? e.f(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 19:
            case 36:
                if (i14 == 2) {
                    return e.v(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 5 ? e.m(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return e.z(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 0 ? e.M(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i14 == 2) {
                    return e.y(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 0 ? e.J(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return e.u(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 1 ? e.k(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i14 == 2) {
                    return e.t(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 5 ? e.i(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 25:
            case 42:
                if (i14 == 2) {
                    return e.r(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 0 ? e.b(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 26:
                if (i14 == 2) {
                    return (j10 & 536870912) == 0 ? e.D(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : e.E(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar);
                }
                return i10;
            case 27:
                return i14 == 2 ? e.q(p(i15), i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 28:
                return i14 == 2 ? e.d(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 30:
            case 44:
                if (i14 == 2) {
                    iJ = e.y(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                } else {
                    if (i14 != 0) {
                        return i10;
                    }
                    iJ = e.J(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar);
                }
                d1.z(obj, i13, dVarMutableCopyWithCapacity, n(i15), null, this.f8584o);
                return iJ;
            case 33:
            case 47:
                if (i14 == 2) {
                    return e.w(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 0 ? e.A(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i14 == 2) {
                    return e.x(bArr, i10, dVarMutableCopyWithCapacity, aVar);
                }
                return i14 == 0 ? e.B(i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return i14 == 3 ? e.o(p(i15), i12, bArr, i10, i11, dVarMutableCopyWithCapacity, aVar) : i10;
            default:
                return i10;
        }
    }

    private int a0(int i10) {
        if (i10 < this.f8572c || i10 > this.f8573d) {
            return -1;
        }
        return k0(i10, 0);
    }

    private int b0(int i10, int i11) {
        if (i10 < this.f8572c || i10 > this.f8573d) {
            return -1;
        }
        return k0(i10, i11);
    }

    private int c0(int i10) {
        return this.f8570a[i10 + 2];
    }

    private boolean d(Object obj, Object obj2, int i10) {
        return u(obj, i10) == u(obj2, i10);
    }

    private void d0(Object obj, long j10, a1 a1Var, b1 b1Var, o oVar) {
        a1Var.e(this.f8583n.c(obj, j10), b1Var, oVar);
    }

    private static boolean e(Object obj, long j10) {
        return k1.t(obj, j10);
    }

    private void e0(Object obj, int i10, a1 a1Var, b1 b1Var, o oVar) {
        a1Var.b(this.f8583n.c(obj, Q(i10)), b1Var, oVar);
    }

    private static void f(Object obj) {
        if (A(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    private void f0(Object obj, int i10, a1 a1Var) {
        if (t(i10)) {
            k1.W(obj, Q(i10), a1Var.readStringRequireUtf8());
        } else if (this.f8576g) {
            k1.W(obj, Q(i10), a1Var.readString());
        } else {
            k1.W(obj, Q(i10), a1Var.readBytes());
        }
    }

    private int g(byte[] bArr, int i10, int i11, h0.a aVar, Map map, e.a aVar2) throws InvalidProtocolBufferException {
        int iH;
        int I = e.I(bArr, i10, aVar2);
        int i12 = aVar2.f8433a;
        if (i12 < 0 || i12 > i11 - I) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i13 = I + i12;
        Object obj = aVar.f8470b;
        Object obj2 = aVar.f8472d;
        while (I < i13) {
            int i14 = I + 1;
            int i15 = bArr[I];
            if (i15 < 0) {
                iH = e.H(i15, bArr, i14, aVar2);
                i15 = aVar2.f8433a;
            } else {
                iH = i14;
            }
            int i16 = i15 >>> 3;
            int i17 = i15 & 7;
            if (i16 != 1) {
                if (i16 == 2 && i17 == aVar.f8471c.getWireType()) {
                    I = h(bArr, iH, i11, aVar.f8471c, aVar.f8472d.getClass(), aVar2);
                    obj2 = aVar2.f8435c;
                } else {
                    I = e.P(i15, bArr, iH, i11, aVar2);
                }
            } else if (i17 == aVar.f8469a.getWireType()) {
                I = h(bArr, iH, i11, aVar.f8469a, null, aVar2);
                obj = aVar2.f8435c;
            } else {
                I = e.P(i15, bArr, iH, i11, aVar2);
            }
        }
        if (I != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i13;
    }

    private void g0(Object obj, int i10, a1 a1Var) {
        if (t(i10)) {
            a1Var.readStringListRequireUtf8(this.f8583n.c(obj, Q(i10)));
        } else {
            a1Var.readStringList(this.f8583n.c(obj, Q(i10)));
        }
    }

    private int h(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class cls, e.a aVar) {
        switch (a.f8587a[fieldType.ordinal()]) {
            case 1:
                int iL = e.L(bArr, i10, aVar);
                aVar.f8435c = Boolean.valueOf(aVar.f8434b != 0);
                return iL;
            case 2:
                return e.c(bArr, i10, aVar);
            case 3:
                aVar.f8435c = Double.valueOf(e.e(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                aVar.f8435c = Integer.valueOf(e.h(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                aVar.f8435c = Long.valueOf(e.j(bArr, i10));
                return i10 + 8;
            case 8:
                aVar.f8435c = Float.valueOf(e.l(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int I = e.I(bArr, i10, aVar);
                aVar.f8435c = Integer.valueOf(aVar.f8433a);
                return I;
            case 12:
            case 13:
                int iL2 = e.L(bArr, i10, aVar);
                aVar.f8435c = Long.valueOf(aVar.f8434b);
                return iL2;
            case 14:
                return e.p(x0.a().c(cls), bArr, i10, i11, aVar);
            case 15:
                int I2 = e.I(bArr, i10, aVar);
                aVar.f8435c = Integer.valueOf(i.c(aVar.f8433a));
                return I2;
            case 16:
                int iL3 = e.L(bArr, i10, aVar);
                aVar.f8435c = Long.valueOf(i.d(aVar.f8434b));
                return iL3;
            case 17:
                return e.F(bArr, i10, aVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static Field h0(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static double i(Object obj, long j10) {
        return k1.A(obj, j10);
    }

    private void i0(Object obj, int i10) {
        int iC0 = c0(i10);
        long j10 = 1048575 & iC0;
        if (j10 == 1048575) {
            return;
        }
        k1.U(obj, j10, (1 << (iC0 >>> 20)) | k1.C(obj, j10));
    }

    private boolean j(Object obj, Object obj2, int i10) {
        int iO0 = o0(i10);
        long jQ = Q(iO0);
        switch (n0(iO0)) {
            case 0:
                return d(obj, obj2, i10) && Double.doubleToLongBits(k1.A(obj, jQ)) == Double.doubleToLongBits(k1.A(obj2, jQ));
            case 1:
                return d(obj, obj2, i10) && Float.floatToIntBits(k1.B(obj, jQ)) == Float.floatToIntBits(k1.B(obj2, jQ));
            case 2:
                return d(obj, obj2, i10) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 3:
                return d(obj, obj2, i10) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 4:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 5:
                return d(obj, obj2, i10) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 6:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 7:
                return d(obj, obj2, i10) && k1.t(obj, jQ) == k1.t(obj2, jQ);
            case 8:
                return d(obj, obj2, i10) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 9:
                return d(obj, obj2, i10) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 10:
                return d(obj, obj2, i10) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 11:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 12:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 13:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 14:
                return d(obj, obj2, i10) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 15:
                return d(obj, obj2, i10) && k1.C(obj, jQ) == k1.C(obj2, jQ);
            case 16:
                return d(obj, obj2, i10) && k1.E(obj, jQ) == k1.E(obj2, jQ);
            case 17:
                return d(obj, obj2, i10) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
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
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
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
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case 50:
                return d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            case AD_REWARD_USER_VALUE:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
            case 66:
            case 67:
            case 68:
                return B(obj, obj2, i10) && d1.H(k1.G(obj, jQ), k1.G(obj2, jQ));
            default:
                return true;
        }
    }

    private void j0(Object obj, int i10, int i11) {
        k1.U(obj, c0(i11) & 1048575, i10);
    }

    private Object k(Object obj, int i10, Object obj2, h1 h1Var, Object obj3) {
        w.c cVarN;
        int iP = P(i10);
        Object objG = k1.G(obj, Q(o0(i10)));
        return (objG == null || (cVarN = n(i10)) == null) ? obj2 : l(i10, iP, this.f8586q.forMutableMapData(objG), cVarN, obj2, h1Var, obj3);
    }

    private int k0(int i10, int i11) {
        int length = (this.f8570a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iP = P(i13);
            if (i10 == iP) {
                return i13;
            }
            if (i10 < iP) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private Object l(int i10, int i11, Map map, w.c cVar, Object obj, h1 h1Var, Object obj2) {
        h0.a aVarForMapMetadata = this.f8586q.forMapMetadata(o(i10));
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!cVar.isInRange(((Integer) entry.getValue()).intValue())) {
                if (obj == null) {
                    obj = h1Var.f(obj2);
                }
                ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(h0.b(aVarForMapMetadata, entry.getKey(), entry.getValue()));
                try {
                    h0.e(fVarNewCodedBuilder.b(), aVarForMapMetadata, entry.getKey(), entry.getValue());
                    h1Var.d(obj, i11, fVarNewCodedBuilder.a());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return obj;
    }

    private void l0(Object obj, int i10, Object obj2) {
        f8569s.putObject(obj, Q(o0(i10)), obj2);
        i0(obj, i10);
    }

    private static float m(Object obj, long j10) {
        return k1.B(obj, j10);
    }

    private void m0(Object obj, int i10, int i11, Object obj2) {
        f8569s.putObject(obj, Q(o0(i11)), obj2);
        j0(obj, i10, i11);
    }

    private w.c n(int i10) {
        return (w.c) this.f8571b[((i10 / 3) * 2) + 1];
    }

    private static int n0(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    private Object o(int i10) {
        return this.f8571b[(i10 / 3) * 2];
    }

    private int o0(int i10) {
        return this.f8570a[i10 + 1];
    }

    private b1 p(int i10) {
        int i11 = (i10 / 3) * 2;
        b1 b1Var = (b1) this.f8571b[i11];
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1VarC = x0.a().c((Class) this.f8571b[i11 + 1]);
        this.f8571b[i11] = b1VarC;
        return b1VarC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private void p0(Object obj, Writer writer) {
        Map.Entry entry;
        Iterator it;
        int i10;
        Map.Entry entry2;
        int i11;
        int i12;
        Map.Entry entry3;
        boolean z10;
        if (this.f8575f) {
            s sVarC = this.f8585p.c(obj);
            if (sVarC.k()) {
                entry = null;
                it = null;
            } else {
                Iterator itP = sVarC.p();
                entry = (Map.Entry) itP.next();
                it = itP;
            }
        } else {
            entry = null;
            it = null;
        }
        int length = this.f8570a.length;
        Unsafe unsafe = f8569s;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < length) {
            int iO0 = o0(i16);
            int iP = P(i16);
            int iN0 = n0(iO0);
            if (iN0 <= 17) {
                int i17 = this.f8570a[i16 + 2];
                int i18 = i17 & i13;
                if (i18 != i14) {
                    i15 = i18 == i13 ? 0 : unsafe.getInt(obj, i18);
                    i14 = i18;
                } else {
                    entry = entry;
                }
                int i19 = 1 << (i17 >>> 20);
                i10 = i14;
                i11 = i19;
                entry2 = entry;
            } else {
                i10 = i14;
                entry2 = entry;
                i11 = 0;
            }
            int i20 = i15;
            while (entry2 != null && this.f8585p.a(entry2) <= iP) {
                this.f8585p.j(writer, entry2);
                entry2 = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long jQ = Q(iO0);
            switch (iN0) {
                case 0:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeDouble(iP, i(obj, jQ));
                    }
                    break;
                case 1:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeFloat(iP, m(obj, jQ));
                    }
                    break;
                case 2:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 3:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeUInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 4:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 5:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeFixed64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 6:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeFixed32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 7:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeBool(iP, e(obj, jQ));
                    }
                    break;
                case 8:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        s0(iP, unsafe.getObject(obj, jQ), writer);
                    }
                    break;
                case 9:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.c(iP, unsafe.getObject(obj, jQ), p(i16));
                    }
                    break;
                case 10:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.b(iP, (ByteString) unsafe.getObject(obj, jQ));
                    }
                    break;
                case 11:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeUInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 12:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeEnum(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 13:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeSFixed32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 14:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeSFixed64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 15:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeSInt32(iP, unsafe.getInt(obj, jQ));
                    }
                    break;
                case 16:
                    i12 = length;
                    entry3 = entry2;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.writeSInt64(iP, unsafe.getLong(obj, jQ));
                    }
                    break;
                case 17:
                    entry3 = entry2;
                    i12 = length;
                    if (v(obj, i16, i10, i20, i11)) {
                        writer.e(iP, unsafe.getObject(obj, jQ), p(i16));
                    }
                    break;
                case 18:
                    z10 = false;
                    d1.N(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 19:
                    z10 = false;
                    d1.R(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 20:
                    z10 = false;
                    d1.U(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 21:
                    z10 = false;
                    d1.c0(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 22:
                    z10 = false;
                    d1.T(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 23:
                    z10 = false;
                    d1.Q(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 24:
                    z10 = false;
                    d1.P(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 25:
                    z10 = false;
                    d1.L(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 26:
                    d1.a0(P(i16), (List) unsafe.getObject(obj, jQ), writer);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 27:
                    d1.V(P(i16), (List) unsafe.getObject(obj, jQ), writer, p(i16));
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 28:
                    d1.M(P(i16), (List) unsafe.getObject(obj, jQ), writer);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    d1.b0(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 30:
                    z10 = false;
                    d1.O(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    d1.W(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 32:
                    z10 = false;
                    d1.X(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 33:
                    z10 = false;
                    d1.Y(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 34:
                    z10 = false;
                    d1.Z(P(i16), (List) unsafe.getObject(obj, jQ), writer, false);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 35:
                    d1.N(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 36:
                    d1.R(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 37:
                    d1.U(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 38:
                    d1.c0(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 39:
                    d1.T(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 40:
                    d1.Q(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 41:
                    d1.P(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 42:
                    d1.L(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 43:
                    d1.b0(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 44:
                    d1.O(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 45:
                    d1.W(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 46:
                    d1.X(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 47:
                    d1.Y(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    d1.Z(P(i16), (List) unsafe.getObject(obj, jQ), writer, true);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    d1.S(P(i16), (List) unsafe.getObject(obj, jQ), writer, p(i16));
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 50:
                    r0(writer, iP, unsafe.getObject(obj, jQ), i16);
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeDouble(iP, S(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeFloat(iP, T(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeInt64(iP, V(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeUInt64(iP, V(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeInt32(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeFixed64(iP, V(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 57:
                    if (C(obj, iP, i16)) {
                        writer.writeFixed32(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i16)) {
                        writer.writeBool(iP, R(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 59:
                    if (C(obj, iP, i16)) {
                        s0(iP, unsafe.getObject(obj, jQ), writer);
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 60:
                    if (C(obj, iP, i16)) {
                        writer.c(iP, unsafe.getObject(obj, jQ), p(i16));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 61:
                    if (C(obj, iP, i16)) {
                        writer.b(iP, (ByteString) unsafe.getObject(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 62:
                    if (C(obj, iP, i16)) {
                        writer.writeUInt32(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 63:
                    if (C(obj, iP, i16)) {
                        writer.writeEnum(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 64:
                    if (C(obj, iP, i16)) {
                        writer.writeSFixed32(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (C(obj, iP, i16)) {
                        writer.writeSFixed64(iP, V(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 66:
                    if (C(obj, iP, i16)) {
                        writer.writeSInt32(iP, U(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 67:
                    if (C(obj, iP, i16)) {
                        writer.writeSInt64(iP, V(obj, jQ));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                case 68:
                    if (C(obj, iP, i16)) {
                        writer.e(iP, unsafe.getObject(obj, jQ), p(i16));
                    }
                    i12 = length;
                    entry3 = entry2;
                    break;
                default:
                    i12 = length;
                    entry3 = entry2;
                    break;
            }
            i16 += 3;
            i14 = i10;
            entry = entry3;
            i15 = i20;
            length = i12;
            i13 = 1048575;
        }
        while (entry != null) {
            this.f8585p.j(writer, entry);
            entry = it.hasNext() ? (Map.Entry) it.next() : null;
        }
        t0(this.f8584o, obj, writer);
    }

    static i1 q(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        i1 i1Var = generatedMessageLite.unknownFields;
        if (i1Var != i1.c()) {
            return i1Var;
        }
        i1 i1VarK = i1.k();
        generatedMessageLite.unknownFields = i1VarK;
        return i1VarK;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void q0(Object obj, Writer writer) {
        Iterator itE;
        Map.Entry entry;
        t0(this.f8584o, obj, writer);
        if (this.f8575f) {
            s sVarC = this.f8585p.c(obj);
            if (sVarC.k()) {
                itE = null;
                entry = null;
            } else {
                itE = sVarC.e();
                entry = (Map.Entry) itE.next();
            }
        } else {
            itE = null;
            entry = null;
        }
        for (int length = this.f8570a.length - 3; length >= 0; length -= 3) {
            int iO0 = o0(length);
            int iP = P(length);
            while (entry != null && this.f8585p.a(entry) > iP) {
                this.f8585p.j(writer, entry);
                entry = itE.hasNext() ? (Map.Entry) itE.next() : null;
            }
            switch (n0(iO0)) {
                case 0:
                    if (u(obj, length)) {
                        writer.writeDouble(iP, i(obj, Q(iO0)));
                    }
                    break;
                case 1:
                    if (u(obj, length)) {
                        writer.writeFloat(iP, m(obj, Q(iO0)));
                    }
                    break;
                case 2:
                    if (u(obj, length)) {
                        writer.writeInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 3:
                    if (u(obj, length)) {
                        writer.writeUInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 4:
                    if (u(obj, length)) {
                        writer.writeInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 5:
                    if (u(obj, length)) {
                        writer.writeFixed64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 6:
                    if (u(obj, length)) {
                        writer.writeFixed32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 7:
                    if (u(obj, length)) {
                        writer.writeBool(iP, e(obj, Q(iO0)));
                    }
                    break;
                case 8:
                    if (u(obj, length)) {
                        s0(iP, k1.G(obj, Q(iO0)), writer);
                    }
                    break;
                case 9:
                    if (u(obj, length)) {
                        writer.c(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 10:
                    if (u(obj, length)) {
                        writer.b(iP, (ByteString) k1.G(obj, Q(iO0)));
                    }
                    break;
                case 11:
                    if (u(obj, length)) {
                        writer.writeUInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 12:
                    if (u(obj, length)) {
                        writer.writeEnum(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 13:
                    if (u(obj, length)) {
                        writer.writeSFixed32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 14:
                    if (u(obj, length)) {
                        writer.writeSFixed64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 15:
                    if (u(obj, length)) {
                        writer.writeSInt32(iP, s(obj, Q(iO0)));
                    }
                    break;
                case 16:
                    if (u(obj, length)) {
                        writer.writeSInt64(iP, E(obj, Q(iO0)));
                    }
                    break;
                case 17:
                    if (u(obj, length)) {
                        writer.e(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 18:
                    d1.N(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 19:
                    d1.R(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 20:
                    d1.U(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 21:
                    d1.c0(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 22:
                    d1.T(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 23:
                    d1.Q(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 24:
                    d1.P(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 25:
                    d1.L(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 26:
                    d1.a0(P(length), (List) k1.G(obj, Q(iO0)), writer);
                    break;
                case 27:
                    d1.V(P(length), (List) k1.G(obj, Q(iO0)), writer, p(length));
                    break;
                case 28:
                    d1.M(P(length), (List) k1.G(obj, Q(iO0)), writer);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    d1.b0(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 30:
                    d1.O(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    d1.W(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 32:
                    d1.X(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 33:
                    d1.Y(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 34:
                    d1.Z(P(length), (List) k1.G(obj, Q(iO0)), writer, false);
                    break;
                case 35:
                    d1.N(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 36:
                    d1.R(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 37:
                    d1.U(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 38:
                    d1.c0(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 39:
                    d1.T(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 40:
                    d1.Q(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 41:
                    d1.P(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 42:
                    d1.L(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 43:
                    d1.b0(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 44:
                    d1.O(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 45:
                    d1.W(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 46:
                    d1.X(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case 47:
                    d1.Y(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    d1.Z(P(length), (List) k1.G(obj, Q(iO0)), writer, true);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    d1.S(P(length), (List) k1.G(obj, Q(iO0)), writer, p(length));
                    break;
                case 50:
                    r0(writer, iP, k1.G(obj, Q(iO0)), length);
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeDouble(iP, S(obj, Q(iO0)));
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeFloat(iP, T(obj, Q(iO0)));
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeUInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeFixed64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 57:
                    if (C(obj, iP, length)) {
                        writer.writeFixed32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, length)) {
                        writer.writeBool(iP, R(obj, Q(iO0)));
                    }
                    break;
                case 59:
                    if (C(obj, iP, length)) {
                        s0(iP, k1.G(obj, Q(iO0)), writer);
                    }
                    break;
                case 60:
                    if (C(obj, iP, length)) {
                        writer.c(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
                case 61:
                    if (C(obj, iP, length)) {
                        writer.b(iP, (ByteString) k1.G(obj, Q(iO0)));
                    }
                    break;
                case 62:
                    if (C(obj, iP, length)) {
                        writer.writeUInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 63:
                    if (C(obj, iP, length)) {
                        writer.writeEnum(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 64:
                    if (C(obj, iP, length)) {
                        writer.writeSFixed32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (C(obj, iP, length)) {
                        writer.writeSFixed64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 66:
                    if (C(obj, iP, length)) {
                        writer.writeSInt32(iP, U(obj, Q(iO0)));
                    }
                    break;
                case 67:
                    if (C(obj, iP, length)) {
                        writer.writeSInt64(iP, V(obj, Q(iO0)));
                    }
                    break;
                case 68:
                    if (C(obj, iP, length)) {
                        writer.e(iP, k1.G(obj, Q(iO0)), p(length));
                    }
                    break;
            }
        }
        while (entry != null) {
            this.f8585p.j(writer, entry);
            entry = itE.hasNext() ? (Map.Entry) itE.next() : null;
        }
    }

    private int r(h1 h1Var, Object obj) {
        return h1Var.h(h1Var.g(obj));
    }

    private void r0(Writer writer, int i10, Object obj, int i11) {
        if (obj != null) {
            writer.d(i10, this.f8586q.forMapMetadata(o(i11)), this.f8586q.forMapData(obj));
        }
    }

    private static int s(Object obj, long j10) {
        return k1.C(obj, j10);
    }

    private void s0(int i10, Object obj, Writer writer) {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.b(i10, (ByteString) obj);
        }
    }

    private static boolean t(int i10) {
        return (i10 & ASTNode.DISCARD) != 0;
    }

    private void t0(h1 h1Var, Object obj, Writer writer) {
        h1Var.t(h1Var.g(obj), writer);
    }

    private boolean u(Object obj, int i10) {
        int iC0 = c0(i10);
        long j10 = 1048575 & iC0;
        if (j10 != 1048575) {
            return (k1.C(obj, j10) & (1 << (iC0 >>> 20))) != 0;
        }
        int iO0 = o0(i10);
        long jQ = Q(iO0);
        switch (n0(iO0)) {
            case 0:
                return Double.doubleToRawLongBits(k1.A(obj, jQ)) != 0;
            case 1:
                return Float.floatToRawIntBits(k1.B(obj, jQ)) != 0;
            case 2:
                return k1.E(obj, jQ) != 0;
            case 3:
                return k1.E(obj, jQ) != 0;
            case 4:
                return k1.C(obj, jQ) != 0;
            case 5:
                return k1.E(obj, jQ) != 0;
            case 6:
                return k1.C(obj, jQ) != 0;
            case 7:
                return k1.t(obj, jQ);
            case 8:
                Object objG = k1.G(obj, jQ);
                if (objG instanceof String) {
                    return !((String) objG).isEmpty();
                }
                if (objG instanceof ByteString) {
                    return !ByteString.EMPTY.equals(objG);
                }
                throw new IllegalArgumentException();
            case 9:
                return k1.G(obj, jQ) != null;
            case 10:
                return !ByteString.EMPTY.equals(k1.G(obj, jQ));
            case 11:
                return k1.C(obj, jQ) != 0;
            case 12:
                return k1.C(obj, jQ) != 0;
            case 13:
                return k1.C(obj, jQ) != 0;
            case 14:
                return k1.E(obj, jQ) != 0;
            case 15:
                return k1.C(obj, jQ) != 0;
            case 16:
                return k1.E(obj, jQ) != 0;
            case 17:
                return k1.G(obj, jQ) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean v(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return u(obj, i10);
        }
        return (i12 & i13) != 0;
    }

    private static boolean w(Object obj, int i10, b1 b1Var) {
        return b1Var.isInitialized(k1.G(obj, Q(i10)));
    }

    private static boolean x(int i10) {
        return (i10 & Integer.MIN_VALUE) != 0;
    }

    private boolean y(Object obj, int i10, int i11) {
        List list = (List) k1.G(obj, Q(i10));
        if (list.isEmpty()) {
            return true;
        }
        b1 b1VarP = p(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!b1VarP.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    private boolean z(Object obj, int i10, int i11) {
        Map mapForMapData = this.f8586q.forMapData(k1.G(obj, Q(i10)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.f8586q.forMapMetadata(o(i11)).f8471c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        b1 b1VarC = null;
        for (Object obj2 : mapForMapData.values()) {
            if (b1VarC == null) {
                b1VarC = x0.a().c(obj2.getClass());
            }
            if (!b1VarC.isInitialized(obj2)) {
                return false;
            }
        }
        return true;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    int X(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, androidx.datastore.preferences.protobuf.e.a r36) {
        /*
            Method dump skipped, instruction units count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.q0.X(java.lang.Object, byte[], int, int, int, androidx.datastore.preferences.protobuf.e$a):int");
    }

    @Override
    public void a(Object obj, a1 a1Var, o oVar) throws Throwable {
        oVar.getClass();
        f(obj);
        F(this.f8584o, this.f8585p, obj, a1Var, oVar);
    }

    @Override
    public void b(Object obj, Writer writer) {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            q0(obj, writer);
        } else {
            p0(obj, writer);
        }
    }

    @Override
    public void c(Object obj, byte[] bArr, int i10, int i11, e.a aVar) {
        X(obj, bArr, i10, i11, 0, aVar);
    }

    @Override
    public boolean equals(Object obj, Object obj2) {
        int length = this.f8570a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!j(obj, obj2, i10)) {
                return false;
            }
        }
        if (!this.f8584o.g(obj).equals(this.f8584o.g(obj2))) {
            return false;
        }
        if (this.f8575f) {
            return this.f8585p.c(obj).equals(this.f8585p.c(obj2));
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[PHI: r12
      0x0079: PHI (r12v4 int) = 
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v8 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v9 int)
      (r12v1 int)
     binds: [B:21:0x0060, B:225:0x0560, B:222:0x054a, B:216:0x0522, B:213:0x0503, B:210:0x04e6, B:207:0x04cb, B:204:0x04b0, B:201:0x0498, B:198:0x0482, B:195:0x0468, B:192:0x044d, B:189:0x042c, B:165:0x032e, B:159:0x0310, B:153:0x02f2, B:147:0x02d4, B:141:0x02b6, B:135:0x0298, B:129:0x027a, B:123:0x025c, B:117:0x023e, B:111:0x0221, B:105:0x0204, B:99:0x01e7, B:93:0x01ca, B:86:0x01aa, B:81:0x0176, B:78:0x016a, B:75:0x015a, B:72:0x014a, B:69:0x013a, B:66:0x012e, B:63:0x0122, B:60:0x0116, B:54:0x00f8, B:51:0x00e5, B:48:0x00d4, B:45:0x00c5, B:42:0x00b6, B:40:0x00b0, B:38:0x00a9, B:35:0x009e, B:32:0x008f, B:29:0x0080, B:26:0x0078, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public int getSerializedSize(Object obj) {
        int i10;
        int i11;
        int i12;
        int iJ;
        int iE;
        int I;
        boolean z10;
        int iF;
        int i13;
        int iS;
        int iU;
        Unsafe unsafe = f8569s;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i17 < this.f8570a.length) {
            int iO0 = o0(i17);
            int iN0 = n0(iO0);
            int iP = P(i17);
            int i19 = this.f8570a[i17 + 2];
            int i20 = i19 & i14;
            if (iN0 <= 17) {
                if (i20 != i15) {
                    i16 = i20 == i14 ? 0 : unsafe.getInt(obj, i20);
                    i15 = i20;
                }
                i10 = i15;
                i11 = i16;
                i12 = 1 << (i19 >>> 20);
            } else {
                i10 = i15;
                i11 = i16;
                i12 = 0;
            }
            long jQ = Q(iO0);
            if (iN0 < FieldType.DOUBLE_LIST_PACKED.id() || iN0 > FieldType.SINT64_LIST_PACKED.id()) {
                i20 = 0;
            }
            switch (iN0) {
                case 0:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.j(iP, 0.0d);
                        i18 += iJ;
                    }
                    break;
                case 1:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.r(iP, 0.0f);
                        i18 += iJ;
                    }
                    break;
                case 2:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.y(iP, unsafe.getLong(obj, jQ));
                        i18 += iJ;
                    }
                    break;
                case 3:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.V(iP, unsafe.getLong(obj, jQ));
                        i18 += iJ;
                    }
                    break;
                case 4:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.w(iP, unsafe.getInt(obj, jQ));
                        i18 += iJ;
                    }
                    break;
                case 5:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.p(iP, 0L);
                        i18 += iJ;
                    }
                    break;
                case 6:
                    if (v(obj, i17, i10, i11, i12)) {
                        iJ = CodedOutputStream.n(iP, 0);
                        i18 += iJ;
                    }
                    break;
                case 7:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.e(iP, true);
                        i18 += iE;
                    }
                    break;
                case 8:
                    if (v(obj, i17, i10, i11, i12)) {
                        Object object = unsafe.getObject(obj, jQ);
                        iE = object instanceof ByteString ? CodedOutputStream.h(iP, (ByteString) object) : CodedOutputStream.Q(iP, (String) object);
                        i18 += iE;
                    }
                    break;
                case 9:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = d1.o(iP, unsafe.getObject(obj, jQ), p(i17));
                        i18 += iE;
                    }
                    break;
                case 10:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.h(iP, (ByteString) unsafe.getObject(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 11:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.T(iP, unsafe.getInt(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 12:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.l(iP, unsafe.getInt(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 13:
                    if (v(obj, i17, i10, i11, i12)) {
                        I = CodedOutputStream.I(iP, 0);
                        i18 += I;
                    }
                    break;
                case 14:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.K(iP, 0L);
                        i18 += iE;
                    }
                    break;
                case 15:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.M(iP, unsafe.getInt(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 16:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.O(iP, unsafe.getLong(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 17:
                    if (v(obj, i17, i10, i11, i12)) {
                        iE = CodedOutputStream.t(iP, (n0) unsafe.getObject(obj, jQ), p(i17));
                        i18 += iE;
                    }
                    break;
                case 18:
                    iE = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iE;
                    break;
                case 19:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 20:
                    z10 = false;
                    iF = d1.m(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 21:
                    z10 = false;
                    iF = d1.x(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 22:
                    z10 = false;
                    iF = d1.k(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 23:
                    z10 = false;
                    iF = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 24:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 25:
                    z10 = false;
                    iF = d1.a(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 26:
                    iE = d1.u(iP, (List) unsafe.getObject(obj, jQ));
                    i18 += iE;
                    break;
                case 27:
                    iE = d1.p(iP, (List) unsafe.getObject(obj, jQ), p(i17));
                    i18 += iE;
                    break;
                case 28:
                    iE = d1.c(iP, (List) unsafe.getObject(obj, jQ));
                    i18 += iE;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    iE = d1.v(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iE;
                    break;
                case 30:
                    z10 = false;
                    iF = d1.d(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    iF = d1.f(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 32:
                    z10 = false;
                    iF = d1.h(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 33:
                    z10 = false;
                    iF = d1.q(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 34:
                    z10 = false;
                    iF = d1.s(iP, (List) unsafe.getObject(obj, jQ), false);
                    i18 += iF;
                    break;
                case 35:
                    i13 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 36:
                    i13 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 37:
                    i13 = d1.n((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 38:
                    i13 = d1.y((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 39:
                    i13 = d1.l((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 40:
                    i13 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 41:
                    i13 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 42:
                    i13 = d1.b((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 43:
                    i13 = d1.w((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 44:
                    i13 = d1.e((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 45:
                    i13 = d1.g((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 46:
                    i13 = d1.i((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case 47:
                    i13 = d1.r((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    i13 = d1.t((List) unsafe.getObject(obj, jQ));
                    if (i13 > 0) {
                        if (this.f8578i) {
                            unsafe.putInt(obj, i20, i13);
                        }
                        iS = CodedOutputStream.S(iP);
                        iU = CodedOutputStream.U(i13);
                        I = iS + iU + i13;
                        i18 += I;
                    }
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    iE = d1.j(iP, (List) unsafe.getObject(obj, jQ), p(i17));
                    i18 += iE;
                    break;
                case 50:
                    iE = this.f8586q.getSerializedSize(iP, unsafe.getObject(obj, jQ), o(i17));
                    i18 += iE;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.j(iP, 0.0d);
                        i18 += iE;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.r(iP, 0.0f);
                        i18 += iE;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.y(iP, V(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.V(iP, V(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.w(iP, U(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.p(iP, 0L);
                        i18 += iE;
                    }
                    break;
                case 57:
                    if (C(obj, iP, i17)) {
                        I = CodedOutputStream.n(iP, 0);
                        i18 += I;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.e(iP, true);
                        i18 += iE;
                    }
                    break;
                case 59:
                    if (C(obj, iP, i17)) {
                        Object object2 = unsafe.getObject(obj, jQ);
                        iE = object2 instanceof ByteString ? CodedOutputStream.h(iP, (ByteString) object2) : CodedOutputStream.Q(iP, (String) object2);
                        i18 += iE;
                    }
                    break;
                case 60:
                    if (C(obj, iP, i17)) {
                        iE = d1.o(iP, unsafe.getObject(obj, jQ), p(i17));
                        i18 += iE;
                    }
                    break;
                case 61:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.h(iP, (ByteString) unsafe.getObject(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 62:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.T(iP, U(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 63:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.l(iP, U(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 64:
                    if (C(obj, iP, i17)) {
                        I = CodedOutputStream.I(iP, 0);
                        i18 += I;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.K(iP, 0L);
                        i18 += iE;
                    }
                    break;
                case 66:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.M(iP, U(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 67:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.O(iP, V(obj, jQ));
                        i18 += iE;
                    }
                    break;
                case 68:
                    if (C(obj, iP, i17)) {
                        iE = CodedOutputStream.t(iP, (n0) unsafe.getObject(obj, jQ), p(i17));
                        i18 += iE;
                    }
                    break;
                default:
                    break;
            }
            i17 += 3;
            i15 = i10;
            i16 = i11;
            i14 = 1048575;
        }
        int iR = i18 + r(this.f8584o, obj);
        return this.f8575f ? iR + this.f8585p.c(obj).i() : iR;
    }

    @Override
    public int hashCode(Object obj) {
        int i10;
        int iF;
        int length = this.f8570a.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iO0 = o0(i12);
            int iP = P(i12);
            long jQ = Q(iO0);
            int iHashCode = 37;
            switch (n0(iO0)) {
                case 0:
                    i10 = i11 * 53;
                    iF = w.f(Double.doubleToLongBits(k1.A(obj, jQ)));
                    i11 = i10 + iF;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iF = Float.floatToIntBits(k1.B(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iF = w.c(k1.t(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iF = ((String) k1.G(obj, jQ)).hashCode();
                    i11 = i10 + iF;
                    break;
                case 9:
                    Object objG = k1.G(obj, jQ);
                    if (objG != null) {
                        iHashCode = objG.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i11 = i10 + iF;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iF = k1.C(obj, jQ);
                    i11 = i10 + iF;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iF = w.f(k1.E(obj, jQ));
                    i11 = i10 + iF;
                    break;
                case 17:
                    Object objG2 = k1.G(obj, jQ);
                    if (objG2 != null) {
                        iHashCode = objG2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
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
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
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
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i10 = i11 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i11 = i10 + iF;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iF = k1.G(obj, jQ).hashCode();
                    i11 = i10 + iF;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(Double.doubleToLongBits(S(obj, jQ)));
                        i11 = i10 + iF;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = Float.floatToIntBits(T(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(V(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(V(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(V(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case 57:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.c(R(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case 59:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = ((String) k1.G(obj, jQ)).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 60:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 61:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
                case 62:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case 63:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case 64:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(V(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case 66:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = U(obj, jQ);
                        i11 = i10 + iF;
                    }
                    break;
                case 67:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = w.f(V(obj, jQ));
                        i11 = i10 + iF;
                    }
                    break;
                case 68:
                    if (C(obj, iP, i12)) {
                        i10 = i11 * 53;
                        iF = k1.G(obj, jQ).hashCode();
                        i11 = i10 + iF;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.f8584o.g(obj).hashCode();
        return this.f8575f ? (iHashCode2 * 53) + this.f8585p.c(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override
    public final boolean isInitialized(Object obj) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f8580k) {
            int i15 = this.f8579j[i14];
            int iP = P(i15);
            int iO0 = o0(i15);
            int i16 = this.f8570a[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = f8569s.getInt(obj, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (D(iO0) && !v(obj, i15, i10, i11, i18)) {
                return false;
            }
            int iN0 = n0(iO0);
            if (iN0 == 9 || iN0 == 17) {
                if (v(obj, i15, i10, i11, i18) && !w(obj, iO0, p(i15))) {
                    return false;
                }
            } else if (iN0 == 27) {
                if (!y(obj, iO0, i15)) {
                    return false;
                }
            } else if (iN0 == 60 || iN0 == 68) {
                if (C(obj, iP, i15) && !w(obj, iO0, p(i15))) {
                    return false;
                }
            } else if (iN0 != 49) {
                if (iN0 == 50 && !z(obj, iO0, i15)) {
                    return false;
                }
            } else if (!y(obj, iO0, i15)) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.f8575f || this.f8585p.c(obj).m();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[SYNTHETIC] */
    @Override
    public void makeImmutable(Object obj) {
        if (A(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.l();
                generatedMessageLite.k();
                generatedMessageLite.B();
            }
            int length = this.f8570a.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int iO0 = o0(i10);
                long jQ = Q(iO0);
                int iN0 = n0(iO0);
                if (iN0 != 9) {
                    if (iN0 != 60 && iN0 != 68) {
                        switch (iN0) {
                            case 17:
                                if (u(obj, i10)) {
                                    p(i10).makeImmutable(f8569s.getObject(obj, jQ));
                                }
                                break;
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
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
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
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.f8583n.a(obj, jQ);
                                break;
                            case 50:
                                Unsafe unsafe = f8569s;
                                Object object = unsafe.getObject(obj, jQ);
                                if (object != null) {
                                    unsafe.putObject(obj, jQ, this.f8586q.toImmutable(object));
                                }
                                break;
                        }
                    } else if (C(obj, P(i10), i10)) {
                        p(i10).makeImmutable(f8569s.getObject(obj, jQ));
                    }
                } else if (u(obj, i10)) {
                    p(i10).makeImmutable(f8569s.getObject(obj, jQ));
                }
            }
            this.f8584o.j(obj);
            if (this.f8575f) {
                this.f8585p.f(obj);
            }
        }
    }

    @Override
    public void mergeFrom(Object obj, Object obj2) {
        f(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.f8570a.length; i10 += 3) {
            J(obj, obj2, i10);
        }
        d1.F(this.f8584o, obj, obj2);
        if (this.f8575f) {
            d1.D(this.f8585p, obj, obj2);
        }
    }

    @Override
    public Object newInstance() {
        return this.f8582m.newInstance(this.f8574e);
    }
}
