package com.transsion.vishaplayersdk.videoauth;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.retrofit.callback.CallbackWithState;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.retrofit.reponse.ResponseUtil;
import com.transsion.vishaplayersdk.netservices.PlayerService;
import com.transsion.vishaplayersdk.netservices.PlayerServiceManager;
import com.transsion.vishaplayersdk.netservices.beans.VideoAuthResult;
import defpackage.gu8;

public class VideoAuthManger {
    private static final int AUTH_CODE_USER_STATE_LOGIN = 1;
    private static final int AUTH_CODE_USER_STATE_NOT_LOGIN = -2;
    private static final int AUTH_CODE_USER_STATE_TOKEN_INVALID = -1;
    private static final int AUTH_ERROR_CODE_4003 = 4003;
    private static final int AUTH_ERROR_CODE_4004 = 4004;
    private static final int AUTH_ERROR_CODE_5003 = 5003;
    public static final String TAG = "visha_playersdk_VideoAuthManger";
    private boolean mbAuthing = false;

    public interface IVideoAuthResultCallback {
        void onAuthFailure(int i, String str);

        void onAuthSuccess();

        void onAuthVideoPreview(long j);

        void onPlayPayVideoNormalUser();

        void onPlayPayVideoNotLogin();

        void onUserAuthFailed();
    }

    public void onVideoAuthFailed(int i, String str, IVideoAuthResultCallback iVideoAuthResultCallback) {
        iVideoAuthResultCallback.onAuthFailure(i, str);
    }

    public void onVideoAuthResult(VideoAuthResult videoAuthResult, IVideoAuthResultCallback iVideoAuthResultCallback) {
        LogUtils.j(TAG, "video authorization result:" + videoAuthResult);
        if (videoAuthResult.bEnablePlay) {
            LogUtils.j(TAG, "video authorization success,start play");
            iVideoAuthResultCallback.onAuthSuccess();
            return;
        }
        int i = videoAuthResult.userAuthStatus;
        if (i == -2) {
            iVideoAuthResultCallback.onPlayPayVideoNotLogin();
        } else if (i == -1) {
            iVideoAuthResultCallback.onUserAuthFailed();
        }
        if (videoAuthResult.userAuthStatus == 1) {
            iVideoAuthResultCallback.onPlayPayVideoNormalUser();
        }
    }

    public void videoAuth(long j, long j2, final IVideoAuthResultCallback iVideoAuthResultCallback) {
        if (iVideoAuthResultCallback == null) {
            LogUtils.j(TAG, "Callback must set");
        } else {
            this.mbAuthing = true;
            ((PlayerService) PlayerServiceManager.getInstance().getApi(PlayerService.class)).videoAuthorize(j, j2).enqueue(new CallbackWithState<BaseResponse<VideoAuthResult>>() {
                @Override
                public void onFailture(ResponseUtil.State state) {
                    LogUtils.m(VideoAuthManger.TAG, "video authorization failed,error code:" + state.code, "error msg:" + state.errMsg);
                    VideoAuthManger.this.onVideoAuthFailed(Integer.parseInt(state.code), state.errMsg, iVideoAuthResultCallback);
                    VideoAuthManger.this.mbAuthing = false;
                }

                @Override
                public void onSuccess(gu8<BaseResponse<VideoAuthResult>> gu8Var) {
                    VideoAuthManger.this.onVideoAuthResult((VideoAuthResult) ((BaseResponse) gu8Var.a()).getData(), iVideoAuthResultCallback);
                    VideoAuthManger.this.mbAuthing = false;
                }
            });
        }
    }
}
