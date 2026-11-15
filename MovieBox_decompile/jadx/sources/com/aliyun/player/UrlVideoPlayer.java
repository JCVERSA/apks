package com.aliyun.player;

import android.content.Context;
import com.aliyun.player.nativeclass.JniSaasPlayer;
import com.aliyun.player.nativeclass.JniUrlPlayer;
import com.aliyun.player.nativeclass.NativePlayerBase;
import com.aliyun.player.source.BitStreamSource;
import com.aliyun.player.source.UrlSource;

public class UrlVideoPlayer extends AVPBase implements UrlPlayer {
    public UrlVideoPlayer(Context context, String str) {
        super(context, str);
    }

    @Override
    protected NativePlayerBase createAlivcMediaPlayer(Context context) {
        return new JniUrlPlayer(context);
    }

    @Override
    public void setDataSource(BitStreamSource bitStreamSource) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(bitStreamSource);
        }
    }

    @Override
    public void setDataSource(UrlSource urlSource) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(urlSource);
        }
    }
}
