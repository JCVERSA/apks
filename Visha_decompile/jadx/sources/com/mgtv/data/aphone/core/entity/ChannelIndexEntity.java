package com.mgtv.data.aphone.core.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.mgtv.json.JsonInterface;
import java.io.Serializable;
import java.util.List;
import org.slf4j.Marker;

public class ChannelIndexEntity extends JsonEntity implements Parcelable, JsonInterface, Serializable {
    public static final int AD_CLICK_IN = 2;
    public static final int AD_CLICK_OUT = 1;
    public static final int AD_CLICK_UNKNOW = 0;
    public static final Parcelable.Creator<ChannelIndexEntity> CREATOR = new Parcelable.Creator<ChannelIndexEntity>() {
        @Override
        public ChannelIndexEntity createFromParcel(Parcel parcel) {
            return new ChannelIndexEntity(parcel);
        }

        @Override
        public ChannelIndexEntity[] newArray(int i) {
            return new ChannelIndexEntity[i];
        }
    };
    public static final int FOLLOW_FOLLOWED = 1;
    public static final int FOLLOW_UNFOLLOW = 2;
    public static final int FOLLOW_UNKNOW = 0;
    private static final long serialVersionUID = -1130704452419899285L;
    public ChannelBean channel;
    public List<DataBean> data;
    public List<NaviBean> navi;
    public String seqid;
    public long timestamp;

    public static class ChannelBean implements Parcelable, JsonInterface, Serializable {
        public static final Parcelable.Creator<ChannelBean> CREATOR = new Parcelable.Creator<ChannelBean>() {
            @Override
            public ChannelBean createFromParcel(Parcel parcel) {
                return new ChannelBean(parcel);
            }

            @Override
            public ChannelBean[] newArray(int i) {
                return new ChannelBean[i];
            }
        };
        private static final long serialVersionUID = -4373581635335250854L;
        public String channelIcon;
        public String title;
        public String wechatDesc;
        public String wechatTitle;

