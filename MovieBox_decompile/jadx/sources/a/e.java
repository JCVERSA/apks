package a;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.mvel2.ast.ASTNode;

public abstract class e {

    public static final int[][] f23a = {new int[]{232, 144, 224, 148, 231, 227, 149, 224, 228, 226, 224, 227, 228, 225, 151, 228}, new int[]{240, 243, 246, 240, 130, 129, 246, 242, 130, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 246, 246, 250, 128, 243, 130}, new int[]{102, 103, 19, 99, 101, 97, 16, 106, 100, 100, 106, 97, 107, 23, 23, 102}, new int[]{161, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 167, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 164, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, 164, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 163, 163}};

    public static final int[] f24b = {Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 195, 82, 229};

    public static final AtomicBoolean f25c = new AtomicBoolean(false);

    public static final Handler f26d = new Handler(Looper.getMainLooper());

    public static void a(Activity activity) {
        String str;
        try {
            Signature[] signatureArrB = b(activity);
            if (signatureArrB != null && signatureArrB.length != 0) {
                int[][] iArr = f23a;
                int[] iArr2 = f24b;
                byte[] bArr = new byte[64];
                for (int i10 = 63; i10 >= 0; i10--) {
                    int i11 = i10 % 4;
                    bArr[i10] = (byte) (iArr2[i11] ^ iArr[i11][i10 / 4]);
                }
                try {
                    str = new String(bArr, "UTF-8");
                } catch (Exception unused) {
                    str = "";
                }
                if (str.length() == 64) {
                    for (Signature signature : signatureArrB) {
                        byte[] bArrDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256).digest(signature.toByteArray());
                        StringBuilder sb2 = new StringBuilder(bArrDigest.length * 2);
                        for (byte b10 : bArrDigest) {
                            sb2.append(String.format(Locale.US, "%02x", Integer.valueOf(b10 & 255)));
                        }
                        if (str.equalsIgnoreCase(sb2.toString())) {
                            return;
                        }
                    }
                }
                if (f25c.compareAndSet(false, true)) {
                    int iMax = Math.max(0, 4000);
                    f26d.postDelayed(new c(3), (iMax == 0 ? 0L : Math.abs(System.nanoTime() % (((long) iMax) + 1))) + 4000);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static Signature[] b(Context context) throws IllegalAccessException, PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        if (Build.VERSION.SDK_INT >= 28) {
            Object obj = PackageInfo.class.getField("signingInfo").get(packageManager.getPackageInfo(packageName, ASTNode.NOJIT));
            if (obj == null) {
                return null;
            }
            return (Signature[]) obj.getClass().getMethod("getApkContentsSigners", null).invoke(obj, null);
        }
        return packageManager.getPackageInfo(packageName, 64).signatures;
    }
}
