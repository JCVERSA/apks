package com.cloud.hisavana.sdk.common.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.List;

public class PslinkInfo implements Parcelable {
    public static final Parcelable.Creator<PslinkInfo> CREATOR = new Parcelable.Creator<PslinkInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PslinkInfo createFromParcel(Parcel parcel) {
            return new PslinkInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PslinkInfo[] newArray(int i10) {
            return new PslinkInfo[i10];
        }
    };
    private String adCreativeId;
    private String appPackageName;
    private int clickType;
    private int downloadCount;
    private String extJson;
    private String gaid;
    private transient Uri iconUri;
    private String iconUrl;
    private List<ImgListDTO> imgList;
    private boolean isOfflineAd;
    private String itemID;
    private String lan;
    private String name;
    private String packageName;
    private List<SafeTagDTO> safeTag;
    private String score;
    private String showId;
    private String showTrackingSecretKey;
    private String simpleDescription;
    private String sourceSize;
    private String star;
    private String triggerId;

    public PslinkInfo() {
        this.clickType = 1;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAdCreativeId() {
        return this.adCreativeId;
    }

    public String getAppPackageName() {
        return this.appPackageName;
    }

    public int getClickType() {
        return this.clickType;
    }

    public int getDownloadCount() {
        return this.downloadCount;
    }

    public String getExtJson() {
        return this.extJson;
    }

    public String getGaid() {
        return this.gaid;
    }

    public Uri getIconUri() {
        return this.iconUri;
    }

    public String getIconUrl() {
        return this.iconUrl;
    }

    public List<ImgListDTO> getImgList() {
        return this.imgList;
    }

    public String getItemID() {
        return this.itemID;
    }

    public String getLan() {
        return this.lan;
    }

    public String getName() {
        return this.name;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public List<SafeTagDTO> getSafeTag() {
        return this.safeTag;
    }

    public String getScore() {
        return this.score;
    }

    public String getShowId() {
        return this.showId;
    }

    public String getShowTrackingSecretKey() {
        return this.showTrackingSecretKey;
    }

    public String getSimpleDescription() {
        return this.simpleDescription;
    }

    public String getSourceSize() {
        return this.sourceSize;
    }

    public String getStar() {
        return this.star;
    }

    public String getTriggerId() {
        return this.triggerId;
    }

    public boolean isOfflineAd() {
        return this.isOfflineAd;
    }

    public void setAdCreativeId(String str) {
        this.adCreativeId = str;
    }

    public void setAppPackageName(String str) {
        this.appPackageName = str;
    }

    public void setClickType(int i10) {
        this.clickType = i10;
    }

    public void setDownloadCount(int i10) {
        this.downloadCount = i10;
    }

    public void setExtJson(String str) {
        this.extJson = str;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setIconUri(Uri uri) {
        this.iconUri = uri;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setImgList(List<ImgListDTO> list) {
        this.imgList = list;
    }

    public void setItemID(String str) {
        this.itemID = str;
    }

    public void setLan(String str) {
        this.lan = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOfflineAd(boolean z10) {
        this.isOfflineAd = z10;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSafeTag(List<SafeTagDTO> list) {
        this.safeTag = list;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setShowId(String str) {
        this.showId = str;
    }

    public void setShowTrackingSecretKey(String str) {
        this.showTrackingSecretKey = str;
    }

    public void setSimpleDescription(String str) {
        this.simpleDescription = str;
    }

    public void setSourceSize(String str) {
        this.sourceSize = str;
    }

    public void setStar(String str) {
        this.star = str;
    }

    public void setTriggerId(String str) {
        this.triggerId = str;
    }

    @NonNull
    public String toString() {
        return "PslinkInfo{triggerId=" + this.triggerId + ", adCreativeId=" + this.adCreativeId + ", showId=" + this.showId + ", extJson=" + this.extJson + "}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.itemID);
        parcel.writeString(this.name);
        parcel.writeString(this.star);
        parcel.writeString(this.score);
        parcel.writeInt(this.downloadCount);
        parcel.writeString(this.lan);
        parcel.writeString(this.iconUrl);
        parcel.writeParcelable(this.iconUri, i10);
        parcel.writeString(this.packageName);
        parcel.writeString(this.simpleDescription);
        parcel.writeString(this.sourceSize);
        parcel.writeTypedList(this.safeTag);
        parcel.writeString(this.gaid);
        parcel.writeString(this.showId);
        parcel.writeTypedList(this.imgList);
        parcel.writeString(this.appPackageName);
        parcel.writeInt(this.clickType);
        parcel.writeByte(this.isOfflineAd ? (byte) 1 : (byte) 0);
        parcel.writeString(this.showTrackingSecretKey);
        parcel.writeString(this.triggerId);
        parcel.writeString(this.adCreativeId);
        parcel.writeString(this.extJson);
    }

    protected PslinkInfo(Parcel parcel) {
        this.clickType = 1;
        this.itemID = parcel.readString();
        this.name = parcel.readString();
        this.star = parcel.readString();
        this.score = parcel.readString();
        this.downloadCount = parcel.readInt();
        this.lan = parcel.readString();
        this.iconUrl = parcel.readString();
        this.iconUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.packageName = parcel.readString();
        this.simpleDescription = parcel.readString();
        this.sourceSize = parcel.readString();
        this.safeTag = parcel.createTypedArrayList(SafeTagDTO.CREATOR);
        this.gaid = parcel.readString();
        this.showId = parcel.readString();
        this.imgList = parcel.createTypedArrayList(ImgListDTO.CREATOR);
        this.appPackageName = parcel.readString();
        this.clickType = parcel.readInt();
        this.isOfflineAd = parcel.readByte() != 0;
        this.showTrackingSecretKey = parcel.readString();
        this.triggerId = parcel.readString();
        this.adCreativeId = parcel.readString();
        this.extJson = parcel.readString();
    }
}
