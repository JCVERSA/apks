package com.aliyun.player;

import android.content.Context;
import com.aliyun.player.nativeclass.JniSaasPlayer;
import com.aliyun.player.nativeclass.NativePlayerBase;
import com.aliyun.player.source.LiveSts;
import com.aliyun.player.source.StsInfo;
import com.aliyun.player.source.VidAuth;
import com.aliyun.player.source.VidMps;
import com.aliyun.player.source.VidSts;
import java.lang.ref.WeakReference;

class ApsaraVideoPlayer extends UrlVideoPlayer implements AliPlayer {
    private AliPlayer.OnVerifyTimeExpireCallback mInnerOnVerifyTimeExpireCallback;
    private AliPlayer.OnVerifyTimeExpireCallback mOutOnVerifyCallback;

    private static class InnerOnVerifyTimeExpireCallback implements AliPlayer.OnVerifyTimeExpireCallback {
        private WeakReference<ApsaraVideoPlayer> avpBaseWR;

        InnerOnVerifyTimeExpireCallback(ApsaraVideoPlayer apsaraVideoPlayer) {
            this.avpBaseWR = new WeakReference<>(apsaraVideoPlayer);
        }

        @Override
        public AliPlayer.Status onVerifyAuth(VidAuth vidAuth) {
            ApsaraVideoPlayer apsaraVideoPlayer = this.avpBaseWR.get();
            return apsaraVideoPlayer != null ? apsaraVideoPlayer.onVerifyAuth(vidAuth) : AliPlayer.Status.Invalid;
        }

        @Override
        public AliPlayer.Status onVerifySts(StsInfo stsInfo) {
            ApsaraVideoPlayer apsaraVideoPlayer = this.avpBaseWR.get();
            return apsaraVideoPlayer != null ? apsaraVideoPlayer.onVerifySts(stsInfo) : AliPlayer.Status.Invalid;
        }
    }

    public ApsaraVideoPlayer(Context context, String str) {
        super(context, str);
        this.mOutOnVerifyCallback = null;
        this.mInnerOnVerifyTimeExpireCallback = new InnerOnVerifyTimeExpireCallback(this);
    }

    public AliPlayer.Status onVerifyAuth(VidAuth vidAuth) {
        AliPlayer.OnVerifyTimeExpireCallback onVerifyTimeExpireCallback = this.mOutOnVerifyCallback;
        return onVerifyTimeExpireCallback != null ? onVerifyTimeExpireCallback.onVerifyAuth(vidAuth) : AliPlayer.Status.Invalid;
    }

    public AliPlayer.Status onVerifySts(StsInfo stsInfo) {
        AliPlayer.OnVerifyTimeExpireCallback onVerifyTimeExpireCallback = this.mOutOnVerifyCallback;
        return onVerifyTimeExpireCallback != null ? onVerifyTimeExpireCallback.onVerifySts(stsInfo) : AliPlayer.Status.Invalid;
    }

    @Override
    protected NativePlayerBase createAlivcMediaPlayer(Context context) {
        JniSaasPlayer jniSaasPlayer = new JniSaasPlayer(context);
        if (this.mInnerOnVerifyTimeExpireCallback == null) {
            this.mInnerOnVerifyTimeExpireCallback = new InnerOnVerifyTimeExpireCallback(this);
        }
        jniSaasPlayer.setOnVerifyTimeExpireCallback(this.mInnerOnVerifyTimeExpireCallback);
        return jniSaasPlayer;
    }

    @Override
    public void invokeComponent(String str) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).invokeComponent(str);
        }
    }

    @Override
    public void setDataSource(VidAuth vidAuth) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(vidAuth);
        }
    }

    @Override
    public void setOnVerifyTimeExpireCallback(AliPlayer.OnVerifyTimeExpireCallback onVerifyTimeExpireCallback) {
        this.mOutOnVerifyCallback = onVerifyTimeExpireCallback;
    }

    @Override
    public void updateStsInfo(StsInfo stsInfo) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).updateStsInfo(stsInfo);
        }
    }

    @Override
    public void updateVidAuth(VidAuth vidAuth) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).updateVidAuth(vidAuth);
        }
    }

    @Override
    public void setDataSource(VidSts vidSts) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(vidSts);
        }
    }

    @Override
    public void setDataSource(VidMps vidMps) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(vidMps);
        }
    }

    @Override
    public void setDataSource(LiveSts liveSts) {
        NativePlayerBase corePlayer = getCorePlayer();
        if (corePlayer instanceof JniSaasPlayer) {
            ((JniSaasPlayer) corePlayer).setDataSource(liveSts);
        }
    }
}
