package com.transsion.xuanniao.account.model.data;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.core.deviceinfo.DeviceInfo;
import defpackage.ao7;
import defpackage.go7;
import java.io.Serializable;

public class ConfigReq implements Serializable {
    public String accountId;
    public String androidVersion;
    public String appId;
    public String appVersion;
    public String brand;
    public String buildNumber;
    public String businessGroup;
    public String cpuId;
    public String gaid;
    public String language;
    public String mcc;
    public String network;
    public String openId;
    public String osVersion;
    public String versionId;

    public static String SystemPropertiesGet(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static ConfigReq generateReq(Context context) {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        ConfigReq configReq = new ConfigReq();
        configReq.osVersion = getOsVersion();
        configReq.gaid = DeviceInfo.d();
        configReq.mcc = context == null ? null : getOperatorMccOrLegacy(context);
        configReq.language = context != null ? context.getResources().getConfiguration().locale.getLanguage().toLowerCase() : null;
        configReq.brand = Build.BRAND;
        configReq.androidVersion = Build.VERSION.RELEASE;
        configReq.buildNumber = Build.DISPLAY;
        String str = "";
        configReq.businessGroup = "";
        if (context != null) {
            try {
                str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (Exception e) {
                e.printStackTrace();
            }
            configReq.appVersion = str;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        String str2 = "none";
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo == null || (state = networkInfo.getState()) == null || !(state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                if (networkInfo2 != null) {
                    NetworkInfo.State state2 = networkInfo2.getState();
                    String subtypeName = networkInfo2.getSubtypeName();
                    if (state2 != null && (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING)) {
                        str2 = "3G";
                        switch (activeNetworkInfo.getSubtype()) {
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                                str2 = "2G";
                                break;
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                                break;
                            case 13:
                                str2 = "4G";
                                break;
                            default:
                                if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                                    str2 = "5G";
                                }
                                break;
                        }
                    }
                }
            } else {
                str2 = "wifi";
            }
        }
        configReq.network = str2;
        AccountRes accountResJ = ao7.a.a.j(context);
        if (accountResJ != null) {
            configReq.accountId = accountResJ.xuanniaoId;
        }
        configReq.cpuId = getCpuId(context);
        configReq.appId = go7.a.a.a;
        return configReq;
    }

    @SuppressLint({TtmlNode.COMBINE_ALL})
    public static String getCpuId(Context context) throws Throwable {
        Cursor cursorQuery;
        Throwable th;
        ContentResolver contentResolver = context.getContentResolver();
        String string = null;
        try {
            cursorQuery = contentResolver.query(Uri.parse("content://com.hoffnung.DeviceInfoProvider"), null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToFirst();
                        string = cursorQuery.getString(cursorQuery.getColumnIndex("cpuid"));
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                    }
                    return string;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
        }
        return string;
    }

    public static String getOperatorMccOrLegacy(Context context) {
        String networkOperator = ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getNetworkOperator();
        if (!TextUtils.isEmpty(networkOperator) || networkOperator.length() <= 2) {
            return null;
        }
        return networkOperator.substring(0, 3);
    }

    public static String getOsVersion() {
        String strSystemPropertiesGet = SystemPropertiesGet("ro.tranos.version");
        return TextUtils.isEmpty(strSystemPropertiesGet) ? SystemPropertiesGet("ro.os_product.version") : strSystemPropertiesGet;
    }
}
