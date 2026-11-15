package com.mgtv.thirdsdk.playcore.callback;

import com.mgmi.ssp.AdError;
import com.mgmi.ssp.NativeADDataRef;
import com.mgtv.ssp.play.bean.SubTitleData;
import java.util.ArrayList;

public interface MgtvPlayerListener {

    public interface AdListener {
        void onAdClick(String str);

        void onAdComplete();

        void onAdCutDown(int i);

        void onAdEmpty();

        void onAdError(AdError adError);

        void onAdPrepare();

        void onAdSizeChanged(int i, int i2);

        void onAdStartPlayering();

        void onClickBack();

        void onClickFullScreen();
    }

    public interface AdStopListener {
        void getStopAdInfo(NativeADDataRef nativeADDataRef);

        void onNoAd(AdError adError);
    }

    public interface AdUpdateStatusListener {
        void onUpdateStatus(boolean z, boolean z2, boolean z3);
    }

    public interface AuthResultListener {
        void onAuthResult(String str, String str2);
    }

    public interface ErrorListener {
        void onError(String str);
    }

    public interface VideoListener {
        void OnVideoFirstFrame();

        int isFullScreen();

        void onBuffering(int i);

        void onSubtitlesError(String str);

        void onSubtitlesSuccess(String str);

        void onVideoComplete();

        void onVideoDefinitionChanged(String str);

        void onVideoDefinitionChanging();

        void onVideoLoading(int i);

        void onVideoPaused();

        void onVideoPrepare();

        void onVideoPreparing();

        void onVideoSizeChanged(int i, int i2);

        void onVideoStartPlayering(boolean z);

        void onVideoStarted();

        void onVideoStopped();

        void ontSubtitleList(ArrayList<SubTitleData> arrayList, SubTitleData subTitleData);
    }
}
