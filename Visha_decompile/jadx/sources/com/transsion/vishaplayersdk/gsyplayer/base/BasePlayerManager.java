package com.transsion.vishaplayersdk.gsyplayer.base;

import android.content.Context;
import android.os.Message;
import com.transsion.vishaplayersdk.gsyplayer.base.cache.ICacheManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoOptionModel;
import java.util.List;

public abstract class BasePlayerManager implements IPlayerManager {
    protected IPlayerManagerListener mPlayerManagerListener;

    public IPlayerManagerListener getPlayerManagerListener() {
        return this.mPlayerManagerListener;
    }

    @Override
    public void initVideoPlayer(Context context, Message message, List<VideoOptionModel> list, ICacheManager iCacheManager) {
    }

    @Override
    public void setPlayerManagerListener(IPlayerManagerListener iPlayerManagerListener) {
        this.mPlayerManagerListener = iPlayerManagerListener;
    }
}
