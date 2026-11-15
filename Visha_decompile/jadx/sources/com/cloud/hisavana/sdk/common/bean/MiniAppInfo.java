package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import defpackage.o17;

public class MiniAppInfo implements Parcelable {
    public static final Parcelable.Creator<MiniAppInfo> CREATOR = new Parcelable.Creator<MiniAppInfo>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MiniAppInfo createFromParcel(Parcel parcel) {
            return new MiniAppInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public MiniAppInfo[] newArray(int i) {
            return new MiniAppInfo[i];
        }
    };
    private static Boolean isGAIDLastDigitOdd;
    private String actionName;
    private String appId;
    private String category;
    private String categoryIconUrl;
    private String deepLinkUrl;
    private String description;
    private String guideMode;
    private String iconUrl;
    private String name;
    private float ratings;
    private long size;
    private long users;

    public interface GuideMode {
        public static final int GUIDE1_AND_SYSTEM_ADD = 1;
        public static final int GUIDE2_AND_SYSTEM_ADD = 2;
        public static final int NONE = 0;
    }

    public MiniAppInfo() {
    }

    private void loadGAIDLastDigitOddOrEven() {
        if (isGAIDLastDigitOdd != null) {
            return;
        }
        String strF = DeviceUtil.f();
        if (TextUtils.isEmpty(strF)) {
            return;
        }
        try {
            boolean z = true;
            char cCharAt = strF.charAt(strF.length() - 1);
            if (Character.isLetter(cCharAt) || Character.isDigit(cCharAt)) {
                if (cCharAt % 2 != 1) {
                    z = false;
                }
                isGAIDLastDigitOdd = Boolean.valueOf(z);
            } else {
                isGAIDLastDigitOdd = Boolean.TRUE;
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getActionName() {
        return (String) o17.a(this.actionName, "Get and Play");
    }

    public String getAppId() {
        return (String) o17.a(this.appId, "");
    }

    public String getCategory() {
        return (String) o17.a(this.category, "");
    }

    public String getCategoryIconUrl() {
        return (String) o17.a(this.categoryIconUrl, "");
    }

    public String getDeepLinkUrl() {
        return (String) o17.a(this.deepLinkUrl, "");
    }

    public String getDescription() {
        return (String) o17.a(this.description, "");
    }

    public String getIconUrl() {
        return (String) o17.a(this.iconUrl, "");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    public int getIntGuideMode() {
        byte b;
        if (TextUtils.isEmpty(this.guideMode)) {
            this.guideMode = "B";
        }
        switch (this.guideMode) {
            case "A":
                b = 0;
                break;
            case "B":
                b = 1;
                break;
            case "C":
                b = 3;
                break;
            case "D":
                b = 4;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return 0;
        }
        if (b == 3) {
            return 1;
        }
        if (b == 4) {
            return 2;
        }
        loadGAIDLastDigitOddOrEven();
        Boolean bool = isGAIDLastDigitOdd;
        return (bool == null || bool.booleanValue()) ? 1 : 2;
    }

    public String getName() {
        return (String) o17.a(this.name, "");
    }

    public float getRatings() {
        return this.ratings;
    }

    public long getSize() {
        return this.size;
    }

    public long getUsers() {
        return this.users;
    }

    public void setActionName(String str) {
        this.actionName = str;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setCategoryIconUrl(String str) {
        this.categoryIconUrl = str;
    }

    public void setDeepLinkUrl(String str) {
        this.deepLinkUrl = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRatings(float f) {
        this.ratings = f;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setUsers(long j) {
        this.users = j;
    }

    public String toString() {
        return "MiniAppInfo{deepLinkUrl='" + this.deepLinkUrl + "', guideMode='" + this.guideMode + "', appId='" + this.appId + "', iconUrl='" + this.iconUrl + "', name='" + this.name + "', category='" + this.category + "', categoryIconUrl='" + this.categoryIconUrl + "', ratings=" + this.ratings + ", users=" + this.users + ", size=" + this.size + ", description='" + this.description + "', actionName='" + this.actionName + "'}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.deepLinkUrl);
        parcel.writeString(this.guideMode);
        parcel.writeString(this.appId);
        parcel.writeString(this.iconUrl);
        parcel.writeString(this.name);
        parcel.writeString(this.category);
        parcel.writeString(this.categoryIconUrl);
        parcel.writeFloat(this.ratings);
        parcel.writeLong(this.users);
        parcel.writeLong(this.size);
        parcel.writeString(this.description);
        parcel.writeString(this.actionName);
    }

    public MiniAppInfo(Parcel parcel) {
        this.deepLinkUrl = parcel.readString();
        this.guideMode = parcel.readString();
        this.appId = parcel.readString();
        this.iconUrl = parcel.readString();
        this.name = parcel.readString();
        this.category = parcel.readString();
        this.categoryIconUrl = parcel.readString();
        this.ratings = parcel.readFloat();
        this.users = parcel.readLong();
        this.size = parcel.readLong();
        this.description = parcel.readString();
        this.actionName = parcel.readString();
    }
}
