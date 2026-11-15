package com.transsion.dbdata.beans.onlinevideo;

import java.util.List;

public class MediaBean extends TypeBean {
    public static final int DISPLAY_TYPE_HOT = 2;
    public static final int DISPLAY_TYPE_NEW = 1;
    public static final int DISPLAY_TYPE_TOP = 3;
    public static final int PAY_TYPE_DISCOUNT = 2;
    public static final int PAY_TYPE_FREE = 0;
    public static final int PAY_TYPE_VIP = 1;
    public static final int SOURCE_TYPE_MANGO = 1;
    public static final int SOURCE_TYPE_SMASH = 2;
    public static final int SOURCE_TYPE_WEBURL = 0;
    public static final int SOURCE_TYPE_YTB = 4;
    private String actors;
    private int captionLangSort;
    private Integer collection;
    private String cover_x;
    private String cover_y;
    private String description;
    private String directors;
    private Integer display_type;
    private Integer duration;
    private Integer finish_status;
    private long id;
    private String keyword;
    private String language;
    private Integer online_status;
    private Integer pay_type;
    private int playLet;
    private String play_end_time;
    private String play_start_time;
    private Integer price;
    private Double scores;
    private int serial_count;
    private String short_describe;
    private String source_id;
    private String source_name;
    private Integer source_type;
    private Integer status;
    private String title;
    private List<VideoDefinitionsBean> video_definitions;
    private String video_link;

    public static class VideoDefinitionsBean {
        private Integer definition;
        private Integer pay_type;

        public Integer getDefinition() {
            return this.definition;
        }

        public Integer getPay_type() {
            return this.pay_type;
        }

        public void setDefinition(Integer num) {
            this.definition = num;
        }

        public void setPay_type(Integer num) {
            this.pay_type = num;
        }
    }

    public String getActors() {
        return this.actors;
    }

    public int getCaptionLangSort() {
        return this.captionLangSort;
    }

    public Integer getCollection() {
        return this.collection;
    }

    public String getCover_x() {
        return this.cover_x;
    }

    public String getCover_y() {
        return this.cover_y;
    }

    public String getDescription() {
        return this.description;
    }

    public String getDirectors() {
        return this.directors;
    }

    public Integer getDisplay_type() {
        return this.display_type;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public Integer getFinish_status() {
        return this.finish_status;
    }

    public long getId() {
        return this.id;
    }

    public String getKeyword() {
        return this.keyword;
    }

    public String getLanguage() {
        return this.language;
    }

    public Integer getOnline_status() {
        return this.online_status;
    }

    public Integer getPay_type() {
        Integer num = this.pay_type;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public int getPlayLet() {
        return this.playLet;
    }

    public String getPlay_end_time() {
        return this.play_end_time;
    }

    public String getPlay_start_time() {
        return this.play_start_time;
    }

    public Integer getPrice() {
        return this.price;
    }

    public Double getScores() {
        return this.scores;
    }

    public Integer getSerial_count() {
        return Integer.valueOf(this.serial_count);
    }

    public String getShort_describe() {
        return this.short_describe;
    }

    public String getSource_id() {
        return this.source_id;
    }

    public String getSource_name() {
        return this.source_name;
    }

    public Integer getSource_type() {
        return this.source_type;
    }

    public Integer getStatus() {
        return this.status;
    }

    public String getTitle() {
        return this.title;
    }

    public List<VideoDefinitionsBean> getVideo_definitions() {
        return this.video_definitions;
    }

    public String getVideo_link() {
        return this.video_link;
    }

    public boolean isPortraitVideo() {
        return this.playLet == 2;
    }

    public boolean isShortVideo() {
        int i = this.playLet;
        return i == 1 || i == 2;
    }

    public void setActors(String str) {
        this.actors = str;
    }

    public void setCaptionLangSort(int i) {
        this.captionLangSort = i;
    }

    public void setCollection(Integer num) {
        this.collection = num;
    }

    public void setCover_x(String str) {
        this.cover_x = str;
    }

    public void setCover_y(String str) {
        this.cover_y = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDirectors(String str) {
        this.directors = str;
    }

    public void setDisplay_type(Integer num) {
        this.display_type = num;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setFinish_status(Integer num) {
        this.finish_status = num;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setKeyword(String str) {
        this.keyword = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public void setOnline_status(Integer num) {
        this.online_status = num;
    }

    public void setPay_type(Integer num) {
        this.pay_type = num;
    }

    public void setPlay_end_time(String str) {
        this.play_end_time = str;
    }

    public void setPlay_start_time(String str) {
        this.play_start_time = str;
    }

    public void setPrice(Integer num) {
        this.price = num;
    }

    public void setScores(Double d) {
        this.scores = d;
    }

    public void setSerial_count(Integer num) {
        this.serial_count = num.intValue();
    }

    public void setShort_describe(String str) {
        this.short_describe = str;
    }

    public void setSource_id(String str) {
        this.source_id = str;
    }

    public void setSource_name(String str) {
        this.source_name = str;
    }

    public void setSource_type(Integer num) {
        this.source_type = num;
    }

    public void setStatus(Integer num) {
        this.status = num;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideo_definitions(List<VideoDefinitionsBean> list) {
        this.video_definitions = list;
    }

    public void setVideo_link(String str) {
        this.video_link = str;
    }

    public int showDisplayType() {
        Integer num = this.display_type;
        if (num == null || num.intValue() < 1) {
            return 0;
        }
        return this.display_type.intValue();
    }

    public boolean showVipLogo() {
        Integer num;
        Integer num2 = this.display_type;
        return ((num2 != null && num2.intValue() >= 1) || (num = this.pay_type) == null || num.intValue() == 0) ? false : true;
    }

    public String toString() {
        return "MediaBean{id=" + this.id + ", source_id='" + this.source_id + "', source_type=" + this.source_type + ", source_name='" + this.source_name + "', title='" + this.title + "', cover_x='" + this.cover_x + "', cover_y='" + this.cover_y + "', pay_type=" + this.pay_type + ", display_type=" + this.display_type + ", directors='" + this.directors + "', actors='" + this.actors + "', language='" + this.language + "', description='" + this.description + "', keyword='" + this.keyword + "', online_status=" + this.online_status + ", play_start_time='" + this.play_start_time + "', play_end_time='" + this.play_end_time + "', serial_count=" + this.serial_count + ", finish_status=" + this.finish_status + ", scores=" + this.scores + ", status=" + this.status + ", duration=" + this.duration + ", collection=" + this.collection + ", price=" + this.price + ", video_definitions=" + this.video_definitions + '}';
    }
}
