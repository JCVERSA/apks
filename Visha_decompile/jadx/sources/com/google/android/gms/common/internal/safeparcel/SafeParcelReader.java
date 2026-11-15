package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

public abstract class SafeParcelReader {

    public static class ParseException extends RuntimeException {
        public ParseException(@NonNull String str, @NonNull Parcel parcel) {
            int iDataPosition = parcel.dataPosition();
            int iDataSize = parcel.dataSize();
            int length = String.valueOf(str).length();
            StringBuilder sb = new StringBuilder(length + 13 + String.valueOf(iDataPosition).length() + 6 + String.valueOf(iDataSize).length());
            sb.append(str);
            sb.append(" Parcel: pos=");
            sb.append(iDataPosition);
            sb.append(" size=");
            sb.append(iDataSize);
            super(sb.toString());
        }
    }

    public static float A(Parcel parcel, int i) {
        M(parcel, i, 4);
        return parcel.readFloat();
    }

    public static Float B(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        if (iJ == 0) {
            return null;
        }
        N(parcel, i, iJ, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int C(Parcel parcel) {
        return parcel.readInt();
    }

    public static IBinder D(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(iDataPosition + iJ);
        return strongBinder;
    }

    public static int E(Parcel parcel, int i) {
        M(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer F(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        if (iJ == 0) {
            return null;
        }
        N(parcel, i, iJ, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long G(Parcel parcel, int i) {
        M(parcel, i, 8);
        return parcel.readLong();
    }

    public static Long H(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        if (iJ == 0) {
            return null;
        }
        N(parcel, i, iJ, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static short I(Parcel parcel, int i) {
        M(parcel, i, 4);
        return (short) parcel.readInt();
    }

    public static int J(Parcel parcel, int i) {
        return (i & SupportMenu.CATEGORY_MASK) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    public static void K(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + J(parcel, i));
    }

    public static int L(Parcel parcel) {
        int iC = C(parcel);
        int iJ = J(parcel, iC);
        int iV = v(iC);
        int iDataPosition = parcel.dataPosition();
        if (iV != 20293) {
            throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(iC))), parcel);
        }
        int i = iJ + iDataPosition;
        if (i >= iDataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(iDataPosition).length() + 32 + String.valueOf(i).length());
        sb.append("Size read is invalid start=");
        sb.append(iDataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    public static void M(Parcel parcel, int i, int i2) {
        int iJ = J(parcel, i);
        if (iJ == i2) {
            return;
        }
        String hexString = Integer.toHexString(iJ);
        int length = String.valueOf(i2).length();
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(iJ).length() + 4 + String.valueOf(hexString).length() + 1);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(iJ);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    public static void N(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        String hexString = Integer.toHexString(i2);
        int length = String.valueOf(i3).length();
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(i2).length() + 4 + String.valueOf(hexString).length() + 1);
        sb.append("Expected size ");
        sb.append(i3);
        sb.append(" got ");
        sb.append(i2);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    public static BigDecimal a(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i2 = parcel.readInt();
        parcel.setDataPosition(iDataPosition + iJ);
        return new BigDecimal(new BigInteger(bArrCreateByteArray), i2);
    }

    public static BigDecimal[] b(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        int i2 = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArrCreateByteArray = parcel.createByteArray();
            bigDecimalArr[i3] = new BigDecimal(new BigInteger(bArrCreateByteArray), parcel.readInt());
        }
        parcel.setDataPosition(iDataPosition + iJ);
        return bigDecimalArr;
    }

    public static BigInteger c(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return new BigInteger(bArrCreateByteArray);
    }

    public static BigInteger[] d(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        int i2 = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bigIntegerArr[i3] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(iDataPosition + iJ);
        return bigIntegerArr;
    }

    public static boolean[] e(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        boolean[] zArrCreateBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return zArrCreateBooleanArray;
    }

    public static Bundle f(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        Bundle bundle = parcel.readBundle();
        parcel.setDataPosition(iDataPosition + iJ);
        return bundle;
    }

    public static byte[] g(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        byte[] bArrCreateByteArray = parcel.createByteArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return bArrCreateByteArray;
    }

    public static double[] h(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        double[] dArrCreateDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return dArrCreateDoubleArray;
    }

    public static float[] i(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        float[] fArrCreateFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return fArrCreateFloatArray;
    }

    public static int[] j(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        int[] iArrCreateIntArray = parcel.createIntArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return iArrCreateIntArray;
    }

    public static ArrayList k(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(iDataPosition + iJ);
        return arrayList;
    }

    public static long[] l(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        long[] jArrCreateLongArray = parcel.createLongArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return jArrCreateLongArray;
    }

    public static Parcel m(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.appendFrom(parcel, iDataPosition, iJ);
        parcel.setDataPosition(iDataPosition + iJ);
        return parcelObtain;
    }

    public static Parcel[] n(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        int i2 = parcel.readInt();
        Parcel[] parcelArr = new Parcel[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = parcel.readInt();
            if (i4 != 0) {
                int iDataPosition2 = parcel.dataPosition();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.appendFrom(parcel, iDataPosition2, i4);
                parcelArr[i3] = parcelObtain;
                parcel.setDataPosition(iDataPosition2 + i4);
            } else {
                parcelArr[i3] = null;
            }
        }
        parcel.setDataPosition(iDataPosition + iJ);
        return parcelArr;
    }

    public static Parcelable o(Parcel parcel, int i, Parcelable.Creator creator) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(iDataPosition + iJ);
        return parcelable;
    }

    public static String p(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        String string = parcel.readString();
        parcel.setDataPosition(iDataPosition + iJ);
        return string;
    }

    public static String[] q(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        String[] strArrCreateStringArray = parcel.createStringArray();
        parcel.setDataPosition(iDataPosition + iJ);
        return strArrCreateStringArray;
    }

    public static ArrayList r(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(iDataPosition + iJ);
        return arrayListCreateStringArrayList;
    }

    public static Object[] s(Parcel parcel, int i, Parcelable.Creator creator) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        Object[] objArrCreateTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(iDataPosition + iJ);
        return objArrCreateTypedArray;
    }

    public static ArrayList t(Parcel parcel, int i, Parcelable.Creator creator) {
        int iJ = J(parcel, i);
        int iDataPosition = parcel.dataPosition();
        if (iJ == 0) {
            return null;
        }
        ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(iDataPosition + iJ);
        return arrayListCreateTypedArrayList;
    }

    public static void u(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    public static int v(int i) {
        return (char) i;
    }

    public static boolean w(Parcel parcel, int i) {
        M(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static Boolean x(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        if (iJ == 0) {
            return null;
        }
        N(parcel, i, iJ, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static double y(Parcel parcel, int i) {
        M(parcel, i, 8);
        return parcel.readDouble();
    }

    public static Double z(Parcel parcel, int i) {
        int iJ = J(parcel, i);
        if (iJ == 0) {
            return null;
        }
        N(parcel, i, iJ, 8);
        return Double.valueOf(parcel.readDouble());
    }
}
