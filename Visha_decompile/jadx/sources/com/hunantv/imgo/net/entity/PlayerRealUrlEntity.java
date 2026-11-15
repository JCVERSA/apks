package com.hunantv.imgo.net.entity;

import com.mgtv.json.JsonInterface;

public class PlayerRealUrlEntity implements JsonInterface {
    public static final String OK = "ok";
    public int code;
    public String info;
    public String isothercdn;
    public String status;

    public String toString() {
        return "PlayerRealUrlEntity [status=" + this.status + ", info=" + this.info + ", isothercdn=" + this.isothercdn + "]";
    }
}
