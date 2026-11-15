package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import defpackage.y45;
import io.appmetrica.analytics.coreapi.internal.model.AppVersionInfo;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreapi.internal.model.SdkEnvironment;
import io.appmetrica.analytics.coreapi.internal.model.SdkInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class Ui implements SdkEnvironmentProvider {
    public final Context a;
    public final Nb b = new Nb();
    public final CopyOnWriteArrayList c = new CopyOnWriteArrayList();
    public SdkEnvironment d;
    public String e;

    public Ui(Context context) {
        this.a = context;
        this.d = new SdkEnvironment(new AppVersionInfo(PackageManagerUtils.getAppVersionName(context), PackageManagerUtils.getAppVersionCodeString(context)), FrameworkDetector.framework(), new ScreenInfo(0, 0, 0, 0.0f), new SdkInfo("7.7.2", "50130239", Vi.a()), "phone", Nb.a(context.getResources().getConfiguration()));
    }

    public final synchronized void a(ScreenInfo screenInfo) {
        float f;
        if (screenInfo != null) {
            try {
                if (!y45.e(screenInfo, getSdkEnvironment().getScreenInfo())) {
                    String str = this.e;
                    if (str == null) {
                        Context context = this.a;
                        Point point = new Point(screenInfo.getWidth(), screenInfo.getHeight());
                        SafePackageManager safePackageManager = AbstractC2939ve.a;
                        try {
                            f = context.getResources().getDisplayMetrics().density;
                        } catch (Throwable unused) {
                            f = 0.0f;
                        }
                        if (f == 0.0f) {
                            str = "phone";
                        } else {
                            float f2 = point.x;
                            float f3 = point.y;
                            float fMin = Math.min(f2 / f, f3 / f);
                            float f4 = f * 160.0f;
                            float f5 = f2 / f4;
                            float f6 = f3 / f4;
                            double dSqrt = Math.sqrt((f6 * f6) + (f5 * f5));
                            if (dSqrt < 15.0d || AbstractC2939ve.a.hasSystemFeature(context, "android.hardware.touchscreen")) {
                                str = (dSqrt >= 7.0d || fMin >= 600.0f) ? "tablet" : "phone";
                            } else {
                                str = "tv";
                            }
                        }
                    }
                    this.d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, screenInfo, null, str, null, 43, null);
                    Iterator it = this.c.iterator();
                    while (it.hasNext()) {
                        ((B5) ((Ti) it.next())).d();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Ti ti) {
        this.c.remove(ti);
    }

    @Override
    public final SdkEnvironment getSdkEnvironment() {
        SdkEnvironment sdkEnvironment = this.d;
        if (sdkEnvironment != null) {
            return sdkEnvironment;
        }
        y45.B("sdkEnvironment");
        return null;
    }

    public final synchronized void a(String str) {
        if (str != null) {
            if (!y45.e(str, this.e)) {
                this.e = str;
                if (!y45.e(str, getSdkEnvironment().getDeviceType())) {
                    this.d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, null, null, str, null, 47, null);
                    Iterator it = this.c.iterator();
                    while (it.hasNext()) {
                        ((B5) ((Ti) it.next())).d();
                    }
                }
            }
        }
    }

    public final synchronized void a(String str, String str2) {
        if (str == null) {
            try {
                str = getSdkEnvironment().getAppVersionInfo().getAppVersionName();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (str2 == null) {
            str2 = getSdkEnvironment().getAppVersionInfo().getAppBuildNumber();
        }
        AppVersionInfo appVersionInfo = getSdkEnvironment().getAppVersionInfo();
        if (!y45.e(appVersionInfo.getAppVersionName(), str) || !y45.e(appVersionInfo.getAppBuildNumber(), str2)) {
            this.d = SdkEnvironment.copy$default(getSdkEnvironment(), new AppVersionInfo(str, str2), null, null, null, null, null, 62, null);
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((B5) ((Ti) it.next())).d();
            }
        }
    }

    public final synchronized void a(Configuration configuration) {
        this.b.getClass();
        List listA = Nb.a(configuration);
        if (!y45.e(getSdkEnvironment().getLocales(), listA)) {
            this.d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, null, null, null, listA, 31, null);
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((B5) ((Ti) it.next())).d();
            }
        }
    }

    public final void a(Ti ti) {
        this.c.add(ti);
    }
}
