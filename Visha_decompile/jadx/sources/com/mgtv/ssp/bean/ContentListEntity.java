package com.mgtv.ssp.bean;

import com.hunantv.imgo.net.entity.JsonEntity;
import com.mgtv.json.JsonInterface;
import java.io.Serializable;
import java.util.List;

public class ContentListEntity extends JsonEntity {
    public Data data;

    public static class Data implements JsonInterface, Serializable {
        public List<VideoBean> items;
        public b page;
        public String reqId;
    }
}
