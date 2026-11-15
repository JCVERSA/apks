package com.mgmi.ads.api.render;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.d;
import com.mgmi.ads.api.f;
import com.mgmi.model.VASTAd;
import com.mgmi.net.bean.BaseAdWidgetInfoImpBean;
import defpackage.g4d;

public class AdWidgetInfo extends BaseAdWidgetInfoImpBean implements AdWidgetInfoImp {
    public static final Parcelable.Creator<AdWidgetInfo> CREATOR = new Parcelable.Creator<AdWidgetInfo>() {
        @Override
        public AdWidgetInfo createFromParcel(Parcel parcel) {
            return new AdWidgetInfo(parcel);
        }

        @Override
        public AdWidgetInfo[] newArray(int i) {
            return new AdWidgetInfo[i];
        }
    };
    private int SchGuideA;
    private int SchGuideM;
    private String contLabel;
    private f cornerType;
    private int countDown;
    private String dianaData;
    private int duration;
    private String incentEntryce;
    private boolean isAdComplete;
    private boolean isAutoLand;
    private boolean isPlayerUse;
    private com.mgmi.ads.api.a.b loaderInterface;
    private String mAdDiscription;
    private int mAdDrationRemain;
    private boolean mAdLogEnnable;
    private String mAdOrigin;
    private int mAidColor;
    private d mAwayAppType;
    private String mClickThrought;
    private String mClickUrl;
    private int mErrorCode;
    private String mErrorMsg;
    private int mResType;
    private String mResourceUrl;
    private String mTitleText;
    private VASTAd mVast;

    @NonNull
    private String mWidgetType;
    private int pauseType;
    private boolean preLoad;
    private int rollTime;
    private String thumbnailPic;
    private int timeType;
    private float triggeringTime;

    @Nullable
    private String uuid;
    private String viewTag;

    public AdWidgetInfo(@NonNull String str) {
        this.mAdDrationRemain = 0;
        this.mWidgetType = "";
        this.mResType = 0;
        this.mErrorCode = 0;
        this.mErrorMsg = "unknown";
        this.mAwayAppType = d.AWAY_APP_TYPE_NO;
        this.isAutoLand = false;
        this.mWidgetType = str;
        this.uuid = g4d.a();
    }

