package com.transsion.playercommon.vishaweb.jsdata;

import androidx.annotation.NonNull;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import java.util.Map;

public class JsParam extends TypeBean {
    Map<String, Object> params;
    int type;

    public Map<String, Object> getParams() {
        return this.params;
    }

    public int getType() {
        return this.type;
    }

    public void setParams(Map<String, Object> map) {
        this.params = map;
    }

    public void setType(int i) {
        this.type = i;
    }

    @NonNull
    public String toString() {
        return "JsParam{type=" + this.type + ", params=" + this.params + '}';
    }
}
