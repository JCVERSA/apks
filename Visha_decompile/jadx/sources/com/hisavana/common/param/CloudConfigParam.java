package com.hisavana.common.param;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.hisavana.common.BuildConfig;
import com.hisavana.common.bean.AppStartInfo;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.md8;
import defpackage.mjb;
import defpackage.sf;
import defpackage.ul4;
import defpackage.za4;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class CloudConfigParam {
    private static final String TAG = "CloudConfigParam";
    private static CloudConfigPostBody requestParam;

    public static String getPostBody(String str, boolean z, String str2, List<String> list) {
        boolean z2;
        DeviceDTO deviceDTO;
        try {
            if (requestParam == null) {
                CloudConfigPostBody cloudConfigPostBody = new CloudConfigPostBody();
                requestParam = cloudConfigPostBody;
                cloudConfigPostBody.applicationId = str;
                cloudConfigPostBody.testRequest = Boolean.valueOf(z);
                requestParam.codeSeatFilterEnable = TextUtils.equals(str2, ComConstants.AHA_CHANNEL);
                Map<String, String> map = AppStartInfo.extInfo;
                if (map != null && !map.isEmpty()) {
                    Ext ext = new Ext();
                    ext.setTg(map);
                    requestParam.ext = ext;
                }
                ApplicationDTO applicationDTO = new ApplicationDTO();
                applicationDTO.setPackageName(ul4.d());
                applicationDTO.setInstallTime(sf.a());
                applicationDTO.setVersion(md8.q());
                applicationDTO.setSdkVersion(BuildConfig.VERSION_NAME);
                applicationDTO.setUserAgent(mjb.c());
                applicationDTO.setChannel(AppStartInfo.channel);
                applicationDTO.setFirstStart(AppStartInfo.isFirstStartToday);
                applicationDTO.setActiveTime(AppStartInfo.activeTime);
                requestParam.application = applicationDTO;
                DeviceDTO deviceDTO2 = new DeviceDTO();
                deviceDTO2.setType(md8.o());
                deviceDTO2.setBrand(md8.a());
                deviceDTO2.setModel(md8.f());
                deviceDTO2.setMaker(md8.c());
                z2 = true;
                deviceDTO2.setOsType(1);
                deviceDTO2.setOsVersion(md8.h());
                deviceDTO2.setLanguage(Locale.getDefault().getLanguage());
                deviceDTO2.setNetworkConnectionType(String.valueOf(MitNetUtil.a(ul4.a()).ordinal()));
                deviceDTO2.setOperatorType(MitNetUtil.b());
                deviceDTO2.setIpAddress(DeviceUtil.i());
                deviceDTO2.setGaid(DeviceUtil.f());
                deviceDTO2.setImsi(md8.d());
                deviceDTO2.setScreenWidth(md8.k());
                deviceDTO2.setScreenHeight(md8.j());
                deviceDTO2.setScreenDensity(md8.i());
                deviceDTO2.setOneid(DeviceUtil.k());
                deviceDTO2.setTotalRam(Long.valueOf(DeviceUtil.o()));
                requestParam.device = deviceDTO2;
                requestParam.user = new UserDTO();
            } else {
                z2 = false;
            }
            CloudConfigPostBody cloudConfigPostBody2 = requestParam;
            if (cloudConfigPostBody2.codeSeatFilterEnable) {
                cloudConfigPostBody2.codeSeatFilterIds = list;
            }
            if (!z2 && (deviceDTO = cloudConfigPostBody2.device) != null && TextUtils.isEmpty(deviceDTO.getGaid())) {
                requestParam.device.setGaid(DeviceUtil.f());
            }
            requestParam.user.setBaseStation(DeviceUtil.h());
            requestParam.user.setLatitude(za4.d());
            requestParam.user.setLongitude(za4.f());
            requestParam.user.setCoordTime(za4.b());
            return GsonUtil.d(requestParam);
        } catch (Throwable th) {
            AdLogUtil.Log().e(TAG, Log.getStackTraceString(th));
            return "";
        }
    }
}
