package com.transsion.dbdata.beans.appconfig;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;

public class FormatCopyrightBeans {

    @SerializedName("copyrightOwner")
    public String copyrightOwner;

    @SerializedName("encodingFormat")
    public String encodingFormat;

    @SerializedName(TtmlNode.ATTR_ID)
    public int id;

    @SerializedName("status")
    public int status;

    @SerializedName("type")
    public int type;

    public String toString() {
        return "FormatCopyrightBeans{id=" + this.id + ", encodingFormat=" + this.encodingFormat + ", type='" + this.type + "', copyrightOwner='" + this.copyrightOwner + "', status='" + this.status + "'}";
    }
}
