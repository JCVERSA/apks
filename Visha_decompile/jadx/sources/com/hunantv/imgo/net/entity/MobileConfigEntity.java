package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class MobileConfigEntity extends JsonEntity {
    public Data data;

    public static class Data implements JsonInterface, Serializable {
        public int autoStop;
        public String huawei_p2p_lazy;
        public String huawei_render_type;
        public P2P p2p;
        public int plPlayType;
        public String play_merge;
        public int qualityEnhance;
        public int seekImg;
        public int speedPlay;
        public String tcp_keeplive;
        public String topBarSwitch;
        public String unableRoot;
    }

    public static class P2P implements JsonInterface, Serializable {

        public int f15cn;
        public int wifi;
    }
}
