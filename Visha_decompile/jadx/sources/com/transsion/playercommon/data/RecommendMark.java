package com.transsion.playercommon.data;

import androidx.core.app.NotificationCompat;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import com.transsion.push.PushConstants;
import java.util.List;

public class RecommendMark extends TypeBean {

    @SerializedName("appid")
    private String appid;

    @SerializedName("brand")
    private String brand;

    @SerializedName("city")
    private String city;

    @SerializedName("cnt")
    private Integer cnt;

    @SerializedName("country")
    private String country;

    @SerializedName("events")
    private List<Event> events;

    @SerializedName("gaid")
    private String gaid;

    @SerializedName("hostid")
    private Integer hostid;

    @SerializedName("ins")
    private String ins;

    @SerializedName("isfl")
    private Integer isfl;

    @SerializedName("lang")
    private String lang;

    @SerializedName("openid")
    private String openid;

    @SerializedName("osv")
    private String osv;

    @SerializedName(PushConstants.PROVIDER_FIELD_PKG)
    private String pkg;

    @SerializedName("sdkv")
    private String sdkv;

    @SerializedName("tpmsid")
    private String tpmsid;

    @SerializedName("uuid")
    private String uuid;

    @SerializedName(PushConstants.PROVIDER_VAID)
    private String vaid;

    @SerializedName("vc")
    private String vc;

    @SerializedName("vn")
    private String vn;

    public static class Event {

        @SerializedName("eparam")
        private String eparam;

        @SerializedName(NotificationCompat.CATEGORY_EVENT)
        private String event;

        @SerializedName(DownloadFacadeEnum.USER_NET)
        private Integer f28net;

        @SerializedName("tid")
        private long tid;

        @SerializedName(TrackingKey.TS)
        private Long ts;

        public String getEparam() {
            return this.eparam;
        }

        public String getEvent() {
            return this.event;
        }

        public Integer getNet() {
            return this.f28net;
        }

        public long getTid() {
            return this.tid;
        }

        public Long getTs() {
            return this.ts;
        }

        public void setEparam(String str) {
            this.eparam = str;
        }

        public void setEvent(String str) {
            this.event = str;
        }

        public void setNet(Integer num) {
            this.f28net = num;
        }

        public void setTid(long j) {
            this.tid = j;
        }

        public void setTs(Long l) {
            this.ts = l;
        }

        public String toString() {
            return "Event{net=" + this.f28net + ", eparam='" + this.eparam + "', event='" + this.event + "', tid=" + this.tid + ", ts=" + this.ts + '}';
        }
    }

    public String getAppid() {
        return this.appid;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getCity() {
        return this.city;
    }

    public Integer getCnt() {
        return this.cnt;
    }

    public String getCountry() {
        return this.country;
    }

    public List<Event> getEvents() {
        return this.events;
    }

    public String getGaid() {
        return this.gaid;
    }

    public Integer getHostid() {
        return this.hostid;
    }

    public String getIns() {
        return this.ins;
    }

    public Integer getIsfl() {
        return this.isfl;
    }

    public String getLang() {
        return this.lang;
    }

    public String getOpenid() {
        return this.openid;
    }

    public String getOsv() {
        return this.osv;
    }

    public String getPkg() {
        return this.pkg;
    }

    public String getSdkv() {
        return this.sdkv;
    }

    public String getTpmsid() {
        return this.tpmsid;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getVaid() {
        return this.vaid;
    }

    public String getVc() {
        return this.vc;
    }

    public String getVn() {
        return this.vn;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCnt(Integer num) {
        this.cnt = num;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setEvents(List<Event> list) {
        this.events = list;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setHostid(Integer num) {
        this.hostid = num;
    }

    public void setIns(String str) {
        this.ins = str;
    }

    public void setIsfl(Integer num) {
        this.isfl = num;
    }

    public void setLang(String str) {
        this.lang = str;
    }

    public void setOpenid(String str) {
        this.openid = str;
    }

    public void setOsv(String str) {
        this.osv = str;
    }

    public void setPkg(String str) {
        this.pkg = str;
    }

    public void setSdkv(String str) {
        this.sdkv = str;
    }

    public void setTpmsid(String str) {
        this.tpmsid = str;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVaid(String str) {
        this.vaid = str;
    }

    public void setVc(String str) {
        this.vc = str;
    }

    public void setVn(String str) {
        this.vn = str;
    }

    public String toString() {
        return "RecommendMark{sdkv='" + this.sdkv + "', events=" + this.events + ", ins='" + this.ins + "', isfl=" + this.isfl + ", hostid=" + this.hostid + ", pkg='" + this.pkg + "', cnt=" + this.cnt + ", vn='" + this.vn + "', appid='" + this.appid + "', openid='" + this.openid + "', tpmsid='" + this.tpmsid + "', vaid='" + this.vaid + "', lang='" + this.lang + "', vc='" + this.vc + "', uuid='" + this.uuid + "', gaid='" + this.gaid + "', osv='" + this.osv + "', country='" + this.country + "', city='" + this.city + "', brand='" + this.brand + "'}";
    }
}
