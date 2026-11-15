package com.hunantv.imgo.data;

import android.text.TextUtils;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.a.h;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.p;
import com.hunantv.imgo.util.t;
import com.mgtv.json.JsonInterface;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public class ContentPlayData implements JsonInterface {
    private String androidid;
    private String app_version;
    private String carrier;
    private String channel;
    private String collection_id;
    private String cxid;
    private String device_id;
    private String element_id;
    private String err_info;
    private long event_duration;
    private String event_name;
    private String event_type;
    private String extra;
    private int is_login;
    private int is_vip;
    private String lib;
    private String lib_version;
    private int lm_mid;
    private String lob;
    private String manufacturer;
    private String mod_id;
    private String mod_position;
    private String mod_type;
    private String model;
    private String network_type;
    private String oaid;
    private int offline;
    private String os;
    private String os_version;
    private String project;
    private int screen_height;
    private int screen_width;
    private String sdk_version;
    private String sid;
    private String source;
    private String status;
    private String suuid;
    private long time;
    private String ua;
    private int user_type;
    private String uuid;
    private String video_code;
    private String video_id;
    private int auto_play = -1;
    private long src1 = -1;
    private long src2 = -1;
    private long src3 = -1;
    private int play_merge = 0;

    public ContentPlayData() {
        setDevice_id(com.hunantv.imgo.util.b.t());
        setUuid(com.hunantv.imgo.util.b.n());
        try {
            setIs_vip(com.hunantv.imgo.util.b.j());
        } catch (Exception e) {
            e.printStackTrace();
        }
        setIs_vip(a.a().b() ? 1 : 0);
        setUser_type(TextUtils.isEmpty(com.hunantv.imgo.util.b.n()) ? 0 : 2);
        setIs_login(!TextUtils.isEmpty(com.hunantv.imgo.util.b.n()) ? 1 : 0);
        setTime(System.currentTimeMillis());
        setApp_version(com.hunantv.imgo.util.b.e());
        setLib("Android");
        setLib_version("2.0.6");
        setManufacturer(com.hunantv.imgo.util.b.s());
        setModel(com.hunantv.imgo.util.b.p());
        setOs("Android");
        setOs_version(com.hunantv.imgo.util.b.q());
        setScreen_height(t.b(BaseApplication.getContext()));
        setScreen_width(t.a(BaseApplication.getContext()));
        setNetwork_type(p.c());
        setChannel(com.hunantv.imgo.util.b.z());
        setSdk_version("2.0.6");
        setCarrier(com.hunantv.imgo.util.b.H());
        setAndroidid(com.hunantv.imgo.util.b.u());
        setSid(h.e());
        setUa(com.hunantv.imgo.util.b.G());
        setMod_id(com.hunantv.imgo.util.b.l(com.hunantv.imgo.util.b.ak()));
        setCxid(com.hunantv.imgo.util.b.A());
        setOaid(com.hunantv.imgo.util.b.U());
        setIs_vip(com.hunantv.imgo.util.b.j());
        setPlay_merge(com.hunantv.imgo.util.b.ae());
        try {
            if (!TextUtils.isEmpty(MgtvPlayerConstants.MGSDK_PPID)) {
                setLm_mid(Integer.parseInt(MgtvPlayerConstants.MGSDK_PPID));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        setEvent_type("track");
        setProject("union-media");
        setSuuid(c.a().f);
    }

    public RequestParams createBaseRequestParams() {
        RequestParams requestParams = new RequestParams();
        requestParams.put("$time", this.time);
        requestParams.put("$uuid", this.uuid);
        requestParams.put("$device_id", this.device_id);
        requestParams.put("$is_vip", this.is_vip);
        requestParams.put("$user_type", this.user_type);
        requestParams.put("$is_login", this.is_login);
        requestParams.put("$app_version", this.app_version);
        requestParams.put("$lib", this.lib);
        requestParams.put("$lib_version", this.lib_version);
        requestParams.put("$manufacturer", this.manufacturer);
        requestParams.put("$model", this.model);
        requestParams.put("$os", this.os);
        requestParams.put("$os_version", this.os_version);
        requestParams.put("$screen_height", this.screen_height);
        requestParams.put("$screen_width", this.screen_width);
        requestParams.put("$network_type", this.network_type);
        requestParams.put("$channel", this.channel);
        requestParams.put("$carrier", this.carrier);
        requestParams.put("androidid", this.androidid);
        requestParams.put(CommonUrlParts.HUAWEI_OAID, this.oaid);
        requestParams.put("sid", this.sid);
        requestParams.put("$ua", this.ua);
        requestParams.put("$cxid", this.cxid);
        requestParams.put("$lm_mid", this.lm_mid);
        requestParams.put("$event_type", this.event_type);
        requestParams.put("$event_name", this.event_name);
        requestParams.put("$project", this.project);
        requestParams.put("$lt", com.hunantv.imgo.util.b.ac() ? "2" : "1");
        int i = this.auto_play;
        if (i != -1) {
            requestParams.put("auto_play", i);
        }
        requestParams.put("suuid", this.suuid);
        requestParams.put("$source", this.source);
        requestParams.put("mod_id", this.mod_id);
        if (!TextUtils.isEmpty(this.mod_position)) {
            requestParams.put("mod_position", this.mod_position);
        }
        requestParams.put("mod_type", this.mod_type);
        requestParams.put("event_duration", this.event_duration);
        requestParams.put("err_info", this.err_info);
        requestParams.put("extra", this.extra);
        requestParams.put("status", this.status);
        if (!TextUtils.isEmpty(this.lob)) {
            requestParams.put("lob", this.lob);
        }
        requestParams.put("$play_merge", this.play_merge);
        requestParams.put("video_id", this.video_id);
        requestParams.put("video_code", this.video_code);
        requestParams.put("$sdk_version", this.sdk_version);
        if (!TextUtils.isEmpty(this.element_id)) {
            requestParams.put("$element_id", this.element_id);
        }
        if (!TextUtils.isEmpty(this.collection_id)) {
            requestParams.put("collection_id", this.collection_id);
        }
        if ("time_cost".equals(this.event_name)) {
            long j = this.src1;
            if (j > -1) {
                requestParams.put("src1", j);
            }
            long j2 = this.src2;
            if (j2 > -1) {
                requestParams.put("src2", j2);
            }
            long j3 = this.src3;
            if (j3 > -1) {
                requestParams.put("src3", j3);
            }
        }
        requestParams.put("$offline", this.offline);
        return requestParams;
    }

    public String getAndroidid() {
        return this.androidid;
    }

    public String getApp_version() {
        return this.app_version;
    }

    public int getAuto_play() {
        return this.auto_play;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getCxid() {
        return this.cxid;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getElement_id() {
        return this.element_id;
    }

    public String getErr_info() {
        return this.err_info;
    }

    public long getEvent_duration() {
        return this.event_duration;
    }

    public String getEvent_name() {
        return this.event_name;
    }

    public String getEvent_type() {
        return this.event_type;
    }

    public String getExtra() {
        return this.extra;
    }

    public int getIs_login() {
        return this.is_login;
    }

    public int getIs_vip() {
        return this.is_vip;
    }

    public String getLib() {
        return this.lib;
    }

    public String getLib_version() {
        return this.lib_version;
    }

    public int getLm_mid() {
        return this.lm_mid;
    }

    public String getLob() {
        return this.lob;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getMod_id() {
        return this.mod_id;
    }

    public String getMod_position() {
        return this.mod_position;
    }

    public String getMod_type() {
        return this.mod_type;
    }

    public String getModel() {
        return this.model;
    }

    public String getNetwork_type() {
        return this.network_type;
    }

    public String getOaid() {
        return this.oaid;
    }

    public String getOs() {
        return this.os;
    }

    public String getOs_version() {
        return this.os_version;
    }

    public int getPlay_merge() {
        return this.play_merge;
    }

    public String getProject() {
        return this.project;
    }

    public int getScreen_height() {
        return this.screen_height;
    }

    public int getScreen_width() {
        return this.screen_width;
    }

    public String getSid() {
        return this.sid;
    }

    public String getSource() {
        return this.source;
    }

    public long getSrc1() {
        return this.src1;
    }

    public long getSrc2() {
        return this.src2;
    }

    public long getSrc3() {
        return this.src3;
    }

    public String getStatus() {
        return this.status;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public long getTime() {
        return this.time;
    }

    public String getUa() {
        return this.ua;
    }

    public int getUser_type() {
        return this.user_type;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getVideo_code() {
        return this.video_code;
    }

    public String getVideo_id() {
        return this.video_id;
    }

    public void setAndroidid(String str) {
        this.androidid = str;
    }

    public void setApp_version(String str) {
        this.app_version = str;
    }

    public void setAuto_play(int i) {
        this.auto_play = i;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setCxid(String str) {
        this.cxid = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setElement_id(String str) {
        this.element_id = str;
    }

    public void setErr_info(String str) {
        this.err_info = str;
    }

    public void setEvent_duration(long j) {
        this.event_duration = j;
    }

    public void setEvent_name(String str) {
        this.event_name = str;
    }

    public void setEvent_type(String str) {
        this.event_type = str;
    }

    public void setExtra(String str) {
        this.extra = str;
    }

    public void setIs_login(int i) {
        this.is_login = i;
    }

    public void setIs_vip(int i) {
        this.is_vip = i;
    }

    public void setLib(String str) {
        this.lib = str;
    }

    public void setLib_version(String str) {
        this.lib_version = str;
    }

    public void setLm_mid(int i) {
        this.lm_mid = i;
    }

    public void setLob(String str) {
        this.lob = str;
    }

    public void setManufacturer(String str) {
        this.manufacturer = str;
    }

    public void setMod_id(String str) {
        this.mod_id = str;
    }

    public void setMod_position(String str) {
        this.mod_position = str;
    }

    public void setMod_type(String str) {
        this.mod_type = str;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setNetwork_type(String str) {
        this.network_type = str;
    }

    public void setOaid(String str) {
        this.oaid = str;
    }

    public void setOffline(int i) {
        this.offline = i;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public void setOs_version(String str) {
        this.os_version = str;
    }

    public void setPlay_merge(int i) {
        this.play_merge = i;
    }

    public void setProject(String str) {
        this.project = str;
    }

    public void setScreen_height(int i) {
        this.screen_height = i;
    }

    public void setScreen_width(int i) {
        this.screen_width = i;
    }

    public void setSdk_version(String str) {
        this.sdk_version = str;
    }

    public void setSid(String str) {
        this.sid = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSrc1(long j) {
        this.src1 = j;
    }

    public void setSrc2(long j) {
        this.src2 = j;
    }

    public void setSrc3(long j) {
        this.src3 = j;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public void setUa(String str) {
        this.ua = str;
    }

    public void setUser_type(int i) {
        this.user_type = i;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVideo_code(String str) {
        this.video_code = str;
    }

    public void setVideo_id(String str) {
        this.video_id = str;
    }
}
