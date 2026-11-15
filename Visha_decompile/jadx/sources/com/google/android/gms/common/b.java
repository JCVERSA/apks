package com.google.android.gms.common;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import defpackage.aj4;
import defpackage.bae;
import defpackage.dwe;
import defpackage.ia2;
import defpackage.mpc;
import defpackage.wd8;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.BooleanUtils;

public abstract class b {
    public static final int a = 12451000;
    public static boolean c = false;
    public static boolean d = false;
    public static final AtomicBoolean b = new AtomicBoolean();
    public static final AtomicBoolean e = new AtomicBoolean();

    public static void a(Context context) {
        if (b.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(10436);
            }
        } catch (SecurityException e2) {
            Log.d("GooglePlayServicesUtil", "Suppressing Security Exception %s in cancelAvailabilityErrorNotifications.", e2);
        }
    }

    public static void b(Context context, int i) {
        int i2 = aj4.g().i(context, i);
        if (i2 != 0) {
            Intent intentC = aj4.g().c(context, i2, "e");
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 46);
            sb.append("GooglePlayServices not available due to error ");
            sb.append(i2);
            Log.e("GooglePlayServicesUtil", sb.toString());
            if (intentC != null) {
                throw new GooglePlayServicesRepairableException(i2, "Google Play Services not available", intentC);
            }
            throw new GooglePlayServicesNotAvailableException(i2);
        }
    }

    public static int c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    public static String d(int i) {
        return ConnectionResult.zza(i);
    }

    public static Context e(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources f(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean g(Context context) {
        try {
            if (!d) {
                PackageInfo packageInfoF = mpc.a(context).f("com.google.android.gms", 134217792);
                c.a(context);
                if (packageInfoF == null || c.c(packageInfoF, false) || !c.c(packageInfoF, true)) {
                    c = false;
                } else {
                    c = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e2);
        } finally {
            d = true;
        }
        return c || !ia2.e();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:53:0x0126  */
    /* JADX WARN: Code duplicated, block: B:61:0x0142 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0144 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x012a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static int h(Context context, int i) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !e.get()) {
            int iA = bae.a(context);
            if (iA == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (iA != a) {
                throw new GooglePlayServicesIncorrectManifestValueException(iA);
            }
        }
        boolean z = (ia2.g(context) || ia2.j(context)) ? false : true;
        wd8.a(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 134225984);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 134217792);
            c.a(context);
            if (!c.c(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else {
                if (!z) {
                    if (z) {
                    }
                    if (dwe.a(packageInfo2.versionCode) < dwe.a(i)) {
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        }
                        if (applicationInfo.enabled) {
                            return 0;
                        }
                        return 3;
                    }
                    int i2 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 49 + String.valueOf(i).length() + 11 + String.valueOf(i2).length());
                    sb.append("Google Play services out of date for ");
                    sb.append(packageName);
                    sb.append(".  Requires ");
                    sb.append(i);
                    sb.append(" but found ");
                    sb.append(i2);
                    Log.w("GooglePlayServicesUtil", sb.toString());
                    return 2;
                }
                wd8.l(packageInfo);
                if (!c.c(packageInfo, true)) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                } else {
                    if (z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                        if (dwe.a(packageInfo2.versionCode) < dwe.a(i)) {
                            applicationInfo = packageInfo2.applicationInfo;
                            if (applicationInfo == null) {
                                try {
                                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                                } catch (PackageManager.NameNotFoundException e2) {
                                    Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e2);
                                    return 1;
                                }
                            }
                            if (applicationInfo.enabled) {
                                return 3;
                            }
                            return 0;
                        }
                        int i3 = packageInfo2.versionCode;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(packageName).length() + 49 + String.valueOf(i).length() + 11 + String.valueOf(i3).length());
                        sb2.append("Google Play services out of date for ");
                        sb2.append(packageName);
                        sb2.append(".  Requires ");
                        sb2.append(i);
                        sb2.append(" but found ");
                        sb2.append(i3);
                        Log.w("GooglePlayServicesUtil", sb2.toString());
                        return 2;
                    }
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    public static boolean i(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return l(context, "com.google.android.gms");
        }
        return false;
    }

    public static boolean j(Context context) {
        Object systemService = context.getSystemService("user");
        wd8.l(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && BooleanUtils.TRUE.equals(applicationRestrictions.getString("restricted_profile"));
    }

    public static boolean k(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    public static boolean l(Context context, String str) throws PackageManager.NameNotFoundException {
        boolean zEquals = str.equals("com.google.android.gms");
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
            if (zEquals) {
                return applicationInfo.enabled;
            }
            return applicationInfo.enabled && !j(context);
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
    }
}
