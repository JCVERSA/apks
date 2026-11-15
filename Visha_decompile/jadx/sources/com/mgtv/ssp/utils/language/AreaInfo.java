package com.mgtv.ssp.utils.language;

import androidx.annotation.NonNull;
import com.mgtv.json.JsonInterface;

public class AreaInfo implements JsonInterface {
    private static final long serialVersionUID = 4158137053430057978L;
    public int areaCode;

    public AreaInfo() {
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return new AreaInfo(this.areaCode);
    }

    public boolean equals(Object obj) {
        return (obj instanceof AreaInfo) && this.areaCode == ((AreaInfo) obj).areaCode;
    }

    public int hashCode() {
        return this.areaCode;
    }

    public AreaInfo(int i) {
        this.areaCode = i;
    }
}
