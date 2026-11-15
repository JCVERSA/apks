package com.transsion.dbdata.beans.onlinevideo;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.hb0;
import java.util.List;

public class VideoInfo {

    @SerializedName("actors")
    private String actors;

    @SerializedName(CloudItem.KEY_CATEGORY)
    private Integer category;

    @SerializedName("cover_x")
    private String coverX;

    @SerializedName("cover_y")
    private String coverY;

    @SerializedName("description")
    private String description;
    private int displayType;

    @SerializedName("duration")
    private Integer duration;

    @SerializedName("is_term")
    private boolean isTerm;

    @SerializedName(DownloadFacadeEnum.USER_IS_VIP)
    private boolean isVip;

    @SerializedName("kind")
    private Object kind;

    @SerializedName("scores")
    private float scores;

    @SerializedName("serial_list")
    private List<SerialListBean> serialList;

    @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
    private String sourceId;

    @SerializedName("source_type")
    private int sourceType;

    @SerializedName("tag_list")
    private List<TagListBean> tagList;

    @SerializedName("title")
    private String title;

    @SerializedName("video_id")
    private Integer videoId;

    @SerializedName("year")
    private String year;

    public static class SerialListBean implements Parcelable {
        public static final Parcelable.Creator<SerialListBean> CREATOR = new Parcelable.Creator<SerialListBean>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public SerialListBean createFromParcel(Parcel parcel) {
                return new SerialListBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public SerialListBean[] newArray(int i) {
                return new SerialListBean[i];
            }
        };

        @SerializedName("cover_x")
        private String coverX;

        @SerializedName("cover_y")
        private String coverY;

        @SerializedName("description")
        private String description;

        @SerializedName("is_intact")
        private Integer isIntact;

        @SerializedName("pay_type")
        private Integer payType;

        @SerializedName("serial_id")
        private Integer serialId;

        @SerializedName("serial_no")
        private Integer serialNo;

        @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
        private String sourceId;

        @SerializedName("title")
        private String title;

        @SerializedName("video_id")
        private Integer videoId;

        public SerialListBean() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getCoverX() {
            return this.coverX;
        }

        public String getCoverY() {
            return this.coverY;
        }

        public String getDescription() {
            return this.description;
        }

        public Integer getIsIntact() {
            return this.isIntact;
        }

        public Integer getPayType() {
            return this.payType;
        }

        public Integer getSerialId() {
            return this.serialId;
        }

        public Integer getSerialNo() {
            return this.serialNo;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public String getTitle() {
            return this.title;
        }

        public Integer getVideoId() {
            return this.videoId;
        }

        public void readFromParcel(Parcel parcel) {
            this.serialId = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.videoId = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.title = parcel.readString();
            this.description = parcel.readString();
            this.coverX = parcel.readString();
            this.coverY = parcel.readString();
            this.serialNo = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.payType = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.isIntact = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.sourceId = parcel.readString();
        }

        public void setCoverX(String str) {
            this.coverX = str;
        }

        public void setCoverY(String str) {
            this.coverY = str;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setIsIntact(Integer num) {
            this.isIntact = num;
        }

        public void setPayType(Integer num) {
            this.payType = num;
        }

        public void setSerialId(Integer num) {
            this.serialId = num;
        }

        public void setSerialNo(Integer num) {
            this.serialNo = num;
        }

        public void setSourceId(String str) {
            this.sourceId = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setVideoId(Integer num) {
            this.videoId = num;
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeValue(this.serialId);
            parcel.writeValue(this.videoId);
            parcel.writeString(this.title);
            parcel.writeString(this.description);
            parcel.writeString(this.coverX);
            parcel.writeString(this.coverY);
            parcel.writeValue(this.serialNo);
            parcel.writeValue(this.payType);
            parcel.writeValue(this.isIntact);
            parcel.writeString(this.sourceId);
        }

        public SerialListBean(Parcel parcel) {
            this.serialId = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.videoId = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.title = parcel.readString();
            this.description = parcel.readString();
            this.coverX = parcel.readString();
            this.coverY = parcel.readString();
            this.serialNo = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.payType = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.isIntact = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.sourceId = parcel.readString();
        }
    }

    public static class TagListBean {

        @SerializedName(TtmlNode.ATTR_ID)
        private Integer id;

        @SerializedName("language_code")
        private String languageCode;

        @SerializedName("name")
        private String name;

        @SerializedName("pay_type")
        private Integer payType;

        @SerializedName("type")
        private Integer type;

        public Integer getId() {
            return this.id;
        }

        public String getLanguageCode() {
            return this.languageCode;
        }

        public String getName() {
            return this.name;
        }

        public Integer getPayType() {
            return this.payType;
        }

        public Integer getType() {
            return this.type;
        }

        public void setId(Integer num) {
            this.id = num;
        }

        public void setLanguageCode(String str) {
            this.languageCode = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPayType(Integer num) {
            this.payType = num;
        }

        public void setType(Integer num) {
            this.type = num;
        }
    }

    public void checkDisplayType() {
    }

    public String getActors() {
        return this.actors;
    }

    public Integer getCategory() {
        return this.category;
    }

    public String getCoverX() {
        return this.coverX;
    }

    public String getCoverY() {
        return this.coverY;
    }

    public String getDescription() {
        return this.description;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Object getKind() {
        return this.kind;
    }

    public float getScores() {
        return this.scores;
    }

    public List<SerialListBean> getSerialList() {
        return this.serialList;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public List<TagListBean> getTagList() {
        return this.tagList;
    }

    public String getTitle() {
        return this.title;
    }

    public Integer getVideoId() {
        return this.videoId;
    }

    public String getYear() {
        return this.year;
    }

    public boolean isMgTvVideo() {
        return this.sourceType == 1;
    }

    public boolean isSmashiVideo() {
        return this.sourceType == 2;
    }

    public boolean isTerm() {
        return this.isTerm;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setActors(String str) {
        this.actors = str;
    }

    public void setCategory(Integer num) {
        this.category = num;
    }

    public void setCoverX(String str) {
        this.coverX = str;
    }

    public void setCoverY(String str) {
        this.coverY = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setKind(Object obj) {
        this.kind = obj;
    }

    public void setScores(float f) {
        this.scores = f;
    }

    public void setSerialList(List<SerialListBean> list) {
        this.serialList = list;
    }

    public void setSourceId(String str) {
        this.sourceId = str;
    }

    public void setTagList(List<TagListBean> list) {
        this.tagList = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideoId(Integer num) {
        this.videoId = num;
    }

    public void setYear(String str) {
        this.year = str;
    }
}
