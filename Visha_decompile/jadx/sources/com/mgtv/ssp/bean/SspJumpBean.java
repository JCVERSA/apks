package com.mgtv.ssp.bean;

import com.mgtv.json.JsonInterface;
import com.mgtv.ssp.utils.d;

public class SspJumpBean implements JsonInterface {
    public int code;
    public JumperData data;
    public String msg;

    public class JumperData implements JsonInterface {
        public String btnTitle;
        public String downloadUrl;
        public int schemaHint;
        public String schemaUrl;

        public JumperData() {
        }

        public String getTargetUrl() {
            return d.a(this.schemaUrl, "MG^UNION!2022@");
        }
    }
}
