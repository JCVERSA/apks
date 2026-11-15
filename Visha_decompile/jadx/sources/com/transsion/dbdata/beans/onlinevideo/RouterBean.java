package com.transsion.dbdata.beans.onlinevideo;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.io.Serializable;
import java.util.List;

public class RouterBean implements Serializable {
    private boolean forActivityResult;
    private Integer method;
    private RouterData param;
    private String path;
    private int requestCode;
    private Integer source;
    private Class<?> targetClass;
    private int type;

    public static class RouterData implements Parcelable {
        public static final Parcelable.Creator<RouterData> CREATOR = new Parcelable.Creator<RouterData>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            @RequiresApi(api = 29)
            public RouterData createFromParcel(Parcel parcel) {
                return new RouterData(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public RouterData[] newArray(int i) {
                return new RouterData[i];
            }
        };
        private int bottom_position;
        private long channel;
        private String channel_name;
        private int data_type;
        private int end_time;
        private String from_card;
        private String from_page;
        private String hintMessage;
        private int isPreview;
        private int isShort;
        private int isYoutube;
        private int is_related;
        private List<ComplexLabelBean> labelRal;
        private int mbNotPlayFromHistory;
        private int playLet;
        private String requestId;
        private long serialId;
        private String source_id;
        private int source_type;
        private int start_time;
        private String title;
        private int top_position;
        private long topic_id;
        private String topic_name;
        private int topic_sort;
        private String typeBeanJson;
        private String url;
        private int video_force_play;
        private long video_id;
        private long video_serail_id;
        private String video_serail_source_id;
        private String video_url;
        private String vkId;
        private String youtubeChannel;
        private String youtubeChannelCover;
        private String youtubeCover;
        private String youtubeVideoName;

        public RouterData() {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public int getBottom_position() {
            return this.bottom_position;
        }

        public long getChannel() {
            return this.channel;
        }

        public String getChannel_name() {
            return this.channel_name;
        }

        public int getData_type() {
            return this.data_type;
        }

        public int getEnd_time() {
            return this.end_time;
        }

        public String getFrom_card() {
            return this.from_card;
        }

        public String getFrom_page() {
            return this.from_page;
        }

        public String getHintMessage() {
            return this.hintMessage;
        }

        public int getIsPreview() {
            return this.isPreview;
        }

        public int getIsYoutube() {
            return this.isYoutube;
        }

        public int getIs_related() {
            return this.is_related;
        }

        public List<ComplexLabelBean> getLabelRal() {
            return this.labelRal;
        }

        public int getMbNotPlayFromHistory() {
            return this.mbNotPlayFromHistory;
        }

        public String getRequestId() {
            return this.requestId;
        }

        public long getSerialId() {
            return this.serialId;
        }

        public String getSourceId() {
            return this.source_id;
        }

        public int getSourceType() {
            return this.source_type;
        }

        public String getSource_id() {
            return this.source_id;
        }

        public int getSource_type() {
            return this.source_type;
        }

        public int getStart_time() {
            return this.start_time;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTop_position() {
            return this.top_position;
        }

        public long getTopic_id() {
            return this.topic_id;
        }

        public String getTopic_name() {
            return this.topic_name;
        }

        public int getTopic_sort() {
            return this.topic_sort;
        }

        public String getTypeBeanJson() {
            return this.typeBeanJson;
        }

        public String getUrl() {
            return this.url;
        }

        public String getVideoUrl() {
            return this.video_url;
        }

        public int getVideo_force_play() {
            return this.video_force_play;
        }

        public long getVideo_id() {
            return this.video_id;
        }

        public long getVideo_serail_id() {
            return this.video_serail_id;
        }

        public String getVideo_serail_source_id() {
            return this.video_serail_source_id;
        }

        public long getVideo_serial_id() {
            return this.video_serail_id;
        }

        public String getVideo_serial_source_id() {
            return this.video_serail_source_id;
        }

        public String getVideo_url() {
            return this.video_url;
        }

        public String getVkId() {
            return this.vkId;
        }

        public String getYoutubeChannel() {
            return this.youtubeChannel;
        }

        public String getYoutubeChannelCover() {
            return this.youtubeChannelCover;
        }

        public String getYoutubeCover() {
            return this.youtubeCover;
        }

        public String getYoutubeVideoName() {
            return this.youtubeVideoName;
        }

        public boolean isNotPlayFromHistory() {
            return this.mbNotPlayFromHistory != 1;
        }

        public boolean isShortVideo() {
            int i;
            return this.isShort == 1 || (i = this.playLet) == 1 || i == 2;
        }

        public int isYoutube() {
            return this.isYoutube;
        }

        public void setBottom_position(int i) {
            this.bottom_position = i;
        }

        public void setChannel(long j) {
            this.channel = j;
        }

        public void setChannel_name(String str) {
            this.channel_name = str;
        }

        public void setData_type(int i) {
            this.data_type = i;
        }

        public void setEnd_time(int i) {
            this.end_time = i;
        }

        public void setFrom_card(String str) {
            this.from_card = str;
        }

        public void setFrom_page(String str) {
            this.from_page = str;
        }

        public void setHintMessage(String str) {
            this.hintMessage = str;
        }

        public RouterData setIsPreview(int i) {
            this.isPreview = i;
            return this;
        }

        public void setIsYoutube(int i) {
            this.isYoutube = i;
        }

        public void setIs_related(int i) {
            this.is_related = i;
        }

        public void setLabelRal(List<ComplexLabelBean> list) {
            this.labelRal = list;
        }

        public void setMbNotPlayFromHistory(int i) {
            this.mbNotPlayFromHistory = i;
        }

        public void setRequestId(String str) {
            this.requestId = str;
        }

        public void setSerialId(long j) {
            this.serialId = j;
        }

        public RouterData setShortVideo(boolean z) {
            this.isShort = z ? 1 : 0;
            return this;
        }

        public void setSourceId(String str) {
            this.source_id = str;
        }

        public void setSourceType(int i) {
            this.source_type = i;
        }

        public void setSource_id(String str) {
            this.source_id = str;
        }

        public void setSource_type(int i) {
            this.source_type = i;
        }

        public void setStart_time(int i) {
            this.start_time = i;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTop_position(int i) {
            this.top_position = i;
        }

        public RouterData setTopic(long j, String str, int i) {
            this.topic_id = j;
            this.topic_name = str;
            this.top_position = i;
            return this;
        }

        public void setTopic_id(int i) {
            this.topic_id = i;
        }

        public void setTopic_name(String str) {
            this.topic_name = str;
        }

        public void setTopic_sort(int i) {
            this.topic_sort = i;
        }

        public void setTypeBeanJson(String str) {
            this.typeBeanJson = str;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setVideoUrl(String str) {
            this.video_url = str;
        }

        public void setVideo_force_play(int i) {
            this.video_force_play = i;
        }

        public void setVideo_id(long j) {
            this.video_id = j;
        }

        public void setVideo_serail_id(long j) {
            this.video_serail_id = j;
        }

        public void setVideo_serail_source_id(String str) {
            this.video_serail_source_id = str;
        }

        public void setVideo_serial_id(long j) {
            this.video_serail_id = j;
        }

        public void setVideo_serial_source_id(String str) {
            this.video_serail_source_id = str;
        }

        public void setVideo_url(String str) {
            this.video_url = str;
        }

        public void setVkId(String str) {
            this.vkId = str;
        }

        public void setYoutube(int i) {
            this.isYoutube = i;
        }

        public void setYoutubeChannel(String str) {
            this.youtubeChannel = str;
        }

        public void setYoutubeChannelCover(String str) {
            this.youtubeChannelCover = str;
        }

        public void setYoutubeVideoName(String str) {
            this.youtubeVideoName = str;
        }

        public String toString() {
            return "RouterData{video_id=" + this.video_id + ", source_id='" + this.source_id + "', video_url='" + this.video_url + "', title='" + this.title + "', bottom_position=" + this.bottom_position + ", top_position=" + this.top_position + ", topic_id=" + this.topic_id + ", topic_name='" + this.topic_name + "', source_type=" + this.source_type + ", from_page='" + this.from_page + "', from_card='" + this.from_card + "', topic_sort=" + this.topic_sort + ", is_related=" + this.is_related + ", channel=" + this.channel + ", data_type=" + this.data_type + ", channel_name='" + this.channel_name + "', serialId=" + this.serialId + ", labelRal=" + this.labelRal + ", requestId='" + this.requestId + "', video_serail_id=" + this.video_serail_id + ", video_serail_source_id='" + this.video_serail_source_id + "', start_time=" + this.start_time + ", end_time=" + this.end_time + ", video_force_play=" + this.video_force_play + ", isYoutube=" + this.isYoutube + ", youtubeChannel='" + this.youtubeChannel + "', youtubeChannelCover='" + this.youtubeChannelCover + "', youtubeVideoName='" + this.youtubeVideoName + "', youtubeCover='" + this.youtubeCover + "', mbNotPlayFromHistory=" + this.mbNotPlayFromHistory + ", url='" + this.url + "', vkId='" + this.vkId + "', typeBeanJson='" + this.typeBeanJson + "', isPreview='" + this.isPreview + "', isShort='" + this.isShort + "'}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.video_id);
            parcel.writeString(this.source_id);
            parcel.writeInt(this.source_type);
            parcel.writeString(this.title);
            parcel.writeInt(this.bottom_position);
            parcel.writeInt(this.top_position);
            parcel.writeLong(this.topic_id);
            parcel.writeString(this.topic_name);
            parcel.writeString(this.channel_name);
            parcel.writeString(this.from_card);
            parcel.writeString(this.from_page);
            parcel.writeString(this.url);
            parcel.writeInt(this.topic_sort);
            parcel.writeInt(this.is_related);
            parcel.writeInt(this.data_type);
            parcel.writeLong(this.channel);
            parcel.writeLong(this.serialId);
            parcel.writeTypedList(this.labelRal);
            parcel.writeString(this.requestId);
            parcel.writeLong(this.video_serail_id);
            parcel.writeString(this.video_serail_source_id);
            parcel.writeInt(this.start_time);
            parcel.writeInt(this.end_time);
            parcel.writeInt(this.mbNotPlayFromHistory);
            parcel.writeInt(this.video_force_play);
            parcel.writeInt(this.isYoutube);
            parcel.writeString(this.youtubeChannel);
            parcel.writeString(this.youtubeChannelCover);
            parcel.writeString(this.youtubeVideoName);
            parcel.writeString(this.youtubeCover);
            parcel.writeString(this.hintMessage);
            parcel.writeString(this.vkId);
            parcel.writeString(this.typeBeanJson);
            parcel.writeString(this.video_url);
            parcel.writeInt(this.isPreview);
            parcel.writeInt(this.isShort);
        }

        public void setTopic_id(long j) {
            this.topic_id = j;
        }

        public RouterData(int i, int i2) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.bottom_position = i;
            this.top_position = i2;
        }

        public RouterData(int i, int i2, String str) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.bottom_position = i;
            this.top_position = i2;
            this.hintMessage = str;
        }

        public RouterData(long j, String str, long j2, int i) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.serialId = j2;
            this.data_type = i;
        }

        public RouterData(long j, String str, long j2, boolean z) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.serialId = j2;
            this.mbNotPlayFromHistory = z ? 1 : 0;
        }

        public RouterData(long j, String str, long j2, String str2, boolean z) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.serialId = j2;
            this.title = str2;
            this.mbNotPlayFromHistory = z ? 1 : 0;
        }

