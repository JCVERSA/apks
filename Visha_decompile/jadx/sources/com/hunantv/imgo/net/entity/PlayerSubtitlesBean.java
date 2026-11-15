package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;
import com.mgtv.ssp.play.bean.SubTitleData;
import java.util.List;

public class PlayerSubtitlesBean implements JsonInterface {
    public static final int NONE = -1;
    public String partId;
    public List<TitleData> title;

    public static class TitleData extends SubTitleData {
        public String fileHash;
        public String url;
    }
}
