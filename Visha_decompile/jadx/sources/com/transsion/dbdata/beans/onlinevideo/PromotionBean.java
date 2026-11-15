package com.transsion.dbdata.beans.onlinevideo;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.annotations.SerializedName;

public class PromotionBean extends TypeBean {
    public static final int CP_MG = 1;
    public static final int CP_SMASH = 2;
    public static final int FROM_HOME = 2;
    public static final int FROM_PLAYER = 1;
    public static final int TYPE_DIALOG = 2;
    public static final int TYPE_PLAYER = 1;

    @SerializedName("action_title")
    private String actionTitle;

    @SerializedName("button_name")
    private String buttonName;
    private int count;

    @SerializedName("cp_id")
    private Integer cpId;
    private String date;

    @SerializedName("description")
    private String description;

    @SerializedName("display_page")
    private Integer displayPage;

    @SerializedName("frequency")
    private Integer frequency;
    private boolean haveDone;

    @SerializedName("icon")
    private String icon;

    @SerializedName(TtmlNode.ATTR_ID)
    private Long id;
    private long lastShowTime;

    @SerializedName("online_status")
    private Integer onlineStatus;

    @SerializedName("price")
    private String price;

    @SerializedName("promotion_price")
    private String promotionPrice;

    @SerializedName("regionId")
    private String regionId;

    @SerializedName("time_limit")
    private Integer timeLimit;

    @SerializedName("type")
    private Integer type;

    @SerializedName("version")
    private String version;

    @SerializedName("version_symbol")
    private Integer versionSymbol;

    @SerializedName("vip_card_id")
    private Long vipCardId;

    @SerializedName("vip_id")
    private Integer vipId;

    public String getActionTitle() {
        return this.actionTitle;
    }

    public String getButtonName() {
        return this.buttonName;
    }

    public int getCount() {
        return this.count;
    }

    public Integer getCpId() {
        return this.cpId;
    }

    public String getDate() {
        return this.date;
    }

    public String getDescription() {
        return this.description;
    }

    public Integer getDisplayPage() {
        return this.displayPage;
    }

    public Integer getFrequency() {
        return this.frequency;
    }

    public String getIcon() {
        return this.icon;
    }

    public Long getId() {
        return this.id;
    }

    public long getLastShowTime() {
        return this.lastShowTime;
    }

    public Integer getOnlineStatus() {
        return this.onlineStatus;
    }

    public String getPrice() {
        return this.price;
    }

    public String getPromotionPrice() {
        return this.promotionPrice;
    }

    public String getRegionId() {
        return this.regionId;
    }

    public Integer getTimeLimit() {
        return this.timeLimit;
    }

    public Integer getType() {
        return this.type;
    }

    public String getVersion() {
        return this.version;
    }

    public Integer getVersionSymbol() {
        return this.versionSymbol;
    }

    public Long getVipCardId() {
        return this.vipCardId;
    }

    public Integer getVipId() {
        return this.vipId;
    }

    public boolean isHaveDone() {
        return this.haveDone;
    }

    public void setCount(int i) {
        this.count = i;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setHaveDone(boolean z) {
        this.haveDone = z;
    }

    public void setLastShowTime(long j) {
        this.lastShowTime = j;
    }
}
