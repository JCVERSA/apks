package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.transsion.push.PushConstants;
import com.transsion.xuanniao.account.model.data.CloudItem;
import defpackage.hb0;
import defpackage.r0a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;
import java.util.List;

@Keep
public class TranVideoDetail implements Serializable {

    @SerializedName("video_info")
    private VideoInfoBean videoInfo;

    @SerializedName("video_serials")
    private List<VideoSerials> videoSerials;

    @SerializedName("video_serials_not_intact")
    private List<VideoSerials> videoSerialsNotIntact;

    @SerializedName("video_series")
    private List<VideoSeries> videoSeries;

    @Keep
    public static class VideoInfoBean {

        @SerializedName("actors")
        private String actors;

        @SerializedName(CloudItem.KEY_CATEGORY)
        private int category;

        @SerializedName("channels")
        private String channels;

        @SerializedName("cover_x")
        private String coverX;

        @SerializedName("cover_y")
        private String coverY;

        @SerializedName("directors")
        private String directors;

        @SerializedName("duration")
        private int duration;

        @SerializedName("is_live")
        private int isLive;

        @SerializedName("keyword")
        private String keyword;

        @SerializedName("kind")
        private String kind;

        @SerializedName("pay_type")
        private int payType;

        @SerializedName("playLet")
        private int playLet;

        @SerializedName("scores")
        private float scores;

        @SerializedName("serial_count")
        private int serialCount;

        @SerializedName("serial_cover")
        private int serialCover;

        @SerializedName("serial_id")
        private long serialId;

        @SerializedName("series_id")
        private long seriesId;

        @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
        private String sourceId;

        @SerializedName("source_name")
        private String sourceName;

        @SerializedName("source_type")
        private String sourceType;

        @SerializedName("tags")
        private List<Tag> tags;

        @SerializedName(PushConstants.SP_KEY_SUBSCRIBE_TOPICS)
        private String topics;

        @SerializedName("update_serial_no")
        private int updateSerialNo;

        @SerializedName("update_at")
        private String updateTime;

        @SerializedName("video_description")
        private String videoDescription;

        @SerializedName("video_id")
        private long videoId;

        @SerializedName("video_title")
        private String videoTitle;

        @SerializedName("video_type")
        private int videoType;

        @SerializedName("video_type_name")
        private String videoTypeName;

        @SerializedName("year")
        private String year;

        public String getActors() {
            if (!r0a.g(this.actors)) {
                this.actors = this.actors.replaceAll(StringUtils.COMMA, " , ");
            }
            return this.actors;
        }

        public int getCategory() {
            return this.category;
        }

        public String getChannels() {
            return this.channels;
        }

        public String getCoverX() {
            return this.coverX;
        }

        public String getCoverY() {
            return this.coverY;
        }

        public String getDirectors() {
            if (!r0a.g(this.directors)) {
                this.directors = this.directors.replaceAll(StringUtils.COMMA, " , ");
            }
            return this.directors;
        }

