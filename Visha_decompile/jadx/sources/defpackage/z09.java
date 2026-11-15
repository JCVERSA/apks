package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

public abstract class z09 {
    public static void A(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcel parcel2 = (Parcel) list.get(i2);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        K(parcel, iJ);
    }

    public static void B(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            K(parcel, iJ);
        }
    }

    public static void C(Parcel parcel, int i, short s) {
        I(parcel, i, 4);
        parcel.writeInt(s);
    }

    public static void D(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeString(str);
            K(parcel, iJ);
        }
    }

    public static void E(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeStringArray(strArr);
            K(parcel, iJ);
        }
    }

    public static void F(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeStringList(list);
            K(parcel, iJ);
        }
    }

    public static void G(Parcel parcel, int i, Parcelable[] parcelableArr, int i2, boolean z) {
        if (parcelableArr == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                L(parcel, parcelable, i2);
            }
        }
        K(parcel, iJ);
    }

    public static void H(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                L(parcel, parcelable, 0);
            }
        }
        K(parcel, iJ);
    }

    public static void I(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    public static int J(Parcel parcel, int i) {
        parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void K(Parcel parcel, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(iDataPosition - i);
        parcel.setDataPosition(iDataPosition);
    }

    public static void L(Parcel parcel, Parcelable parcelable, int i) {
        int iDataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int iDataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int iDataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(iDataPosition);
        parcel.writeInt(iDataPosition3 - iDataPosition2);
        parcel.setDataPosition(iDataPosition3);
    }

    public static int a(Parcel parcel) {
        return J(parcel, 20293);
    }

    public static void b(Parcel parcel, int i) {
        K(parcel, i);
    }

    public static void c(Parcel parcel, int i, BigDecimal bigDecimal, boolean z) {
        if (bigDecimal == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
            parcel.writeInt(bigDecimal.scale());
            K(parcel, iJ);
        }
    }

    public static void d(Parcel parcel, int i, BigDecimal[] bigDecimalArr, boolean z) {
        if (bigDecimalArr == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            parcel.writeByteArray(bigDecimalArr[i2].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i2].scale());
        }
        K(parcel, iJ);
    }

    public static void e(Parcel parcel, int i, BigInteger bigInteger, boolean z) {
        if (bigInteger == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeByteArray(bigInteger.toByteArray());
            K(parcel, iJ);
        }
    }

    public static void f(Parcel parcel, int i, BigInteger[] bigIntegerArr, boolean z) {
        if (bigIntegerArr == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        K(parcel, iJ);
    }

    public static void g(Parcel parcel, int i, boolean z) {
        I(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void h(Parcel parcel, int i, boolean[] zArr, boolean z) {
        if (zArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeBooleanArray(zArr);
            K(parcel, iJ);
        }
    }

    public static void i(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            I(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            I(parcel, i, 0);
        }
    }

    public static void j(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeBundle(bundle);
            K(parcel, iJ);
        }
    }

    public static void k(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeByteArray(bArr);
            K(parcel, iJ);
        }
    }

    public static void l(Parcel parcel, int i, double d) {
        I(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void m(Parcel parcel, int i, double[] dArr, boolean z) {
        if (dArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeDoubleArray(dArr);
            K(parcel, iJ);
        }
    }

    public static void n(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            I(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (z) {
            I(parcel, i, 0);
        }
    }

    public static void o(Parcel parcel, int i, float f) {
        I(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void p(Parcel parcel, int i, float[] fArr, boolean z) {
        if (fArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeFloatArray(fArr);
            K(parcel, iJ);
        }
    }

    public static void q(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            I(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (z) {
            I(parcel, i, 0);
        }
    }

    public static void r(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeStrongBinder(iBinder);
            K(parcel, iJ);
        }
    }

    public static void s(Parcel parcel, int i, int i2) {
        I(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void t(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeIntArray(iArr);
            K(parcel, iJ);
        }
    }

    public static void u(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                I(parcel, i, 0);
                return;
            }
            return;
        }
        int iJ = J(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(((Integer) list.get(i2)).intValue());
        }
        K(parcel, iJ);
    }

    public static void v(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            I(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (z) {
            I(parcel, i, 0);
        }
    }

    public static void w(Parcel parcel, int i, long j) {
        I(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void x(Parcel parcel, int i, long[] jArr, boolean z) {
        if (jArr == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.writeLongArray(jArr);
            K(parcel, iJ);
        }
    }

    public static void y(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            I(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (z) {
            I(parcel, i, 0);
        }
    }

    public static void z(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (z) {
                I(parcel, i, 0);
            }
        } else {
            int iJ = J(parcel, i);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            K(parcel, iJ);
        }
    }
}
