package com.google.android.gms.common;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public class GooglePlayServicesUtilLight {
    static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;
    static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    public static boolean zza;
    public static boolean zzb;
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = ProtectedFastSSH.s("㹃");

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = ProtectedFastSSH.s("㹄");
    public static final String GOOGLE_SERVICES_FRAMEWORK_PACKAGE = ProtectedFastSSH.s("㹅");
    public static final String GOOGLE_PLAY_STORE_PACKAGE = ProtectedFastSSH.s("㹆");

    @Deprecated
    static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    GooglePlayServicesUtilLight() {
    }

    @Deprecated
    public static void cancelAvailabilityErrorNotifications(Context context) {
        if (sCanceledAvailabilityNotification.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(ProtectedFastSSH.s("㹇"));
            if (notificationManager != null) {
                notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
            }
        } catch (SecurityException e) {
            ProtectedFastSSH.s("㹈");
            ProtectedFastSSH.s("㹉");
        }
    }

    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @Deprecated
    public static void ensurePlayServicesAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i);
        if (iIsGooglePlayServicesAvailable != 0) {
            Intent errorResolutionIntent = GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(context, iIsGooglePlayServicesAvailable, ProtectedFastSSH.s("㹊"));
            StringBuilder sb = new StringBuilder(String.valueOf(iIsGooglePlayServicesAvailable).length() + 46);
            sb.append(ProtectedFastSSH.s("㹋"));
            sb.append(iIsGooglePlayServicesAvailable);
            sb.toString();
            ProtectedFastSSH.s("㹈");
            if (errorResolutionIntent != null) {
                throw new GooglePlayServicesRepairableException(iIsGooglePlayServicesAvailable, ProtectedFastSSH.s("㹌"), errorResolutionIntent);
            }
            throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
        }
    }

    @Deprecated
    public static int getApkVersion(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(ProtectedFastSSH.s("㹄"), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            ProtectedFastSSH.s("㹈");
            ProtectedFastSSH.s("㹍");
            return 0;
        }
    }

    @Deprecated
    public static int getClientVersion(Context context) {
        Preconditions.checkState(true);
        return ClientLibraryUtils.getClientVersion(context, context.getPackageName());
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.zza(i);
    }

    @Deprecated
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, i, null);
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext(ProtectedFastSSH.s("㹄"), 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication(ProtectedFastSSH.s("㹄"));
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean honorsDebugCertificates(Context context) {
        try {
            if (!zzb) {
                PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(ProtectedFastSSH.s("㹄"), Build.VERSION.SDK_INT >= 28 ? 134217792 : 64);
                GoogleSignatureVerifier.getInstance(context);
                if (packageInfo == null || GoogleSignatureVerifier.zza(packageInfo, false) || !GoogleSignatureVerifier.zza(packageInfo, true)) {
                    zza = false;
                } else {
                    zza = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            ProtectedFastSSH.s("㹈");
            ProtectedFastSSH.s("㹎");
        } finally {
            zzb = true;
        }
        return zza || !DeviceProperties.isUserBuild();
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:59:0x011d  */
    /* JADX WARN: Code duplicated, block: B:60:0x0170  */
    /* JADX WARN: Code duplicated, block: B:68:0x0192 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0194 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:72:0x0174 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        ProtectedFastSSH.s("㹈");
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            ProtectedFastSSH.s("㹏");
        }
        String packageName = context.getPackageName();
        String strS = ProtectedFastSSH.s("㹄");
        if (!strS.equals(packageName) && !zzc.get()) {
            int iZzb = com.google.android.gms.common.internal.zzae.zzb(context);
            if (iZzb == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (iZzb != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                throw new GooglePlayServicesIncorrectManifestValueException(iZzb);
            }
        }
        boolean z = (DeviceProperties.isWearableWithoutPlayStore(context) || DeviceProperties.zzd(context)) ? false : true;
        Preconditions.checkArgument(i >= 0);
        String packageName2 = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo(ProtectedFastSSH.s("㹆"), Build.VERSION.SDK_INT >= 28 ? 134225984 : 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                String.valueOf(packageName2);
                String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹐"));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo(strS, Build.VERSION.SDK_INT >= 28 ? 134217792 : 64);
            GoogleSignatureVerifier.getInstance(context);
            if (!GoogleSignatureVerifier.zza(packageInfo2, true)) {
                String.valueOf(packageName2);
                String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹑"));
            } else {
                if (!z) {
                    if (z) {
                    }
                    if (com.google.android.gms.common.util.zzb.zza(packageInfo2.versionCode) < com.google.android.gms.common.util.zzb.zza(i)) {
                        applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            applicationInfo = packageManager.getApplicationInfo(strS, 0);
                        }
                        if (applicationInfo.enabled) {
                            return 0;
                        }
                        return 3;
                    }
                    int i2 = packageInfo2.versionCode;
                    StringBuilder sb = new StringBuilder(String.valueOf(packageName2).length() + 49 + String.valueOf(i).length() + 11 + String.valueOf(i2).length());
                    sb.append(ProtectedFastSSH.s("㹔"));
                    sb.append(packageName2);
                    sb.append(ProtectedFastSSH.s("㹕"));
                    sb.append(i);
                    sb.append(ProtectedFastSSH.s("㹖"));
                    sb.append(i2);
                    sb.toString();
                    return 2;
                }
                Preconditions.checkNotNull(packageInfo);
                if (!GoogleSignatureVerifier.zza(packageInfo, true)) {
                    String.valueOf(packageName2);
                    String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹒"));
                } else {
                    if (z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                        if (com.google.android.gms.common.util.zzb.zza(packageInfo2.versionCode) < com.google.android.gms.common.util.zzb.zza(i)) {
                            applicationInfo = packageInfo2.applicationInfo;
                            if (applicationInfo == null) {
                                try {
                                    applicationInfo = packageManager.getApplicationInfo(strS, 0);
                                } catch (PackageManager.NameNotFoundException e) {
                                    String.valueOf(packageName2);
                                    String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹗"));
                                    return 1;
                                }
                            }
                            if (applicationInfo.enabled) {
                                return 3;
                            }
                            return 0;
                        }
                        int i3 = packageInfo2.versionCode;
                        StringBuilder sb2 = new StringBuilder(String.valueOf(packageName2).length() + 49 + String.valueOf(i).length() + 11 + String.valueOf(i3).length());
                        sb2.append(ProtectedFastSSH.s("㹔"));
                        sb2.append(packageName2);
                        sb2.append(ProtectedFastSSH.s("㹕"));
                        sb2.append(i);
                        sb2.append(ProtectedFastSSH.s("㹖"));
                        sb2.append(i3);
                        sb2.toString();
                        return 2;
                    }
                    String.valueOf(packageName2);
                    String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹓"));
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            String.valueOf(packageName2);
            String.valueOf(packageName2).concat(ProtectedFastSSH.s("㹘"));
            return 1;
        }
    }

    @Deprecated
    public static boolean isGooglePlayServicesUid(Context context, int i) {
        return UidVerifier.isGooglePlayServicesUid(context, i);
    }

    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zza(context, ProtectedFastSSH.s("㹄"));
        }
        return false;
    }

    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(Context context, int i) {
        if (i == 9) {
            return zza(context, ProtectedFastSSH.s("㹆"));
        }
        return false;
    }

    public static boolean isRestrictedUserProfile(Context context) {
        Object systemService = context.getSystemService(ProtectedFastSSH.s("㹙"));
        Preconditions.checkNotNull(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && ProtectedFastSSH.s("㹚").equals(applicationRestrictions.getString(ProtectedFastSSH.s("㹛")));
    }

    @Deprecated
    public static boolean isSidewinderDevice(Context context) {
        return DeviceProperties.isSidewinder(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    public static boolean uidHasPackageName(Context context, int i, String str) {
        return UidVerifier.uidHasPackageName(context, i, str);
    }

    static boolean zza(Context context, String str) throws PackageManager.NameNotFoundException {
        boolean zEquals = str.equals(ProtectedFastSSH.s("㹄"));
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
            return applicationInfo.enabled && !isRestrictedUserProfile(context);
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
    }
}
