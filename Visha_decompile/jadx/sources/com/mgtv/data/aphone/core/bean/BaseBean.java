package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.hunantv.imgo.global.SessionManager;
import com.mgtv.data.aphone.core.constants.KeysContants;
import com.mgtv.data.aphone.core.j.e;
import com.mgtv.data.aphone.core.j.f;
import com.mgtv.data.aphone.core.j.g;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.json.JsonInterface;
import java.util.HashMap;
import java.util.Map;

public class BaseBean implements JsonInterface {
    public String abroad;
    public String aver;
    public String bdsv;
    public String bid;
    public String buffer_kind;
    public String ch;
    public String chip_type;
    public String did;
    public String gps;
    public String guid;
    public String imei;
    public String isdebug;
    public String log_verison;
    public String mac;
    public String mf;
    public String mod;

    public String f20net;
    public String os;
    public String p2p;
    public String package_name;
    public String plat;
    public String play_sessionid;
    public String player_type;
    public String protocol_type;
    public String proxy;
    public String pver;
    public String rch;
    public String rdc;
    public String render_type;
    public String renderview_type;
    public String resolution_change;
    public String retry_count;
    public String runsid;
    public String sdk_version;
    public String service_acp;
    public String service_ap;
    public String service_bdid;
    public String service_bsid;
    public String service_cdnip;
    public String service_cf;
    public String service_cid;
    public String service_cpn;
    public String service_ct;
    public String service_datano;
    public String service_def;
    public String service_et;
    public String service_fpa;
    public String service_fpid;
    public String service_fpn;
    public String service_isad;
    public String service_istry;
    public String service_pay;
    public String service_plid;
    public String service_pt;
    public String service_pver;
    public String service_refmdid;
    public String service_submit;
    public String service_switcher;
    public String service_td;
    public String service_url;
    public String service_vid;
    public String service_vts;
    public String sid;
    public String source_type;
    public String src;
    public String statics_num1;
    public String statics_num2;
    public String statics_num3;
    public String statics_num4;
    public String statics_num5;
    public String sver;
    public String time;
    public String uuid;
    public String video_session;
    public String video_type;

    public BaseBean() {
    }

    private String getBfType(String str) {
        return (TextUtils.isEmpty(str) || !"1".equals(str)) ? "3" : "4";
    }

    private String getIsad(String str) {
        return ((TextUtils.isEmpty(str) || !"FALSE".equals(str)) && !TextUtils.isEmpty(str) && "TRUE".equals(str)) ? "1" : "0";
    }

    private String getP2p(String str) {
        return (TextUtils.isEmpty(str) || !"0".equals(str)) ? "1" : "0";
    }

    private String getPt(String str) {
        if (!TextUtils.isEmpty(str) && "1".equals(str)) {
            return "0";
        }
        if (TextUtils.isEmpty(str) || !"2".equals(str)) {
            return (TextUtils.isEmpty(str) || !"3".equals(str)) ? "0" : "3";
        }
        return "1";
    }

    private String isNull(String str) {
        return (str == null || "null".equals(str) || "none".equals(str)) ? "" : str;
    }

    private void setBigDataCommonParams(Context context) {
        this.did = com.hunantv.imgo.util.b.t();
        this.aver = com.hunantv.imgo.util.b.g();
        this.sver = com.hunantv.imgo.util.b.r();
        this.time = e.b(System.currentTimeMillis());
        this.mf = f.d();
        this.mac = com.hunantv.imgo.util.b.v();
        this.mod = f.c();
        this.imei = com.hunantv.imgo.util.b.k();
        this.bdsv = f.b();
        this.isdebug = f.a();
        this.f20net = g.b(context);
        this.uuid = !i.a(com.mgtv.data.aphone.b.a.f) ? com.mgtv.data.aphone.b.a.f : com.hunantv.imgo.util.b.n();
        this.gps = !i.a(com.mgtv.data.aphone.b.a.g) ? com.mgtv.data.aphone.b.a.g : f.f();
        this.guid = !i.a(com.mgtv.data.aphone.b.a.c) ? com.mgtv.data.aphone.b.a.c : com.hunantv.imgo.util.b.K();
        this.ch = !i.a(com.mgtv.data.aphone.b.a.e) ? com.mgtv.data.aphone.b.a.e : com.hunantv.imgo.util.b.y();
        this.sid = com.mgtv.data.aphone.core.f.a.c().b();
        this.rdc = !i.a(CommonParamsBean.c) ? CommonParamsBean.c : "";
        this.rch = i.a(CommonParamsBean.d) ? "" : CommonParamsBean.d;
        this.abroad = com.hunantv.imgo.b.a.b().equals("-1") ? "0" : com.hunantv.imgo.b.a.b();
        this.p2p = com.mgtv.data.aphone.b.a.i;
        this.runsid = com.mgtv.data.aphone.core.f.a.c().a();
        this.src = com.hunantv.imgo.util.b.N();
    }

