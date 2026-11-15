package org.mozilla.classfile;

import defpackage.aq3;
import defpackage.nf1;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.UintMap;

public final class a {
    public ClassFileWriter a;
    public UintMap b = new UintMap();
    public ObjToIntMap c = new ObjToIntMap();
    public ObjToIntMap d = new ObjToIntMap();
    public ObjToIntMap e = new ObjToIntMap();
    public ObjToIntMap f = new ObjToIntMap();
    public ObjToIntMap g = new ObjToIntMap();
    public UintMap j = new UintMap();
    public UintMap k = new UintMap();
    public int i = 1;
    public byte[] l = new byte[256];
    public int h = 0;

    public a(ClassFileWriter classFileWriter) {
        this.a = classFileWriter;
    }

    public short a(String str) {
        String str2;
        int i = this.f.get(str, -1);
        if (i == -1) {
            if (str.indexOf(46) > 0) {
                String slashedForm = ClassFileWriter.getSlashedForm(str);
                int i2 = this.f.get(slashedForm, -1);
                if (i2 != -1) {
                    this.f.put(str, i2);
                }
                str2 = slashedForm;
                i = i2;
            } else {
                str2 = str;
            }
            if (i == -1) {
                short sN = n(str2);
                o(3);
                byte[] bArr = this.l;
                int i3 = this.h;
                int i4 = i3 + 1;
                this.h = i4;
                bArr[i3] = 7;
                this.h = ClassFileWriter.putInt16(sN, bArr, i4);
                i = this.i;
                this.i = i + 1;
                this.f.put(str2, i);
                if (!str.equals(str2)) {
                    this.f.put(str, i);
                }
            }
        }
        u(i, str);
        this.k.put(i, 7);
        return (short) i;
    }

    public int b(double d) {
        o(9);
        byte[] bArr = this.l;
        int i = this.h;
        this.h = i + 1;
        bArr[i] = 6;
        this.h = ClassFileWriter.putInt64(Double.doubleToLongBits(d), this.l, this.h);
        int i2 = this.i;
        this.i = i2 + 2;
        this.k.put(i2, 6);
        return i2;
    }

    public int c(float f) {
        o(5);
        byte[] bArr = this.l;
        int i = this.h;
        this.h = i + 1;
        bArr[i] = 4;
        this.h = ClassFileWriter.putInt32(Float.floatToIntBits(f), this.l, this.h);
        this.k.put(this.i, 4);
        int i2 = this.i;
        this.i = i2 + 1;
        return i2;
    }

    public int d(int i) {
        o(5);
        byte[] bArr = this.l;
        int i2 = this.h;
        int i3 = i2 + 1;
        this.h = i3;
        bArr[i2] = 3;
        this.h = ClassFileWriter.putInt32(i, bArr, i3);
        this.k.put(this.i, 3);
        int i4 = this.i;
        this.i = i4 + 1;
        return (short) i4;
    }

    public int e(long j) {
        o(9);
        byte[] bArr = this.l;
        int i = this.h;
        int i2 = i + 1;
        this.h = i2;
        bArr[i] = 5;
        this.h = ClassFileWriter.putInt64(j, bArr, i2);
        int i3 = this.i;
        this.i = i3 + 2;
        this.k.put(i3, 5);
        return i3;
    }

