package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.c;
import kotlin.text.Regex;

public final class C2400if {
    public static final C2400if a = new C2400if();
    public static final String b = "AppUtil";

    public final Signature[] a(String str) {
        y45.j(str, "packageName");
        try {
            PackageManager packageManager = rh1.a.a().getPackageManager();
            y45.i(packageManager, "getPackageManager(...)");
            PackageInfo packageInfo = packageManager.getPackageInfo(str, C.BUFFER_FLAG_FIRST_SAMPLE);
            if (packageInfo == null) {
                return new Signature[0];
            }
            SigningInfo signingInfo = packageInfo.signingInfo;
            if (signingInfo == null) {
                return new Signature[0];
            }
            if (signingInfo.hasMultipleSigners()) {
                Signature[] apkContentsSigners = signingInfo.getApkContentsSigners();
                y45.i(apkContentsSigners, "getApkContentsSigners(...)");
                return apkContentsSigners;
            }
            Signature[] signingCertificateHistory = signingInfo.getSigningCertificateHistory();
            y45.i(signingCertificateHistory, "getSigningCertificateHistory(...)");
            return signingCertificateHistory;
        } catch (PackageManager.NameNotFoundException e) {
            oq5.a.b(b, "get app signature error: ", e);
            return new Signature[0];
        }
    }

    public final List b(String str) {
        y45.j(str, "packageName");
        Signature[] signatureArrA = a(str);
        if (signatureArrA.length == 0) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList(signatureArrA.length);
        for (Signature signature : signatureArrA) {
            tx8 tx8Var = tx8.a;
            String charsString = signature.toCharsString();
            y45.i(charsString, "toCharsString(...)");
            arrayList.add(new Regex("(?<=[0-9A-F]{2})[0-9A-F]{2}").replace(tx8Var.a(charsString), ":$0"));
        }
        return arrayList;
    }

    public final String c(Context context, String str) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        y45.j(str, "packageName");
        try {
            Result.Companion companion = Result.INSTANCE;
            String str2 = context.getPackageManager().getPackageInfo(str, 0).versionName;
            if (str2 == null) {
                str2 = "";
            }
            objM279constructorimpl = Result.m279constructorimpl(str2);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        return (String) (Result.m285isFailureimpl(objM279constructorimpl) ? "" : objM279constructorimpl);
    }
}