    private void setPlayerCommon(HashMap<String, String> map) {
        this.service_bsid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceBsid.name()));
        this.service_pay = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.servicePay.name()));
        this.service_fpid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceFpid.name()));
        this.service_ap = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceAp.name()));
        this.service_td = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceTd.name()));
        this.service_def = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceDef.name()));
        this.service_fpn = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceFpn.name()));
        this.service_url = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceUrl.name()));
        this.service_pver = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.servicePver.name()));
        this.service_vid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceVid.name()));
        this.service_cdnip = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceCdnip.name()));
        this.service_plid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.servicePlid.name()));
        this.service_fpa = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceFpa.name()));
        this.service_ct = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceCt.name()));
        this.service_cid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceCid.name()));
        this.service_et = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceEt.name()));
        this.service_istry = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceIstry.name()));
        this.service_isad = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceIsad.name()));
        this.service_pt = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.servicePt.name()));
        this.service_cf = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceCf.name()));
        this.service_vts = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceVts.name()));
        this.service_switcher = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceSwitcher.name()));
        this.service_submit = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceSubmit.name()));
        this.service_bdid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceBdid.name()));
        this.service_cpn = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceCpn.name()));
        this.service_acp = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceAcp.name()));
        this.buffer_kind = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.BUFFER_KIND.name().toLowerCase()));
        this.service_refmdid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceRefmdid.name()));
        this.service_datano = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.serviceDatano.name()));
    }

    private void setPlayerCommonParams(HashMap<String, String> map) {
        this.video_session = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.VIDEO_SESSION.getValue().toLowerCase()));
        this.pver = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PVER.getValue().toLowerCase()));
        this.protocol_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PROTOCOL_TYPE.getValue().toLowerCase()));
        this.player_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PLAYER_TYPE.getValue().toLowerCase()));
        this.plat = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PLAT.getValue().toLowerCase()));
        this.source_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.SOURCE_TYPE.getValue().toLowerCase()));
        this.video_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.VIDEO_TYPE.getValue().toLowerCase()));
        this.proxy = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PROXY.getValue().toLowerCase()));
        this.resolution_change = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.RESOLUTION_CHANGE.getValue().toLowerCase()));
        this.os = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.OS.getValue().toLowerCase()));
        this.package_name = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PACKAGE_NAME.getValue().toLowerCase()));
        this.retry_count = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.RETRY_COUNT.getValue().toLowerCase()));
        this.play_sessionid = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.PLAY_SESSIONID.getValue().toLowerCase()));
        this.render_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.RENDER_TYPE.getValue().toLowerCase()));
        this.sdk_version = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.SDK_VERSION.getValue().toLowerCase()));
        this.log_verison = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.LOG_VERISON.getValue().toLowerCase()));
        this.chip_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.CHIP_TYPE.getValue().toLowerCase()));
        this.renderview_type = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.RENDERVIEW_TYPE.getValue().toLowerCase()));
        this.statics_num1 = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.STATICS_NUM1.getValue().toLowerCase()));
        this.statics_num2 = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.STATICS_NUM2.getValue().toLowerCase()));
        this.statics_num3 = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.STATICS_NUM3.getValue().toLowerCase()));
        this.statics_num4 = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.STATICS_NUM4.getValue().toLowerCase()));
        this.statics_num5 = String.valueOf(getMapValues(map, KeysContants.PlayerCommonParams.STATICS_NUM5.getValue().toLowerCase()));
    }

    public Map<String, String> getCommonParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.CommonParams.DID.getValue(), this.did);
        map.put(KeysContants.CommonParams.AVER.getValue(), this.aver);
        map.put(KeysContants.CommonParams.SVER.getValue(), this.sver);
        map.put(KeysContants.CommonParams.TIME.getValue(), this.time);
        map.put(KeysContants.CommonParams.NET.getValue(), this.f20net);
        map.put(KeysContants.CommonParams.GUID.getValue(), this.guid);
        map.put(KeysContants.CommonParams.SID.getValue(), this.sid);
        map.put(KeysContants.CommonParams.UUID.getValue(), this.uuid);
        map.put(KeysContants.CommonParams.GPS.getValue(), this.gps);
        map.put(KeysContants.CommonParams.ISDEBUG.getValue(), this.isdebug);
        map.put(KeysContants.CommonParams.MF.getValue(), this.mf);
        map.put(KeysContants.CommonParams.MOD.getValue(), this.mod);
        map.put(KeysContants.CommonParams.CH.getValue(), this.ch);
        map.put(KeysContants.CommonParams.IMEI.getValue(), this.imei);
        map.put(KeysContants.CommonParams.MAC.getValue(), this.mac);
        map.put(KeysContants.CommonParams.BDSV.getValue(), this.bdsv);
        map.put(KeysContants.CommonParams.P2P.getValue(), this.p2p);
        map.put(KeysContants.CommonParams.RUNSID.getValue(), this.runsid);
        map.put(KeysContants.CommonParams.SRC.getValue(), this.src);
        return map;
    }

    public String getMapValues(HashMap<String, String> map, String str) {
        return map.containsKey(str) ? map.get(str) : "";
    }

    public Map<String, String> getParameter(Map<String, String> map) {
        HashMap map2 = new HashMap();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            if (str.indexOf(NotificationCompat.CATEGORY_SERVICE) <= -1) {
                map2.put(str, str2);
            }
        }
        return map2;
    }

    public Map<String, String> getPlayerAddVid() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.serviceVid.getValue(), this.service_vid);
        return map;
    }

    public Map<String, String> getPlayerBufferCommon() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.serviceTd.getValue(), isNull(this.service_td));
        map.put(KeysContants.PlayerCommonParams.serviceVts.getValue(), isNull(this.service_vts));
        map.put(KeysContants.PlayerCommonParams.serviceCf.getValue(), isNull(this.service_cf));
        map.put(KeysContants.PlayerCommonParams.serviceCt.getValue(), isNull(this.service_ct));
        map.put(KeysContants.Buffer.BFTYPE.getValue(), isNull(getBfType(this.buffer_kind)));
        return map;
    }

    public Map<String, String> getPlayerCommon() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.VIDEO_SESSION.getValue(), this.video_session);
        map.put(KeysContants.CommonParams.UVIP.getValue(), SessionManager.isUserVIP() ? "1" : "0");
        map.put(KeysContants.PlayerCommonParams.serviceBsid.getValue(), isNull(this.service_bsid));
        map.put(KeysContants.PlayerCommonParams.servicePay.getValue(), isNull(this.service_pay));
        map.put(KeysContants.PlayerCommonParams.serviceAp.getValue(), isNull(this.service_ap));
        map.put(KeysContants.PlayerCommonParams.serviceDef.getValue(), isNull(this.service_def));
        map.put(KeysContants.PlayerCommonParams.serviceVid.getValue(), isNull(this.service_vid));
        map.put(KeysContants.PlayerCommonParams.servicePlid.getValue(), isNull(this.service_plid));
        map.put(KeysContants.PlayerCommonParams.serviceCid.getValue(), isNull(this.service_cid));
        map.put(KeysContants.PlayerCommonParams.serviceIstry.getValue(), isNull(this.service_istry));
        map.put(KeysContants.PlayerCommonParams.servicePt.getValue(), isNull(getPt(this.video_type)));
        map.put(KeysContants.PlayerCommonParams.serviceBdid.getValue(), isNull(this.service_bdid));
        map.put(KeysContants.PlayerCommonParams.serviceCpn.getValue(), "");
        return map;
    }

    public Map<String, String> getPlayerCommonParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.VIDEO_SESSION.getValue(), this.video_session);
        map.put(KeysContants.PlayerCommonParams.PVER.getValue(), this.pver);
        map.put(KeysContants.PlayerCommonParams.PROTOCOL_TYPE.getValue(), this.protocol_type);
        map.put(KeysContants.PlayerCommonParams.PLAYER_TYPE.getValue(), this.player_type);
        map.put(KeysContants.PlayerCommonParams.PLAT.getValue(), this.plat);
        map.put(KeysContants.PlayerCommonParams.SOURCE_TYPE.getValue(), this.source_type);
        map.put(KeysContants.PlayerCommonParams.VIDEO_TYPE.getValue(), this.video_type);
        map.put(KeysContants.PlayerCommonParams.PROXY.getValue(), this.proxy);
        map.put(KeysContants.PlayerCommonParams.RESOLUTION_CHANGE.getValue(), this.resolution_change);
        map.put(KeysContants.PlayerCommonParams.OS.getValue(), this.os);
        map.put(KeysContants.PlayerCommonParams.PACKAGE_NAME.getValue(), this.package_name);
        map.put(KeysContants.PlayerCommonParams.RETRY_COUNT.getValue(), this.retry_count);
        map.put(KeysContants.PlayerCommonParams.PLAY_SESSIONID.getValue(), this.play_sessionid);
        map.put(KeysContants.PlayerCommonParams.RENDER_TYPE.getValue(), this.render_type);
        map.put(KeysContants.PlayerCommonParams.SDK_VERSION.getValue(), this.sdk_version);
        map.put(KeysContants.PlayerCommonParams.LOG_VERISON.getValue(), this.log_verison);
        map.put(KeysContants.PlayerCommonParams.CHIP_TYPE.getValue(), this.chip_type);
        map.put(KeysContants.PlayerCommonParams.RENDERVIEW_TYPE.getValue(), getStr(this.renderview_type));
        map.put(KeysContants.PlayerCommonParams.STATICS_NUM1.getValue(), getStr(this.statics_num1));
        map.put(KeysContants.PlayerCommonParams.STATICS_NUM2.getValue(), getStr(this.statics_num2));
        map.put(KeysContants.PlayerCommonParams.STATICS_NUM3.getValue(), getStr(this.statics_num3));
        map.put(KeysContants.PlayerCommonParams.STATICS_NUM4.getValue(), getStr(this.statics_num4));
        map.put(KeysContants.PlayerCommonParams.STATICS_NUM5.getValue(), getStr(this.statics_num5));
        return map;
    }

    public Map<String, String> getPlayerHbCommon() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.serviceSwitcher.getValue(), this.service_switcher);
        map.put(KeysContants.PlayerCommonParams.serviceSubmit.getValue(), this.service_submit);
        map.put(KeysContants.PlayerCommonParams.serviceVts.getValue(), this.service_vts);
        map.put(KeysContants.PlayerCommonParams.serviceCf.getValue(), this.service_cf);
        map.put(KeysContants.PlayerCommonParams.serviceCt.getValue(), this.service_ct);
        return map;
    }

    public Map<String, String> getPlayerOflineVvCommon() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.PVER.getValue(), this.pver);
        return map;
    }

    public Map<String, String> getPlayerVvCommon() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.serviceFpid.getValue(), this.service_fpid);
        map.put(KeysContants.PlayerCommonParams.serviceUrl.getValue(), isNull(this.service_url));
        map.put(KeysContants.PlayerCommonParams.serviceEt.getValue(), "0");
        map.put(KeysContants.PlayerCommonParams.serviceFpa.getValue(), this.service_fpa);
        map.put(KeysContants.PlayerCommonParams.serviceIsad.getValue(), isNull(getIsad(this.service_isad)));
        map.put(KeysContants.PlayerCommonParams.serviceFpn.getValue(), this.service_fpn);
        map.put(KeysContants.PlayerCommonParams.serviceCdnip.getValue(), this.service_cdnip);
        map.put(KeysContants.CommonParams.P2P.getValue(), isNull(getP2p(this.proxy)));
        map.put(KeysContants.PlayerCommonParams.serviceRefmdid.getValue(), getStr(this.service_refmdid));
        map.put(KeysContants.PlayerCommonParams.serviceDatano.getValue(), getStr(this.service_datano));
        map.put(KeysContants.PlayerCommonParams.serviceAcp.getValue(), this.service_acp);
        return map;
    }

    public String getStr(String str) {
        return (TextUtils.isEmpty(str) || "none".equals(str)) ? "" : str;
    }

    public BaseBean(Context context) {
        setBigDataCommonParams(context);
    }

    public BaseBean(Context context, HashMap<String, String> map) {
        setBigDataCommonParams(context);
        setPlayerCommonParams(map);
        setPlayerCommon(map);
    }
}