    public int f(Object obj) {
        if ((obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short)) {
            return d(((Number) obj).intValue());
        }
        if (obj instanceof Character) {
            return d(((Character) obj).charValue());
        }
        if (obj instanceof Boolean) {
            return d(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return c(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return e(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return b(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return g((String) obj);
        }
        if (obj instanceof ClassFileWriter.MHandle) {
            return k((ClassFileWriter.MHandle) obj);
        }
        throw new IllegalArgumentException("value " + obj);
    }

    public int g(String str) {
        int iN = n(str) & 65535;
        int i = this.b.getInt(iN, -1);
        if (i == -1) {
            i = this.i;
            this.i = i + 1;
            o(3);
            byte[] bArr = this.l;
            int i2 = this.h;
            int i3 = i2 + 1;
            this.h = i3;
            bArr[i2] = 8;
            this.h = ClassFileWriter.putInt16(iN, bArr, i3);
            this.b.put(iN, i);
        }
        this.k.put(i, 8);
        return i;
    }

    public short h(String str, String str2, String str3) {
        aq3 aq3Var = new aq3(str, str2, str3);
        int i = this.d.get(aq3Var, -1);
        if (i == -1) {
            short sM = m(str2, str3);
            short sA = a(str);
            o(5);
            byte[] bArr = this.l;
            int i2 = this.h;
            int i3 = i2 + 1;
            this.h = i3;
            bArr[i2] = 9;
            int iPutInt16 = ClassFileWriter.putInt16(sA, bArr, i3);
            this.h = iPutInt16;
            this.h = ClassFileWriter.putInt16(sM, this.l, iPutInt16);
            i = this.i;
            this.i = i + 1;
            this.d.put(aq3Var, i);
        }
        u(i, aq3Var);
        this.k.put(i, 9);
        return (short) i;
    }

    public short i(String str, String str2, String str3) {
        short sM = m(str2, str3);
        short sA = a(str);
        o(5);
        byte[] bArr = this.l;
        int i = this.h;
        int i2 = i + 1;
        this.h = i2;
        bArr[i] = ByteCode.T_LONG;
        int iPutInt16 = ClassFileWriter.putInt16(sA, bArr, i2);
        this.h = iPutInt16;
        this.h = ClassFileWriter.putInt16(sM, this.l, iPutInt16);
        u(this.i, new aq3(str, str2, str3));
        this.k.put(this.i, 11);
        int i3 = this.i;
        this.i = i3 + 1;
        return (short) i3;
    }

    public short j(String str, String str2, int i) {
        nf1 nf1Var = new nf1(18, i, str, str2);
        int i2 = this.g.get(nf1Var, -1);
        if (i2 == -1) {
            short sM = m(str, str2);
            o(5);
            byte[] bArr = this.l;
            int i3 = this.h;
            int i4 = i3 + 1;
            this.h = i4;
            bArr[i3] = 18;
            int iPutInt16 = ClassFileWriter.putInt16(i, bArr, i4);
            this.h = iPutInt16;
            this.h = ClassFileWriter.putInt16(sM, this.l, iPutInt16);
            i2 = this.i;
            this.i = i2 + 1;
            this.g.put(nf1Var, i2);
            u(i2, str2);
            this.k.put(i2, 18);
        }
        return (short) i2;
    }

    public short k(ClassFileWriter.MHandle mHandle) {
        short sI;
        int i = this.g.get(mHandle, -1);
        if (i == -1) {
            byte b = mHandle.tag;
            if (b <= 4) {
                sI = h(mHandle.owner, mHandle.name, mHandle.desc);
            } else {
                sI = b == 9 ? i(mHandle.owner, mHandle.name, mHandle.desc) : l(mHandle.owner, mHandle.name, mHandle.desc);
            }
            o(4);
            byte[] bArr = this.l;
            int i2 = this.h;
            int i3 = i2 + 1;
            this.h = i3;
            bArr[i2] = 15;
            int i4 = i2 + 2;
            this.h = i4;
            bArr[i3] = mHandle.tag;
            this.h = ClassFileWriter.putInt16(sI, bArr, i4);
            i = this.i;
            this.i = i + 1;
            this.g.put(mHandle, i);
            this.k.put(i, 15);
        }
        return (short) i;
    }

    public short l(String str, String str2, String str3) {
        aq3 aq3Var = new aq3(str, str2, str3);
        int i = this.e.get(aq3Var, -1);
        if (i == -1) {
            short sM = m(str2, str3);
            short sA = a(str);
            o(5);
            byte[] bArr = this.l;
            int i2 = this.h;
            int i3 = i2 + 1;
            this.h = i3;
            bArr[i2] = 10;
            int iPutInt16 = ClassFileWriter.putInt16(sA, bArr, i3);
            this.h = iPutInt16;
            this.h = ClassFileWriter.putInt16(sM, this.l, iPutInt16);
            i = this.i;
            this.i = i + 1;
            this.e.put(aq3Var, i);
        }
        u(i, aq3Var);
        this.k.put(i, 10);
        return (short) i;
    }

    public final short m(String str, String str2) {
        short sN = n(str);
        short sN2 = n(str2);
        o(5);
        byte[] bArr = this.l;
        int i = this.h;
        int i2 = i + 1;
        this.h = i2;
        bArr[i] = 12;
        int iPutInt16 = ClassFileWriter.putInt16(sN, bArr, i2);
        this.h = iPutInt16;
        this.h = ClassFileWriter.putInt16(sN2, this.l, iPutInt16);
        this.k.put(this.i, 12);
        int i3 = this.i;
        this.i = i3 + 1;
        return (short) i3;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0013  */
    public short n(String str) {
        boolean z;
        int i = this.c.get(str, -1);
        if (i == -1) {
            int length = str.length();
            if (length > 65535) {
                z = true;
            } else {
                o((length * 3) + 3);
                int i2 = this.h;
                this.l[i2] = 1;
                int i3 = i2 + 3;
                char[] charBuffer = this.a.getCharBuffer(length);
                z = false;
                str.getChars(0, length, charBuffer, 0);
                for (int i4 = 0; i4 != length; i4++) {
                    char c = charBuffer[i4];
                    if (c != 0 && c <= 127) {
                        this.l[i3] = (byte) c;
                        i3++;
                    } else if (c > 2047) {
                        byte[] bArr = this.l;
                        bArr[i3] = (byte) ((c >> '\f') | 224);
                        int i5 = i3 + 2;
                        bArr[i3 + 1] = (byte) (((c >> 6) & 63) | 128);
                        i3 += 3;
                        bArr[i5] = (byte) ((c & '?') | 128);
                    } else {
                        byte[] bArr2 = this.l;
                        int i6 = i3 + 1;
                        bArr2[i3] = (byte) ((c >> 6) | 192);
                        i3 += 2;
                        bArr2[i6] = (byte) ((c & '?') | 128);
                    }
                }
                int i7 = this.h;
                int i8 = i3 - (i7 + 3);
                if (i8 > 65535) {
                    z = true;
                } else {
                    byte[] bArr3 = this.l;
                    bArr3[i7 + 1] = (byte) (i8 >>> 8);
                    bArr3[i7 + 2] = (byte) i8;
                    this.h = i3;
                    i = this.i;
                    this.i = i + 1;
                    this.c.put(str, i);
                }
            }
            if (z) {
                throw new IllegalArgumentException("Too big string");
            }
        }
        u(i, str);
        this.k.put(i, 1);
        return (short) i;
    }

    public final void o(int i) {
        int i2 = this.h;
        int i3 = i2 + i;
        byte[] bArr = this.l;
        if (i3 > bArr.length) {
            int length = bArr.length * 2;
            if (i2 + i > length) {
                length = i2 + i;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.l = bArr2;
        }
    }

    public Object p(int i) {
        return this.j.getObject(i);
    }

    public byte q(int i) {
        return (byte) this.k.getInt(i, 0);
    }

    public int r(String str, int i, int i2) {
        int i3 = 65535;
        if ((i2 - i) * 3 <= 65535) {
            return i2;
        }
        while (i != i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt == 0 || cCharAt > 127) {
                i3 = cCharAt < 2047 ? i3 - 2 : i3 - 3;
            } else {
                i3--;
            }
            if (i3 < 0) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public int s() {
        return this.h + 2;
    }

    public boolean t(String str) {
        int length = str.length();
        if (length * 3 <= 65535) {
            return true;
        }
        return length <= 65535 && length == r(str, 0, length);
    }

    public void u(int i, Object obj) {
        this.j.put(i, obj);
    }

    public int v(byte[] bArr, int i) {
        int iPutInt16 = ClassFileWriter.putInt16((short) this.i, bArr, i);
        System.arraycopy(this.l, 0, bArr, iPutInt16, this.h);
        return iPutInt16 + this.h;
    }
}
