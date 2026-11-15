package com.transsion.playercommon.vishaapis.appconfig.helper;

import android.annotation.SuppressLint;
import android.content.Context;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.appconfig.JumpBean;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.appconfig.helper.JumpConfigHelper;
import com.transsion.retrofit.cache.CacheManager;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;

public class JumpConfigHelper {
    public static final String JUMP_CACHE = "jump_cache";
    private static final String TAG = "JumpConfigHelper";

    public static JumpBean getJumpCache() throws Throwable {
        String cache = CacheManager.getInstance().getCache(JUMP_CACHE);
        LogUtils.N(TAG, "getJumpCache: " + cache);
        return (JumpBean) fi1.d(cache, JumpBean.class);
    }

    public static String lambda$setJumpCache$0(JumpBean jumpBean, Context context) throws Exception {
        String strE = fi1.e(jumpBean);
        CacheManager.getInstance().setCache(JUMP_CACHE, strE);
        return strE;
    }

    public static void saveJumpBean(JumpBean jumpBean) {
        if (jumpBean != null) {
            MainApp.C = jumpBean;
            setJumpCache(jumpBean, MainApp.f());
        }
    }

    @SuppressLint({"CheckResult"})
    public static void setJumpCache(final JumpBean jumpBean, Context context) {
        mc7.K(context).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return JumpConfigHelper.lambda$setJumpCache$0(jumpBean, (Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }
}