    @Override
    public boolean autoLand() {
        return this.isAutoLand;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @Nullable
    public int getAdDurationRemain() {
        return this.mAdDrationRemain;
    }

    @Override
    @Nullable
    public String getAdLogoAndOriginName() {
        return this.adLogoAndOriginName;
    }

    @Override
    public String getAdOrigin() {
        return this.mAdOrigin;
    }

    @Override
    public int getAidColor() {
        return this.mAidColor;
    }

    @Override
    public d getAwayAppType() {
        return this.mAwayAppType;
    }

    @Override
    public String getCid() {
        return this.cid;
    }

    @Override
    public String getClickThrought() {
        return this.mClickThrought;
    }

    @Override
    public String getClickUrl() {
        return this.mClickUrl;
    }

    @Override
    public String getContLabel() {
        return this.contLabel;
    }

    @Override
    public f getCornerType() {
        return this.cornerType;
    }

    public int getCountDown() {
        return this.countDown;
    }

    public String getDianaData() {
        return this.dianaData;
    }

    @Override
    @Nullable
    public String getDiscription() {
        return this.mAdDiscription;
    }

    public int getDuration() {
        return this.duration;
    }

    @Override
    public int getErrorCode() {
        return this.mErrorCode;
    }

    @Override
    public String getErrorMsg() {
        return this.mErrorMsg;
    }

    public String getIncentEntryce() {
        return this.incentEntryce;
    }

    @Override
    public com.mgmi.ads.api.a.b getLoaderInterface() {
        return this.loaderInterface;
    }

    @Override
    public String getMid() {
        return this.mid;
    }

    @Override
    public int getPauseType() {
        return this.pauseType;
    }

    public boolean getPreLoad() {
        return this.preLoad;
    }

    @Override
    public int getResType() {
        return this.mResType;
    }

    @Override
    public String getResourceUrl() {
        return this.mResourceUrl;
    }

    public int getRollTime() {
        return this.rollTime;
    }

    @Override
    public int getSchGuideA() {
        return this.SchGuideA;
    }

    @Override
    public int getSchGuideM() {
        return this.SchGuideM;
    }

    @Override
    public String getThumbnailPic() {
        return this.thumbnailPic;
    }

    @Override
    public String getTitleText() {
        return this.mTitleText;
    }

    public float getTriggeringTime() {
        return this.triggeringTime;
    }

    @Override
    @Nullable
    public String getUuid() {
        return this.uuid;
    }

    @Override
    public String getValuesTag() {
        return this.viewTag;
    }

    public VASTAd getVast() {
        return this.mVast;
    }

    @Override
    @NonNull
    public String getWidgetType() {
        return this.mWidgetType;
    }

    @Override
    public boolean isAdComplete() {
        return this.isAdComplete;
    }

    @Override
    public boolean isAdLogEnnable() {
        return this.mAdLogEnnable;
    }

    @Override
    public boolean isPlayerUse() {
        return this.isPlayerUse;
    }

    public AdWidgetInfo setAdComplete() {
        this.isAdComplete = true;
        return this;
    }

    public void setAdDrationRemain(int i) {
        this.mAdDrationRemain = i;
    }

    public void setAdLogEnnable(boolean z) {
        this.mAdLogEnnable = z;
    }

    public void setAdOrigin(String str) {
        this.mAdOrigin = str;
    }

    public AdWidgetInfo setAidColor(int i) {
        this.mAidColor = i;
        return this;
    }

    public void setAutoLand(boolean z) {
        this.isAutoLand = z;
    }

    public AdWidgetInfo setAwayAppType(d dVar) {
        this.mAwayAppType = dVar;
        return this;
    }

    public AdWidgetInfo setClickThrought(String str) {
        this.mClickThrought = str;
        return this;
    }

    public AdWidgetInfo setClickUrl(String str) {
        this.mClickUrl = str;
        return this;
    }

    public void setContLabel(String str) {
        this.contLabel = str;
    }

    public AdWidgetInfo setCornerType(f fVar) {
        this.cornerType = fVar;
        return this;
    }

    public void setCountDown(int i) {
        this.countDown = i;
    }

    public AdWidgetInfo setDianaData(String str) {
        this.dianaData = str;
        return this;
    }

    public void setDiscription(String str) {
        this.mAdDiscription = str;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public AdWidgetInfo setErrorCode(int i) {
        this.mErrorCode = i;
        return this;
    }

    public AdWidgetInfo setErrorMsg(String str) {
        this.mErrorMsg = str;
        return this;
    }

    public AdWidgetInfo setIncentEntryce(String str) {
        this.incentEntryce = str;
        return this;
    }

    public AdWidgetInfo setLoaderInterface(com.mgmi.ads.api.a.b bVar) {
        this.loaderInterface = bVar;
        return this;
    }

    @Override
    public void setPauseType(int i) {
        this.pauseType = i;
    }

    public AdWidgetInfo setPlayerUse(boolean z) {
        this.isPlayerUse = z;
        return this;
    }

    public void setPreLoad(boolean z) {
        this.preLoad = z;
    }

    public void setResType(int i) {
        this.mResType = i;
    }

    public AdWidgetInfo setResourceUrl(String str) {
        this.mResourceUrl = str;
        return this;
    }

    public void setRollTime(int i) {
        this.rollTime = i;
    }

    public void setSchGuideA(int i) {
        this.SchGuideA = i;
    }

    public void setSchGuideM(int i) {
        this.SchGuideM = i;
    }

    public AdWidgetInfo setThumnailPic(String str) {
        this.thumbnailPic = str;
        return this;
    }

    public void setTitleText(String str) {
        this.mTitleText = str;
    }

    public void setTriggeringTime(float f) {
        this.triggeringTime = f;
    }

    public AdWidgetInfo setUuid(@Nullable String str) {
        this.uuid = str;
        return this;
    }

    @Override
    public void setValuesTag(String str) {
        this.viewTag = str;
    }

    public void setVast(VASTAd vASTAd) {
        this.mVast = vASTAd;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClickUrl);
        parcel.writeString(this.mClickThrought);
        parcel.writeString(this.mResourceUrl);
        parcel.writeString(this.mTitleText);
        parcel.writeString(this.mWidgetType);
        parcel.writeString(this.adLogoAndOriginName);
    }

    @Override
    public AdWidgetInfo setWidgetType(String str) {
        this.mWidgetType = str;
        return this;
    }

    public AdWidgetInfo(Parcel parcel) {
        this.mAdDrationRemain = 0;
        this.mWidgetType = "";
        this.mResType = 0;
        this.mErrorCode = 0;
        this.mErrorMsg = "unknown";
        this.mAwayAppType = d.AWAY_APP_TYPE_NO;
        this.isAutoLand = false;
        this.mClickUrl = parcel.readString();
        this.mClickThrought = parcel.readString();
        this.mResourceUrl = parcel.readString();
        this.mTitleText = parcel.readString();
        this.mWidgetType = parcel.readString();
        this.adLogoAndOriginName = parcel.readString();
    }
}
