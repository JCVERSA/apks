package com.transsion.moduleservice.onlinevideoservice;

import android.app.Application;
import android.content.Context;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.transsion.moduleservice.IOnlineVideoService;
import com.transsion.palmsdk.b;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.vishaplayersdk.VishaPlayerSDK;
import com.transsion.vishaplayersdk.netservices.PlayerServiceConfig;

@Route(path = VishaRouterTable.PATH_SERVICE_ONLINEVIDEO)
public class OnlineVideoServiceImpl implements IOnlineVideoService {
    @Override
    public void init(Context context) {
        b.r(context);
    }

    @Override
    public void initPlayer(Application application, String str, boolean z) {
        VishaPlayerSDK.getInstance().init(application, str, z);
    }

    @Override
    public void setAPIServiceDebugMode(boolean z) {
        PlayerServiceConfig.bTestMode = z;
    }
}
