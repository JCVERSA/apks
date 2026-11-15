package com.mgmi.net.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.f;
import java.util.List;

public class CustomBootAdBean extends BaseAdWidgetInfoImpBean implements AdWidgetInfoImp {
    public static final Parcelable.Creator<CustomBootAdBean> CREATOR = new Parcelable.Creator<CustomBootAdBean>() {
        @Override
        public CustomBootAdBean createFromParcel(Parcel parcel) {
            return new CustomBootAdBean(parcel);
        }

        @Override
        public CustomBootAdBean[] newArray(int i) {
            return new CustomBootAdBean[i];
        }
    };
    public String childId;
    public String eCpm;
    public int jump_time;
    public String jump_type;
    public List<String> jump_val;
    public String jumpid;
    public String jumpkind;
    private String mValuesTag;
    public String pageUrl;
    public int transfer;
    public String update_url;
    private int mErrorCode = 0;
    private String mErrorMsg = "unknown";
    private String mWidgetType = "ADS_TYPE_BOOT";
    private com.mgmi.ads.api.d mAwayAppType = com.mgmi.ads.api.d.AWAY_APP_TYPE_NO;
    public boolean isApkDown = false;

    public CustomBootAdBean() {
    }

    @Override
    public boolean autoLand() {
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    @Nullable
    public int getAdDurationRemain() {
        return 0;
    }

    @Override
    @Nullable
    public String getAdLogoAndOriginName() {
        return this.adLogoAndOriginName;
    }

    @Override
    public String getAdOrigin() {
        return null;
    }

    @Override
    public int getAidColor() {
        return 0;
    }

    @Override
    public com.mgmi.ads.api.d getAwayAppType() {
        return this.mAwayAppType;
    }

    public String getChildId() {
        return this.childId;
    }

    @Override
    public String getCid() {
        return this.cid;
    }

    @Override
    public String getClickThrought() {
        return null;
    }

    @Override
    public String getClickUrl() {
        return this.pageUrl;
    }

    @Override
    public String getContLabel() {
        return null;
    }

    @Override
    public f getCornerType() {
        return null;
    }

    @Override
    @Nullable
    public String getDiscription() {
        return null;
    }

    @Override
    public int getErrorCode() {
        return this.mErrorCode;
    }

    @Override
    public String getErrorMsg() {
        return this.mErrorMsg;
    }

    public String getJump_type() {
        return this.jump_type;
    }

    public List<String> getJump_val() {
        return this.jump_val;
    }

    public String getJumpid() {
        return this.jumpid;
    }

    public String getJumpkind() {
        return this.jumpkind;
    }

    @Override
    public com.mgmi.ads.api.a.b getLoaderInterface() {
        return null;
    }

    @Override
    public String getMid() {
        return this.mid;
    }

    public String getPageUrl() {
        return this.pageUrl;
    }

    @Override
    public int getPauseType() {
        return 0;
    }

    @Override
    public int getResType() {
        return 0;
    }

    @Override
    public String getResourceUrl() {
        return null;
    }

    @Override
    public int getSchGuideA() {
        return 0;
    }

    @Override
    public int getSchGuideM() {
        return 0;
    }

    @Override
    public String getThumbnailPic() {
        return null;
    }

    @Override
    public String getTitleText() {
        return null;
    }

    public int getTransfer() {
        return this.transfer;
    }

    public String getUpdate_url() {
        return this.update_url;
    }

    @Override
    @Nullable
    public String getUuid() {
        return null;
    }

    @Override
    public String getValuesTag() {
        return this.mValuesTag;
    }

    @Override
    public String getWidgetType() {
        return this.mWidgetType;
    }

    @Override
    public boolean isAdComplete() {
        return false;
    }

    @Override
    public boolean isAdLogEnnable() {
        return false;
    }

    @Override
    public boolean isPlayerUse() {
        return false;
    }

    public void setAwayAppType(com.mgmi.ads.api.d dVar) {
        this.mAwayAppType = dVar;
    }

    public void setChildId(String str) {
        this.childId = str;
    }

    public CustomBootAdBean setECpm(String str) {
        this.eCpm = str;
        return this;
    }

    public CustomBootAdBean setErrorCode(int i) {
        this.mErrorCode = i;
        return this;
    }

    public CustomBootAdBean setErrorMsg(String str) {
        this.mErrorMsg = str;
        return this;
    }

    public void setJump_type(String str) {
        this.jump_type = str;
    }

    public void setJump_val(List<String> list) {
        this.jump_val = list;
    }

    public void setJumpid(String str) {
        this.jumpid = str;
    }

    public void setJumpkind(String str) {
        this.jumpkind = str;
    }

    public void setPageUrl(String str) {
        this.pageUrl = str;
    }

    @Override
    public void setPauseType(int i) {
    }

    public void setTransfer(int i) {
        this.transfer = i;
    }

    public void setUpdate_url(String str) {
        this.update_url = str;
    }

    @Override
    public void setValuesTag(String str) {
        this.mValuesTag = str;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.adLogoAndOriginName);
    }

    @Override
    public CustomBootAdBean setWidgetType(String str) {
        this.mWidgetType = str;
        return this;
    }

    public CustomBootAdBean(Parcel parcel) {
        this.adLogoAndOriginName = parcel.readString();
    }
}