        public int getDuration() {
            return this.duration;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public String getKind() {
            return this.kind;
        }

        public int getPayType() {
            return this.payType;
        }

        public int getPlayLet() {
            return this.playLet;
        }

        public float getScores() {
            return this.scores;
        }

        public int getSerialCount() {
            return this.serialCount;
        }

        public int getSerialCover() {
            return this.serialCover;
        }

        public long getSerialId() {
            return this.serialId;
        }

        public long getSeriesId() {
            return this.seriesId;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public String getSourceName() {
            return this.sourceName;
        }

        public String getSourceType() {
            return this.sourceType;
        }

        public List<Tag> getTags() {
            return this.tags;
        }

        public String getTopics() {
            return this.topics;
        }

        public int getUpdateSerialNo() {
            return this.updateSerialNo;
        }

        public String getUpdateTime() {
            return this.updateTime;
        }

        public String getVideoDescription() {
            return this.videoDescription;
        }

        public long getVideoId() {
            return this.videoId;
        }

        public String getVideoTitle() {
            return this.videoTitle;
        }

        public int getVideoType() {
            return this.videoType;
        }

        public String getVideoTypeName() {
            return this.videoTypeName;
        }

        public String getYear() {
            return this.year;
        }

        public boolean hasActors() {
            String actors = getActors();
            return (r0a.g(actors) || r0a.g(actors.replace(" ", ""))) ? false : true;
        }

        public boolean hasDirectors() {
            String directors = getDirectors();
            return (r0a.g(directors) || r0a.g(directors.replace(" ", ""))) ? false : true;
        }

        public boolean isLive() {
            return this.isLive == 1;
        }

        public boolean isPortraitShortVideo() {
            return this.playLet == 2;
        }

        public boolean isShortVideo() {
            int i = this.playLet;
            return i == 1 || i == 2;
        }

        public void setActors(String str) {
            this.actors = str;
        }

        public void setDirectors(String str) {
            this.directors = str;
        }

        public void setDuration(int i) {
            this.duration = i;
        }

        public void setScores(float f) {
            this.scores = f;
        }

        public void setSerialId(long j) {
            this.serialId = j;
        }

        public void setSourceId(String str) {
            this.sourceId = str;
        }

        public void setSourceName(String str) {
            this.sourceName = str;
        }

        public void setSourceType(String str) {
            this.sourceType = str;
        }

        public void setVideoId(long j) {
            this.videoId = j;
        }

        public void setVideoTitle(String str) {
            this.videoTitle = str;
        }
    }

    @Keep
    public static class VideoSerials {

        @SerializedName("cover_x")
        private String coverX;

        @SerializedName("cover_y")
        private String coverY;

        @SerializedName("definitions")
        private List<Definitions> definitions;

        @SerializedName("duration")
        private int duration;

        @SerializedName("is_intact")
        private int isIntact;

        @SerializedName("pay_type")
        private int payType;

        @SerializedName("playLet")
        private int playLet;

        @SerializedName("play_start_time")
        private String playStartTime;

        @SerializedName("serial_id")
        private long serialId;

        @SerializedName("serial_no")
        private int serialNo;

        @SerializedName("serial_title")
        private String serialTitle;

        @SerializedName("series_id")
        private long seriesId;

        @SerializedName(hb0.KEY_NAME_VK_SOURCE_ID)
        private String sourceId;

        @SerializedName("update_at")
        private String updateAt;

        @SerializedName("video_id")
        private long videoId;

        @SerializedName("video_link")
        private String videoUrl;

        @Keep
        public static class Definitions {

            @SerializedName("name")
            private String name;

            @SerializedName("pay_type")
            private int payType;

            @SerializedName("type")
            private int type;

            public String getName() {
                return this.name;
            }

            public int getPayType() {
                return this.payType;
            }

            public int getType() {
                return this.type;
            }

            public void setName(String str) {
                this.name = str;
            }

            public void setPayType(int i) {
                this.payType = i;
            }

            public void setType(int i) {
                this.type = i;
            }
        }

        public String getCoverX() {
            return this.coverX;
        }

        public String getCoverY() {
            return this.coverY;
        }

        public List<Definitions> getDefinitions() {
            return this.definitions;
        }

        public int getDuration() {
            return this.duration;
        }

        public int getIsIntact() {
            return this.isIntact;
        }

        public int getPayType() {
            return this.payType;
        }

        public int getPlayLet() {
            return this.playLet;
        }

        public long getSerialId() {
            return this.serialId;
        }

        public int getSerialNo() {
            return this.serialNo;
        }

        public String getSerialTitle() {
            return this.serialTitle;
        }

        public long getSeriesId() {
            return this.seriesId;
        }

        public String getSourceId() {
            return this.sourceId;
        }

        public String getUpdateAt() {
            return this.updateAt;
        }

        public String getUpdateTime() {
            return this.playStartTime;
        }

        public long getVideoId() {
            return this.videoId;
        }

        public String getVideoUrl() {
            return this.videoUrl;
        }

        public void setDuration(int i) {
            this.duration = i;
        }

        public void setIsIntact(int i) {
            this.isIntact = i;
        }

        public void setPayType(int i) {
            this.payType = i;
        }

        public void setSerialId(long j) {
            this.serialId = j;
        }

        public void setSerialTitle(String str) {
            this.serialTitle = str;
        }

        public void setSourceId(String str) {
            this.sourceId = str;
        }

        public void setVideoId(long j) {
            this.videoId = j;
        }

        public void setVideoUrl(String str) {
            this.videoUrl = str;
        }
    }

    @Keep
    public static class VideoSeries {

        @SerializedName("season_name")
        private String seasonName;

        @SerializedName("season_no")
        private String seasonNo;

        @SerializedName("series_id")
        private long seriesId;

        @SerializedName("series_name")
        private String seriesName;

        @SerializedName("video_id")
        private long videoId;

        public String getSeasonName() {
            return this.seasonName;
        }

        public String getSeasonNo() {
            return this.seasonNo;
        }

        public long getSeriesId() {
            return this.seriesId;
        }

        public String getSeriesName() {
            return this.seriesName;
        }

        public long getVideoId() {
            return this.videoId;
        }

        public void setSeasonNo(String str) {
            this.seasonNo = str;
        }

        public void setVideoId(long j) {
            this.videoId = j;
        }
    }

    public static boolean isMgTVVideo(String str) {
        return "1".equals(str);
    }

    public static boolean isSmashiVideo(String str) {
        return "2".equals(str);
    }

    public static boolean isYoutubeVideo(String str) {
        return "4".equals(str);
    }

    public VideoInfoBean getVideoInfo() {
        return this.videoInfo;
    }

    public List<VideoSerials> getVideoSerials() {
        return this.videoSerials;
    }

    public List<VideoSerials> getVideoSerialsNotIntact() {
        return this.videoSerialsNotIntact;
    }

    public List<VideoSeries> getVideoSeries() {
        return this.videoSeries;
    }

    public void setVideoSerials(List<VideoSerials> list) {
        this.videoSerials = list;
    }

    public void setVideoSerialsNotIntact(List<VideoSerials> list) {
        this.videoSerialsNotIntact = list;
    }

    public void setVideoSeries(List<VideoSeries> list) {
        this.videoSeries = list;
    }
}
