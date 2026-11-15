package com.hunantv.imgo.net;

import com.mgtv.json.JsonInterface;
import java.util.HashMap;

public class NetworkStateManager {
    private static NetworkStateManager a = new NetworkStateManager();
    private String b;

    public static class NetWorkLocationInfo implements JsonInterface {
        private static final long serialVersionUID = -5429269194674395975L;
        public int code;
        public DataBean data;

        public static class DataBean implements JsonInterface {
            private static final long serialVersionUID = -8776148255602340672L;
            public String area;
            public String area_id;
            public String city;
            public String city_id;
            public String country;
            public String country_id;
            public String county;
            public String county_id;
            public String ip;
            public String isp;
            public String isp_id;
            public String region;
            public String region_id;
        }

        public HashMap<String, String> getWorkFlowContentMap() {
            HashMap<String, String> map = new HashMap<>();
            DataBean dataBean = this.data;
            if (dataBean != null) {
                map.put("ip", dataBean.ip);
                map.put("operater", this.data.isp);
                map.put("location", this.data.city);
            }
            return map;
        }
    }

    private NetworkStateManager() {
    }

    public static NetworkStateManager a() {
        return a;
    }

    public String b() {
        return this.b;
    }
}
