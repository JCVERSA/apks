package com.mgtv.ssp.play.playsdk;

import com.mgmi.ssp.AdError;
import com.mgmi.ssp.NativeADDataRef;
import com.mgtv.ssp.MultiAudioInfo;
import com.mgtv.ssp.play.bean.SubTitleData;
import java.util.ArrayList;
import java.util.List;

public class PlayListener {

    public interface OnAdClickListener {
        void onAdClick(String str);
    }

    public interface OnAdCompleteListener {
        void onAdComplete();
    }

    public interface OnAdCountdownListener {
        void onAdCountdown(int i);
    }

    public interface OnAdEmptyListener {
        void onAdEmpty();
    }

    public interface OnAdErrorListener {
        void onAdError(AdError adError);
    }

    public interface OnAdPreparedListener {
        void onAdPrepared();
    }

    public interface OnAdSizeChangedListener {
        void onAdSizeChanged(int i, int i2);
    }

    public interface OnAdStartPlayingListener {
        void onAdStartPlaying();
    }

    public interface OnAuthorizeResultListener {
        void onAuthorizeResult(String str, String str2);
    }

    public interface OnErrorListener {
        void onError(String str);
    }

    public interface OnMultilingualAudioListener {
        void onFail(String str, String str2);

        void onSuccess(List<MultiAudioInfo> list);
    }

    public interface OnPrePreparedListener {
        void OnPrePrepared();
    }

    public interface OnStopAdListener {
        void getStopAdInfo(NativeADDataRef nativeADDataRef);

        void onNoAd(AdError adError);
    }

    public interface OnSubtitlesListener {
        void onSubtitlesError(String str);

        void onSubtitlesSuccess(String str);

        void ontSubtitleList(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData);
    }

    public interface OnVideoCompleteListener {
        void onVideoComplete();
    }

    public interface OnVideoFirstFrameListener {
        void onVideoFirstFrame();
    }

    public interface OnVideoLoadingListener {
        void onBuffering(int i);

        void onVideoLoading(int i);
    }

    public interface OnVideoPausedListener {
        void OnVideoPaused();
    }

    public interface OnVideoPreparedListener {
        void onVideoPrepared();
    }

    public interface OnVideoPreparingListener {
        void OnVideoPreparing();
    }

    public interface OnVideoResolutionChangedListener {
        void onVideoResolutionChanged(String str);
    }

    public interface OnVideoResolutionChangingListener {
        void onVideoResolutionChanging();
    }

    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(int i, int i2);
    }

    public interface OnVideoStartPlayingListener {
        void onVideoStartPlaying(boolean z);
    }

    public interface OnVideoStartedListener {
        void OnVideoStarted();
    }

    public interface OnVideoStoppedListener {
        void OnVideoStopped();
    }
}
