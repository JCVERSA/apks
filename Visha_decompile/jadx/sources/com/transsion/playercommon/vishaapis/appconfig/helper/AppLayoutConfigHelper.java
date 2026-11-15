package com.transsion.playercommon.vishaapis.appconfig.helper;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.appconfig.AllLayoutBean;
import com.transsion.dbdata.beans.appconfig.BottomBean;
import com.transsion.dbdata.beans.appconfig.ChannelsBean;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.exception.ResponseExceptionHandler;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.fi1;
import defpackage.k29;
import defpackage.pd7;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rc2;
import defpackage.w6c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public class AppLayoutConfigHelper {
    public static final int APP_DOWNLOAD_TAB_ID = 3;
    public static final int APP_MORE_TAB_ID = 4;
    public static final int APP_MUSIC_TAB_ID = 1;
    public static final int APP_OTT_TAB_ID = 2;
    public static final int APP_VIDEO_TAB_ID = 0;
    public static final int DOWNLOAD_TAB_ID = 1586;
    public static final String LAYOUT_CACHE_KEY = "online_video_layout_cache";
    private static final String LAYOUT_CACHE_KEY_DATA_VERSION = "lo_data_version";
    public static final int MORE_TAB_ID = 1591;
    public static final int MUSIC_TAB_ID = 1587;
    public static final int OTT_TAB_ID = 1585;
    private static final String TAG = "AppLayoutConfigHelper";
    public static final int VIDEO_TAB_ID = 1584;
    private List<BottomBean> mAppBottomTabConfig;
    private List<ChannelsBean> mOttChannelsConfig;
    private BottomBean mOttTabConfig;

    public static final class InstanceHolder {
        private static final AppLayoutConfigHelper INSTANCE = new AppLayoutConfigHelper();

        private InstanceHolder() {
        }
    }

    private void checkOnlineConfig(AllLayoutBean allLayoutBean) {
        if (allLayoutBean == null || allLayoutBean.getBottom() == null || allLayoutBean.getBottom().isEmpty()) {
            w6c.t(Utils.a(), w6c.e, 0);
            w6c.r(Utils.a(), w6c.a, false);
            return;
        }
        int iCheckTabIds = 0;
        boolean z = false;
        boolean z2 = true;
        for (BottomBean bottomBean : allLayoutBean.getBottom()) {
            if (bottomBean.getIsOtt().booleanValue() && allLayoutBean.getChannels() != null && !allLayoutBean.getChannels().isEmpty()) {
                MMKV.p().y("ott_cellular_autoplay", bottomBean.getCellularAutoplay());
                MMKV.p().y("ott_wifi_autoplay", bottomBean.getWifiAutoplay());
                MMKV.p().y("ott_filter_channel_visible", bottomBean.isFilterChannel());
                this.mOttTabConfig = bottomBean;
                this.mAppBottomTabConfig = allLayoutBean.getBottom();
                this.mOttChannelsConfig = allLayoutBean.getChannels();
                z = true;
            }
            if (bottomBean.getDefaultTab() == 1) {
                iCheckTabIds = checkTabIds(bottomBean.getId().intValue());
            }
            if ("Download".equals(bottomBean.getName()) && bottomBean.getDefaultShow().intValue() == 0) {
                z2 = false;
            }
        }
        LogUtils.P(TAG, "[OTT] set default position:" + iCheckTabIds + ", has online fragment: " + z);
        w6c.t(Utils.a(), w6c.e, iCheckTabIds);
        w6c.r(Utils.a(), w6c.a, z);
        w6c.r(Utils.a(), w6c.b, z2);
    }

    private int checkTabIds(int i) {
        if (i == 1591) {
            return 4;
        }
        switch (i) {
            case OTT_TAB_ID:
                return 2;
            case DOWNLOAD_TAB_ID:
                return 3;
            case MUSIC_TAB_ID:
                return 1;
            default:
                return 0;
        }
    }

    public static AppLayoutConfigHelper getInstance() {
        return InstanceHolder.INSTANCE;
    }

    public void getAppLayoutConfig(final int i, final String str) {
        if (pp3.q) {
            ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getAllLayout(i, str).L(new ResponseExceptionHandler.ServerResultFunc()).O(new ResponseExceptionHandler.HttpResultFunc()).d0(k29.c()).M(k29.c()).subscribe(new pd7() {
                private boolean isSameVersion(BaseResponse<AllLayoutBean> baseResponse) {
                    if (r0a.g(str) || baseResponse.getData() == null || !str.equals(baseResponse.getData().getDataVersion())) {
                        return false;
                    }
                    LogUtils.w(AppLayoutConfigHelper.TAG, "[OTT]onNext: dataVersion is same, ignore");
                    return true;
                }

                @Override
                public void onComplete() {
                }

                @Override
                public void onError(Throwable th) {
                    LogUtils.m(AppLayoutConfigHelper.TAG, "[OTT]onError:" + th.toString());
                }

                @Override
                public void onSubscribe(rc2 rc2Var) {
                }

                @Override
                public void onNext(BaseResponse<AllLayoutBean> baseResponse) {
                    Log.i(AppLayoutConfigHelper.TAG, "[OTT] onNext regionId:" + i + StringUtils.COMMA + baseResponse);
                    if (baseResponse == null || isSameVersion(baseResponse)) {
                        return;
                    }
                    AppLayoutConfigHelper.this.saveLayoutConfig(baseResponse.getData(), i);
                }
            });
        }
    }

    public String getCacheDataVersion() {
        try {
            return MMKV.p().m(LAYOUT_CACHE_KEY_DATA_VERSION, "");
        } catch (IllegalStateException e) {
            Log.w(TAG, "getCacheDataVersion: MMKV not initialized", e);
            return "";
        }
    }

    public List<ChannelsBean> getOttChannelsBean() {
        return this.mOttChannelsConfig;
    }

    public BottomBean getOttTab() {
        return this.mOttTabConfig;
    }

    public void reset() {
        this.mOttTabConfig = null;
        this.mAppBottomTabConfig.clear();
        this.mAppBottomTabConfig = null;
        this.mOttChannelsConfig.clear();
        this.mOttChannelsConfig = null;
    }

    public void restoreAppLayoutConfigFromCache() throws Throwable {
        if (pp3.q) {
            String cache = CacheManager.getInstance().getCache(LAYOUT_CACHE_KEY);
            LogUtils.P(TAG, "[OTT]get app layout config cache:" + cache);
            try {
                checkOnlineConfig((AllLayoutBean) fi1.b(cache, AllLayoutBean.class));
            } catch (Exception e) {
                LogUtils.m(TAG, "[OTT]get app layout config exception :" + e.getMessage());
            }
        }
    }

    public void saveLayoutConfig(AllLayoutBean allLayoutBean, long j) {
        if (allLayoutBean != null) {
            try {
                String strE = fi1.e(allLayoutBean);
                CacheManager.getInstance().lambda$setCache$0(LAYOUT_CACHE_KEY, strE);
                checkOnlineConfig(allLayoutBean);
                MMKV.p().w(LAYOUT_CACHE_KEY_DATA_VERSION, allLayoutBean.getDataVersion());
                Log.d(TAG, "[OTT]on layout response:" + strE + "\nregionId:" + j + "\ncountry:" + CountryInfoUtil.h() + "\nCountryCode:" + CountryInfoUtil.i());
            } catch (Exception e) {
                LogUtils.m(TAG, "[OTT]save layout config exception :" + e.getMessage());
            }
        }
    }

    private AppLayoutConfigHelper() {
    }
}
