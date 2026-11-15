package a;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicBoolean;
import org.mvel2.ast.ASTNode;

public abstract class d {

    public static final int[][] f18a = {new int[]{66, 58, 74, 62, 77, 73, 63, 74, 78, 72, 74, 73, 78, 75, 61, 78}, new int[]{244, 247, 242, 244, 134, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 242, 246, 134, 129, 242, 242, 254, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 247, 134}, new int[]{180, 181, 193, 177, 183, 179, 194, 184, 182, 182, 184, 179, 185, 197, 197, 180}, new int[]{Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 250, 143, 248, 249, 140, 254, 253, 254, 249, 252, 140, 254, 253, 139, 139}};

    public static final int[] f19b = {Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, 199, 128, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE};

    public static final AtomicBoolean f20c = new AtomicBoolean(false);

    public static final Handler f21d = new Handler(Looper.getMainLooper());

    public static final SecureRandom f22e = new SecureRandom();

    public static Signature[] a(Application application) throws IllegalAccessException, PackageManager.NameNotFoundException {
        PackageManager packageManager = application.getPackageManager();
        String packageName = application.getPackageName();
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
