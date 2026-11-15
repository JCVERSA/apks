package com.mgtv.data.aphone.core.constants;

import com.hunantv.media.drm.IDrmManager;
import com.mgtv.data.aphone.core.bean.PlayerVideoOffLineAPlayVvBean;

public class EventContants {

    public enum BusinessType {
        POINT_PLAY("2.1.1"),
        LIVE_PLAY("2.1.1.1"),
        ADVERT("2.1.10"),
        USER_ACTION("2.1.11"),
        NOT_NET_WORK_PLAY(PlayerVideoOffLineAPlayVvBean.APLAY_BID);

        private String bid;

        BusinessType(String str) {
            this.bid = str;
        }

        public String getValue() {
            return this.bid;
        }
    }

    public enum EventType {
        EVENT_CRASH("1"),
        EVENT_PV("2"),
        EVENT_VV("3"),
        EVENT_ADLOST("4"),
        EVENT_BUFFER("5"),
        EVENT_HB("6"),
        EVENT_CD("7"),
        EVENT_CLICK("8"),
        EVENT_APLAY("9"),
        EVENT_HEARTBEAT("10"),
        EVENT_SWITCH("11"),
        EVENT_ST("12"),
        EVENT_DOWNUP("13"),
        EVENT_APPLS("14"),
        EVENT_PHONEWIFI("15"),
        EVENT_HLS("16"),
        EVENT_OFLHB("17"),
        EVENT_PPV("18"),
        EVENT_PVV("19"),
        EVENT_PERR(IDrmManager.SessionConfig.STR_DRM_TYPE_AUDIO_MAES),
        EVENT_PEND("21"),
        EVENT_PBUFFER("22"),
        EVENT_PSEEK("23"),
        EVENT_PHEARTBEAT("24"),
        EVENT_DRM("25"),
        EVENT_HLS_DLRS("26"),
        EVENT_HLS_DLPROC("27"),
        EVENT_SHOW("28"),
        EVENT_NEWCLICK("29"),
        EVENT_OFLVV("30"),
        EVENT_AC("31");

        private String eventId;

        EventType(String str) {
            this.eventId = str;
        }

        public String getEventId() {
            return this.eventId;
        }
    }

    public enum OnOffType {
        OFF("0"),
        ON("1"),
        SOME("2");

        private String bid;

        OnOffType(String str) {
            this.bid = str;
        }

        public String getValue() {
            return this.bid;
        }
    }
}
