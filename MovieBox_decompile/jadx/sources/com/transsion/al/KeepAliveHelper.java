package com.transsion.al;

import android.content.Context;
import cm.f;
import com.transsion.al.ka.KaManager;
import com.transsion.mb.config.manager.ConfigBean;

public class KeepAliveHelper {
    public static final int AL_ERROR_COUNT = 2;
    public static final int AL_ERROR_TIME_MIN = 3;
    public static final String KEY_AL_CUR_START_COUNT = "KEY_AL_CUR_START_COUNT";
    public static final String KEY_AL_LAST_START_TIME = "KEY_AL_LAST_START_TIME";
    public static final String KEY_CLOSE_ALIVE_CURRENT = "key_close_alive_current";
    public static final String KEY_IS_ALIVE_PROCESS_START = "KEY_IS_ALIVE_PROCESS_START";
    public static final String KEY_IS_MAIN_PROCESS_START = "KEY_IS_MAIN_PROCESS_START";

    public static void init(Context context) {
        ConfigBean configBeanC = f.f17019c.a().c("keyAliveOff", false);
        if (configBeanC == null || !"1".equals(configBeanC.getValue())) {
            KaManager.init(context);
        }
    }
}
