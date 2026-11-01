package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.PendingIntentCompat;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;

public class GoogleApiAvailabilityLight {
    static final String TRACKING_SOURCE_DIALOG = ProtectedFastSSH.s("㸡");
    static final String TRACKING_SOURCE_NOTIFICATION = ProtectedFastSSH.s("㸢");
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = ProtectedFastSSH.s("㸣");
    public static final String GOOGLE_PLAY_STORE_PACKAGE = ProtectedFastSSH.s("㸤");
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final GoogleApiAvailabilityLight zza = new GoogleApiAvailabilityLight();

    GoogleApiAvailabilityLight() {
    }

    public static GoogleApiAvailabilityLight getInstance() {
        return zza;
    }

    public void cancelAvailabilityErrorNotifications(Context context) {
        GooglePlayServicesUtilLight.cancelAvailabilityErrorNotifications(context);
    }

    public int getApkVersion(Context context) {
        return GooglePlayServicesUtilLight.getApkVersion(context);
    }

    public int getClientVersion(Context context) {
        return GooglePlayServicesUtilLight.getClientVersion(context);
    }

    @Deprecated
    public Intent getErrorResolutionIntent(int i) {
        return getErrorResolutionIntent(null, i, null);
    }

    public Intent getErrorResolutionIntent(Context context, int i, String str) {
        String strS = ProtectedFastSSH.s("㸣");
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            Uri uriFromParts = Uri.fromParts(ProtectedFastSSH.s("㸥"), strS, null);
            Intent intent = new Intent(ProtectedFastSSH.s("㸦"));
            intent.setData(uriFromParts);
            return intent;
        }
        if (context != null && DeviceProperties.isWearableWithoutPlayStore(context)) {
            Intent intent2 = new Intent(ProtectedFastSSH.s("㸧"));
            intent2.setPackage(ProtectedFastSSH.s("㸨"));
            return intent2;
        }
        StringBuilder sb = new StringBuilder(ProtectedFastSSH.s("㸩"));
        sb.append(GOOGLE_PLAY_SERVICES_VERSION_CODE);
        String strS2 = ProtectedFastSSH.s("㸪");
        sb.append(strS2);
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append(strS2);
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append(strS2);
        if (context != null) {
            try {
                sb.append(Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String string = sb.toString();
        Intent intent3 = new Intent(ProtectedFastSSH.s("㸫"));
        Uri.Builder builderAppendQueryParameter = Uri.parse(ProtectedFastSSH.s("㸬")).buildUpon().appendQueryParameter(ProtectedFastSSH.s("㸭"), strS);
        if (!TextUtils.isEmpty(string)) {
            builderAppendQueryParameter.appendQueryParameter(ProtectedFastSSH.s("㸮"), string);
        }
        intent3.setData(builderAppendQueryParameter.build());
        intent3.setPackage(ProtectedFastSSH.s("㸤"));
        intent3.addFlags(524288);
        return intent3;
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return getErrorResolutionPendingIntent(context, i, i2, null);
    }

    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2, String str) {
        Intent errorResolutionIntent = getErrorResolutionIntent(context, i, str);
        if (errorResolutionIntent == null) {
            return null;
        }
        return PendingIntentCompat.getActivity(context, i2, errorResolutionIntent, 134217728, false);
    }

    public String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    public int isGooglePlayServicesAvailable(Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    public int isGooglePlayServicesAvailable(Context context, int i) {
        int iIsGooglePlayServicesAvailable = GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, iIsGooglePlayServicesAvailable)) {
            return 18;
        }
        return iIsGooglePlayServicesAvailable;
    }

    public boolean isPlayServicesPossiblyUpdating(Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i);
    }

    public boolean isPlayStorePossiblyUpdating(Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i);
    }

    public boolean isUninstalledAppPossiblyUpdating(Context context, String str) {
        return GooglePlayServicesUtilLight.zza(context, str);
    }

    public boolean isUserResolvableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    public void verifyGooglePlayServicesIsAvailable(Context context, int i) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context, i);
    }
}
