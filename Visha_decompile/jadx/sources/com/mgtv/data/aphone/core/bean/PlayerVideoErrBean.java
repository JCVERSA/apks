package com.mgtv.data.aphone.core.bean;

import android.content.Context;
import com.mgtv.data.aphone.core.constants.KeysContants;
import java.util.HashMap;
import java.util.Map;

public class PlayerVideoErrBean extends BaseBean {
    public static String ACT_PERR = "perr";
    public static String BID_PERR = "27.8.3";
    public String act;
    public String codec_type;
    public String current_position;
    public String decode_type;
    public String dsc;
    public String et;
    public String exr;
    public String fps;
    public String hard_decode;
    public HashMap<String, String> param;
    public String resolution;
    public String sc;
    public String ticket_time;
    public String video_rate;

    public PlayerVideoErrBean(Context context, HashMap<String, String> map) {
        super(context, map);
        this.act = ACT_PERR;
        this.bid = BID_PERR;
        this.et = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.ET.name().toLowerCase()));
        this.sc = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.SC.name().toLowerCase()));
        this.exr = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.EXR.name().toLowerCase()));
        this.dsc = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.DSC.name().toLowerCase()));
        this.decode_type = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.DECODE_TYPE.name().toLowerCase()));
        this.codec_type = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.CODEC_TYPE.name().toLowerCase()));
        this.current_position = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.CURRENT_POSITION.name().toLowerCase()));
        this.resolution = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.RESOLUTION.name().toLowerCase()));
        this.fps = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.FPS.name().toLowerCase()));
        this.video_rate = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.VIDEO_RATE.name().toLowerCase()));
        this.hard_decode = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.HARD_DECODE.name().toLowerCase()));
        this.ticket_time = String.valueOf(getMapValues(map, KeysContants.PlayerErrParams.TICKET_TIME.name().toLowerCase()));
        this.param = map;
    }

    public Map<String, String> getPlayerVideoErrParams() {
        HashMap map = new HashMap();
        map.put(KeysContants.PlayerCommonParams.ACT.getValue(), this.act);
        map.put(KeysContants.PlayerCommonParams.BID.getValue(), BID_PERR);
        map.put(KeysContants.PlayerErrParams.ET.getValue(), this.et);
        map.put(KeysContants.PlayerErrParams.SC.getValue(), this.sc);
        map.put(KeysContants.PlayerErrParams.EXR.getValue(), this.exr);
        map.put(KeysContants.PlayerErrParams.DSC.getValue(), this.dsc);
        map.put(KeysContants.PlayerErrParams.DECODE_TYPE.getValue(), this.decode_type);
        map.put(KeysContants.PlayerErrParams.CODEC_TYPE.getValue(), this.codec_type);
        map.put(KeysContants.PlayerErrParams.CURRENT_POSITION.getValue(), this.current_position);
        map.put(KeysContants.PlayerErrParams.RESOLUTION.getValue(), this.resolution);
        map.put(KeysContants.PlayerErrParams.FPS.getValue(), this.fps);
        map.put(KeysContants.PlayerErrParams.VIDEO_RATE.getValue(), this.video_rate);
        map.put(KeysContants.PlayerErrParams.HARD_DECODE.getValue(), this.hard_decode);
        map.putAll(getCommonParams());
        map.putAll(getParameter(this.param));
        return map;
    }
}
