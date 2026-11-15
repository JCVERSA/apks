package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TopicBean implements Serializable {
    public static final int HORIZONTAL = 1;
    public static final boolean SHOW_HISTORY_IN_THIS_PAGE = false;
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_FEED = 7;
    public static final int TYPE_HISTORY = 4;
    public static final int TYPE_LABEL = 2;
    public static final int TYPE_RECOMMEND = 6;
    public static final int TYPE_VIDEO = 3;
    public static final int TYPE_WEBCAST = 5;
    public static final int VERTICAL = 0;
    private List<BannerBean> bannerBeanList;
    private Integer biz_group_id;
    private Long channel_id;
    private String content_source;
    private JsonArray data_list;
    private Integer data_type;
    private String description;
    private Integer element_x;
    private Integer element_y;
    private List<FeedStreamBean> feedStreamBeanList;
    private List<HistoryBean> historyBeanList;

    @SerializedName("horizontal_flag")
    private int horizontalFlag;
    private String icon;
    private List<ComplexLabelBean> labelBeanList;
    private List<MediaBean> mediaBeanList;
    private String n_biz_group_id;
    private String name;
    private Integer page_size;

    @SerializedName("recommend_part")
    private Integer recommendPart;
    private Long region_id;

    @SerializedName("Request-ID")
    private String requestId;
    private String short_describe_switch;
    private Integer sort;
    private Long topic_id;
    private List<WebcastBean> webcastBeanList;

    public BannerBean getBanner(int i) {
        List<BannerBean> list = this.bannerBeanList;
        if (list == null || i < 0 || i >= list.size()) {
            return null;
        }
        return this.bannerBeanList.get(i);
    }

    public List<BannerBean> getBannerBeanList() {
        return this.bannerBeanList;
    }

    public int getBiz_group_id() {
        Integer num = this.biz_group_id;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public Long getChannel_id() {
        return this.channel_id;
    }

    public String getContent_source() {
        return this.content_source;
    }

    public Integer getData_type() {
        return this.data_type;
    }

    public JsonArray getDatas() {
        return this.data_list;
    }

    public String getDescription() {
        return this.description;
    }

    public Integer getElement_x() {
        return this.element_x;
    }

    public Integer getElement_y() {
        return this.element_y;
    }

    public List<FeedStreamBean> getFeedStreamBeanList() {
        return this.feedStreamBeanList;
    }

    public FeedStreamBean getFirstFeedStreamBean() {
        List<FeedStreamBean> list = this.feedStreamBeanList;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return this.feedStreamBeanList.get(0);
    }

    public WebcastBean getFirstWebcastBean() {
        if (this.webcastBeanList.size() > 0) {
            return this.webcastBeanList.get(0);
        }
        return null;
    }

    public List<HistoryBean> getHistoryBeanList() {
        return this.historyBeanList;
    }

    public int getHorizontalFlag() {
        return this.horizontalFlag;
    }

    public String getIcon() {
        return this.icon;
    }

    public List<ComplexLabelBean> getLabelBeanList() {
        return this.labelBeanList;
    }

    public List<MediaBean> getMediaBeanList() {
        return this.mediaBeanList;
    }

    public String getN_biz_group_id() {
        String str = this.n_biz_group_id;
        return str == null ? "" : str;
    }

    public String getName() {
        return this.name;
    }

    public Integer getPage_size() {
        return this.page_size;
    }

    public Integer getRecommendPart() {
        if (this.recommendPart == null) {
            this.recommendPart = -1;
        }
        return this.recommendPart;
    }

    public Long getRegion_id() {
        return this.region_id;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public String getShort_describe_switch() {
        return this.short_describe_switch;
    }

    public Integer getSort() {
        return this.sort;
    }

    public Long getTopic_id() {
        return this.topic_id;
    }

    public <T extends TypeBean> List<T> getTypeList() {
        if (this.data_type.intValue() == 1) {
            return this.bannerBeanList;
        }
        if (this.data_type.intValue() == 2) {
            return this.labelBeanList;
        }
        if (this.data_type.intValue() == 3 || this.data_type.intValue() == 6) {
            return this.mediaBeanList;
        }
        if (this.data_type.intValue() == 4) {
            return this.historyBeanList;
        }
        if (this.data_type.intValue() == 5) {
            return this.webcastBeanList;
        }
        if (this.data_type.intValue() == 7) {
            return this.feedStreamBeanList;
        }
        return null;
    }

    public List<WebcastBean> getWebcastBeanList() {
        return this.webcastBeanList;
    }

    public boolean isHorizontal() {
        return this.horizontalFlag == 1;
    }

    public void jsonToTypeList() {
        if (this.data_list == null) {
            return;
        }
        if (getData_type().intValue() == 1) {
            ArrayList arrayList = new ArrayList();
            Iterator<JsonElement> it = this.data_list.iterator();
            while (it.hasNext()) {
                arrayList.add((BannerBean) new Gson().fromJson(it.next(), BannerBean.class));
            }
            setBannerBeanList(arrayList);
            return;
        }
        if (getData_type().intValue() == 2) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<JsonElement> it2 = this.data_list.iterator();
            while (it2.hasNext()) {
                arrayList2.add((ComplexLabelBean) new Gson().fromJson(it2.next(), ComplexLabelBean.class));
            }
            setLabelBeanList(arrayList2);
            return;
        }
        if (getData_type().intValue() == 3) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<JsonElement> it3 = this.data_list.iterator();
            while (it3.hasNext()) {
                arrayList3.add((MediaBean) new Gson().fromJson(it3.next(), MediaBean.class));
            }
            setMediaBeanList(arrayList3);
            return;
        }
        if (getData_type().intValue() == 5) {
            ArrayList arrayList4 = new ArrayList();
            Iterator<JsonElement> it4 = this.data_list.iterator();
            while (it4.hasNext()) {
                arrayList4.add((WebcastBean) new Gson().fromJson(it4.next(), WebcastBean.class));
            }
            setWebcastBeanList(arrayList4);
            return;
        }
        if (getData_type().intValue() == 7) {
            ArrayList arrayList5 = new ArrayList();
            Iterator<JsonElement> it5 = this.data_list.iterator();
            while (it5.hasNext()) {
                arrayList5.add((FeedStreamBean) new Gson().fromJson(it5.next(), FeedStreamBean.class));
            }
            setFeedStreamBeanList(arrayList5);
        }
    }

    public void setBannerBeanList(List<BannerBean> list) {
        this.bannerBeanList = list;
    }

    public void setChannel_id(Long l) {
        this.channel_id = l;
    }

    public void setData_type(Integer num) {
        this.data_type = num;
    }

    public void setDatas(JsonArray jsonArray) {
        this.data_list = jsonArray;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setElement_x(Integer num) {
        this.element_x = num;
    }

    public void setElement_y(Integer num) {
        this.element_y = num;
    }

    public void setFeedStreamBeanList(List<FeedStreamBean> list) {
        this.feedStreamBeanList = list;
    }

    public void setHistoryBeanList(List<HistoryBean> list) {
        this.data_type = 4;
        this.historyBeanList = list;
    }

    public void setHorizontalFlag(int i) {
        this.horizontalFlag = i;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setLabelBeanList(List<ComplexLabelBean> list) {
        this.labelBeanList = list;
    }

    public void setMediaBeanList(List<MediaBean> list) {
        this.mediaBeanList = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPage_size(Integer num) {
        this.page_size = num;
    }

    public void setRecommendPart(Integer num) {
        this.recommendPart = num;
    }

    public void setRegion_id(Long l) {
        this.region_id = l;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setSort(Integer num) {
        this.sort = num;
    }

    public void setTopic_id(Long l) {
        this.topic_id = l;
    }

    public void setWebcastBeanList(List<WebcastBean> list) {
        this.webcastBeanList = list;
    }
}
