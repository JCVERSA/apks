package com.mgtv.ssp.bean;

import com.hunantv.imgo.net.entity.JsonEntity;
import com.mgtv.json.JsonInterface;
import com.mgtv.ssp.bean.config.SspSpaceConfig;
import java.io.Serializable;

public class VideoDetailInfoEntity extends JsonEntity {
    public Data data;

    public static class Data implements JsonInterface, Serializable {
        public SspSpaceConfig spaceCfg;
        public VideoDetailInfoBean video;
    }
}
