package com.bykv.vk.openvk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.e;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.bean.MsgShowStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public final class c {
    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.buffer.a.a aVar) {
        IStatisticMonitor iStatisticMonitorQ = bVar.q();
        if (iStatisticMonitorQ != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("params_for_special", "gecko");
                jSONObject.put("device_id", bVar.r());
                jSONObject.put("os", 0);
                jSONObject.put("app_version", bVar.o());
                jSONObject.put("api_version", "v3");
                jSONObject.put("aid", bVar.k());
                jSONObject.put("x_tt_logid", aVar.f20020e);
                jSONObject.put("http_status", aVar.f20022g);
                jSONObject.put("err_msg", aVar.f20019d);
                if (TextUtils.isEmpty(aVar.f20020e)) {
                    jSONObject.put("deployments_info", aVar.f20017b);
                    jSONObject.put("local_info", aVar.f20016a);
                    jSONObject.put("custom_info", aVar.f20018c);
                } else {
                    jSONObject.put("deployments_info", "");
                    jSONObject.put("local_info", "");
                    jSONObject.put("custom_info", "");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Build.VERSION.SDK_INT);
                jSONObject.put("os_version", sb2.toString());
                jSONObject.put("device_platform", "android");
                jSONObject.put("device_model", Build.MODEL);
                jSONObject.put(CampaignEx.KEY_ACTIVITY_PATH_AND_NAME, aVar.f20021f);
                iStatisticMonitorQ.upload("geckosdk_query_pkgs", jSONObject);
            } catch (Throwable th2) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th2);
            }
        }
    }

    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    private static Integer a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static void a(com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar, List<StatisticModel.PackageStatisticModel> list) {
        if (aVar.f20136z && aVar.A) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 0;
            packageStatisticModel.accessKey = aVar.f20111a;
            packageStatisticModel.groupName = aVar.f20112b;
            packageStatisticModel.channel = aVar.f20113c;
            packageStatisticModel.f20109ac = aVar.f20124n;
            packageStatisticModel.f20110id = aVar.f20126p;
            packageStatisticModel.downloadRetryTimes = a(aVar.f20131u);
            packageStatisticModel.downloadUrl = aVar.f20130t;
            packageStatisticModel.downloadFailRecords = b(aVar.f20131u);
            packageStatisticModel.downloadDuration = Long.valueOf(aVar.f20133w - aVar.f20132v);
            if (aVar.B) {
                StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                list.add(packageStatisticModel2);
                packageStatisticModel2.accessKey = aVar.f20111a;
                packageStatisticModel2.groupName = aVar.f20112b;
                packageStatisticModel2.statsType = 2;
                packageStatisticModel2.f20110id = aVar.f20126p;
                packageStatisticModel2.channel = aVar.f20113c;
                packageStatisticModel2.activeCheckDuration = Long.valueOf(aVar.f20134x - aVar.f20133w);
                packageStatisticModel2.applyDuration = Long.valueOf(aVar.f20135y - aVar.f20134x);
                return;
            }
            StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel3);
            packageStatisticModel3.statsType = 3;
            packageStatisticModel3.accessKey = aVar.f20111a;
            packageStatisticModel3.groupName = aVar.f20112b;
            packageStatisticModel3.errCode = "500";
            packageStatisticModel3.f20110id = aVar.f20126p;
            packageStatisticModel3.channel = aVar.f20113c;
            packageStatisticModel3.errMsg = aVar.D;
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel4);
        packageStatisticModel4.statsType = 1;
        packageStatisticModel4.accessKey = aVar.f20111a;
        packageStatisticModel4.groupName = aVar.f20112b;
        packageStatisticModel4.channel = aVar.f20113c;
        packageStatisticModel4.f20109ac = aVar.f20124n;
        packageStatisticModel4.f20110id = aVar.f20126p;
        packageStatisticModel4.downloadRetryTimes = a(aVar.f20131u);
        packageStatisticModel4.downloadUrl = aVar.f20130t;
        packageStatisticModel4.downloadFailRecords = b(aVar.f20131u);
        if (!aVar.f20136z) {
            packageStatisticModel4.errCode = "300";
            List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list2 = aVar.f20131u;
            if (list2 == null || list2.isEmpty()) {
                return;
            }
            packageStatisticModel4.errMsg = aVar.f20131u.get(0).reason;
            return;
        }
        if (aVar.A) {
            return;
        }
        packageStatisticModel4.errCode = "450";
        packageStatisticModel4.errMsg = aVar.C;
    }

    public static void a(final com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        StatisticModel statisticModel;
        ArrayList arrayList = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar2 : aVar.a()) {
            if (aVar2.f20114d != null || aVar2.f20116f != 0) {
                if (aVar2.f20118h && aVar2.f20119i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 100;
                    packageStatisticModel.groupName = aVar2.f20112b;
                    packageStatisticModel.accessKey = aVar2.f20111a;
                    packageStatisticModel.channel = aVar2.f20113c;
                    packageStatisticModel.f20109ac = aVar2.f20124n;
                    packageStatisticModel.f20110id = aVar2.f20126p;
                    packageStatisticModel.patchId = aVar2.f20125o;
                    packageStatisticModel.downloadRetryTimes = a(aVar2.f20115e);
                    packageStatisticModel.downloadUrl = aVar2.f20114d;
                    packageStatisticModel.downloadFailRecords = b(aVar2.f20115e);
                    packageStatisticModel.downloadDuration = Long.valueOf(aVar2.f20117g - aVar2.f20116f);
                    if (!aVar2.f20120j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel2);
                        packageStatisticModel2.statsType = 100;
                        packageStatisticModel2.channel = aVar2.f20113c;
                        packageStatisticModel2.errCode = "403";
                        packageStatisticModel2.errMsg = aVar2.f20128r;
                        packageStatisticModel2.f20109ac = aVar2.f20124n;
                        packageStatisticModel2.patchId = aVar2.f20125o;
                        packageStatisticModel2.f20110id = aVar2.f20126p;
                        packageStatisticModel2.downloadRetryTimes = a(aVar2.f20115e);
                        packageStatisticModel2.downloadUrl = aVar2.f20114d;
                        packageStatisticModel2.downloadFailRecords = b(aVar2.f20115e);
                    } else if (aVar2.f20121k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.accessKey = aVar2.f20111a;
                        packageStatisticModel3.groupName = aVar2.f20112b;
                        packageStatisticModel3.statsType = 102;
                        packageStatisticModel3.patchId = aVar2.f20125o;
                        packageStatisticModel3.f20110id = aVar2.f20126p;
                        packageStatisticModel3.channel = aVar2.f20113c;
                        packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar2.f20122l - aVar2.f20117g);
                        packageStatisticModel3.applyDuration = Long.valueOf(aVar2.f20123m - aVar2.f20122l);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = aVar2.f20111a;
                        packageStatisticModel4.groupName = aVar2.f20112b;
                        packageStatisticModel4.statsType = 103;
                        packageStatisticModel4.errCode = "501";
                        packageStatisticModel4.channel = aVar2.f20113c;
                        packageStatisticModel4.patchId = aVar2.f20125o;
                        packageStatisticModel4.f20110id = aVar2.f20126p;
                        packageStatisticModel4.errMsg = aVar2.f20129s;
                        a(aVar2, arrayList);
                    }
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel5);
                    packageStatisticModel5.statsType = 101;
                    packageStatisticModel5.accessKey = aVar2.f20111a;
                    packageStatisticModel5.groupName = aVar2.f20112b;
                    packageStatisticModel5.channel = aVar2.f20113c;
                    packageStatisticModel5.f20109ac = aVar2.f20124n;
                    packageStatisticModel5.patchId = aVar2.f20125o;
                    packageStatisticModel5.f20110id = aVar2.f20126p;
                    packageStatisticModel5.downloadRetryTimes = a(aVar2.f20115e);
                    packageStatisticModel5.downloadUrl = aVar2.f20114d;
                    packageStatisticModel5.downloadFailRecords = b(aVar2.f20115e);
                    if (!aVar2.f20118h) {
                        packageStatisticModel5.errCode = MsgShowStatus.STATUS_MSG_EMPTY;
                        List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list = aVar2.f20115e;
                        if (list != null && !list.isEmpty()) {
                            packageStatisticModel5.errMsg = aVar2.f20115e.get(0).reason;
                        }
                    } else if (!aVar2.f20119i) {
                        packageStatisticModel5.errCode = MsgShowStatus.STATUS_APP_ERROR;
                        packageStatisticModel5.errMsg = aVar2.f20127q;
                    }
                    a(aVar2, arrayList);
                }
            }
            a(aVar2, arrayList);
        }
        Context contextA = bVar.a();
        arrayList.addAll(com.bykv.vk.openvk.preload.geckox.a.a.a(contextA));
        if (arrayList.isEmpty()) {
            statisticModel = null;
        } else {
            Common common = new Common(bVar.k(), bVar.o(), bVar.r(), com.bykv.vk.openvk.preload.geckox.utils.a.b(contextA), e.a(contextA), bVar.l(), bVar.m());
            StatisticModel statisticModel2 = new StatisticModel();
            statisticModel2.common = common;
            statisticModel2.packages = arrayList;
            String string = UUID.randomUUID().toString();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((StatisticModel.PackageStatisticModel) it.next()).logId = string;
            }
            statisticModel = statisticModel2;
        }
        if (statisticModel == null || statisticModel.packages == null) {
            return;
        }
        IStatisticMonitor iStatisticMonitorQ = bVar.q();
        if (iStatisticMonitorQ != null) {
            try {
                for (StatisticModel.PackageStatisticModel packageStatisticModel6 : statisticModel.packages) {
                    Common common2 = statisticModel.common;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("params_for_special", "gecko");
                    jSONObject.put(TtmlNode.TAG_REGION, common2.region);
                    jSONObject.put("err_code", packageStatisticModel6.errCode);
                    jSONObject.put("err_msg", packageStatisticModel6.errMsg);
                    jSONObject.put("sdk_version", common2.sdkVersion);
                    jSONObject.put("access_key", packageStatisticModel6.accessKey);
                    jSONObject.put("stats_type", packageStatisticModel6.statsType);
                    jSONObject.put("device_id", common2.deviceId);
                    Long l10 = packageStatisticModel6.patchId;
                    jSONObject.put("patch_id", l10 == null ? 0L : l10.longValue());
                    jSONObject.put("group_name", packageStatisticModel6.groupName);
                    jSONObject.put("os", common2.f20097os);
                    jSONObject.put("app_version", common2.appVersion);
                    jSONObject.put("device_model", common2.deviceModel);
                    jSONObject.put("channel", packageStatisticModel6.channel);
                    Long l11 = packageStatisticModel6.f20110id;
                    jSONObject.put("id", l11 == null ? 0L : l11.longValue());
                    jSONObject.put(CampaignEx.KEY_ACTIVITY_PATH_AND_NAME, common2.f20096ac);
                    Integer num = packageStatisticModel6.downloadRetryTimes;
                    jSONObject.put("download_retry_times", num == null ? 0 : num.intValue());
                    String str = packageStatisticModel6.downloadUrl;
                    Object obj = "";
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("download_url", str);
                    jSONObject.put("download_duration", packageStatisticModel6.downloadDuration);
                    List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list2 = packageStatisticModel6.downloadFailRecords;
                    if (list2 != null) {
                        obj = list2;
                    }
                    jSONObject.put("download_fail_records", obj);
                    jSONObject.put("log_id", packageStatisticModel6.logId);
                    Long l12 = packageStatisticModel6.activeCheckDuration;
                    jSONObject.put("active_check_duration", l12 == null ? 0L : l12.longValue());
                    Long l13 = packageStatisticModel6.applyDuration;
                    jSONObject.put("apply_duration", l13 == null ? 0L : l13.longValue());
                    iStatisticMonitorQ.upload("geckosdk_update_stats", jSONObject);
                }
            } catch (Throwable th2) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th2);
            }
        }
        if (bVar.c()) {
            try {
                final String strA = com.bykv.vk.openvk.preload.geckox.c.b.a().b().a(statisticModel);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                final String str2 = "https://" + bVar.j() + "/gecko/server/packages/stats";
                com.bykv.vk.openvk.preload.geckox.b.g().execute(new Runnable() {
                    @Override
                    public final void run() {
                        for (int i10 = 0; i10 < 3; i10++) {
                            try {
                                Response responseDoPost = bVar.i().doPost(str2, strA);
                                if (responseDoPost.code != 200) {
                                    throw new NetworkErrorException("net work get failed, code: " + responseDoPost.code + ", url:" + str2);
                                }
                                if (new JSONObject(responseDoPost.body).getInt(NotificationCompat.CATEGORY_STATUS) == 0) {
                                    return;
                                }
                            } catch (Exception e10) {
                                GeckoLogger.w("gecko-debug-tag", "upload statistic:", e10);
                            }
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }
}
