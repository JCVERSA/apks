package com.transsion.dbdata.beans.sniff;

import com.google.gson.annotations.SerializedName;

public class SniffSoucreBean {
    public static final String JSON_KEY_COOKIES = "cookies";
    public static final String JSON_KEY_COVERURL = "coverUrl";
    public static final String JSON_KEY_GETCOOKIESKEY = "getCookiesKey";
    public static final String JSON_KEY_PARAM_VALUE = "param_value";
    public static final String JSON_KEY_POST_VALUE = "post_value";
    public static final String JSON_KEY_SNIFF_URL = "sniff_url";
    public static final String JSON_KEY_TITLE = "title";
    public static final String JSON_KEY_TOKEN_INFO = "token_info";

    @SerializedName(JSON_KEY_PARAM_VALUE)
    private ParamValue paramValue;

    @SerializedName(JSON_KEY_POST_VALUE)
    private PostValue postValue;

    @SerializedName(JSON_KEY_TOKEN_INFO)
    private TokenInfo tokenInfo;

    public static class ParamValue {
    }

    public static class PostValue {

        @SerializedName("sniff_domain")
        private String sniffDomain;

        @SerializedName("sniff_model")
        private Integer sniffModel;

        @SerializedName(SniffSoucreBean.JSON_KEY_SNIFF_URL)
        private String sniffUrl;

        public String getSniffDomain() {
            return this.sniffDomain;
        }

        public Integer getSniffModel() {
            return this.sniffModel;
        }

        public String getSniffUrl() {
            return this.sniffUrl;
        }

        public void setSniffDomain(String str) {
            this.sniffDomain = str;
        }

        public void setSniffModel(Integer num) {
            this.sniffModel = num;
        }

        public void setSniffUrl(String str) {
            this.sniffUrl = str;
        }
    }

    public static class TokenInfo {
    }

    public ParamValue getParamValue() {
        return this.paramValue;
    }

    public PostValue getPostValue() {
        return this.postValue;
    }

    public TokenInfo getTokenInfo() {
        return this.tokenInfo;
    }

    public void setParamValue(ParamValue paramValue) {
        this.paramValue = paramValue;
    }

    public void setPostValue(PostValue postValue) {
        this.postValue = postValue;
    }

    public void setTokenInfo(TokenInfo tokenInfo) {
        this.tokenInfo = tokenInfo;
    }
}
