package com.transsion.dbdata.beans.appconfig;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import org.apache.commons.text.StringSubstitutor;

@Keep
public class BspPlayerConfigBean {

    @SerializedName("chipPlatform")
    public String chipPlatform;

    @SerializedName("modelList")
    public String modelList;

    public String toString() {
        return "BspPlayerConfigBean{chipPlatform='" + this.chipPlatform + "', modelList=" + this.modelList + StringSubstitutor.DEFAULT_VAR_END;
    }
}
