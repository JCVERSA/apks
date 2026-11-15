package org.mozilla.classfile;

import androidx.exifinterface.media.ExifInterface;
import defpackage.aq3;
import defpackage.bcb;
import defpackage.oe3;
import defpackage.vw0;
import defpackage.ww0;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import javassist.compiler.ast.MethodDecl;
import org.apache.commons.io.IOUtils;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.UintMap;

public class ClassFileWriter {
    public static final short ACC_ABSTRACT = 1024;
    public static final short ACC_FINAL = 16;
    public static final short ACC_NATIVE = 256;
    public static final short ACC_PRIVATE = 2;
    public static final short ACC_PROTECTED = 4;
    public static final short ACC_PUBLIC = 1;
    public static final short ACC_STATIC = 8;
    public static final short ACC_SUPER = 32;
    public static final short ACC_SYNCHRONIZED = 32;
    public static final short ACC_TRANSIENT = 128;
    public static final short ACC_VOLATILE = 64;
    private static final boolean DEBUGCODE = false;
    private static final boolean DEBUGLABELS = false;
    private static final boolean DEBUGSTACK = false;
    private static final int ExceptionTableSize = 4;
    private static final int FileHeaderConstant = -889275714;
    private static final boolean GenerateStackMap;
    private static final int LineNumberTableSize = 16;
    private static final int MIN_FIXUP_TABLE_SIZE = 40;
    private static final int MIN_LABEL_TABLE_SIZE = 32;
    private static final int MajorVersion;
    private static final int MinorVersion;
    private static final int SuperBlockStartsSize = 4;
    private String generatedClassName;
    private ObjArray itsBootstrapMethods;
    private int itsCodeBufferTop;
    private org.mozilla.classfile.a itsConstantPool;
    private ww0 itsCurrentMethod;
    private oe3[] itsExceptionTable;
    private int itsExceptionTableTop;
    private long[] itsFixupTable;
    private int itsFixupTableTop;
    private short itsFlags;
    private int[] itsLabelTable;
    private int itsLabelTableTop;
    private int[] itsLineNumberTable;
    private int itsLineNumberTableTop;
    private short itsMaxLocals;
    private short itsMaxStack;
    private short itsSourceFileNameIndex;
    private short itsStackTop;
    private short itsSuperClassIndex;
    private short itsThisClassIndex;
    private ObjArray itsVarDescriptors;
    private int[] itsSuperBlockStarts = null;
    private int itsSuperBlockStartsTop = 0;
    private UintMap itsJumpFroms = null;
    private byte[] itsCodeBuffer = new byte[256];
    private ObjArray itsMethods = new ObjArray();
    private ObjArray itsFields = new ObjArray();
    private ObjArray itsInterfaces = new ObjArray();
    private int itsBootstrapMethodsLength = 0;
    private char[] tmpCharBuffer = new char[64];

    public static class ClassFileFormatException extends RuntimeException {
        private static final long serialVersionUID = 1263998431033790599L;

        public ClassFileFormatException(String str) {
            super(str);
        }
    }

    public static final class MHandle {
        final String desc;
        final String name;
        final String owner;
        final byte tag;

