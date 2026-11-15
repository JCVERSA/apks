package com.mgmi.ads.api;

import android.os.Parcelable;
import androidx.annotation.Nullable;

public interface AdWidgetInfoImp extends Parcelable {
    public static final String PLAYER_TYPE_AUTO_VIDEO = "AUTO_VIDEO";
    public static final String PLAYER_TYPE_INTERECT_VIDEO = "INTERECT_VIDEO";
    public static final String PLAYER_TYPE_MID_VIDEO = "MID_VIDEO";
    public static final String PLAYER_TYPE_OFF_VIDEO = "OFF_VIDEO";
    public static final String PLAYER_TYPE_PRE_VIDEO = "PRE_VIDEO";
    public static final int RES_TYPE_IMAGE = 0;
    public static final int RES_TYPE_VIDEO = 1;
    public static final int RES_TYPE_VIDEO_FULLSCR_H5 = 2;
    public static final int RES_TYPE_VIDEO_HALFSCR_H5 = 3;

    boolean autoLand();

    @Nullable
    int getAdDurationRemain();

    @Nullable
    String getAdLogoAndOriginName();

    @Nullable
    String getAdOrigin();

    int getAidColor();

    d getAwayAppType();

    String getCid();

    String getClickThrought();

    String getClickUrl();

    String getContLabel();

    f getCornerType();

    @Nullable
    String getDiscription();

    int getErrorCode();

    String getErrorMsg();

    @Nullable
    com.mgmi.ads.api.a.b getLoaderInterface();

    String getMid();

    int getPauseType();

    int getResType();

    @Nullable
    String getResourceUrl();

    int getSchGuideA();

    int getSchGuideM();

    String getThumbnailPic();

    @Nullable
    String getTitleText();

    @Nullable
    String getUuid();

    String getValuesTag();

    String getWidgetType();

    boolean isAdComplete();

    boolean isAdLogEnnable();

    boolean isPlayerUse();

    void setPauseType(int i);

    void setValuesTag(String str);

    AdWidgetInfoImp setWidgetType(String str);
}
