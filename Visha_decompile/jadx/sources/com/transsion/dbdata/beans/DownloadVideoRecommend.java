package com.transsion.dbdata.beans;

import androidx.annotation.Keep;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import java.util.List;

@Keep
public class DownloadVideoRecommend {
    private List<RecommendInfo> content_recommend_info_list;
    private int index;

    public class RecommendInfo {
        private String bottom_content;
        private String description_content;
        private int id;
        private String model;
        private int router_distribute_id;
        private RouterBean router_distribute_info;
        private String url_link;
        private String version_list;
        private int version_symbol;

        public RecommendInfo() {
        }

        public String getBottom_content() {
            return this.bottom_content;
        }

        public String getDescription_content() {
            return this.description_content;
        }

        public int getId() {
            return this.id;
        }

        public String getModel() {
            return this.model;
        }

        public int getRouter_distribute_id() {
            return this.router_distribute_id;
        }

        public RouterBean getRouter_distribute_info() {
            return this.router_distribute_info;
        }

        public String getUrl_link() {
            return this.url_link;
        }

        public String getVersion_list() {
            return this.version_list;
        }

        public int getVersion_symbol() {
            return this.version_symbol;
        }

        public void setBottom_content(String str) {
            this.bottom_content = str;
        }

        public void setDescription_content(String str) {
            this.description_content = str;
        }

        public void setId(int i) {
            this.id = i;
        }

        public void setModel(String str) {
            this.model = str;
        }

        public void setRouter_distribute_id(int i) {
            this.router_distribute_id = i;
        }

        public void setRouter_distribute_info(RouterBean routerBean) {
            this.router_distribute_info = routerBean;
        }

        public void setUrl_link(String str) {
            this.url_link = str;
        }

        public void setVersion_list(String str) {
            this.version_list = str;
        }

        public void setVersion_symbol(int i) {
            this.version_symbol = i;
        }
    }

    public List<RecommendInfo> getContent_recommend_info_list() {
        return this.content_recommend_info_list;
    }

    public int getIndex() {
        return this.index;
    }

    public RecommendInfo getRecommendInfo() {
        List<RecommendInfo> list = this.content_recommend_info_list;
        if (list == null || list.size() == 0 || this.index >= this.content_recommend_info_list.size()) {
            return null;
        }
        List<RecommendInfo> list2 = this.content_recommend_info_list;
        int i = this.index;
        this.index = i + 1;
        return list2.get(i);
    }

    public void setContent_recommend_info_list(List<RecommendInfo> list) {
        this.content_recommend_info_list = list;
    }

    public void setIndex(int i) {
        this.index = i;
    }
}