        public RouterData(long j, long j2, String str, String str2, int i) {
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.serialId = j2;
            this.title = str;
            this.url = str2;
            this.source_type = i;
        }

        public RouterData(String str, String str2, String str3, int i, String str4) {
            this.isShort = 0;
            this.isPreview = 0;
            this.vkId = str;
            this.title = str2;
            this.video_url = str3;
            this.url = str3;
            this.source_type = i;
            this.typeBeanJson = str4;
        }

        public RouterData(long j, String str) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
        }

        public RouterData(long j, String str, String str2) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.title = str2;
        }

        public RouterData(long j, String str, String str2, String str3) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.title = str2;
            this.topic_name = str3;
        }

        public RouterData(long j, long j2, String str, String str2, String str3, int i) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.serialId = j2;
            this.source_id = str;
            this.title = str2;
            this.topic_name = str3;
            this.video_force_play = i;
        }

        public RouterData(long j, long j2, String str, String str2, String str3, int i, int i2, String str4, String str5, String str6, String str7) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.serialId = j2;
            this.source_id = str;
            this.title = str2;
            this.topic_name = str3;
            this.video_force_play = i;
            this.isYoutube = i2;
            this.youtubeChannel = str4;
            this.youtubeChannelCover = str5;
            this.youtubeVideoName = str6;
            this.youtubeCover = str7;
        }

        public RouterData(long j, String str, String str2, int i, int i2) {
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = j;
            this.source_id = str;
            this.title = str2;
            this.source_type = i;
            this.is_related = i2;
        }

        public RouterData(int i, String str, String str2, String str3, String str4, String str5) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.source_id = str;
            this.isYoutube = i;
            this.youtubeChannel = str3;
            this.youtubeChannelCover = str4;
            this.youtubeVideoName = str2;
            this.youtubeCover = str5;
        }

        public RouterData(String str) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.url = str;
        }

        public RouterData(String str, String str2) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.url = str;
            this.title = str2;
        }

        @RequiresApi(api = 29)
        public RouterData(Parcel parcel) {
            this.source_type = 1;
            this.isShort = 0;
            this.isPreview = 0;
            this.video_id = parcel.readLong();
            this.source_id = parcel.readString();
            this.source_type = parcel.readInt();
            this.title = parcel.readString();
            this.bottom_position = parcel.readInt();
            this.top_position = parcel.readInt();
            this.topic_id = parcel.readLong();
            this.topic_name = parcel.readString();
            this.channel_name = parcel.readString();
            this.from_card = parcel.readString();
            this.from_page = parcel.readString();
            this.url = parcel.readString();
            this.topic_sort = parcel.readInt();
            this.is_related = parcel.readInt();
            this.data_type = parcel.readInt();
            this.channel = parcel.readLong();
            this.serialId = parcel.readLong();
            this.labelRal = parcel.createTypedArrayList(ComplexLabelBean.CREATOR);
            this.requestId = parcel.readString();
            this.video_serail_id = parcel.readLong();
            this.video_serail_source_id = parcel.readString();
            this.start_time = parcel.readInt();
            this.end_time = parcel.readInt();
            this.mbNotPlayFromHistory = parcel.readInt();
            this.video_force_play = parcel.readInt();
            this.isYoutube = parcel.readInt();
            this.youtubeChannel = parcel.readString();
            this.youtubeChannelCover = parcel.readString();
            this.youtubeVideoName = parcel.readString();
            this.youtubeCover = parcel.readString();
            this.hintMessage = parcel.readString();
            this.vkId = parcel.readString();
            this.typeBeanJson = parcel.readString();
            this.video_url = parcel.readString();
            this.isPreview = parcel.readInt();
            this.isShort = parcel.readInt();
        }
    }

    public Integer getMethod() {
        return this.method;
    }

    public RouterData getParam() {
        return this.param;
    }

    public String getPath() {
        return this.path;
    }

    public int getRequestCode() {
        return this.requestCode;
    }

    public Integer getSource() {
        return this.source;
    }

    public Class<?> getTargetClass() {
        return this.targetClass;
    }

    public int getType() {
        return this.type;
    }

    public boolean isForActivityResult() {
        return this.forActivityResult;
    }

    public void setForActivityResult(boolean z, int i) {
        this.forActivityResult = z;
        this.requestCode = i;
    }

    public void setMethod(Integer num) {
        this.method = num;
    }

    public void setParam(RouterData routerData) {
        this.param = routerData;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSource(Integer num) {
        this.source = num;
    }

    public void setTargetClass(Class<?> cls) {
        this.targetClass = cls;
    }

    public void setType(int i) {
        this.type = i;
    }

    @NonNull
    public String toString() {
        return "RouterBean{source=" + this.source + ", method=" + this.method + ", path='" + this.path + "', param=" + this.param + ", type=" + this.type + '}';
    }

    public static final class RouterBeanBuilder {
        private Integer method;
        private RouterData param;
        private String path;
        private Integer source;
        private Class<?> targetClass;
        private int type;

        public static RouterBeanBuilder aRouterBean() {
            return new RouterBeanBuilder();
        }

        public RouterBean build() {
            RouterBean routerBean = new RouterBean();
            routerBean.setSource(this.source);
            routerBean.setMethod(this.method);
            routerBean.setPath(this.path);
            routerBean.setParam(this.param);
            routerBean.setType(this.type);
            routerBean.setTargetClass(this.targetClass);
            return routerBean;
        }

        public RouterBeanBuilder withMarkParam(String str, int i) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.from_card = str;
                this.param.is_related = i;
            }
            return this;
        }

        public RouterBeanBuilder withParam(RouterData routerData) {
            this.param = routerData;
            return this;
        }

        public RouterBeanBuilder withTargetClass(Class<?> cls) {
            this.targetClass = cls;
            return this;
        }

        public RouterBeanBuilder withType(int i) {
            this.type = i;
            return this;
        }

        public RouterBeanBuilder withMarkParam(String str, int i, String str2) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.from_card = str;
                this.param.is_related = i;
                this.param.requestId = str2;
            }
            return this;
        }

        public RouterBeanBuilder withMarkParam(String str, int i, String str2, long j) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.from_card = str;
                this.param.is_related = i;
                this.param.requestId = str2;
                this.param.topic_id = j;
            }
            return this;
        }

        public RouterBeanBuilder withMarkParam(String str) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.from_card = str;
            }
            return this;
        }

        public RouterBeanBuilder withMarkParam(long j, long j2, String str, String str2) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.channel = j;
                this.param.channel_name = str;
                this.param.topic_id = j2;
                this.param.topic_name = str2;
            }
            return this;
        }

        public RouterBeanBuilder withMarkParam(long j, long j2, String str, String str2, String str3) {
            RouterData routerData = this.param;
            if (routerData != null) {
                routerData.channel = j;
                this.param.channel_name = str;
                this.param.topic_id = j2;
                this.param.topic_name = str2;
                this.param.requestId = str3;
            }
            return this;
        }
    }
}
