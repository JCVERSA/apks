package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TopicDetailBean {
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_HISTORY = 4;
    public static final int TYPE_LABEL = 2;
    public static final int TYPE_VIDEO = 3;
    private List<BannerBean> bannerBeanList;
    private int channel_id;
    private JsonArray data_list;
    private int data_type;
    private String description;
    private int element_x;
    private int element_y;
    private List<HistoryBean> historyBeanList;
    private String icon;
    private List<LabelBean> labelBeanList;
    private List<MediaBean> mediaBeanList;
    private String name;
    private int pageTotal;
    private int page_size;
    private int region_id;
    private int sort;
    private long topic_id;
    private List<Relevence> topic_relevance_list;

    public static class Relevence {
        private long channel_id;
        private long region_id;

        public long getChannel_id() {
            return this.channel_id;
        }

        public long getRegion_id() {
            return this.region_id;
        }

        public void setChannel_id(long j) {
            this.channel_id = j;
        }

        public void setRegion_id(long j) {
            this.region_id = j;
        }

        public String toString() {
            return "Relevence{region_id=" + this.region_id + ", channel_id=" + this.channel_id + '}';
        }
    }

    public List<BannerBean> getBannerBeanList() {
        return this.bannerBeanList;
    }

    public int getChannel_id() {
        return this.channel_id;
    }

    public JsonArray getData_list() {
        return this.data_list;
    }

    public int getData_type() {
        return this.data_type;
    }

    public String getDescription() {
        return this.description;
    }

    public int getElement_x() {
        return this.element_x;
    }

    public int getElement_y() {
        return this.element_y;
    }

    public List<HistoryBean> getHistoryBeanList() {
        return this.historyBeanList;
    }

    public String getIcon() {
        return this.icon;
    }

    public List<LabelBean> getLabelBeanList() {
        return this.labelBeanList;
    }

    public List<MediaBean> getMediaBeanList() {
        return this.mediaBeanList;
    }

    public String getName() {
        return this.name;
    }

    public int getPageTotal() {
        return this.pageTotal;
    }

    public int getPage_size() {
        return this.page_size;
    }

    public int getRegion_id() {
        return this.region_id;
    }

    public int getSort() {
        return this.sort;
    }

    public long getTopic_id() {
        return this.topic_id;
    }

    public List<Relevence> getTopic_relevance_list() {
        return this.topic_relevance_list;
    }

    public void jsonToTypeList() {
        if (this.data_list == null) {
            return;
        }
        if (getData_type() == 1) {
            ArrayList arrayList = new ArrayList();
            Iterator<JsonElement> it = this.data_list.iterator();
            while (it.hasNext()) {
                arrayList.add((BannerBean) new Gson().fromJson(it.next(), BannerBean.class));
            }
            setBannerBeanList(arrayList);
            return;
        }
        if (getData_type() == 2) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<JsonElement> it2 = this.data_list.iterator();
            while (it2.hasNext()) {
                arrayList2.add((LabelBean) new Gson().fromJson(it2.next(), LabelBean.class));
            }
            setLabelBeanList(arrayList2);
            return;
        }
        if (getData_type() != 3) {
            getData_type();
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<JsonElement> it3 = this.data_list.iterator();
        while (it3.hasNext()) {
            arrayList3.add((MediaBean) new Gson().fromJson(it3.next(), MediaBean.class));
        }
        setMediaBeanList(arrayList3);
    }

    public void setBannerBeanList(List<BannerBean> list) {
        this.bannerBeanList = list;
    }

    public void setChannel_id(int i) {
        this.channel_id = i;
    }

    public void setData_list(JsonArray jsonArray) {
        this.data_list = jsonArray;
    }

    public void setData_type(int i) {
        this.data_type = i;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setElement_x(int i) {
        this.element_x = i;
    }

    public void setElement_y(int i) {
        this.element_y = i;
    }

    public void setHistoryBeanList(List<HistoryBean> list) {
        this.historyBeanList = list;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setLabelBeanList(List<LabelBean> list) {
        this.labelBeanList = list;
    }

    public void setMediaBeanList(List<MediaBean> list) {
        this.mediaBeanList = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPageTotal(int i) {
        this.pageTotal = i;
    }

    public void setPage_size(int i) {
        this.page_size = i;
    }

    public void setRegion_id(int i) {
        this.region_id = i;
    }

    public void setSort(int i) {
        this.sort = i;
    }

    public void setTopic_id(long j) {
        this.topic_id = j;
    }

    public void setTopic_relevance_list(List<Relevence> list) {
        this.topic_relevance_list = list;
    }

    public String toString() {
        return "TopicDetailBean{topic_id=" + this.topic_id + ", name='" + this.name + "', description='" + this.description + "', icon='" + this.icon + "', element_x=" + this.element_x + ", element_y=" + this.element_y + ", sort=" + this.sort + ", data_type=" + this.data_type + ", data_list=" + this.data_list + ", bannerBeanList=" + this.bannerBeanList + ", labelBeanList=" + this.labelBeanList + ", mediaBeanList=" + this.mediaBeanList + ", historyBeanList=" + this.historyBeanList + ", topic_relevance_list=" + this.topic_relevance_list + '}';
    }
}
