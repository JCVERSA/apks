package com.transsion.dbdata.beans.onlinevideo;

public class SuperiorRecommend extends TypeBean {
    private String cover_x;
    private String cover_y;
    private String description;
    private int duration;
    private Integer finish_status;
    private long id;
    private int pay_type;
    private long play_end_time;
    private long play_start_time;
    private int serial_count;
    private long video_id;
    private String video_name;
    private long video_serial_id;
    private String video_serial_source_id;

    public String getCover_x() {
        return this.cover_x;
    }

    public String getCover_y() {
        return this.cover_y;
    }

    public String getDescription() {
        return this.description;
    }

    public int getDuration() {
        return this.duration;
    }

    public Integer getFinish_status() {
        return this.finish_status;
    }

    public long getId() {
        return this.id;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public long getPlay_end_time() {
        return this.play_end_time;
    }

    public long getPlay_start_time() {
        return this.play_start_time;
    }

    public int getSerial_count() {
        return this.serial_count;
    }

    public long getVideo_id() {
        return this.video_id;
    }

    public String getVideo_name() {
        return this.video_name;
    }

    public long getVideo_serial_id() {
        return this.video_serial_id;
    }

    public String getVideo_serial_source_id() {
        return this.video_serial_source_id;
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

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setFinish_status(Integer num) {
        this.finish_status = num;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setPay_type(int i) {
        this.pay_type = i;
    }

    public void setPlay_end_time(long j) {
        this.play_end_time = j;
    }

    public void setPlay_start_time(long j) {
        this.play_start_time = j;
    }

    public void setSerial_count(int i) {
        this.serial_count = i;
    }

    public void setVideo_id(long j) {
        this.video_id = j;
    }

    public void setVideo_name(String str) {
        this.video_name = str;
    }

    public void setVideo_serial_id(long j) {
        this.video_serial_id = j;
    }

    public void setVideo_serial_source_id(String str) {
        this.video_serial_source_id = str;
    }

    public boolean showVipLogo() {
        return this.pay_type != 0;
    }
}
