package com.mgtv.data.aphone.core.constants;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

public class KeysContants {
    public static String a = "";

    public enum Aplay {
        ACT("act"),
        PAY("pay"),
        DEF("def"),
        AP("ap"),
        BID("bid"),
        LID("lid"),
        CT("ct"),
        IDX("idx"),
        SUUID("suuid"),
        LIVEID("liveid"),
        ACTIVEID("activeid"),
        ISAD("isad"),
        UVIP("uvip"),
        PRELID("prelid"),
        PRELIVEID("preliveid"),
        MF(DownloadFacadeEnum.USER_MF),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID);

        private String value;

        Aplay(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Appls {
        ACT("act"),
        BID("bid"),
        LIST("list");

        private String value;

        Appls(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Bid {
        DLRS_BID("2.10.1.1"),
        DLPROC_BID("2.10.1.2"),
        OFLHB_BID("2.3.10");

        private String value;

        Bid(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Buffer {
        ACT("act"),
        PAY("pay"),
        DEF("def"),
        AP("ap"),
        VID("vid"),
        CT("ct"),
        CID(CmcdConfiguration.KEY_CONTENT_ID),
        IDX("idx"),
        ISTRY("istry"),
        PT("pt"),
        CF("cf"),
        VTS("vts"),
        BFTYPE("bftype"),
        SUUID("suuid"),
        CPN("cpn"),
        BDID("bdid"),
        BSID("bsid"),
        UVIP("uvip"),
        MF(DownloadFacadeEnum.USER_MF),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        NET(DownloadFacadeEnum.USER_NET),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID);

        private String value;

        Buffer(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Click {
        ACT("act"),
        LOGTYPE("logtype"),
        CNTP("cntp"),
        FLAG("flag"),
        NAME("name"),
        CPN("cpn"),
        CPID("cpid"),
        BODY(TtmlNode.TAG_BODY),
        POS("pos"),
        LABEL(AnnotatedPrivateKey.LABEL),
        MF(DownloadFacadeEnum.USER_MF),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        DC("dc"),
        LOB("lob"),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID),
        RUNSID("runsid"),
        TYPE("type");

        private String value;

        Click(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum CommonParams {
        ACT("act"),
        GUID(DownloadFacadeEnum.USER_GUID),
        SID("sid"),
        CH(DownloadFacadeEnum.USER_CH),
        UUID("uuid"),
        GPS(DownloadFacadeEnum.USER_GPS),
        ISP2P("isp2p"),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID),
        NET(DownloadFacadeEnum.USER_NET),
        MF(DownloadFacadeEnum.USER_MF),
        MOD(DownloadFacadeEnum.USER_MOD),
        SVER(DownloadFacadeEnum.USER_SVER),
        AVER(DownloadFacadeEnum.USER_AVER),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        ISDEBUG(DownloadFacadeEnum.USER_ISDEBUG),
        SESSIONID("sessionid"),
        MODEL(CommonUrlParts.MODEL),
        MAC(DownloadFacadeEnum.USER_MAC),
        BDSV("bdsv"),
        RDC("rdc"),
        RCH("rch"),
        VER("ver"),
        ABROAD("abroad"),
        UVIP("uvip"),
        P2P("p2p"),
        RUNSID("runsid"),
        SRC("src");

        private String value;

        CommonParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Crash {
        ACT("act"),
        LOGTYPE("logtype"),
        LOB("lob"),
        CODE(TrackingKey.CODE),
        TERMID("termid"),
        VER("ver"),
        EC("ec"),
        ED("ed"),
        ET("et"),
        BID("bid"),
        DID(DownloadFacadeEnum.USER_DID),
        AVER(DownloadFacadeEnum.USER_AVER),
        UUID("uuid"),
        TIME("time"),
        SESSIONID("sessionid"),
        ABROAD("abroad"),
        SVER(DownloadFacadeEnum.USER_SVER);

        private String value;

        Crash(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Drm {
        ACT("act"),
        VID("vid"),
        RETRY("retry"),
        EC("ec");

        private String value;

        Drm(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Hb {
        ACT("act"),
        PAY("pay"),
        DEF("def"),
        AP("ap"),
        VID("vid"),
        CT("ct"),
        CID(CmcdConfiguration.KEY_CONTENT_ID),
        IDX("idx"),
        ISTRY("istry"),
        PT("pt"),
        CF("cf"),
        VTS("vts"),
        BFTYPE("bftype"),
        SUUID("suuid"),
        CPN("cpn"),
        BDID("bdid"),
        BSID("bsid"),
        UVIP("uvip"),
        HT("ht"),
        MF(DownloadFacadeEnum.USER_MF),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        NET(DownloadFacadeEnum.USER_NET),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID),
        ISFULL("isfull");

        private String value;

        Hb(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum OffLineHb {
        ACT("act"),
        BID("bid"),
        PAY("pay"),
        DEF("def"),
        AP("ap"),
        PLID("plid"),
        VID("vid"),
        CT("ct"),
        TD("td"),
        CID(CmcdConfiguration.KEY_CONTENT_ID),
        IDX("idx"),
        ISTRY("istry"),
        PT("pt"),
        CF("cf"),
        VTS("vts"),
        BFTYPE("bftype"),
        SUUID("suuid"),
        CPN("cpn"),
        BDID("bdid"),
        BSID("bsid"),
        UVIP("uvip"),
        HT("ht"),
        MF(DownloadFacadeEnum.USER_MF),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        NET(DownloadFacadeEnum.USER_NET),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        TIME("time"),
        DID(DownloadFacadeEnum.USER_DID),
        ISFULL("isfull"),
        LIST("list");

        private String value;

        OffLineHb(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Oflht {
        HT_2("2"),
        HT_3("3"),
        HT_4("4"),
        HT_5("5"),
        HT_6("6");

        private String value;

        Oflht(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PhoneWifi {
        ACT("act"),
        BID("bid"),
        WMAC("wmac"),
        WNAME("wname"),
        WIP("wip"),
        WLS("wls");

        private String value;

        PhoneWifi(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerAct {
        PV("ppv"),
        VV("pvv"),
        ERR("perr"),
        END("pend"),
        BUFFER("buffer"),
        SEEK("seek"),
        HEARTBEAT("heartbeat");

        private String value;

        PlayerAct(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerBufferParams {
        BUFFER_TYPE("buffer_type"),
        BUFFER_KIND("buffer_kind");

        private String value;

        PlayerBufferParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerCommonParams {
        ACT("act"),
        BID("bid"),
        VIDEO_SESSION("suuid"),
        PVER("pver"),
        PROTOCOL_TYPE("prottp"),
        PLAYER_TYPE("ptp"),
        PLAT("plat"),
        SOURCE_TYPE("sctp"),
        VIDEO_TYPE("vtp"),
        PROXY("proxy"),
        RESOLUTION_CHANGE("reschg"),
        OS("os"),
        PACKAGE_NAME("appgn"),
        RETRY_COUNT("retry"),
        PLAY_SESSIONID("psuuid"),
        RENDER_TYPE("rdtp"),
        SDK_VERSION("psdkv"),
        LOG_VERISON("logver"),
        CHIP_TYPE("chiptp"),
        BUFFER_KIND("buffer_kind"),
        RENDERVIEW_TYPE("renvtp"),
        STATICS_NUM1("snum1"),
        STATICS_NUM2("snum2"),
        STATICS_NUM3("snum3"),
        STATICS_NUM4("snum4"),
        STATICS_NUM5("snum5"),
        serviceBsid("bsid"),
        servicePay("pay"),
        serviceFpid("fpid"),
        serviceAp("ap"),
        serviceTd("td"),
        serviceDef("def"),
        serviceFpn("fpn"),
        serviceUrl("url"),
        servicePver("pver"),
        serviceVid("vid"),
        serviceCdnip("cdnip"),
        servicePlid("plid"),
        serviceFpa("fpa"),
        serviceCt("ct"),
        serviceCid(CmcdConfiguration.KEY_CONTENT_ID),
        serviceEt("et"),
        serviceIstry("istry"),
        serviceIsad("isad"),
        servicePt("pt"),
        serviceCf("cf"),
        serviceVts("vts"),
        serviceSwitcher("switcher"),
        serviceSubmit("submit"),
        serviceBdid("bdid"),
        serviceCpn("cpn"),
        serviceAcp("acp"),
        serviceRefmdid("refmdid"),
        serviceDatano("datano");

        private String value;

        PlayerCommonParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerEndParams {
        END_TYPE("endtp"),
        DECODE_TYPE("dectp"),
        CODEC_TYPE("cdtp"),
        RESOLUTION("res"),
        FPS("fps"),
        VIDEO_RATE("vrate"),
        HARD_DECODE("hddc"),
        BUFFER_COUNT("bfct"),
        SEEK_COUNT("skct"),
        TICKET_TIME("ptst");

        private String value;

        PlayerEndParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerErrParams {
        ET("et"),
        SC("sc"),
        EXR("exr"),
        DSC("dsc"),
        DECODE_TYPE("dectp"),
        CODEC_TYPE("cdtp"),
        CURRENT_POSITION("cp"),
        RESOLUTION("res"),
        FPS("fps"),
        VIDEO_RATE("vrate"),
        HARD_DECODE("hddc"),
        TICKET_TIME("ptst");

        private String value;

        PlayerErrParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerSeekParams {
        SEEK_TYPE("seek_type");

        private String value;

        PlayerSeekParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerVideoType {
        ON_DEMAND("1"),
        LIVE("2"),
        OFF_LINE("3"),
        ADVERTISING("4");

        private String value;

        PlayerVideoType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum PlayerVvParams {
        CODEC_TYPE("cdtp"),
        COST_TIME("ltst"),
        HARD_DECODE("hddc"),
        DECODE_TYPE("dectp"),
        MEMORY_PLAY("mp");

        private String value;

        PlayerVvParams(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Pv {
        ACT("act"),
        LOGTYPE("logtype"),
        LASTP("lastp"),
        LOB("lob"),
        CNTP("cntp"),
        RUNSID("runsid"),
        CPN("cpn"),
        UVIP("uvip"),
        STID("stid"),
        AV(CmcdData.OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO),
        SV("sv"),
        T("t"),
        DID(DownloadFacadeEnum.USER_DID),
        MD("md"),
        MF(DownloadFacadeEnum.USER_MF),
        NT("nt"),
        SID("sid");

        private String value;

        Pv(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum St {
        ACT("act"),
        BODY(TtmlNode.TAG_BODY),
        RUNSID("runsid"),
        CTYPE("ctype"),
        STYPE("stype");

        private String value;

        St(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    public enum Vv {
        ACT("act"),
        PAY("pay"),
        DEF("def"),
        AP("ap"),
        BID("bid"),
        IDX("idx"),
        VID("vid"),
        ISTRY("istry"),
        PT("pt"),
        BDID("bdid"),
        BSID("bsid"),
        CPN("cpn"),
        UVIP("uvip"),
        ISAD("isad"),
        FPA("fpa"),
        MF(DownloadFacadeEnum.USER_MF),
        ISDEBUG(DownloadFacadeEnum.USER_ISDEBUG),
        SID("sid"),
        MOD(DownloadFacadeEnum.USER_MOD),
        AVER(DownloadFacadeEnum.USER_AVER),
        SVER(DownloadFacadeEnum.USER_SVER),
        NET(DownloadFacadeEnum.USER_NET),
        IMEI(DownloadFacadeEnum.USER_IMEI),
        DID(DownloadFacadeEnum.USER_DID);

        private String value;

        Vv(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }
}
