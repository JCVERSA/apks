package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoEndBean extends BaseBean {
    public static String ACT_PEND = "pend";
    public static String BID_PEND = "27.8.4";
    public String act;
    public String buffer_count;
    public String codec_type;
    public String decode_type;
    public String end_type;
    public String fps;
    public String hard_decode;
    public HashMap<String, String> param;
    public String resolution;
    public String seek_count;
    public String ticket_time;
    public String video_rate;

    public PlayerVideoEndBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PEND;
        this.bid = BID_PEND;
        this.end_type = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.END_TYPE.name().toLowerCase()));
        this.decode_type = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.DECODE_TYPE.name().toLowerCase()));
        this.codec_type = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.CODEC_TYPE.name().toLowerCase()));
        this.resolution = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.RESOLUTION.name().toLowerCase()));
        this.fps = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.FPS.name().toLowerCase()));
        this.video_rate = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.VIDEO_RATE.name().toLowerCase()));
        this.hard_decode = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.HARD_DECODE.name().toLowerCase()));
        this.buffer_count = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.BUFFER_COUNT.name().toLowerCase()));
        this.seek_count = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.SEEK_COUNT.name().toLowerCase()));
        this.ticket_time = String.valueOf(getMapValues(map, KeysContants.PlayerEndParams.TICKET_TIME.name().toLowerCase()));
        this.param = map;
    }

    public Map<String, String> getPlayerVideoEndParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerCommonParams.BID.getValue(), this.bid);
        map.put(KeysContants.PlayerEndParams.END_TYPE.getValue(), this.end_type);
        map.put(KeysContants.PlayerEndParams.DECODE_TYPE.getValue(), this.decode_type);
        map.put(KeysContants.PlayerEndParams.CODEC_TYPE.getValue(), this.codec_type);
        map.put(KeysContants.PlayerEndParams.RESOLUTION.getValue(), this.resolution);
        map.put(KeysContants.PlayerEndParams.FPS.getValue(), this.fps);
        map.put(KeysContants.PlayerEndParams.VIDEO_RATE.getValue(), this.video_rate);
        map.put(KeysContants.PlayerEndParams.HARD_DECODE.getValue(), this.hard_decode);
        map.put(KeysContants.PlayerEndParams.BUFFER_COUNT.getValue(), this.buffer_count);
        map.put(KeysContants.PlayerEndParams.SEEK_COUNT.getValue(), this.seek_count);
        map.put(KeysContants.PlayerEndParams.TICKET_TIME.getValue(), this.ticket_time);
        map.putAll(getCommonParams());
        map.putAll(getParameter(this.param));
        return map;
    }
}
