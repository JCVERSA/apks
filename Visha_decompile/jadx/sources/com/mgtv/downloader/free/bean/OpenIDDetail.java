package com.mgtv.downloader.free.bean;

import com.mgtv.json.JsonInterface;
import java.util.List;

public class OpenIDDetail implements JsonInterface {
    public List<Detail> detail;

    public class Detail implements JsonInterface {
        public String bid;
        public int code;
        public String openId;

        public Detail() {
        }

        public String toString() {
            return "{\"bid\":\"" + this.bid + "\"\"code\":\"" + this.code + "\", \"openId\":\"" + this.openId + "\"}";
        }
    }
}
