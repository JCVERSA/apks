package app.fast.ssh;

import android.app.Application;
import android.content.Context;
import android.content.pm.Signature;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.io.encoding.Base64;

public class ProtectedFastSSH extends Application {
    private static Object a;

    public ProtectedFastSSH() {
        a = this;
    }

    public static native InputStream a(Object obj, String str);

    public static byte[] a(byte[] bArr) {
        byte[] bArr2 = {-1, -65, -69, -6, -89, -17, -2, -34, 57, -58, -68, -35, -61, -28, -47, 6, -72, -86, 62, 88, Ascii.SO, -19, 65, 53, Ascii.NAK, 11, -61, -105, Ascii.DLE, 71, -53, -60, 19, -44, 85, -94, -53, -77, 124, 121, -22, 124, -94, 78, 52, -25, Ascii.DC2, -9, 44, SignedBytes.MAX_POWER_OF_TWO, -16, -22, -64, 71, -84, 114, -40, 55, 84, -91, -78, Ascii.NAK, -80, 76, -9, -75, 102, -14, 63, -118, -49, 2, 59, 39, 82, 103, 2, 58, 75, 83, 95, 50, -106, 75, -89, 40, 122, 11, -39, -84, -36, SignedBytes.MAX_POWER_OF_TWO, -64, Ascii.SI, -16, -1, -54, -12, -66, -48, 66, 32, 89, 38, 54, -2, -96, 90, -6, -85, Ascii.SYN, -19, -51, -34, -33, -7, 123, -76, -22, 0, 7, 69, 70, 84, 69, -12, 58, -34, 57, 125, -30, -63, 37, -93, -56, -112, -87, -108, 35, -73, -109, 7, -106, 121, 88, -31, -112, 119, 70, SignedBytes.MAX_POWER_OF_TWO, -59, 62, -115, -18, -50, -125, 73, Ascii.NAK, 54, 115, 40, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 38, -17, Ascii.GS, Ascii.DC4, 43, -68, -52, 108, Ascii.EM, Ascii.DC2, Ascii.SYN, -82, 53, Ascii.NAK, -113, 105, 72, 4, 108, -124, -65, 3, 114, 33, -124, 66, 10, 112, -62, -67, 93, -63, 121, -25, -45, 123, 109, 111, 17, 114, -117, 121, 95, -120, 105, 63, -85, 114, -96, -104, -78, Ascii.SYN, Ascii.SI, -126, -37, -29, Ascii.ETB, 117, 46, 79, -10, 86, -16, 117, 80, -67, -14, 57, 52, -37, -122, -106, -54, -122, 63, -49, 37, 3, 101, 68, -53, -52, 40, Ascii.ESC, Ascii.NAK, -78, 52, -112, -84, 100, 100, 106, 41};
        byte[] bArr3 = {-42, -71, 100, 118, -5, 10, -123, -14, Ascii.DLE, 58, -14, 85, 105, 104, -59, 82, Ascii.FS, 87, Ascii.NAK, -71, 93, -94, 111, -16, 105, -5, Ascii.SI, 39, -111, -21, -83, -72, 127, 118, 81, -5, 82, -100, -127, -70, 67, -28, -87, -43, -60, -52, 57, Ascii.DLE, -84, -117, 69, -81, 83, -24, -13, -34, -80, -102, 67, 11, -91, Ascii.ESC, 65, -26, 78, 117, 114, 79, -1, -57, -123, Ascii.ETB, -95, -31, -13, -126, -41, 116, -126, 123, 100, -103, Ascii.DLE, 39, -122, 45, 73, 81, -18, -80, 100, 2, Ascii.DC2, SignedBytes.MAX_POWER_OF_TWO, 88, -2, -63, -87, 95, 3, 0, -97, 103, 71, -65, Base64.padSymbol, -91, Ascii.FS, 53, Ascii.DC2, 127, 105, 127, -16, 62, 39, 91, 77, Ascii.DC2, -117, -112, -104, -64, 111, -84, -75, Ascii.SUB, 90, -7, -81, 119, -57, 57, 123, 73, 53, 55, 117, 12, 17, -14, 34, 91, -28, -2, 108, -103, -90, -95, 82, -127, 73, -113, -38, -100, 107, 87, -116, -26, 106, -71, 127, 117, 48, -51, -108, -45, 52, 65, -43, -64, Ascii.DC4, 107, Ascii.ETB, 46, -20, -122, -36, -72, -14, Ascii.NAK, -110, 2, -22, 87, 5, 49, 108, -106, -61, 44, -47, -67, 103, -105, 9, 37, -103, 74, -68, 48, -53, -39, -11, -112, -67, -65, Ascii.GS, 99, 59, -39, -21, -77, 56, 78, -93, 101, 41, 39, -127, 83, -112, 65, -41, 50, SignedBytes.MAX_POWER_OF_TWO, -94, -79, -84, -24, Ascii.GS, 118, -60, 73, -84, 110, -118, -7, 96, -91, 11, 126, Ascii.DC2, -106, -84, -70, -66, -117, -62, 103, -95, -6, -93, -13, 117, -103};
        byte[] bArr4 = new byte[32];
        for (int i = 0; i < 32; i++) {
            bArr4[i] = bArr2[bArr3[bArr[i] & 255] & 255];
        }
        return bArr4;
    }

    private void b() throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        Signature[] signatureArr = getPackageManager().getPackageInfo(getPackageName(), 64).signatures;
        if (signatureArr == null || signatureArr.length == 0) {
            throw new RuntimeException("Signing certificates not found");
        }
        if (signatureArr.length != 1) {
            throw new RuntimeException("Package is signed by multiple signing certificates [" + signatureArr.length + "]");
        }
        String string = new BigInteger(1, messageDigest.digest(signatureArr[0].toByteArray())).toString(16);
        if (!"b3ad016bcd4f267eac311aa37738811b4c959b9360f4edaf79eeb467cded9132".equals(string)) {
            throw new RuntimeException("Certificate mismatch. Expecting sha256[b3ad016bcd4f267eac311aa37738811b4c959b9360f4edaf79eeb467cded9132], current sha256[" + string + "]");
        }
    }

    private static native void c();

    public static native String s(String str);

    @Override
    protected void attachBaseContext(Context context) throws NoSuchAlgorithmException {
        super.attachBaseContext(context);
        if (ProtectedFastSSH$MainActivity$3.CFhs()) {
            return;
        }
        b();
        System.loadLibrary("dexprotector");
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (ProtectedFastSSH$MainActivity$3.CFhs()) {
            return;
        }
        c();
    }
}
