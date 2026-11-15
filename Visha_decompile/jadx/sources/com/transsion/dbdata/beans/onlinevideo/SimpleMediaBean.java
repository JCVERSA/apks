package com.transsion.dbdata.beans.onlinevideo;

import androidx.annotation.Keep;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LanguageUtils;
import com.google.gson.annotations.SerializedName;

@Keep
public class SimpleMediaBean extends TypeBean {
    public static final int MANGO = 1;
    public static final int PAY_TYPE_FREE = 0;
    public static final int PAY_TYPE_PAY = 1;
    public Object arg1;
    public Object arg2;
    public boolean flag = false;

    @SerializedName(TtmlNode.ATTR_ID)
    public String id;

    @SerializedName("imgX")
    public String imgX;

    @SerializedName("imgY")
    public String imgY;
    public int isPay;
    public String serialId;
    public int tag;

    @SerializedName("title")
    public String title;

    public static SimpleMediaBean convert(MediaBean mediaBean) {
        if (mediaBean == null) {
            return null;
        }
        SimpleMediaBean simpleMediaBean = new SimpleMediaBean();
        simpleMediaBean.id = String.valueOf(mediaBean.getId());
        simpleMediaBean.imgX = mediaBean.getCover_x();
        simpleMediaBean.imgY = mediaBean.getCover_y();
        simpleMediaBean.title = mediaBean.getTitle();
        return simpleMediaBean;
    }

    public boolean showVipLogo() {
        return this.isPay == 1;
    }

    public static SimpleMediaBean convert(RecommendResultBean.MangoResult.Result result) {
        int i;
        if (result == null) {
            return null;
        }
        SimpleMediaBean simpleMediaBean = new SimpleMediaBean();
        simpleMediaBean.id = result.id;
        simpleMediaBean.imgX = result.imgX;
        simpleMediaBean.imgY = result.imgY;
        simpleMediaBean.title = result.name;
        simpleMediaBean.serialId = result.cid;
        simpleMediaBean.arg1 = result.imps;
        simpleMediaBean.arg2 = result.clks;
        simpleMediaBean.isPay = !result.isFree() ? 1 : 0;
        simpleMediaBean.tag = 1;
        String language = LanguageUtils.b().getLanguage();
        String country = LanguageUtils.b().getCountry();
        if (result.global != null) {
            if ("zh".equalsIgnoreCase(language) && "cn".equalsIgnoreCase(country)) {
                i = 0;
            } else if ("zh".equalsIgnoreCase(language) && "tw".equalsIgnoreCase(country)) {
                i = 1;
            } else if ("ms".equalsIgnoreCase(language)) {
                i = 6;
            } else if ("in".equalsIgnoreCase(language)) {
                i = 18;
            } else if ("vi".equalsIgnoreCase(language)) {
                i = 19;
            } else {
                i = "th".equalsIgnoreCase(language) ? 23 : 10;
            }
            for (RecommendResultBean.MangoResult.Result.Global global : result.global) {
                if (global.abroad == i) {
                    simpleMediaBean.title = global.name;
                    simpleMediaBean.flag = true;
                    break;
                }
            }
        }
        return simpleMediaBean;
    }
}