        public MHandle(byte b, String str, String str2, String str3) {
            this.tag = b;
            this.owner = str;
            this.name = str2;
            this.desc = str3;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MHandle)) {
                return false;
            }
            MHandle mHandle = (MHandle) obj;
            return this.tag == mHandle.tag && this.owner.equals(mHandle.owner) && this.name.equals(mHandle.name) && this.desc.equals(mHandle.desc);
        }

        public int hashCode() {
            return this.tag + (this.owner.hashCode() * this.name.hashCode() * this.desc.hashCode());
        }

        public String toString() {
            return this.owner + '.' + this.name + this.desc + " (" + ((int) this.tag) + ')';
        }
    }

    public final class a {
        public final byte[] a;

        public a(MHandle mHandle, Object... objArr) {
            byte[] bArr = new byte[(objArr.length * 2) + 4];
            this.a = bArr;
            ClassFileWriter.putInt16(ClassFileWriter.this.itsConstantPool.k(mHandle), bArr, 0);
            ClassFileWriter.putInt16(objArr.length, bArr, 2);
            for (int i = 0; i < objArr.length; i++) {
                ClassFileWriter.putInt16(ClassFileWriter.this.itsConstantPool.f(objArr[i]), this.a, (i * 2) + 4);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Arrays.equals(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return ~Arrays.hashCode(this.a);
        }
    }

    public final class b {
        public org.mozilla.classfile.b[] g = null;
        public int[] c = null;
        public int[] a = null;
        public org.mozilla.classfile.b[] e = null;
        public byte[] h = null;
        public int b = 0;
        public int d = 0;
        public int f = 0;
        public int i = 0;
        public boolean j = false;

        public b() {
        }

        public final void A(long j) {
            z((int) (j & 16777215));
            long j2 = j >>> 32;
            if (j2 != 0) {
                z((int) (j2 & 16777215));
            }
        }

        public final void B(int i, int i2) {
            int i3 = this.b;
            if (i >= i3) {
                int i4 = i + 1;
                int[] iArr = new int[i4];
                System.arraycopy(this.a, 0, iArr, 0, i3);
                this.a = iArr;
                this.b = i4;
            }
            this.a[i] = i2;
        }

        public final void C() {
            int[] iArrCreateInitialLocals = ClassFileWriter.this.createInitialLocals();
            int i = 0;
            this.g[0].i(iArrCreateInitialLocals, iArrCreateInitialLocals.length, new int[0], 0, ClassFileWriter.this.itsConstantPool);
            this.e = new org.mozilla.classfile.b[]{this.g[0]};
            this.f = 1;
            j();
            while (true) {
                org.mozilla.classfile.b[] bVarArr = this.g;
                if (i >= bVarArr.length) {
                    j();
                    return;
                }
                org.mozilla.classfile.b bVar = bVarArr[i];
                if (!bVar.h()) {
                    w(bVar);
                }
                i++;
            }
        }

        public int D(byte[] bArr, int i) {
            int iPutInt16 = ClassFileWriter.putInt16(this.g.length - 1, bArr, ClassFileWriter.putInt32(this.i + 2, bArr, i));
            System.arraycopy(this.h, 0, bArr, iPutInt16, this.i);
            return iPutInt16 + this.i;
        }

        public final void E(int[] iArr, int i, int i2) {
            int length = iArr.length - i;
            byte[] bArr = this.h;
            int i3 = this.i;
            int i4 = i3 + 1;
            this.i = i4;
            bArr[i3] = (byte) (i + 251);
            this.i = ClassFileWriter.putInt16(i2, bArr, i4);
            this.i = L(iArr, length);
        }

        public final void F(int i, int i2) {
            byte[] bArr = this.h;
            int i3 = this.i;
            int i4 = i3 + 1;
            this.i = i4;
            bArr[i3] = (byte) (251 - i);
            this.i = ClassFileWriter.putInt16(i2, bArr, i4);
        }

        public final void G(int[] iArr, int[] iArr2, int i) {
            byte[] bArr = this.h;
            int i2 = this.i;
            int i3 = i2 + 1;
            this.i = i3;
            bArr[i2] = -1;
            int iPutInt16 = ClassFileWriter.putInt16(i, bArr, i3);
            this.i = iPutInt16;
            this.i = ClassFileWriter.putInt16(iArr.length, this.h, iPutInt16);
            int iK = K(iArr);
            this.i = iK;
            this.i = ClassFileWriter.putInt16(iArr2.length, this.h, iK);
            this.i = K(iArr2);
        }

        public final void H(int i) {
            if (i <= 63) {
                byte[] bArr = this.h;
                int i2 = this.i;
                this.i = i2 + 1;
                bArr[i2] = (byte) i;
                return;
            }
            byte[] bArr2 = this.h;
            int i3 = this.i;
            int i4 = i3 + 1;
            this.i = i4;
            bArr2[i3] = -5;
            this.i = ClassFileWriter.putInt16(i, bArr2, i4);
        }

        public final void I(int[] iArr, int i) {
            if (i <= 63) {
                byte[] bArr = this.h;
                int i2 = this.i;
                this.i = i2 + 1;
                bArr[i2] = (byte) (i + 64);
            } else {
                byte[] bArr2 = this.h;
                int i3 = this.i;
                int i4 = i3 + 1;
                this.i = i4;
                bArr2[i3] = -9;
                this.i = ClassFileWriter.putInt16(i, bArr2, i4);
            }
            J(iArr[0]);
        }

        public final int J(int i) {
            int i2 = i & 255;
            byte[] bArr = this.h;
            int i3 = this.i;
            int i4 = i3 + 1;
            this.i = i4;
            bArr[i3] = (byte) i2;
            if (i2 == 7 || i2 == 8) {
                this.i = ClassFileWriter.putInt16(i >>> 8, bArr, i4);
            }
            return this.i;
        }

        public final int K(int[] iArr) {
            return L(iArr, 0);
        }

        public final int L(int[] iArr, int i) {
            while (i < iArr.length) {
                this.i = J(iArr[i]);
                i++;
            }
            return this.i;
        }

        public final void a(org.mozilla.classfile.b bVar) {
            if (bVar.g()) {
                return;
            }
            bVar.k(true);
            bVar.l(true);
            int i = this.f;
            org.mozilla.classfile.b[] bVarArr = this.e;
            if (i == bVarArr.length) {
                org.mozilla.classfile.b[] bVarArr2 = new org.mozilla.classfile.b[i * 2];
                System.arraycopy(bVarArr, 0, bVarArr2, 0, i);
                this.e = bVarArr2;
            }
            org.mozilla.classfile.b[] bVarArr3 = this.e;
            int i2 = this.f;
            this.f = i2 + 1;
            bVarArr3[i2] = bVar;
        }

        public final void b() {
            this.d = 0;
        }

        public final void c() {
            int[] iArrF = this.g[0].f();
            int iE = -1;
            int i = 1;
            while (true) {
                org.mozilla.classfile.b[] bVarArr = this.g;
                if (i >= bVarArr.length) {
                    return;
                }
                org.mozilla.classfile.b bVar = bVarArr[i];
                int[] iArrF2 = bVar.f();
                int[] iArrD = bVar.d();
                int iE2 = (bVar.e() - iE) - 1;
                if (iArrD.length == 0) {
                    int length = iArrF.length > iArrF2.length ? iArrF2.length : iArrF.length;
                    int iAbs = Math.abs(iArrF.length - iArrF2.length);
                    int i2 = 0;
                    while (i2 < length && iArrF[i2] == iArrF2[i2]) {
                        i2++;
                    }
                    if (i2 == iArrF2.length && iAbs == 0) {
                        H(iE2);
                    } else if (i2 == iArrF2.length && iAbs <= 3) {
                        F(iAbs, iE2);
                    } else if (i2 != iArrF.length || iAbs > 3) {
                        G(iArrF2, iArrD, iE2);
                    } else {
                        E(iArrF2, iAbs, iE2);
                    }
                } else if (iArrD.length != 1) {
                    G(iArrF2, iArrD, iE2);
                } else if (Arrays.equals(iArrF, iArrF2)) {
                    I(iArrD, iE2);
                } else {
                    G(iArrF2, iArrD, iE2);
                }
                iE = bVar.e();
                i++;
                iArrF = iArrF2;
            }
        }

        public int d() {
            this.h = new byte[r()];
            c();
            return this.i + 2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:121:0x03ae  */
        /* JADX WARN: Code duplicated, block: B:124:0x03b8  */
        public final int e(int i) {
            int iOpcodeLength;
            int iX;
            int iH;
            int i2 = ClassFileWriter.this.itsCodeBuffer[i] & 255;
            switch (i2) {
                case 0:
                case 132:
                case 167:
                case 200:
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j && i2 != 196) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 1:
                    z(5);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 16:
                case 17:
                case 21:
                case 26:
                case 27:
                case 28:
                case 29:
                    z(1);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 9:
                case 10:
                case 22:
                case 30:
                case 31:
                case 32:
                case 33:
                    z(4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 11:
                case 12:
                case 13:
                case 23:
                case 34:
                case 35:
                case 36:
                case 37:
                    z(2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 14:
                case 15:
                case 24:
                case 38:
                case 39:
                case 40:
                case 41:
                    z(3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 18:
                case 19:
                case 20:
                    byte bQ = ClassFileWriter.this.itsConstantPool.q(i2 == 18 ? o(i + 1) : p(i + 1, 2));
                    if (bQ == 3) {
                        z(1);
                    } else if (bQ == 4) {
                        z(2);
                    } else if (bQ == 5) {
                        z(4);
                    } else if (bQ == 6) {
                        z(3);
                    } else {
                        if (bQ != 8) {
                            throw new IllegalArgumentException("bad const type " + ((int) bQ));
                        }
                        z(bcb.b("java/lang/String", ClassFileWriter.this.itsConstantPool));
                    }
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 25:
                    f(p(i + 1, this.j ? 2 : 1));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 42:
                case 43:
                case 44:
                case 45:
                    f(i2 - 42);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 46:
                case 51:
                case 52:
                case 53:
                case 96:
                case 100:
                case 104:
                case 108:
                case 112:
                case 120:
                case 122:
                case 124:
                case 126:
                case 128:
                case 130:
                case 148:
                case 149:
                case 150:
                case 151:
                case 152:
                    x();
                    x();
                    z(1);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 47:
                case 97:
                case 101:
                case 105:
                case 109:
                case 113:
                case 121:
                case 123:
                case 125:
                case 127:
                case 129:
                case 131:
                    x();
                    x();
                    z(4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 48:
                case 98:
                case 102:
                case 106:
                case 110:
                case 114:
                    x();
                    x();
                    z(2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 49:
                case 99:
                case 103:
                case 107:
                case 111:
                case 115:
                    x();
                    x();
                    z(3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 50:
                    x();
                    String str = (String) ClassFileWriter.this.itsConstantPool.p(x() >>> 8);
                    if (str.charAt(0) != '[') {
                        throw new IllegalStateException("bad array type");
                    }
                    z(bcb.a(ClassFileWriter.this.itsConstantPool.a(ClassFileWriter.descriptorToInternalName(str.substring(1)))));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 54:
                    i(p(i + 1, this.j ? 2 : 1), 1);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 55:
                    i(p(i + 1, this.j ? 2 : 1), 4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 56:
                    i(p(i + 1, this.j ? 2 : 1), 2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 57:
                    i(p(i + 1, this.j ? 2 : 1), 3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 58:
                    g(p(i + 1, this.j ? 2 : 1));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 59:
                case 60:
                case 61:
                case 62:
                    i(i2 - 59, 1);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 63:
                case 64:
                case 65:
                case 66:
                    i(i2 - 63, 4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 67:
                case 68:
                case 69:
                case 70:
                    i(i2 - 67, 2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 71:
                case 72:
                case 73:
                case 74:
                    i(i2 - 71, 3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 75:
                case 76:
                case 77:
                case 78:
                    g(i2 - 75);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                case 85:
                case 86:
                    x();
                    x();
                    x();
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 87:
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case ByteCode.PUTSTATIC:
                case 194:
                case ByteCode.MONITOREXIT:
                case 198:
                case 199:
                    x();
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 88:
                    y();
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 89:
                    int iX2 = x();
                    z(iX2);
                    z(iX2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 90:
                    int iX3 = x();
                    int iX4 = x();
                    z(iX3);
                    z(iX4);
                    z(iX3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 91:
                    int iX5 = x();
                    long jY = y();
                    z(iX5);
                    A(jY);
                    z(iX5);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 92:
                    long jY2 = y();
                    A(jY2);
                    A(jY2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 93:
                    long jY3 = y();
                    int iX6 = x();
                    A(jY3);
                    z(iX6);
                    A(jY3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 94:
                    long jY4 = y();
                    long jY5 = y();
                    A(jY4);
                    A(jY5);
                    A(jY4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 95:
                    int iX7 = x();
                    int iX8 = x();
                    z(iX7);
                    z(iX8);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 116:
                case 136:
                case 139:
                case 142:
                case 145:
                case 146:
                case 147:
                case ByteCode.ARRAYLENGTH:
                case 193:
                    x();
                    z(1);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 117:
                case 133:
                case 140:
                case 143:
                    x();
                    z(4);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 118:
                case 134:
                case 137:
                case 144:
                    x();
                    z(2);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 119:
                case 135:
                case 138:
                case 141:
                    x();
                    z(3);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 181:
                    x();
                    x();
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case ByteCode.JSR:
                case 169:
                case ByteCode.LOOKUPSWITCH:
                case ByteCode.MULTIANEWARRAY:
                default:
                    throw new IllegalArgumentException("bad opcode: " + i2);
                case 170:
                    int i3 = i + 1 + ((~i) & 3);
                    iOpcodeLength = ((((p(i3 + 8, 4) - p(i3 + 4, 4)) + 4) * 4) + i3) - i;
                    x();
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 172:
                case ByteCode.LRETURN:
                case ByteCode.FRETURN:
                case ByteCode.DRETURN:
                case 176:
                case 177:
                    b();
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 178:
                    z(bcb.d(ClassFileWriter.descriptorToInternalName(((aq3) ClassFileWriter.this.itsConstantPool.p(p(i + 1, 2))).b()), ClassFileWriter.this.itsConstantPool));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 180:
                    x();
                    z(bcb.d(ClassFileWriter.descriptorToInternalName(((aq3) ClassFileWriter.this.itsConstantPool.p(p(i + 1, 2))).b()), ClassFileWriter.this.itsConstantPool));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 182:
                case 183:
                case 184:
                case 185:
                    aq3 aq3Var = (aq3) ClassFileWriter.this.itsConstantPool.p(p(i + 1, 2));
                    String strB = aq3Var.b();
                    String strA = aq3Var.a();
                    int iSizeOfParameters = ClassFileWriter.sizeOfParameters(strB) >>> 16;
                    for (int i4 = 0; i4 < iSizeOfParameters; i4++) {
                        x();
                    }
                    if (i2 != 184 && ((iH = bcb.h((iX = x()))) == bcb.c(0) || iH == 6)) {
                        if (!MethodDecl.initName.equals(strA)) {
                            throw new IllegalStateException("bad instance");
                        }
                        s(iX, bcb.a(ClassFileWriter.this.itsThisClassIndex));
                    }
                    String strDescriptorToInternalName = ClassFileWriter.descriptorToInternalName(strB.substring(strB.indexOf(41) + 1));
                    if (!strDescriptorToInternalName.equals(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
                        z(bcb.d(strDescriptorToInternalName, ClassFileWriter.this.itsConstantPool));
                    }
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case ByteCode.INVOKEDYNAMIC:
                    String str2 = (String) ClassFileWriter.this.itsConstantPool.p(p(i + 1, 2));
                    int iSizeOfParameters2 = ClassFileWriter.sizeOfParameters(str2) >>> 16;
                    for (int i5 = 0; i5 < iSizeOfParameters2; i5++) {
                        x();
                    }
                    String strDescriptorToInternalName2 = ClassFileWriter.descriptorToInternalName(str2.substring(str2.indexOf(41) + 1));
                    if (!strDescriptorToInternalName2.equals(ExifInterface.GPS_MEASUREMENT_INTERRUPTED)) {
                        z(bcb.d(strDescriptorToInternalName2, ClassFileWriter.this.itsConstantPool));
                    }
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 187:
                    z(bcb.c(i));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 188:
                    x();
                    char cArrayTypeToName = ClassFileWriter.arrayTypeToName(ClassFileWriter.this.itsCodeBuffer[i + 1]);
                    z(bcb.a(ClassFileWriter.this.itsConstantPool.a("[" + cArrayTypeToName)));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 189:
                    String str3 = (String) ClassFileWriter.this.itsConstantPool.p(p(i + 1, 2));
                    x();
                    z(bcb.b("[L" + str3 + ';', ClassFileWriter.this.itsConstantPool));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case ByteCode.ATHROW:
                    int iX9 = x();
                    b();
                    z(iX9);
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 192:
                    x();
                    z(bcb.a(p(i + 1, 2)));
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
                case 196:
                    this.j = true;
                    iOpcodeLength = 0;
                    if (iOpcodeLength == 0) {
                        iOpcodeLength = ClassFileWriter.opcodeLength(i2, this.j);
                    }
                    if (this.j) {
                        this.j = false;
                    }
                    return iOpcodeLength;
            }
        }

        public final void f(int i) {
            int iN = n(i);
            int iH = bcb.h(iN);
            if (iH == 7 || iH == 6 || iH == 8 || iH == 5) {
                z(iN);
                return;
            }
            throw new IllegalStateException("bad local variable type: " + iN + " at index: " + i);
        }

        public final void g(int i) {
            B(i, x());
        }

        public final void h(org.mozilla.classfile.b bVar) {
            int iE = bVar.e();
            int i = 0;
            while (iE < bVar.a()) {
                i = ClassFileWriter.this.itsCodeBuffer[iE] & 255;
                int iE2 = e(iE);
                if (u(i)) {
                    k(m(iE));
                } else if (i == 170) {
                    int i2 = iE + 1 + ((~iE) & 3);
                    k(q(p(i2, 4) + iE));
                    int iP = (p(i2 + 8, 4) - p(i2 + 4, 4)) + 1;
                    int i3 = i2 + 12;
                    for (int i4 = 0; i4 < iP; i4++) {
                        k(q(p((i4 * 4) + i3, 4) + iE));
                    }
                }
                for (int i5 = 0; i5 < ClassFileWriter.this.itsExceptionTableTop; i5++) {
                    oe3 oe3Var = ClassFileWriter.this.itsExceptionTable[i5];
                    int labelPC = ClassFileWriter.this.getLabelPC(oe3Var.a);
                    int labelPC2 = ClassFileWriter.this.getLabelPC(oe3Var.b);
                    if (iE >= labelPC && iE < labelPC2) {
                        org.mozilla.classfile.b bVarQ = q(ClassFileWriter.this.getLabelPC(oe3Var.c));
                        short s = oe3Var.d;
                        bVarQ.i(this.a, this.b, new int[]{s == 0 ? bcb.a(ClassFileWriter.this.itsConstantPool.a("java/lang/Throwable")) : bcb.a(s)}, 1, ClassFileWriter.this.itsConstantPool);
                        a(bVarQ);
                    }
                }
                iE += iE2;
            }
            if (v(i)) {
                return;
            }
            int iB = bVar.b() + 1;
            org.mozilla.classfile.b[] bVarArr = this.g;
            if (iB < bVarArr.length) {
                k(bVarArr[iB]);
            }
        }

        public final void i(int i, int i2) {
            x();
            B(i, i2);
        }

        public final void j() {
            while (true) {
                int i = this.f;
                if (i <= 0) {
                    return;
                }
                org.mozilla.classfile.b[] bVarArr = this.e;
                int i2 = i - 1;
                this.f = i2;
                org.mozilla.classfile.b bVar = bVarArr[i2];
                bVar.k(false);
                this.a = bVar.c();
                int[] iArrD = bVar.d();
                this.c = iArrD;
                this.b = this.a.length;
                this.d = iArrD.length;
                h(bVar);
            }
        }

        public final void k(org.mozilla.classfile.b bVar) {
            if (bVar.i(this.a, this.b, this.c, this.d, ClassFileWriter.this.itsConstantPool)) {
                a(bVar);
            }
        }

        public void l() {
            this.g = new org.mozilla.classfile.b[ClassFileWriter.this.itsSuperBlockStartsTop];
            int[] iArrCreateInitialLocals = ClassFileWriter.this.createInitialLocals();
            int i = 0;
            while (i < ClassFileWriter.this.itsSuperBlockStartsTop) {
                this.g[i] = new org.mozilla.classfile.b(i, ClassFileWriter.this.itsSuperBlockStarts[i], i == ClassFileWriter.this.itsSuperBlockStartsTop + (-1) ? ClassFileWriter.this.itsCodeBufferTop : ClassFileWriter.this.itsSuperBlockStarts[i + 1], iArrCreateInitialLocals);
                i++;
            }
            C();
        }

        public final org.mozilla.classfile.b m(int i) {
            return q(i + ((ClassFileWriter.this.itsCodeBuffer[i] & 255) == 200 ? p(i + 1, 4) : (short) p(i + 1, 2)));
        }

        public final int n(int i) {
            if (i < this.b) {
                return this.a[i];
            }
            return 0;
        }

        public final int o(int i) {
            return p(i, 1);
        }

        public final int p(int i, int i2) {
            if (i2 > 4) {
                throw new IllegalArgumentException("bad operand size");
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 = (i3 << 8) | (ClassFileWriter.this.itsCodeBuffer[i + i4] & 255);
            }
            return i3;
        }

        public final org.mozilla.classfile.b q(int i) {
            org.mozilla.classfile.b bVar;
            int i2 = 0;
            while (true) {
                org.mozilla.classfile.b[] bVarArr = this.g;
                if (i2 >= bVarArr.length || (bVar = bVarArr[i2]) == null) {
                    break;
                }
                if (i >= bVar.e() && i < bVar.a()) {
                    return bVar;
                }
                i2++;
            }
            throw new IllegalArgumentException("bad offset: " + i);
        }

        public final int r() {
            return (this.g.length - 1) * ((ClassFileWriter.this.itsMaxLocals * 3) + 7 + (ClassFileWriter.this.itsMaxStack * 3));
        }

        public final void s(int i, int i2) {
            t(i, i2, this.a, this.b);
            t(i, i2, this.c, this.d);
        }

        public final void t(int i, int i2, int[] iArr, int i3) {
            for (int i4 = 0; i4 < i3; i4++) {
                if (iArr[i4] == i) {
                    iArr[i4] = i2;
                }
            }
        }

        public final boolean u(int i) {
            switch (i) {
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                    return true;
                default:
                    switch (i) {
                        case 198:
                        case 199:
                        case 200:
                            return true;
                        default:
                            return false;
                    }
            }
        }

        public final boolean v(int i) {
            if (i == 167 || i == 191 || i == 200 || i == 176 || i == 177) {
                return true;
            }
            switch (i) {
                case 170:
                case ByteCode.LOOKUPSWITCH:
                case 172:
                case ByteCode.LRETURN:
                case ByteCode.FRETURN:
                    return true;
                default:
                    return false;
            }
        }

        public final void w(org.mozilla.classfile.b bVar) {
            int[] iArrC = new int[0];
            int[] iArr = {bcb.b("java/lang/Throwable", ClassFileWriter.this.itsConstantPool)};
            for (int i = 0; i < ClassFileWriter.this.itsExceptionTableTop; i++) {
                oe3 oe3Var = ClassFileWriter.this.itsExceptionTable[i];
                int labelPC = ClassFileWriter.this.getLabelPC(oe3Var.a);
                int labelPC2 = ClassFileWriter.this.getLabelPC(oe3Var.b);
                org.mozilla.classfile.b bVarQ = q(ClassFileWriter.this.getLabelPC(oe3Var.c));
                if ((bVar.e() > labelPC && bVar.e() < labelPC2) || (labelPC > bVar.e() && labelPC < bVar.a() && bVarQ.h())) {
                    iArrC = bVarQ.c();
                    break;
                }
            }
            int[] iArr2 = iArrC;
            int i2 = 0;
            while (i2 < ClassFileWriter.this.itsExceptionTableTop) {
                if (ClassFileWriter.this.getLabelPC(ClassFileWriter.this.itsExceptionTable[i2].a) == bVar.e()) {
                    for (int i3 = i2 + 1; i3 < ClassFileWriter.this.itsExceptionTableTop; i3++) {
                        ClassFileWriter.this.itsExceptionTable[i3 - 1] = ClassFileWriter.this.itsExceptionTable[i3];
                    }
                    ClassFileWriter.access$410(ClassFileWriter.this);
                    i2--;
                }
                i2++;
            }
            bVar.i(iArr2, iArr2.length, iArr, 1, ClassFileWriter.this.itsConstantPool);
            int iA = bVar.a() - 1;
            ClassFileWriter.this.itsCodeBuffer[iA] = -65;
            for (int iE = bVar.e(); iE < iA; iE++) {
                ClassFileWriter.this.itsCodeBuffer[iE] = 0;
            }
        }

        public final int x() {
            int[] iArr = this.c;
            int i = this.d - 1;
            this.d = i;
            return iArr[i];
        }

        public final long y() {
            long jX = x();
            return bcb.i((int) jX) ? jX : (jX << 32) | ((long) (x() & 16777215));
        }

        public final void z(int i) {
            int i2 = this.d;
            if (i2 == this.c.length) {
                int[] iArr = new int[Math.max(i2 * 2, 4)];
                System.arraycopy(this.c, 0, iArr, 0, this.d);
                this.c = iArr;
            }
            int[] iArr2 = this.c;
            int i3 = this.d;
            this.d = i3 + 1;
            iArr2[i3] = i;
        }
    }

    static {
        int i;
        InputStream resourceAsStream = null;
        try {
            resourceAsStream = ClassFileWriter.class.getResourceAsStream("ClassFileWriter.class");
            if (resourceAsStream == null) {
                resourceAsStream = ClassLoader.getSystemResourceAsStream("org/mozilla/classfile/ClassFileWriter.class");
            }
            byte[] bArr = new byte[8];
            int i2 = 0;
            while (i2 < 8) {
                int i3 = resourceAsStream.read(bArr, i2, 8 - i2);
                if (i3 < 0) {
                    throw new IOException();
                }
                i2 += i3;
            }
            i = (bArr[4] << 8) | (bArr[5] & 255);
            try {
                int i4 = (bArr[7] & 255) | (bArr[6] << 8);
                MinorVersion = i;
                MajorVersion = i4;
                GenerateStackMap = i4 >= 50;
                if (resourceAsStream == null) {
                    return;
                }
            } catch (Exception unused) {
                MinorVersion = i;
                MajorVersion = 48;
                GenerateStackMap = false;
                if (resourceAsStream == null) {
                    return;
                }
            } catch (Throwable th) {
                th = th;
                MinorVersion = i;
                MajorVersion = 48;
                GenerateStackMap = false;
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception unused3) {
            i = 0;
        } catch (Throwable th2) {
            th = th2;
            i = 0;
        }
        try {
            resourceAsStream.close();
        } catch (IOException unused4) {
        }
    }

    public ClassFileWriter(String str, String str2, String str3) {
        this.generatedClassName = str;
        org.mozilla.classfile.a aVar = new org.mozilla.classfile.a(this);
        this.itsConstantPool = aVar;
        this.itsThisClassIndex = aVar.a(str);
        this.itsSuperClassIndex = this.itsConstantPool.a(str2);
        if (str3 != null) {
            this.itsSourceFileNameIndex = this.itsConstantPool.n(str3);
        }
        this.itsFlags = (short) 33;
    }

    public static int access$410(ClassFileWriter classFileWriter) {
        int i = classFileWriter.itsExceptionTableTop;
        classFileWriter.itsExceptionTableTop = i - 1;
        return i;
    }

    private void addLabelFixup(int i, int i2) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i3 = i & Integer.MAX_VALUE;
        if (i3 >= this.itsLabelTableTop) {
            throw new IllegalArgumentException("Bad label");
        }
        int i4 = this.itsFixupTableTop;
        long[] jArr = this.itsFixupTable;
        if (jArr == null || i4 == jArr.length) {
            if (jArr == null) {
                this.itsFixupTable = new long[40];
            } else {
                long[] jArr2 = new long[jArr.length * 2];
                System.arraycopy(jArr, 0, jArr2, 0, i4);
                this.itsFixupTable = jArr2;
            }
        }
        this.itsFixupTableTop = i4 + 1;
        this.itsFixupTable[i4] = ((long) i2) | (((long) i3) << 32);
    }

    private int addReservedCodeSpace(int i) {
        if (this.itsCurrentMethod == null) {
            throw new IllegalArgumentException("No method to add to");
        }
        int i2 = this.itsCodeBufferTop;
        int i3 = i + i2;
        byte[] bArr = this.itsCodeBuffer;
        if (i3 > bArr.length) {
            int length = bArr.length * 2;
            if (i3 > length) {
                length = i3;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.itsCodeBuffer = bArr2;
        }
        this.itsCodeBufferTop = i3;
        return i2;
    }

    private void addSuperBlockStart(int i) {
        if (GenerateStackMap) {
            int[] iArr = this.itsSuperBlockStarts;
            if (iArr == null) {
                this.itsSuperBlockStarts = new int[4];
            } else {
                int length = iArr.length;
                int i2 = this.itsSuperBlockStartsTop;
                if (length == i2) {
                    int[] iArr2 = new int[i2 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, i2);
                    this.itsSuperBlockStarts = iArr2;
                }
            }
            int[] iArr3 = this.itsSuperBlockStarts;
            int i3 = this.itsSuperBlockStartsTop;
            this.itsSuperBlockStartsTop = i3 + 1;
            iArr3[i3] = i;
        }
    }

    private void addToCodeBuffer(int i) {
        this.itsCodeBuffer[addReservedCodeSpace(1)] = (byte) i;
    }

    private void addToCodeInt16(int i) {
        putInt16(i, this.itsCodeBuffer, addReservedCodeSpace(2));
    }

    public static char arrayTypeToName(int i) {
        switch (i) {
            case 4:
                return 'Z';
            case 5:
                return 'C';
            case 6:
                return 'F';
            case 7:
                return 'D';
            case 8:
                return 'B';
            case 9:
                return 'S';
            case 10:
                return 'I';
            case 11:
                return 'J';
            default:
                throw new IllegalArgumentException("bad operand");
        }
    }

    private static void badStack(int i) {
        String str;
        if (i < 0) {
            str = "Stack underflow: " + i;
        } else {
            str = "Too big stack: " + i;
        }
        throw new IllegalStateException(str);
    }

    private static String bytecodeStr(int i) {
        return "";
    }

    private static String classDescriptorToInternalName(String str) {
        return str.substring(1, str.length() - 1);
    }

    public static String classNameToSignature(String str) {
        int length = str.length();
        int i = length + 1;
        int i2 = length + 2;
        char[] cArr = new char[i2];
        cArr[0] = 'L';
        cArr[i] = ';';
        str.getChars(0, length, cArr, 1);
        for (int i3 = 1; i3 != i; i3++) {
            if (cArr[i3] == '.') {
                cArr[i3] = IOUtils.DIR_SEPARATOR_UNIX;
            }
        }
        return new String(cArr, 0, i2);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a9  */
    public int[] createInitialLocals() {
        int i;
        int iD;
        int i2;
        int[] iArr = new int[this.itsMaxLocals];
        if ((this.itsCurrentMethod.a() & 8) == 0) {
            if (MethodDecl.initName.equals(this.itsCurrentMethod.b())) {
                iArr[0] = 6;
            } else {
                iArr[0] = bcb.a(this.itsThisClassIndex);
            }
            i = 1;
        } else {
            i = 0;
        }
        String strC = this.itsCurrentMethod.c();
        int iIndexOf = strC.indexOf(40);
        int iIndexOf2 = strC.indexOf(41);
        if (iIndexOf != 0 || iIndexOf2 < 0) {
            throw new IllegalArgumentException("bad method type");
        }
        int i3 = iIndexOf + 1;
        StringBuilder sb = new StringBuilder();
        while (i3 < iIndexOf2) {
            char cCharAt = strC.charAt(i3);
            if (cCharAt != 'F') {
                if (cCharAt == 'L') {
                    int iIndexOf3 = strC.indexOf(59, i3) + 1;
                    sb.append(strC.substring(i3, iIndexOf3));
                    i3 = iIndexOf3;
                } else if (cCharAt != 'S' && cCharAt != 'I' && cCharAt != 'J' && cCharAt != 'Z') {
                    if (cCharAt != '[') {
                        switch (cCharAt) {
                        }
                    } else {
                        sb.append('[');
                        i3++;
                    }
                }
                iD = bcb.d(descriptorToInternalName(sb.toString()), this.itsConstantPool);
                i2 = i + 1;
                iArr[i] = iD;
                if (bcb.i(iD)) {
                    i += 2;
                } else {
                    i = i2;
                }
                sb.setLength(0);
            }
            sb.append(strC.charAt(i3));
            i3++;
            iD = bcb.d(descriptorToInternalName(sb.toString()), this.itsConstantPool);
            i2 = i + 1;
            iArr[i] = iD;
            if (bcb.i(iD)) {
                i += 2;
            } else {
                i = i2;
            }
            sb.setLength(0);
        }
        return iArr;
    }

    public static String descriptorToInternalName(String str) {
        char cCharAt = str.charAt(0);
        if (cCharAt == 'F') {
            return str;
        }
        if (cCharAt == 'L') {
            return classDescriptorToInternalName(str);
        }
        if (cCharAt == 'S' || cCharAt == 'V' || cCharAt == 'I' || cCharAt == 'J' || cCharAt == 'Z' || cCharAt == '[') {
            return str;
        }
        switch (cCharAt) {
            case 'B':
            case 'C':
            case 'D':
                return str;
            default:
                throw new IllegalArgumentException("bad descriptor:" + str);
        }
    }

    private void finalizeSuperBlockStarts() {
        if (GenerateStackMap) {
            for (int i = 0; i < this.itsExceptionTableTop; i++) {
                addSuperBlockStart(getLabelPC(this.itsExceptionTable[i].c));
            }
            Arrays.sort(this.itsSuperBlockStarts, 0, this.itsSuperBlockStartsTop);
            int i2 = this.itsSuperBlockStarts[0];
            int i3 = 1;
            for (int i4 = 1; i4 < this.itsSuperBlockStartsTop; i4++) {
                int[] iArr = this.itsSuperBlockStarts;
                int i5 = iArr[i4];
                if (i2 != i5) {
                    if (i3 != i4) {
                        iArr[i3] = i5;
                    }
                    i3++;
                    i2 = i5;
                }
            }
            this.itsSuperBlockStartsTop = i3;
            if (this.itsSuperBlockStarts[i3 - 1] == this.itsCodeBufferTop) {
                this.itsSuperBlockStartsTop = i3 - 1;
            }
        }
    }

    private void fixLabelGotos() {
        byte[] bArr = this.itsCodeBuffer;
        for (int i = 0; i < this.itsFixupTableTop; i++) {
            long j = this.itsFixupTable[i];
            int i2 = (int) (j >> 32);
            int i3 = (int) j;
            int i4 = this.itsLabelTable[i2];
            if (i4 == -1) {
                throw new RuntimeException("unlocated label");
            }
            addSuperBlockStart(i4);
            int i5 = i3 - 1;
            this.itsJumpFroms.put(i4, i5);
            int i6 = i4 - i5;
            if (((short) i6) != i6) {
                throw new ClassFileFormatException("Program too complex: too big jump offset");
            }
            bArr[i3] = (byte) (i6 >> 8);
            bArr[i3 + 1] = (byte) i6;
        }
        this.itsFixupTableTop = 0;
    }

    public static String getSlashedForm(String str) {
        return str.replace('.', IOUtils.DIR_SEPARATOR_UNIX);
    }

    private int getWriteSize() {
        if (this.itsSourceFileNameIndex != 0) {
            this.itsConstantPool.n("SourceFile");
        }
        int iS = this.itsConstantPool.s() + 16 + (this.itsInterfaces.size() * 2) + 2;
        for (int i = 0; i < this.itsFields.size(); i++) {
            iS += ((vw0) this.itsFields.get(i)).a();
        }
        int iD = iS + 2;
        for (int i2 = 0; i2 < this.itsMethods.size(); i2++) {
            iD += ((ww0) this.itsMethods.get(i2)).d();
        }
        int i3 = iD + 2;
        if (this.itsSourceFileNameIndex != 0) {
            i3 = iD + 10;
        }
        return this.itsBootstrapMethods != null ? i3 + 8 + this.itsBootstrapMethodsLength : i3;
    }

    private static int opcodeCount(int i) {
        if (i == 254 || i == 255) {
            return 0;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
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
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
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
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
            case 172:
            case ByteCode.LRETURN:
            case ByteCode.FRETURN:
            case ByteCode.DRETURN:
            case 176:
            case 177:
                return 0;
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case ByteCode.JSR:
            case 169:
            case 178:
            case ByteCode.PUTSTATIC:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
                return 1;
            case 132:
                return 2;
            case 170:
            case ByteCode.LOOKUPSWITCH:
                return -1;
            default:
                switch (i) {
                    case 187:
                    case 188:
                    case 189:
                    case 192:
                    case 193:
                    case 198:
                    case 199:
                    case 200:
                    case 201:
                        return 1;
                    case ByteCode.ARRAYLENGTH:
                    case ByteCode.ATHROW:
                    case 194:
                    case ByteCode.MONITOREXIT:
                    case 196:
                    case 202:
                        return 0;
                    case ByteCode.MULTIANEWARRAY:
                        return 2;
                    default:
                        throw new IllegalArgumentException("Bad opcode: " + i);
                }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0034 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0035 A[RETURN] */
    public static int opcodeLength(int i, boolean z) {
        if (i == 254 || i == 255) {
            return 1;
        }
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
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
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
            case 102:
            case 103:
            case 104:
            case 105:
            case 106:
            case 107:
            case 108:
            case 109:
            case 110:
            case 111:
            case 112:
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
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
                return 1;
            case 16:
            case 18:
                return 2;
            case 17:
            case 19:
            case 20:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 167:
            case ByteCode.JSR:
                return 3;
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 169:
                return z ? 3 : 2;
            case 132:
                return z ? 5 : 3;
            default:
                switch (i) {
                    case 172:
                    case ByteCode.LRETURN:
                    case ByteCode.FRETURN:
                    case ByteCode.DRETURN:
                    case 176:
                    case 177:
                    case ByteCode.ARRAYLENGTH:
                    case ByteCode.ATHROW:
                    case 194:
                    case ByteCode.MONITOREXIT:
                    case 196:
                    case 202:
                        return 1;
                    case 178:
                    case ByteCode.PUTSTATIC:
                    case 180:
                    case 181:
                    case 182:
                    case 183:
                    case 184:
                    case 187:
                    case 189:
                    case 192:
                    case 193:
                    case 198:
                    case 199:
                        return 3;
                    case 185:
                    case ByteCode.INVOKEDYNAMIC:
                    case 200:
                    case 201:
                        return 5;
                    case 188:
                        return 2;
                    case ByteCode.MULTIANEWARRAY:
                        return 4;
                    default:
                        throw new IllegalArgumentException("Bad opcode: " + i);
                }
        }
    }

    public static int putInt16(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
        return i2 + 2;
    }

    public static int putInt32(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
        return i2 + 4;
    }

    public static int putInt64(long j, byte[] bArr, int i) {
        return putInt32((int) j, bArr, putInt32((int) (j >>> 32), bArr, i));
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00af  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b1 A[PHI: r6
      0x00b1: PHI (r6v3 int) = (r6v2 int), (r6v2 int), (r6v2 int), (r6v2 int), (r6v6 int), (r6v2 int), (r6v2 int), (r6v2 int) binds: [B:47:0x0098, B:48:0x009a, B:49:0x009c, B:52:0x00a2, B:58:0x00af, B:54:0x00a6, B:55:0x00a8, B:56:0x00aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0044. Please report as an issue. */
    public static int sizeOfParameters(String str) {
        int i;
        int length = str.length();
        int iLastIndexOf = str.lastIndexOf(41);
        if (3 <= length) {
            boolean z = false;
            if (str.charAt(0) == '(' && 1 <= iLastIndexOf && (i = iLastIndexOf + 1) < length) {
                int i2 = 0;
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    if (i4 != iLastIndexOf) {
                        char cCharAt = str.charAt(i4);
                        if (cCharAt != 'F') {
                            if (cCharAt != 'L') {
                                if (cCharAt != 'S' && cCharAt != 'I') {
                                    if (cCharAt != 'J') {
                                        if (cCharAt != 'Z') {
                                            if (cCharAt != '[') {
                                                switch (cCharAt) {
                                                }
                                            } else {
                                                i4++;
                                                char cCharAt2 = str.charAt(i4);
                                                while (cCharAt2 == '[') {
                                                    i4++;
                                                    cCharAt2 = str.charAt(i4);
                                                }
                                                if (cCharAt2 != 'F') {
                                                    if (cCharAt2 != 'L') {
                                                        if (cCharAt2 != 'S' && cCharAt2 != 'Z' && cCharAt2 != 'I' && cCharAt2 != 'J') {
                                                            switch (cCharAt2) {
                                                                case 'B':
                                                                case 'C':
                                                                case 'D':
                                                                    break;
                                                                default:
                                                                    break;
                                                            }
                                                        }
                                                    }
                                                }
                                                i2--;
                                                i3++;
                                                i4++;
                                            }
                                        }
                                    }
                                    i2--;
                                }
                            }
                            i2--;
                            i3++;
                            int iIndexOf = str.indexOf(59, i4 + 1);
                            if (i4 + 2 > iIndexOf || iIndexOf >= iLastIndexOf) {
                                z = false;
                            } else {
                                i4 = iIndexOf + 1;
                                z = false;
                            }
                        }
                        i2--;
                        i3++;
                        i4++;
                        z = false;
                    } else {
                        z = true;
                    }
                }
                if (z) {
                    char cCharAt3 = str.charAt(i);
                    if (cCharAt3 != 'F' && cCharAt3 != 'L' && cCharAt3 != 'S') {
                        if (cCharAt3 != 'V') {
                            if (cCharAt3 != 'I') {
                                if (cCharAt3 != 'J') {
                                    if (cCharAt3 != 'Z' && cCharAt3 != '[') {
                                        switch (cCharAt3) {
                                            case 'D':
                                                i2++;
                                            case 'B':
                                            case 'C':
                                                i2++;
                                                break;
                                            default:
                                                z = false;
                                                break;
                                        }
                                    } else {
                                        i2++;
                                    }
                                } else {
                                    i2++;
                                    i2++;
                                }
                            } else {
                                i2++;
                            }
                        }
                    } else {
                        i2++;
                    }
                    if (z) {
                        return (i3 << 16) | (65535 & i2);
                    }
                }
            }
        }
        throw new IllegalArgumentException("Bad parameter signature: " + str);
    }

    private static int stackChange(int i) {
        if (i == 254 || i == 255) {
            return 0;
        }
        switch (i) {
            case 0:
            case 47:
            case 49:
            case 95:
            case 116:
            case 117:
            case 118:
            case 119:
            case 132:
            case 134:
            case 138:
            case 139:
            case 143:
            case 145:
            case 146:
            case 147:
            case 167:
            case 169:
            case 177:
            case 178:
            case ByteCode.PUTSTATIC:
            case 184:
            case ByteCode.INVOKEDYNAMIC:
            case 188:
            case 189:
            case ByteCode.ARRAYLENGTH:
            case 192:
            case 193:
            case 196:
            case 200:
            case 202:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 34:
            case 35:
            case 36:
            case 37:
            case 42:
            case 43:
            case 44:
            case 45:
            case 89:
            case 90:
            case 91:
            case 133:
            case 135:
            case 140:
            case 141:
            case ByteCode.JSR:
            case 187:
            case ByteCode.MULTIANEWARRAY:
            case 201:
                return 1;
            case 9:
            case 10:
            case 14:
            case 15:
            case 20:
            case 22:
            case 24:
            case 30:
            case 31:
            case 32:
            case 33:
            case 38:
            case 39:
            case 40:
            case 41:
            case 92:
            case 93:
            case 94:
                return 2;
            case 46:
            case 48:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 56:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 67:
            case 68:
            case 69:
            case 70:
            case 75:
            case 76:
            case 77:
            case 78:
            case 87:
            case 96:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 108:
            case 110:
            case 112:
            case 114:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 128:
            case 130:
            case 136:
            case 137:
            case 142:
            case 144:
            case 149:
            case 150:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 170:
            case ByteCode.LOOKUPSWITCH:
            case 172:
            case ByteCode.FRETURN:
            case 176:
            case 180:
            case 181:
            case 182:
            case 183:
            case 185:
            case ByteCode.ATHROW:
            case 194:
            case ByteCode.MONITOREXIT:
            case 198:
            case 199:
                return -1;
            case 55:
            case 57:
            case 63:
            case 64:
            case 65:
            case 66:
            case 71:
            case 72:
            case 73:
            case 74:
            case 88:
            case 97:
            case 99:
            case 101:
            case 103:
            case 105:
            case 107:
            case 109:
            case 111:
            case 113:
            case 115:
            case 127:
            case 129:
            case 131:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case ByteCode.LRETURN:
            case ByteCode.DRETURN:
                return -2;
            case 79:
            case 81:
            case 83:
            case 84:
            case 85:
            case 86:
            case 148:
            case 151:
            case 152:
                return -3;
            case 80:
            case 82:
                return -4;
            default:
                throw new IllegalArgumentException("Bad opcode: " + i);
        }
    }

    private void xop(int i, int i2, int i3) {
        if (i3 == 0) {
            add(i);
            return;
        }
        if (i3 == 1) {
            add(i + 1);
            return;
        }
        if (i3 == 2) {
            add(i + 2);
        } else if (i3 != 3) {
            add(i2, i3);
        } else {
            add(i + 3);
        }
    }

    public int acquireLabel() {
        int i = this.itsLabelTableTop;
        int[] iArr = this.itsLabelTable;
        if (iArr == null || i == iArr.length) {
            if (iArr == null) {
                this.itsLabelTable = new int[32];
            } else {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.itsLabelTable = iArr2;
            }
        }
        this.itsLabelTableTop = i + 1;
        this.itsLabelTable[i] = -1;
        return Integer.MIN_VALUE | i;
    }

    public void add(int i) {
        if (opcodeCount(i) != 0) {
            throw new IllegalArgumentException("Unexpected operands");
        }
        int iStackChange = this.itsStackTop + stackChange(i);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        addToCodeBuffer(i);
        short s = (short) iStackChange;
        this.itsStackTop = s;
        if (iStackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
        if (i == 191) {
            addSuperBlockStart(this.itsCodeBufferTop);
        }
    }

    public void addALoad(int i) {
        xop(42, 25, i);
    }

    public void addAStore(int i) {
        xop(75, 58, i);
    }

    public void addDLoad(int i) {
        xop(38, 24, i);
    }

    public void addDStore(int i) {
        xop(71, 57, i);
    }

    public void addExceptionHandler(int i, int i2, int i3, String str) {
        if ((i & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad startLabel");
        }
        if ((i2 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad endLabel");
        }
        if ((i3 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Bad handlerLabel");
        }
        oe3 oe3Var = new oe3(i, i2, i3, str == null ? (short) 0 : this.itsConstantPool.a(str));
        int i4 = this.itsExceptionTableTop;
        if (i4 == 0) {
            this.itsExceptionTable = new oe3[4];
        } else {
            oe3[] oe3VarArr = this.itsExceptionTable;
            if (i4 == oe3VarArr.length) {
                oe3[] oe3VarArr2 = new oe3[i4 * 2];
                System.arraycopy(oe3VarArr, 0, oe3VarArr2, 0, i4);
                this.itsExceptionTable = oe3VarArr2;
            }
        }
        this.itsExceptionTable[i4] = oe3Var;
        this.itsExceptionTableTop = i4 + 1;
    }

    public void addFLoad(int i) {
        xop(34, 23, i);
    }

    public void addFStore(int i) {
        xop(67, 56, i);
    }

    public void addField(String str, String str2, short s) {
        this.itsFields.add(new vw0(this.itsConstantPool.n(str), this.itsConstantPool.n(str2), s));
    }

    public void addILoad(int i) {
        xop(26, 21, i);
    }

    public void addIStore(int i) {
        xop(59, 54, i);
    }

    public void addInterface(String str) {
        this.itsInterfaces.add(Short.valueOf(this.itsConstantPool.a(str)));
    }

    public void addInvoke(int i, String str, String str2, String str3) {
        int iSizeOfParameters = sizeOfParameters(str3);
        int i2 = iSizeOfParameters >>> 16;
        int iStackChange = this.itsStackTop + ((short) iSizeOfParameters) + stackChange(i);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        switch (i) {
            case 182:
            case 183:
            case 184:
            case 185:
                addToCodeBuffer(i);
                if (i == 185) {
                    addToCodeInt16(this.itsConstantPool.i(str, str2, str3));
                    addToCodeBuffer(i2 + 1);
                    addToCodeBuffer(0);
                } else {
                    addToCodeInt16(this.itsConstantPool.l(str, str2, str3));
                }
                short s = (short) iStackChange;
                this.itsStackTop = s;
                if (iStackChange > this.itsMaxStack) {
                    this.itsMaxStack = s;
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException("bad opcode for method reference");
        }
    }

    public void addInvokeDynamic(String str, String str2, MHandle mHandle, Object... objArr) {
        if (MajorVersion < 51) {
            throw new RuntimeException("Please build and run with JDK 1.7 for invokedynamic support");
        }
        int iSizeOfParameters = this.itsStackTop + ((short) sizeOfParameters(str2));
        if (iSizeOfParameters < 0 || 32767 < iSizeOfParameters) {
            badStack(iSizeOfParameters);
        }
        a aVar = new a(mHandle, objArr);
        if (this.itsBootstrapMethods == null) {
            this.itsBootstrapMethods = new ObjArray();
        }
        int iIndexOf = this.itsBootstrapMethods.indexOf(aVar);
        if (iIndexOf == -1) {
            iIndexOf = this.itsBootstrapMethods.size();
            this.itsBootstrapMethods.add(aVar);
            this.itsBootstrapMethodsLength += aVar.a.length;
        }
        short sJ = this.itsConstantPool.j(str, str2, iIndexOf);
        addToCodeBuffer(ByteCode.INVOKEDYNAMIC);
        addToCodeInt16(sJ);
        addToCodeInt16(0);
        short s = (short) iSizeOfParameters;
        this.itsStackTop = s;
        if (iSizeOfParameters > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void addLLoad(int i) {
        xop(30, 22, i);
    }

    public void addLStore(int i) {
        xop(63, 55, i);
    }

    public void addLineNumberEntry(short s) {
        if (this.itsCurrentMethod == null) {
            throw new IllegalArgumentException("No method to stop");
        }
        int i = this.itsLineNumberTableTop;
        if (i == 0) {
            this.itsLineNumberTable = new int[16];
        } else {
            int[] iArr = this.itsLineNumberTable;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.itsLineNumberTable = iArr2;
            }
        }
        this.itsLineNumberTable[i] = (this.itsCodeBufferTop << 16) + s;
        this.itsLineNumberTableTop = i + 1;
    }

    public void addLoadConstant(int i) {
        if (i == 0) {
            add(3);
            return;
        }
        if (i == 1) {
            add(4);
            return;
        }
        if (i == 2) {
            add(5);
            return;
        }
        if (i == 3) {
            add(6);
            return;
        }
        if (i == 4) {
            add(7);
        } else if (i != 5) {
            add(18, this.itsConstantPool.d(i));
        } else {
            add(8);
        }
    }

    public void addLoadThis() {
        add(42);
    }

    public void addPush(int i) {
        byte b2 = (byte) i;
        if (b2 != i) {
            short s = (short) i;
            if (s == i) {
                add(17, s);
                return;
            } else {
                addLoadConstant(i);
                return;
            }
        }
        if (i == -1) {
            add(2);
        } else if (i < 0 || i > 5) {
            add(16, b2);
        } else {
            add((byte) (i + 3));
        }
    }

    public int addTableSwitch(int i, int i2) {
        if (i > i2) {
            throw new ClassFileFormatException("Bad bounds: " + i + ' ' + i2);
        }
        int iStackChange = this.itsStackTop + stackChange(170);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        int i3 = (~this.itsCodeBufferTop) & 3;
        int iAddReservedCodeSpace = addReservedCodeSpace(i3 + 1 + (((i2 - i) + 4) * 4));
        int i4 = iAddReservedCodeSpace + 1;
        this.itsCodeBuffer[iAddReservedCodeSpace] = -86;
        while (i3 != 0) {
            this.itsCodeBuffer[i4] = 0;
            i3--;
            i4++;
        }
        putInt32(i2, this.itsCodeBuffer, putInt32(i, this.itsCodeBuffer, i4 + 4));
        short s = (short) iStackChange;
        this.itsStackTop = s;
        if (iStackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
        return iAddReservedCodeSpace;
    }

    public void addVariableDescriptor(String str, String str2, int i, int i2) {
        int[] iArr = {this.itsConstantPool.n(str), this.itsConstantPool.n(str2), i, i2};
        if (this.itsVarDescriptors == null) {
            this.itsVarDescriptors = new ObjArray();
        }
        this.itsVarDescriptors.add(iArr);
    }

    public void adjustStackTop(int i) {
        int i2 = this.itsStackTop + i;
        if (i2 < 0 || 32767 < i2) {
            badStack(i2);
        }
        short s = (short) i2;
        this.itsStackTop = s;
        if (i2 > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public final char[] getCharBuffer(int i) {
        char[] cArr = this.tmpCharBuffer;
        if (i > cArr.length) {
            int length = cArr.length * 2;
            if (i <= length) {
                i = length;
            }
            this.tmpCharBuffer = new char[i];
        }
        return this.tmpCharBuffer;
    }

    public final String getClassName() {
        return this.generatedClassName;
    }

    public int getCurrentCodeOffset() {
        return this.itsCodeBufferTop;
    }

    public int getLabelPC(int i) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i2 = i & Integer.MAX_VALUE;
        if (i2 < this.itsLabelTableTop) {
            return this.itsLabelTable[i2];
        }
        throw new IllegalArgumentException("Bad label");
    }

    public short getStackTop() {
        return this.itsStackTop;
    }

    public boolean isUnderStringSizeLimit(String str) {
        return this.itsConstantPool.t(str);
    }

    public void markHandler(int i) {
        this.itsStackTop = (short) 1;
        markLabel(i);
    }

    public void markLabel(int i) {
        if (i >= 0) {
            throw new IllegalArgumentException("Bad label, no biscuit");
        }
        int i2 = i & Integer.MAX_VALUE;
        if (i2 > this.itsLabelTableTop) {
            throw new IllegalArgumentException("Bad label");
        }
        int[] iArr = this.itsLabelTable;
        if (iArr[i2] != -1) {
            throw new IllegalStateException("Can only mark label once");
        }
        iArr[i2] = this.itsCodeBufferTop;
    }

    public final void markTableSwitchCase(int i, int i2) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(this.itsCodeBufferTop, i);
        setTableSwitchJump(i, i2, this.itsCodeBufferTop);
    }

    public final void markTableSwitchDefault(int i) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(this.itsCodeBufferTop, i);
        setTableSwitchJump(i, -1, this.itsCodeBufferTop);
    }

    public void setFlags(short s) {
        this.itsFlags = s;
    }

    public void setStackTop(short s) {
        this.itsStackTop = s;
    }

    public void setTableSwitchJump(int i, int i2, int i3) {
        int i4;
        if (i3 < 0 || (i4 = this.itsCodeBufferTop) < i3) {
            throw new IllegalArgumentException("Bad jump target: " + i3);
        }
        if (i2 < -1) {
            throw new IllegalArgumentException("Bad case index: " + i2);
        }
        int i5 = (~i) & 3;
        int i6 = i2 < 0 ? i + 1 + i5 : i + 1 + i5 + ((i2 + 3) * 4);
        if (i < 0 || ((i4 - 16) - i5) - 1 < i) {
            throw new IllegalArgumentException(i + " is outside a possible range of tableswitch in already generated code");
        }
        byte[] bArr = this.itsCodeBuffer;
        if ((bArr[i] & 255) != 170) {
            throw new IllegalArgumentException(i + " is not offset of tableswitch statement");
        }
        if (i6 >= 0 && i4 >= i6 + 4) {
            putInt32(i3 - i, bArr, i6);
            return;
        }
        throw new ClassFileFormatException("Too big case index: " + i2);
    }

    public void startMethod(String str, String str2, short s) {
        this.itsCurrentMethod = new ww0(str, this.itsConstantPool.n(str), str2, this.itsConstantPool.n(str2), s);
        this.itsJumpFroms = new UintMap();
        this.itsMethods.add(this.itsCurrentMethod);
        addSuperBlockStart(0);
    }

    public void stopMethod(short s) {
        b bVar;
        int iPutInt16;
        int iD;
        if (this.itsCurrentMethod == null) {
            throw new IllegalStateException("No method to stop");
        }
        fixLabelGotos();
        this.itsMaxLocals = s;
        if (GenerateStackMap) {
            finalizeSuperBlockStarts();
            bVar = new b();
            bVar.l();
        } else {
            bVar = null;
        }
        int i = this.itsLineNumberTable != null ? (this.itsLineNumberTableTop * 4) + 8 : 0;
        ObjArray objArray = this.itsVarDescriptors;
        int size = objArray != null ? (objArray.size() * 10) + 8 : 0;
        int i2 = (bVar == null || (iD = bVar.d()) <= 0) ? 0 : iD + 6;
        int i3 = this.itsCodeBufferTop + 16 + (this.itsExceptionTableTop * 8) + 2 + i + size + i2;
        if (i3 > 65536) {
            throw new ClassFileFormatException("generated bytecode for method exceeds 64K limit.");
        }
        byte[] bArr = new byte[i3];
        int iPutInt32 = putInt32(this.itsCodeBufferTop, bArr, putInt16(this.itsMaxLocals, bArr, putInt16(this.itsMaxStack, bArr, putInt32(i3 - 6, bArr, putInt16(this.itsConstantPool.n("Code"), bArr, 0)))));
        System.arraycopy(this.itsCodeBuffer, 0, bArr, iPutInt32, this.itsCodeBufferTop);
        int i4 = iPutInt32 + this.itsCodeBufferTop;
        int i5 = this.itsExceptionTableTop;
        if (i5 > 0) {
            iPutInt16 = putInt16(i5, bArr, i4);
            for (int i6 = 0; i6 < this.itsExceptionTableTop; i6++) {
                oe3 oe3Var = this.itsExceptionTable[i6];
                int labelPC = getLabelPC(oe3Var.a);
                int labelPC2 = getLabelPC(oe3Var.b);
                int labelPC3 = getLabelPC(oe3Var.c);
                short s2 = oe3Var.d;
                if (labelPC == -1) {
                    throw new IllegalStateException("start label not defined");
                }
                if (labelPC2 == -1) {
                    throw new IllegalStateException("end label not defined");
                }
                if (labelPC3 == -1) {
                    throw new IllegalStateException("handler label not defined");
                }
                iPutInt16 = putInt16(s2, bArr, putInt16(labelPC3, bArr, putInt16(labelPC2, bArr, putInt16(labelPC, bArr, iPutInt16))));
            }
        } else {
            iPutInt16 = putInt16(0, bArr, i4);
        }
        int i7 = this.itsLineNumberTable != null ? 1 : 0;
        if (this.itsVarDescriptors != null) {
            i7++;
        }
        if (i2 > 0) {
            i7++;
        }
        int iPutInt17 = putInt16(i7, bArr, iPutInt16);
        if (this.itsLineNumberTable != null) {
            iPutInt17 = putInt16(this.itsLineNumberTableTop, bArr, putInt32((this.itsLineNumberTableTop * 4) + 2, bArr, putInt16(this.itsConstantPool.n("LineNumberTable"), bArr, iPutInt17)));
            for (int i8 = 0; i8 < this.itsLineNumberTableTop; i8++) {
                iPutInt17 = putInt32(this.itsLineNumberTable[i8], bArr, iPutInt17);
            }
        }
        if (this.itsVarDescriptors != null) {
            int iPutInt18 = putInt16(this.itsConstantPool.n("LocalVariableTable"), bArr, iPutInt17);
            int size2 = this.itsVarDescriptors.size();
            iPutInt17 = putInt16(size2, bArr, putInt32((size2 * 10) + 2, bArr, iPutInt18));
            for (int i9 = 0; i9 < size2; i9++) {
                int[] iArr = (int[]) this.itsVarDescriptors.get(i9);
                int i10 = iArr[0];
                int i11 = iArr[1];
                int i12 = iArr[2];
                iPutInt17 = putInt16(iArr[3], bArr, putInt16(i11, bArr, putInt16(i10, bArr, putInt16(this.itsCodeBufferTop - i12, bArr, putInt16(i12, bArr, iPutInt17)))));
            }
        }
        if (i2 > 0) {
            bVar.D(bArr, putInt16(this.itsConstantPool.n("StackMapTable"), bArr, iPutInt17));
        }
        this.itsCurrentMethod.e(bArr);
        this.itsExceptionTable = null;
        this.itsExceptionTableTop = 0;
        this.itsLineNumberTableTop = 0;
        this.itsCodeBufferTop = 0;
        this.itsCurrentMethod = null;
        this.itsMaxStack = (short) 0;
        this.itsStackTop = (short) 0;
        this.itsLabelTableTop = 0;
        this.itsFixupTableTop = 0;
        this.itsVarDescriptors = null;
        this.itsSuperBlockStarts = null;
        this.itsSuperBlockStartsTop = 0;
        this.itsJumpFroms = null;
    }

    public byte[] toByteArray() {
        short sN;
        int i;
        short sN2;
        if (this.itsBootstrapMethods != null) {
            sN = this.itsConstantPool.n("BootstrapMethods");
            i = 1;
        } else {
            sN = 0;
            i = 0;
        }
        if (this.itsSourceFileNameIndex != 0) {
            i++;
            sN2 = this.itsConstantPool.n("SourceFile");
        } else {
            sN2 = 0;
        }
        int writeSize = getWriteSize();
        byte[] bArr = new byte[writeSize];
        int iPutInt16 = putInt16(this.itsInterfaces.size(), bArr, putInt16(this.itsSuperClassIndex, bArr, putInt16(this.itsThisClassIndex, bArr, putInt16(this.itsFlags, bArr, this.itsConstantPool.v(bArr, putInt16(MajorVersion, bArr, putInt16(MinorVersion, bArr, putInt32(FileHeaderConstant, bArr, 0))))))));
        for (int i2 = 0; i2 < this.itsInterfaces.size(); i2++) {
            iPutInt16 = putInt16(((Short) this.itsInterfaces.get(i2)).shortValue(), bArr, iPutInt16);
        }
        int iPutInt17 = putInt16(this.itsFields.size(), bArr, iPutInt16);
        for (int i3 = 0; i3 < this.itsFields.size(); i3++) {
            iPutInt17 = ((vw0) this.itsFields.get(i3)).c(bArr, iPutInt17);
        }
        int iPutInt18 = putInt16(this.itsMethods.size(), bArr, iPutInt17);
        for (int i4 = 0; i4 < this.itsMethods.size(); i4++) {
            iPutInt18 = ((ww0) this.itsMethods.get(i4)).f(bArr, iPutInt18);
        }
        int iPutInt19 = putInt16(i, bArr, iPutInt18);
        if (this.itsBootstrapMethods != null) {
            iPutInt19 = putInt16(this.itsBootstrapMethods.size(), bArr, putInt32(this.itsBootstrapMethodsLength + 2, bArr, putInt16(sN, bArr, iPutInt19)));
            for (int i5 = 0; i5 < this.itsBootstrapMethods.size(); i5++) {
                a aVar = (a) this.itsBootstrapMethods.get(i5);
                byte[] bArr2 = aVar.a;
                System.arraycopy(bArr2, 0, bArr, iPutInt19, bArr2.length);
                iPutInt19 += aVar.a.length;
            }
        }
        if (this.itsSourceFileNameIndex != 0) {
            iPutInt19 = putInt16(this.itsSourceFileNameIndex, bArr, putInt32(2, bArr, putInt16(sN2, bArr, iPutInt19)));
        }
        if (iPutInt19 == writeSize) {
            return bArr;
        }
        throw new RuntimeException();
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }

    public void addField(String str, String str2, short s, int i) {
        vw0 vw0Var = new vw0(this.itsConstantPool.n(str), this.itsConstantPool.n(str2), s);
        vw0Var.b(this.itsConstantPool.n("ConstantValue"), (short) 0, (short) 0, this.itsConstantPool.d(i));
        this.itsFields.add(vw0Var);
    }

    public final void markTableSwitchCase(int i, int i2, int i3) {
        if (i3 >= 0 && i3 <= this.itsMaxStack) {
            this.itsStackTop = (short) i3;
            addSuperBlockStart(this.itsCodeBufferTop);
            this.itsJumpFroms.put(this.itsCodeBufferTop, i);
            setTableSwitchJump(i, i2, this.itsCodeBufferTop);
            return;
        }
        throw new IllegalArgumentException("Bad stack index: " + i3);
    }

    public void addPush(boolean z) {
        add(z ? 4 : 3);
    }

    public void addPush(long j) {
        int i = (int) j;
        if (i == j) {
            addPush(i);
            add(133);
        } else {
            addLoadConstant(j);
        }
    }

    public void markLabel(int i, short s) {
        markLabel(i);
        this.itsStackTop = s;
    }

    public void addLoadConstant(long j) {
        add(20, this.itsConstantPool.e(j));
    }

    public void addLoadConstant(float f) {
        add(18, this.itsConstantPool.c(f));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0044 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ba A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:66:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f9  */
    public void add(int i, int i2) {
        int i3;
        int i4;
        int labelPC;
        int iStackChange = this.itsStackTop + stackChange(i);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        if (i == 180 || i == 181) {
            if (i2 >= 0 && i2 < 65536) {
                addToCodeBuffer(i);
                addToCodeInt16(i2);
            } else {
                throw new IllegalArgumentException("out of range field");
            }
        } else if (i != 188) {
            if (i != 198 && i != 199) {
                switch (i) {
                    case 16:
                        byte b2 = (byte) i2;
                        if (b2 == i2) {
                            addToCodeBuffer(i);
                            addToCodeBuffer(b2);
                        } else {
                            throw new IllegalArgumentException("out of range byte");
                        }
                        break;
                    case 17:
                        if (((short) i2) == i2) {
                            addToCodeBuffer(i);
                            addToCodeInt16(i2);
                        } else {
                            throw new IllegalArgumentException("out of range short");
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                        if (i2 < 0 || i2 >= 65536) {
                            throw new ClassFileFormatException("out of range index");
                        }
                        if (i2 < 256 && i != 19 && i != 20) {
                            addToCodeBuffer(i);
                            addToCodeBuffer(i2);
                        } else {
                            if (i == 18) {
                                addToCodeBuffer(19);
                            } else {
                                addToCodeBuffer(i);
                            }
                            addToCodeInt16(i2);
                        }
                        break;
                    default:
                        switch (i) {
                            default:
                                switch (i) {
                                    case 167:
                                        addSuperBlockStart(this.itsCodeBufferTop + 3);
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case ByteCode.JSR:
                                        i3 = i2 & Integer.MIN_VALUE;
                                        if (i3 == Integer.MIN_VALUE) {
                                        }
                                        i4 = this.itsCodeBufferTop;
                                        addToCodeBuffer(i);
                                        if (i3 != Integer.MIN_VALUE) {
                                            addToCodeInt16(i2);
                                            int i5 = i2 + i4;
                                            addSuperBlockStart(i5);
                                            this.itsJumpFroms.put(i5, i4);
                                        } else {
                                            labelPC = getLabelPC(i2);
                                            if (labelPC != -1) {
                                                addToCodeInt16(labelPC - i4);
                                                addSuperBlockStart(labelPC);
                                                this.itsJumpFroms.put(labelPC, i4);
                                            } else {
                                                addLabelFixup(i2, i4 + 1);
                                                addToCodeInt16(0);
                                            }
                                        }
                                        break;
                                    case 169:
                                        break;
                                    default:
                                        throw new IllegalArgumentException("Unexpected opcode for 1 operand");
                                }
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                                if (i2 >= 0 || 65536 <= i2) {
                                    throw new ClassFileFormatException("out of range variable");
                                }
                                if (i2 >= 256) {
                                    addToCodeBuffer(196);
                                    addToCodeBuffer(i);
                                    addToCodeInt16(i2);
                                } else {
                                    addToCodeBuffer(i);
                                    addToCodeBuffer(i2);
                                }
                                break;
                        }
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                        if (i2 >= 0) {
                        }
                        throw new ClassFileFormatException("out of range variable");
                }
            } else {
                i3 = i2 & Integer.MIN_VALUE;
                if (i3 == Integer.MIN_VALUE && (i2 < 0 || i2 > 65535)) {
                    throw new IllegalArgumentException("Bad label for branch");
                }
                i4 = this.itsCodeBufferTop;
                addToCodeBuffer(i);
                if (i3 != Integer.MIN_VALUE) {
                    addToCodeInt16(i2);
                    int i6 = i2 + i4;
                    addSuperBlockStart(i6);
                    this.itsJumpFroms.put(i6, i4);
                } else {
                    labelPC = getLabelPC(i2);
                    if (labelPC != -1) {
                        addToCodeInt16(labelPC - i4);
                        addSuperBlockStart(labelPC);
                        this.itsJumpFroms.put(labelPC, i4);
                    } else {
                        addLabelFixup(i2, i4 + 1);
                        addToCodeInt16(0);
                    }
                }
            }
        } else if (i2 >= 0 && i2 < 256) {
            addToCodeBuffer(i);
            addToCodeBuffer(i2);
        } else {
            throw new IllegalArgumentException("out of range index");
        }
        short s = (short) iStackChange;
        this.itsStackTop = s;
        if (iStackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void addLoadConstant(double d) {
        add(20, this.itsConstantPool.b(d));
    }

    public void addPush(double d) {
        if (d == 0.0d) {
            add(14);
            if (1.0d / d < 0.0d) {
                add(119);
                return;
            }
            return;
        }
        if (d != 1.0d && d != -1.0d) {
            addLoadConstant(d);
            return;
        }
        add(15);
        if (d < 0.0d) {
            add(119);
        }
    }

    public void addField(String str, String str2, short s, long j) {
        vw0 vw0Var = new vw0(this.itsConstantPool.n(str), this.itsConstantPool.n(str2), s);
        vw0Var.b(this.itsConstantPool.n("ConstantValue"), (short) 0, (short) 2, this.itsConstantPool.e(j));
        this.itsFields.add(vw0Var);
    }

    public void addLoadConstant(String str) {
        add(18, this.itsConstantPool.g(str));
    }

    public void addPush(String str) {
        int length = str.length();
        int i = 0;
        int iR = this.itsConstantPool.r(str, 0, length);
        if (iR == length) {
            addLoadConstant(str);
            return;
        }
        add(187, "java/lang/StringBuilder");
        add(89);
        addPush(length);
        addInvoke(183, "java/lang/StringBuilder", MethodDecl.initName, "(I)V");
        while (true) {
            add(89);
            addLoadConstant(str.substring(i, iR));
            addInvoke(182, "java/lang/StringBuilder", "append", "(Ljava/lang/String;)Ljava/lang/StringBuilder;");
            add(87);
            if (iR == length) {
                addInvoke(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
                return;
            } else {
                i = iR;
                iR = this.itsConstantPool.r(str, iR, length);
            }
        }
    }

    public void addField(String str, String str2, short s, double d) {
        vw0 vw0Var = new vw0(this.itsConstantPool.n(str), this.itsConstantPool.n(str2), s);
        vw0Var.b(this.itsConstantPool.n("ConstantValue"), (short) 0, (short) 2, this.itsConstantPool.b(d));
        this.itsFields.add(vw0Var);
    }

    public void add(int i, int i2, int i3) {
        int iStackChange = this.itsStackTop + stackChange(i);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        if (i == 132) {
            if (i2 < 0 || 65536 <= i2) {
                throw new ClassFileFormatException("out of range variable");
            }
            if (i3 < 0 || 65536 <= i3) {
                throw new ClassFileFormatException("out of range increment");
            }
            if (i2 <= 255 && i3 <= 127) {
                addToCodeBuffer(132);
                addToCodeBuffer(i2);
                addToCodeBuffer(i3);
            } else {
                addToCodeBuffer(196);
                addToCodeBuffer(132);
                addToCodeInt16(i2);
                addToCodeInt16(i3);
            }
        } else {
            if (i != 197) {
                throw new IllegalArgumentException("Unexpected opcode for 2 operands");
            }
            if (i2 < 0 || i2 >= 65536) {
                throw new IllegalArgumentException("out of range index");
            }
            if (i3 >= 0 && i3 < 256) {
                addToCodeBuffer(ByteCode.MULTIANEWARRAY);
                addToCodeInt16(i2);
                addToCodeBuffer(i3);
            } else {
                throw new IllegalArgumentException("out of range dimensions");
            }
        }
        short s = (short) iStackChange;
        this.itsStackTop = s;
        if (iStackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void add(int i, String str) {
        int iStackChange = this.itsStackTop + stackChange(i);
        if (iStackChange < 0 || 32767 < iStackChange) {
            badStack(iStackChange);
        }
        if (i != 187 && i != 189 && i != 192 && i != 193) {
            throw new IllegalArgumentException("bad opcode for class reference");
        }
        short sA = this.itsConstantPool.a(str);
        addToCodeBuffer(i);
        addToCodeInt16(sA);
        short s = (short) iStackChange;
        this.itsStackTop = s;
        if (iStackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public void add(int i, String str, String str2, String str3) {
        int i2;
        int iStackChange = this.itsStackTop + stackChange(i);
        char cCharAt = str3.charAt(0);
        int i3 = (cCharAt == 'J' || cCharAt == 'D') ? 2 : 1;
        switch (i) {
            case 178:
            case 180:
                i2 = iStackChange + i3;
                break;
            case ByteCode.PUTSTATIC:
            case 181:
                i2 = iStackChange - i3;
                break;
            default:
                throw new IllegalArgumentException("bad opcode for field reference");
        }
        if (i2 < 0 || 32767 < i2) {
            badStack(i2);
        }
        short sH = this.itsConstantPool.h(str, str2, str3);
        addToCodeBuffer(i);
        addToCodeInt16(sH);
        short s = (short) i2;
        this.itsStackTop = s;
        if (i2 > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }
}
