package com.transsion.magicvideo.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.magicvideo.utils.GpReviewUtils;
import com.transsion.playercommon.cloudctrlconfigrequest.CloudCtrlConfigHelper;
import com.transsion.playercommon.gprating.DownloadGPRatingDialog;
import com.transsion.playercommon.gprating.GPRatingDialog;
import defpackage.fi1;
import java.util.ArrayList;
import java.util.List;

public abstract class GpReviewUtils {
    public static boolean b() {
        if (MMKV.p().e("mmkv_gp_rating_quick", false) || MMKV.p().e("mmkv_gp_rating", false)) {
            return true;
        }
        MMKV.p().e("mmkv_gp_rating_download", false);
        return true;
    }

    public static void c(Activity activity) {
        DownloadGPRatingDialog.O("下载弹窗").showListDialog(activity, "downloadTag");
    }

    public static void d(final Activity activity) {
        if (b()) {
            return;
        }
        long jI = MMKV.p().i("gp_download_count_time", 0L);
        int iG = MMKV.p().g("gp_download_count", 0);
        int iG2 = MMKV.p().g("gp_download_count_Limit", 3);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jI > 86400000) {
            MMKV.p().u("gp_download_count_time", jCurrentTimeMillis);
            iG++;
            MMKV.p().t("gp_download_count", iG);
        }
        if (iG >= iG2) {
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    GpReviewUtils.c(activity);
                }
            });
        }
    }

    public static void e(Activity activity) {
    }

    public static void f(Activity activity) {
        if (CloudCtrlConfigHelper.b().c(2) && !b()) {
            long jI = MMKV.p().i("mmkv_gp_rating_interval_1", 0L);
            if (jI == 0 || System.currentTimeMillis() - jI < 86400000) {
                return;
            }
            long jI2 = MMKV.p().i("mmkv_gp_rating_interval_3", 0L);
            if (MMKV.p().g("mmkv_gp_rating_cancel_count", 0) < 11) {
                if (System.currentTimeMillis() - jI2 < 259200000) {
                    return;
                }
            } else if (System.currentTimeMillis() - jI2 < 1209600000) {
                return;
            }
            String strL = MMKV.p().l("mmkv_gp_rating_queue");
            List arrayList = new ArrayList();
            Log.e("visha_GpReviewUtils", "startReviewLogic6 json" + strL);
            if (TextUtils.isEmpty(strL)) {
                arrayList.add(Long.valueOf(System.currentTimeMillis()));
            } else {
                arrayList = (List) fi1.c(strL, new TypeToken<List<Long>>() {
                }.getType());
                if (arrayList.size() <= 5 || ((Long) arrayList.get(arrayList.size() - 1)).longValue() - ((Long) arrayList.get(arrayList.size() - 6)).longValue() >= 259200000) {
                    arrayList.add(Long.valueOf(System.currentTimeMillis()));
                } else {
                    List arrayList2 = new ArrayList();
                    GPRatingDialog.K("播放结束后").showListDialog(activity, "gpRatingCustom");
                    arrayList = arrayList2;
                }
            }
            MMKV.p().w("mmkv_gp_rating_queue", fi1.e(arrayList));
        }
    }

    public static void g(Activity activity) {
        CloudCtrlConfigHelper.b().c(1);
    }
}