        public ChannelBean() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.channelIcon);
            parcel.writeString(this.title);
            parcel.writeString(this.wechatDesc);
            parcel.writeString(this.wechatTitle);
        }

        public ChannelBean(Parcel parcel) {
            this.channelIcon = parcel.readString();
            this.title = parcel.readString();
            this.wechatDesc = parcel.readString();
            this.wechatTitle = parcel.readString();
        }
    }

    public static class DataBean implements Parcelable, JsonInterface, Serializable {
        public static final Parcelable.Creator<DataBean> CREATOR = new Parcelable.Creator<DataBean>() {
            @Override
            public DataBean createFromParcel(Parcel parcel) {
                return new DataBean(parcel);
            }

            @Override
            public DataBean[] newArray(int i) {
                return new DataBean[i];
            }
        };
        private static final long serialVersionUID = -3917143712407328595L;
        public int adId;
        public String combineId;
        public int dataModuleId;
        public String indexKey;
        public int isExchange;
        public List<ModuleDataBean> moduleData;
        public int moduleId;
        public String moduleName;
        public String moduleType;

        public static class ModuleDataBean implements Parcelable, JsonInterface, Serializable {
            public static final Parcelable.Creator<ModuleDataBean> CREATOR = new Parcelable.Creator<ModuleDataBean>() {
                @Override
                public ModuleDataBean createFromParcel(Parcel parcel) {
                    return new ModuleDataBean(parcel);
                }

                @Override
                public ModuleDataBean[] newArray(int i) {
                    return new ModuleDataBean[i];
                }
            };
            private static final long serialVersionUID = -9020677403073044161L;
            public String activityId;
            public int adJump;
            public String adJumpUrl;
            public String adOrigin;
            public String bgColor;
            public String childId;
            public String cornerType;
            public String filter;
            public String filters;
            public String fontColor;
            public String imgHUrl;
            public String imgHVUrl;
            public int isFollowed;
            public String isShare;
            public String jumpId;
            public String jumpKind;
            public String liveEndTime;
            public String liveStartTime;
            public String mobileTitle;
            public String name;
            public String pageUrl;
            public String phoneImgUrl;
            public String playerType;
            public String rightCorner;
            public String sortNo;
            public String subName;
            public String title;
            public String tvChannelId;
            public String updateInfo;
            public String videoUrl;

            public ModuleDataBean() {
            }

            @Override
            public int describeContents() {
                return 0;
            }

            public String getImgUrl(boolean z) {
                if (TextUtils.isEmpty(this.phoneImgUrl)) {
                    return z ? this.imgHUrl : this.imgHVUrl;
                }
                return this.phoneImgUrl;
            }

            public String getTitle() {
                String str = this.mobileTitle;
                return (str == null || str.isEmpty()) ? this.name : this.mobileTitle;
            }

            @Override
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeString(this.bgColor);
                parcel.writeString(this.childId);
                parcel.writeString(this.cornerType);
                parcel.writeString(this.filter);
                parcel.writeString(this.fontColor);
                parcel.writeString(this.imgHUrl);
                parcel.writeString(this.imgHVUrl);
                parcel.writeString(this.isShare);
                parcel.writeString(this.jumpId);
                parcel.writeString(this.jumpKind);
                parcel.writeString(this.liveEndTime);
                parcel.writeString(this.liveStartTime);
                parcel.writeString(this.mobileTitle);
                parcel.writeString(this.name);
                parcel.writeString(this.pageUrl);
                parcel.writeString(this.phoneImgUrl);
                parcel.writeString(this.playerType);
                parcel.writeString(this.rightCorner);
                parcel.writeString(this.sortNo);
                parcel.writeString(this.subName);
                parcel.writeString(this.title);
                parcel.writeString(this.tvChannelId);
                parcel.writeString(this.updateInfo);
                parcel.writeString(this.videoUrl);
                parcel.writeString(this.activityId);
                parcel.writeInt(this.isFollowed);
                parcel.writeInt(this.adJump);
                parcel.writeString(this.adJumpUrl);
                parcel.writeString(this.adOrigin);
            }

            public ModuleDataBean(Parcel parcel) {
                this.bgColor = parcel.readString();
                this.childId = parcel.readString();
                this.cornerType = parcel.readString();
                this.filter = parcel.readString();
                this.fontColor = parcel.readString();
                this.imgHUrl = parcel.readString();
                this.imgHVUrl = parcel.readString();
                this.isShare = parcel.readString();
                this.jumpId = parcel.readString();
                this.jumpKind = parcel.readString();
                this.liveEndTime = parcel.readString();
                this.liveStartTime = parcel.readString();
                this.mobileTitle = parcel.readString();
                this.name = parcel.readString();
                this.pageUrl = parcel.readString();
                this.phoneImgUrl = parcel.readString();
                this.playerType = parcel.readString();
                this.rightCorner = parcel.readString();
                this.sortNo = parcel.readString();
                this.subName = parcel.readString();
                this.title = parcel.readString();
                this.tvChannelId = parcel.readString();
                this.updateInfo = parcel.readString();
                this.videoUrl = parcel.readString();
                this.activityId = parcel.readString();
                this.isFollowed = parcel.readInt();
                this.adJump = parcel.readInt();
                this.adJumpUrl = parcel.readString();
                this.adOrigin = parcel.readString();
            }
        }

        public DataBean() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.adId);
            parcel.writeString(this.combineId);
            parcel.writeInt(this.dataModuleId);
            parcel.writeInt(this.isExchange);
            parcel.writeInt(this.moduleId);
            parcel.writeString(this.moduleName);
            parcel.writeString(this.moduleType);
            parcel.writeString(this.indexKey);
            parcel.writeTypedList(this.moduleData);
        }

        public DataBean(Parcel parcel) {
            this.adId = parcel.readInt();
            this.combineId = parcel.readString();
            this.dataModuleId = parcel.readInt();
            this.isExchange = parcel.readInt();
            this.moduleId = parcel.readInt();
            this.moduleName = parcel.readString();
            this.moduleType = parcel.readString();
            this.indexKey = parcel.readString();
            this.moduleData = parcel.createTypedArrayList(ModuleDataBean.CREATOR);
        }
    }

    public static class NaviBean implements Parcelable, JsonInterface, Serializable {
        public static final Parcelable.Creator<NaviBean> CREATOR = new Parcelable.Creator<NaviBean>() {
            @Override
            public NaviBean createFromParcel(Parcel parcel) {
                return new NaviBean(parcel);
            }

            @Override
            public NaviBean[] newArray(int i) {
                return new NaviBean[i];
            }
        };
        private static final long serialVersionUID = 950712146063558734L;
        public String childId;
        public String filter;
        public String jumpId;
        public String jumpKind;
        public String name;
        public int sortNo;

        public NaviBean() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.childId);
            parcel.writeString(this.filter);
            parcel.writeString(this.jumpId);
            parcel.writeString(this.jumpKind);
            parcel.writeString(this.name);
            parcel.writeInt(this.sortNo);
        }

        public NaviBean(Parcel parcel) {
            this.childId = parcel.readString();
            this.filter = parcel.readString();
            this.jumpId = parcel.readString();
            this.jumpKind = parcel.readString();
            this.name = parcel.readString();
            this.sortNo = parcel.readInt();
        }
    }

    public ChannelIndexEntity() {
    }

    public static ChannelIndexEntity addUniqueKey(ChannelIndexEntity channelIndexEntity) {
        List<DataBean> list = channelIndexEntity.data;
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                list.get(i).indexKey = list.get(i).moduleType + Marker.ANY_NON_NULL_MARKER + i;
            }
        }
        return channelIndexEntity;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.seqid);
        parcel.writeLong(this.timestamp);
        parcel.writeParcelable(this.channel, i);
        parcel.writeTypedList(this.data);
        parcel.writeTypedList(this.navi);
    }

    public ChannelIndexEntity(Parcel parcel) {
        this.seqid = parcel.readString();
        this.timestamp = parcel.readLong();
        this.channel = (ChannelBean) parcel.readParcelable(ChannelBean.class.getClassLoader());
        this.data = parcel.createTypedArrayList(DataBean.CREATOR);
        this.navi = parcel.createTypedArrayList(NaviBean.CREATOR);
    }
}
