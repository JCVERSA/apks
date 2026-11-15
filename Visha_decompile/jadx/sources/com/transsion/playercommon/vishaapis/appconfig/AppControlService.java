package com.transsion.playercommon.vishaapis.appconfig;

import com.transsion.dbdata.beans.appconfig.AppGlobalConfigData;
import com.transsion.dbdata.beans.appconfig.SmartEditApiKeyBean;
import com.transsion.dbdata.beans.cloudctrlconfigbean.CloudCtrlConfigBean;
import com.transsion.dbdata.beans.sniff.DownloadConfigData;
import com.transsion.playercommon.data.AiSubtitleConfig;
import com.transsion.playercommon.data.CloudVersionControl;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.hb0;
import defpackage.jq0;
import defpackage.mc7;
import defpackage.oo4;
import defpackage.q94;
import defpackage.wk8;
import defpackage.wy9;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

public interface AppControlService {
    @q94(AppControlConfig.API.API_GET_CHECK_NEW_VERSION)
    @wy9
    jq0<BaseResponse<CloudVersionControl>> checkNewVersions(@wk8("versionCode") String str);

    @q94(AppControlConfig.API.API_GET_AI_SUBTITLE_CONFIG)
    @wy9
    mc7<BaseResponse<AiSubtitleConfig>> getAISubtitleConfig();

    @q94(AppControlConfig.API.API_GET_API_KEYS_CONFIG)
    @wy9
    mc7<BaseResponse<SmartEditApiKeyBean>> getApiKeysConfig();

    @q94(AppControlConfig.API.API_GET_GLOBAL_CONFIG)
    @wy9
    mc7<BaseResponse<AppGlobalConfigData>> getAppGlobalConfig(@wk8(hb0.KEY_NAME_REGION_ID) long j, @wk8("kernel") String str, @wk8("chipPlatform") String str2, @wk8(CommonUrlParts.MODEL) String str3, @oo4("dataVersion") String str4);

    @q94(AppControlConfig.API.API_GET_CLOUD_CTRL_CONFIG)
    @wy9
    mc7<BaseResponse<List<CloudCtrlConfigBean.CloudCtrl>>> getCloudCtrlConfig(@wk8("regionId") long j);

    @q94(AppControlConfig.API.API_GET_DOWNLOAD_CONFIG)
    @wy9
    mc7<BaseResponse<DownloadConfigData>> getDownloadConfig(@wk8(hb0.KEY_NAME_REGION_ID) long j, @wk8("channel") int i, @wk8(CommonUrlParts.MODEL) String str, @oo4("dataVersion") String str2);
}
