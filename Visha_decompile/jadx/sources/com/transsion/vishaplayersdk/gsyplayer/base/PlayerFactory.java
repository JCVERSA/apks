package com.transsion.vishaplayersdk.gsyplayer.base;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;

public class PlayerFactory {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + PlayerFactory.class.getSimpleName();
    private static Class<? extends IPlayerManager> sPlayerManager;

    public static IPlayerManager getPlayManager() {
        Class<? extends IPlayerManager> cls = sPlayerManager;
        if (cls == null) {
            LogUtils.m(TAG, "get_player_manager_failed: player class not set");
            return null;
        }
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void setPlayManager(Class<? extends IPlayerManager> cls) {
        sPlayerManager = cls;
    }
}
