package cn.mmachina.mobile;

public abstract class MGADSignUtils {
    static {
        try {
            System.loadLibrary("MGADMMASignature");
        } catch (Throwable unused) {
        }
    }

    public static native String mmaSdkSign(String str, long j, String str2, String str3, String str4, String str5);
}
