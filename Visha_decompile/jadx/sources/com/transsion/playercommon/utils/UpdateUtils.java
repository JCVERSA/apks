package com.transsion.playercommon.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.util.Log;
import androidx.annotation.Keep;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.CloudVersionControl;
import com.transsion.playercommon.data.PopLogic;
import com.transsion.playercommon.vishaapis.appconfig.AppControlManager;
import com.transsion.playercommon.vishaapis.appconfig.AppControlService;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.utils.ToastUtils;
import defpackage.bs8;
import defpackage.f5;
import defpackage.ge;
import defpackage.gu8;
import defpackage.p06;
import defpackage.w6c;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public abstract class UpdateUtils {
    public static volatile long a = 0;
    public static int b = -1;
    public static volatile boolean c = true;

    @Keep
    public static class FeatureInfo {
        public String appId;
        public String appVersion;
        public String brand;
        public String configKey;
        public String gaid;
        public String imei;
        public String language;
        public String mcc;
        public String model;
        public String oneId;
        public String osVersion;
        public String pageName;
        public String secretKey;
        public String version;
    }

    @Keep
    public static class PostJson {
        public String encryptContent;
        public String iv;
        public String key;

        public PostJson(String str, String str2, String str3) {
            this.encryptContent = str;
            this.key = str2;
            this.iv = str3;
        }
    }

    public static void a(Context context, int i) {
        s(context, i);
        q(context);
        r(context);
    }

    public static boolean b(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "user_experience", 1) == 1;
    }

    public static PopLogic c(Context context) {
        PopLogic popLogic = (PopLogic) w6c.f(context, "update_dialog_logic");
        StringBuilder sb = new StringBuilder();
        sb.append("getPopLogic:");
        sb.append(popLogic == null);
        Log.i("visha_UpdateUtils", sb.toString());
        return popLogic;
    }

    public static long d(Context context) {
        return w6c.e(context, "last_query_time", 0L);
    }

    public static CloudVersionControl e(Context context) {
        CloudVersionControl cloudVersionControl = (CloudVersionControl) w6c.f(context, "update_dialog_info");
        StringBuilder sb = new StringBuilder();
        sb.append("getUpDateInfo:");
        sb.append(cloudVersionControl == null);
        Log.i("visha_UpdateUtils", sb.toString());
        return cloudVersionControl;
    }

    public static long f(Context context) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static CloudVersionControl g(Context context, boolean z, boolean z2) {
        gu8 gu8VarExecute;
        BaseResponse baseResponse;
        try {
            gu8VarExecute = ((AppControlService) AppControlManager.getInstance().getApi(AppControlService.class)).checkNewVersions(String.valueOf(f(context))).execute();
        } catch (IOException e) {
            Log.i("visha_UpdateUtils", "getVersionControlByCms exception:" + e);
            gu8VarExecute = null;
        }
        a = System.currentTimeMillis();
        if (gu8VarExecute == null) {
            Log.i("visha_UpdateUtils", " Cannot get cloud feature!");
            o(context, z, R.string.update_check_error);
            if (z2) {
                p06.O(2);
            }
            return null;
        }
        if (!gu8VarExecute.e() || gu8VarExecute.a() == null) {
            Log.i("visha_UpdateUtils", "get cloud feature is " + gu8VarExecute.toString());
            o(context, z, R.string.update_is_newest);
            if (z2) {
                p06.O(2);
            }
            s(context, -1);
            q(context);
            r(context);
            return null;
        }
        try {
            baseResponse = (BaseResponse) gu8VarExecute.a();
        } catch (Exception e2) {
            Log.i("visha_UpdateUtils", "response body exception:" + e2.getMessage());
            baseResponse = null;
        }
        if (baseResponse == null) {
            Log.i("visha_UpdateUtils", "CloudVersionControl convert to been error control is null");
            o(context, z, R.string.update_is_newest);
            if (z2) {
                p06.O(2);
            }
            a(context, -1);
            return null;
        }
        if (!baseResponse.isSuccess()) {
            Log.i("visha_UpdateUtils", "CloudVersionControl convert to been error " + baseResponse.getMessage());
            o(context, z, R.string.update_is_newest);
            a(context, -1);
            if (z2) {
                p06.O(2);
            }
            return null;
        }
        CloudVersionControl cloudVersionControl = (CloudVersionControl) baseResponse.getData();
        if (cloudVersionControl == null) {
            Log.i("visha_UpdateUtils", "CloudVersionControl convert to been data is empty ");
            o(context, z, R.string.update_is_newest);
            a(context, -1);
            if (z2) {
                p06.O(2);
            }
            return null;
        }
        t(context, 0, cloudVersionControl);
        if (cloudVersionControl.hasNewVersionCode(context)) {
            return cloudVersionControl;
        }
        a(context, -1);
        o(context, z, R.string.update_is_newest);
        if (z2) {
            p06.O(0);
        }
        return null;
    }

    public static String h(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean i(int i) {
        return i > 0;
    }

    public static void j(Context context) {
        String packageName = context.getPackageName();
        if (l(context, "com.android.vending")) {
            if (packageName != null) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName));
                    intent.setPackage("com.android.vending");
                    intent.addFlags(268435456);
                    f5.c(intent, context);
                    return;
                } catch (Exception e) {
                    Log.e("visha_UpdateUtils", e.getMessage());
                    return;
                }
            }
            return;
        }
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("Https://play.google.com/store/app/details?id=" + packageName));
            intent2.addFlags(268435456);
            f5.c(intent2, context);
        } catch (Exception e2) {
            Log.e("visha_UpdateUtils", "intentToGP exception:" + e2.getMessage());
        }
    }

    public static void k(Context context) {
        String packageName = context.getPackageName();
        if (l(context, "com.transsnet.store")) {
            if (packageName != null) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("palmplay://thirdlauncher.com/?entryType=AppDetail&name=d.light&_source=Visha&_mediatype=Install&packageName=com.transsion.magicshow"));
                    intent.setPackage("com.transsnet.store");
                    intent.addFlags(268435456);
                    f5.c(intent, context);
                    return;
                } catch (Exception e) {
                    Log.e("visha_UpdateUtils", e.getMessage());
                    return;
                }
            }
            return;
        }
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://m.palmplaystore.com/app/soft_detail?size=5.09MB&itemID=s_a9a756f29217451dbb4844313de4a7dd&term=visha&search_flag=1#category=HOME#subCategory="));
            intent2.addFlags(268435456);
            f5.c(intent2, context);
        } catch (Exception e2) {
            Log.e("visha_UpdateUtils", "intentToPS exception:" + e2.getMessage());
        }
    }

    public static boolean l(Context context, String str) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages == null) {
            return false;
        }
        Iterator<PackageInfo> it = installedPackages.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(str, it.next().packageName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean m(long j) {
        return DateUtils.isToday(j);
    }

    public static boolean n(Context context, boolean z) {
        CloudVersionControl cloudVersionControl = bs8.a;
        if (cloudVersionControl == null) {
            return false;
        }
        PopLogic popLogicC = c(context);
        Log.i("visha_UpdateUtils", "popLogic:" + popLogicC);
        if (popLogicC == null) {
            popLogicC = new PopLogic();
            popLogicC.popCycle = cloudVersionControl.popCycle;
            popLogicC.popTimes = cloudVersionControl.popTimes;
        }
        int popCycle = cloudVersionControl.getPopCycle();
        if (popCycle == 0) {
            if (m(popLogicC.lastPopTime)) {
                if (!z || !i(popLogicC.popTimes)) {
                    return false;
                }
                popLogicC.popTimes--;
                u(context, popLogicC);
                return true;
            }
            if (!z) {
                return false;
            }
            int i = cloudVersionControl.popTimes;
            popLogicC.popTimes = i;
            boolean zI = i(i);
            int i2 = popLogicC.popTimes;
            if (zI) {
                i2--;
            }
            popLogicC.popTimes = i2;
            u(context, popLogicC);
            return zI;
        }
        if (popCycle != 1) {
            if (!z || !i(popLogicC.popTimes)) {
                return false;
            }
            popLogicC.popTimes--;
            u(context, popLogicC);
            return true;
        }
        if (!z) {
            if (!i(popLogicC.popTimes)) {
                return false;
            }
            popLogicC.popTimes--;
            u(context, popLogicC);
            return true;
        }
        int i3 = cloudVersionControl.popTimes;
        popLogicC.popTimes = i3;
        boolean zI2 = i(i3);
        int i4 = popLogicC.popTimes;
        if (zI2) {
            i4--;
        }
        popLogicC.popTimes = i4;
        u(context, popLogicC);
        return zI2;
    }

    public static void o(Context context, boolean z, int i) {
        b = i;
        if (z && c) {
            ToastUtils.w(context.getString(i));
        }
    }

    public static void p(Context context) {
        if (TextUtils.equals(ge.a(), "plamplay")) {
            k(context);
        } else {
            j(context);
        }
    }

    public static void q(Context context) {
        Log.i("visha_UpdateUtils", "removePopLogic:" + w6c.z(context, "update_dialog_logic"));
    }

    public static void r(Context context) {
        Log.i("visha_UpdateUtils", "removeUpdateInfo:" + w6c.z(context, "update_dialog_info"));
    }

    public static void s(Context context, int i) {
        Log.i("visha_UpdateUtils", "saveDataVersion:" + i);
        w6c.t(context, "update_data_version", i);
    }

    public static void t(Context context, int i, CloudVersionControl cloudVersionControl) {
        s(context, i);
        w(context, cloudVersionControl);
        PopLogic popLogic = new PopLogic();
        popLogic.popCycle = cloudVersionControl.popCycle;
        popLogic.popTimes = cloudVersionControl.popTimes;
        u(context, popLogic);
    }

    public static void u(Context context, PopLogic popLogic) {
        popLogic.lastPopTime = System.currentTimeMillis();
        Log.i("visha_UpdateUtils", "savePopLogic:" + w6c.w(context, "update_dialog_logic", popLogic));
    }

    public static void v(Context context, long j) {
        Log.i("visha_UpdateUtils", "saveLastPopTime:" + j);
        w6c.v(context, "last_query_time", j);
    }

    public static void w(Context context, CloudVersionControl cloudVersionControl) {
        Log.i("visha_UpdateUtils", "saveUpdateInfo:" + w6c.w(context, "update_dialog_info", cloudVersionControl));
    }

    public static void x(boolean z) {
        c = z;
    }

    public static void y() {
        int i = b;
        if (i != -1) {
            ToastUtils.s(i);
        }
    }
}
