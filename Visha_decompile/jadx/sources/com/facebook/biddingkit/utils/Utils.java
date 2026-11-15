package com.facebook.biddingkit.utils;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.biddingkit.gen.biddingConstants;
import com.facebook.biddingkit.logging.BkLog;
import com.facebook.biddingkit.waterfall.Waterfall;
import com.facebook.biddingkit.waterfall.WaterfallEntry;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

public class Utils {
    private static final int CONNECTION_2G = 4;
    private static final int CONNECTION_3G = 5;
    private static final int CONNECTION_4G = 6;
    private static final int CONNECTION_CELLULAR_UNKNOWN = 3;
    private static final int CONNECTION_ETHERNET = 1;
    private static final int CONNECTION_UNKNOWN = 0;
    private static final int CONNECTION_WIFI = 2;
    private static final String TAG = "Utils";

    @Nullable
    private static AdvertisingIdClient.Info getAdvertisingIdClientInfo(Context context) {
        try {
            return AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            BkLog.e(TAG, "Failed to get AdvertisingIdClient: ", e);
            return null;
        } catch (GooglePlayServicesRepairableException e2) {
            BkLog.e(TAG, "Failed to get AdvertisingIdClient: ", e2);
            return null;
        } catch (Exception e3) {
            BkLog.e(TAG, "Failed to get AdvertisingIdClient: ", e3);
            return null;
        }
    }

    public static String getApplicationName(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String string = context.getPackageManager().getApplicationLabel(applicationInfo).toString();
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        int i = applicationInfo.labelRes;
        return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
    }

    public static String getBundle(Context context) {
        PendingIntent activity = PendingIntent.getActivity(context, 0, new Intent(), 0);
        return activity == null ? "" : activity.getCreatorPackage();
    }

    public static String getCarrier(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
    }

    public static int getConnectionType(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                return 2;
            }
            if (activeNetworkInfo.getType() == 9) {
                return 1;
            }
            if (activeNetworkInfo.getType() == 0) {
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 4;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 5;
                    case 13:
                    case 18:
                    case 19:
                        return 6;
                    default:
                        return 3;
                }
            }
        }
        return 0;
    }

    public static WaterfallEntry[] getFirstAndSecondBidderEntries(Waterfall waterfall) {
        WaterfallEntry[] waterfallEntryArr = new WaterfallEntry[2];
        if (waterfall == null) {
            return waterfallEntryArr;
        }
        for (WaterfallEntry waterfallEntry : waterfall.entries()) {
            if (biddingConstants.isBidder(waterfallEntry.getEntryName())) {
                WaterfallEntry waterfallEntry2 = waterfallEntryArr[0];
                if (waterfallEntry2 == null) {
                    waterfallEntryArr[0] = waterfallEntry;
                } else if (waterfallEntry2.getCPMCents() < waterfallEntry.getCPMCents()) {
                    waterfallEntryArr[1] = waterfallEntryArr[0];
                    waterfallEntryArr[0] = waterfallEntry;
                } else {
                    WaterfallEntry waterfallEntry3 = waterfallEntryArr[1];
                    if (waterfallEntry3 == null) {
                        waterfallEntryArr[1] = waterfallEntry;
                    } else if (waterfallEntry3.getCPMCents() < waterfallEntry.getCPMCents()) {
                        waterfallEntryArr[1] = waterfallEntry;
                    }
                }
            }
        }
        return waterfallEntryArr;
    }

    public static String getIdfa(Context context) {
        AdvertisingIdClient.Info advertisingIdClientInfo = getAdvertisingIdClientInfo(context);
        return advertisingIdClientInfo != null ? advertisingIdClientInfo.getId() : "";
    }

    public static boolean getLimitAdTrackingEnabled(Context context) {
        AdvertisingIdClient.Info advertisingIdClientInfo = getAdvertisingIdClientInfo(context);
        if (advertisingIdClientInfo != null) {
            return advertisingIdClientInfo.isLimitAdTrackingEnabled();
        }
        return false;
    }

    public static boolean isLandscape(Context context) {
        return context != null && context.getResources().getConfiguration().orientation == 2;
    }
}
