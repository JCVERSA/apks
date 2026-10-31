package com.snaptube.premium.ads;

import java.io.Serializable;

public class AdsOnlineConfig implements Serializable {
    public AdsGroup[] groups;

    public static class AdPosConfig implements Serializable {
        public String[] placement_id_list;
        public String pos_id;
        public String provider;
    }

    public static class AdsGroup implements Serializable {
        public FBPlacementIdConfig[] fb_config;
        public AdPosConfig[] pos_config;
        public String type;
    }

    public static class FBPlacementIdConfig implements Serializable {
        public int batch_size;
        public String placement_id;
    }
}
