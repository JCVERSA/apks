package defpackage;

import android.os.Build;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public final class qo4 implements Interceptor {
    public final qe b;

    public qo4(qe qeVar) {
        y45.j(qeVar, "appInfoProvider");
        this.b = qeVar;
    }

    public final String a() {
        return this.b.m() + StringUtils.PROCESS_POSTFIX_DELIMITER + this.b.h() + StringUtils.PROCESS_POSTFIX_DELIMITER + this.b.a();
    }

    public final String b() {
        if (!this.b.i()) {
            return this.b.l() + " " + this.b.j();
        }
        return this.b.l() + " " + this.b.j() + " test";
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        y45.j(chain, "chain");
        Request.Builder builderNewBuilder = chain.request().newBuilder();
        builderNewBuilder.addHeader("App-ID", this.b.l());
        builderNewBuilder.addHeader("Device-ID", this.b.e());
        builderNewBuilder.addHeader("TPMS-ID", this.b.g());
        builderNewBuilder.addHeader("MCC", this.b.d());
        String str = Build.MODEL;
        y45.i(str, "MODEL");
        builderNewBuilder.addHeader("Device-Model", str);
        String str2 = Build.BRAND;
        y45.i(str2, "BRAND");
        builderNewBuilder.addHeader("Device-Brand", str2);
        builderNewBuilder.addHeader("Device-Name", this.b.f());
        builderNewBuilder.addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        builderNewBuilder.addHeader("Version-ID", this.b.j());
        builderNewBuilder.addHeader("OS-Type", "1");
        builderNewBuilder.addHeader("OS-Version", this.b.b());
        builderNewBuilder.addHeader("Lang", this.b.k());
        String packageName = rh1.a.a().getPackageName();
        y45.i(packageName, "getPackageName(...)");
        builderNewBuilder.addHeader("PKG-Name", packageName);
        builderNewBuilder.addHeader("PKG-Sign", this.b.c());
        builderNewBuilder.addHeader("Cipher-Sdk-Version", na3.a.b());
        builderNewBuilder.addHeader("User-Agent", b());
        builderNewBuilder.addHeader("Referer", a());
        builderNewBuilder.addHeader("System-Version", String.valueOf(Build.VERSION.SDK_INT));
        String[] strArr = Build.SUPPORTED_ABIS;
        y45.i(strArr, "SUPPORTED_ABIS");
        builderNewBuilder.addHeader("CPU-Model", hi.s0(strArr, StringUtils.COMMA, null, null, 0, null, null, 62, null));
        return chain.proceed(builderNewBuilder.build());
    }
}
