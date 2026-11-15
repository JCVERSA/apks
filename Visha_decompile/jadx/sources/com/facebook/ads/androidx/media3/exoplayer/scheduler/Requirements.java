package com.facebook.ads.androidx.media3.exoplayer.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.media3.common.PlaybackException;
import com.facebook.ads.redexgen.core.AbstractC06244a;
import com.facebook.ads.redexgen.core.C0804Bm;
import com.facebook.ads.redexgen.core.C3M;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class Requirements implements Parcelable {
    public static byte[] A01;
    public static String[] A02 = {"uwN5TqWruOwNeCy1aiqDeLgzeCho9gnR", "uTqO4HZ69OtT2", "pp7wWJEgHEGU283E", "XPZfXvI81RbECUtIqAEftJ2yNIIbXze1", "5SwimXMBGWXyWjNLtwjqMnX", "7CGYXLa6aYpujc5oADJ5LB3FbDI8uqBi", "FEMkx52dE2zGpzw1", "Fv9wompXFxfx6YB8Vj7MYx3uqzKPyKZl"};
    public static final Parcelable.Creator<Requirements> CREATOR;
    public final int A00;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_CONCURRENT_STREAM_LIMIT);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{36, 49, 39, 53, 50, 44, 39, -15, 44, 49, 55, 40, 49, 55, -15, 36, 38, 55, 44, 50, 49, -15, 5, 4, 23, 23, 8, 21, 28, 34, 6, ByteCode.T_LONG, 4, 17, 10, 8, 7, -13, 0, -10, 4, 1, -5, -10, -64, -5, 0, 6, -9, 0, 6, -64, -13, -11, 6, -5, 1, 0, -64, -42, -41, -24, -37, -43, -41, -15, -27, -26, -31, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -45, -39, -41, -15, -34, -31, -23, -25, -13, -14, -14, -23, -25, -8, -19, -6, -19, -8, -3, -9, -10, -2, -20, -7, 3, 4, -15, 4, 5, 3};
    }

    static {
        A02();
        CREATOR = new C0804Bm();
    }

    public Requirements(int i) {
        this.A00 = (i & 2) != 0 ? i | 1 : i;
    }

    private int A00(Context context) {
        if (!A0A()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) C3M.A01(context.getSystemService(A01(77, 12, 28)));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            boolean zA06 = A06(connectivityManager);
            String[] strArr = A02;
            if (strArr[2].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A02[5] = "RKqvXcDMvtoTOxGBV3lSSEVfZ64ZYoxU";
            if (zA06) {
                if (A0C()) {
                    boolean zIsActiveNetworkMetered = connectivityManager.isActiveNetworkMetered();
                    if (A02[3].charAt(16) != 'q') {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A02;
                    strArr2[1] = "RJMLW2AndFlsS";
                    strArr2[4] = "adHoYRSEIssUTsmuQLV0TXA";
                    if (zIsActiveNetworkMetered) {
                        if (A02[0].charAt(4) != 'h') {
                            String[] strArr3 = A02;
                            strArr3[1] = "EctWe7FhnH81C";
                            strArr3[4] = "lAwOl2qOFCjLVAIEQ1yyJzT";
                            return 2;
                        }
                        String[] strArr4 = A02;
                        strArr4[1] = "YeFdaHJUx43hD";
                        strArr4[4] = "U4BsCHt3kJE5KJEOEKp0bYO";
                        return 2;
                    }
                }
                return 0;
            }
        }
        return this.A00 & 3;
    }

    private boolean A03(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter(A01(0, 37, 91)));
        if (intentRegisterReceiver == null) {
            return false;
        }
        int intExtra = intentRegisterReceiver.getIntExtra(A01(94, 6, 40), -1);
        return intExtra == 2 || intExtra == 5;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x004f A[RETURN, SYNTHETIC] */
    private boolean A04(Context context) {
        PowerManager powerManager = (PowerManager) C3M.A01(context.getSystemService(A01(89, 5, 31)));
        if (AbstractC06244a.A02 >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        if (AbstractC06244a.A02 >= 20) {
            if (powerManager.isInteractive()) {
                return false;
            }
            return true;
        }
        boolean zIsScreenOn = powerManager.isScreenOn();
        if (A02[7].charAt(15) != '8') {
            throw new RuntimeException();
        }
        A02[7] = "0vwiCxXTqkOZryo8en8HAet2lmwum6iC";
        if (zIsScreenOn) {
            return false;
        }
        return true;
    }

    private boolean A05(Context context) {
        return context.registerReceiver(null, new IntentFilter(A01(37, 40, 42))) == null;
    }

    public static boolean A06(ConnectivityManager connectivityManager) {
        if (AbstractC06244a.A02 < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            return networkCapabilities != null && networkCapabilities.hasCapability(16);
        } catch (SecurityException unused) {
            return true;
        }
    }

    public final int A07(Context context) {
        int iA00 = A00(context);
        if (A08() && !A03(context)) {
            iA00 |= 8;
        }
        if (A09() && !A04(context)) {
            iA00 |= 4;
        }
        if (A0B() && !A05(context)) {
            return iA00 | 16;
        }
        return iA00;
    }

    public final boolean A08() {
        return (this.A00 & 8) != 0;
    }

    public final boolean A09() {
        return (this.A00 & 4) != 0;
    }

    public final boolean A0A() {
        return (this.A00 & 1) != 0;
    }

    public final boolean A0B() {
        return (this.A00 & 16) != 0;
    }

    public final boolean A0C() {
        return (this.A00 & 2) != 0;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.A00 == ((Requirements) obj).A00;
    }

    public final int hashCode() {
        return this.A00;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A00);
    }
}
