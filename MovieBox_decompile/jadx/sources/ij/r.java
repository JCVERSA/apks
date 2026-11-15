package ij;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.mvel2.ast.ASTNode;

public final class r {

    public static final r f62119a = new r();

    private r() {
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032  */
    public final String a(Context context) {
        Signature signature;
        Intrinsics.h(context, "context");
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            int i10 = Build.VERSION.SDK_INT;
            PackageInfo packageInfo = i10 >= 28 ? packageManager.getPackageInfo(packageName, ASTNode.NOJIT) : packageManager.getPackageInfo(packageName, 64);
            if (i10 >= 28) {
                SigningInfo signingInfo = packageInfo.signingInfo;
                if (signingInfo != null) {
                    signature = signingInfo.getApkContentsSigners()[0];
                } else {
                    signature = null;
                }
            } else {
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr != null) {
                    signature = signatureArr[0];
                } else {
                    signature = null;
                }
            }
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(signature != null ? signature.toByteArray() : null);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                String str = String.format("%02X", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
                Intrinsics.g(str, "format(...)");
                sb2.append(str);
            }
            String string = sb2.toString();
            Intrinsics.g(string, "toString(...)");
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }
}
