package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class FreeInfoEntity implements JsonInterface, Serializable {
    public String err_msg;
    public String icon_text;
    public String icon_url;
    public String is_hot;
    public String play_url;
    public String promotion;
    public String promotion_img_url;
    public String promotion_type;
    public String promotion_url;
    public int status;

    public String toString() {
        return "{\"promotion_url\":\"" + this.promotion_url + "\"\"promotion\":\"" + this.promotion + "\", \"icon_text\":\"" + this.icon_text + "\", \"icon_url\":\"" + this.icon_url + "\", \"play_url\":\"" + this.play_url + "\", \"status\":\"" + this.status + "\", \"err_msg\":\"" + this.err_msg + "\", \"promotion_type\":\"" + this.promotion_type + "\", \"is_hot\":\"" + this.is_hot + "\", \"promotion_img_url\":\"" + this.promotion_img_url + "\"}";
    }
}
