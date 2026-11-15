package com.transsion.dbdata.beans.onlinevideo;

import com.google.gson.annotations.SerializedName;

public class Tag {

    @SerializedName("aggregation_tag")
    private Object aggregationTag;

    @SerializedName("aggregation_tag_ids")
    private Object aggregationTagIds;

    @SerializedName("name")
    private String name;

    @SerializedName("pay_type")
    private Integer payType;

    @SerializedName("source_type")
    private Integer sourceType;

    @SerializedName("tag_id")
    private Integer tagId;

    @SerializedName("tag_relation")
    private Object tagRelation;

    @SerializedName("tag_type")
    private Integer tagType;

    @SerializedName("topic_id")
    private long topicId;

    public Object getAggregationTag() {
        return this.aggregationTag;
    }

    public Object getAggregationTagIds() {
        return this.aggregationTagIds;
    }

    public String getName() {
        return this.name;
    }

    public Integer getPayType() {
        return this.payType;
    }

    public Object getSourceType() {
        return this.sourceType;
    }

    public Integer getTagId() {
        return this.tagId;
    }

    public Object getTagRelation() {
        return this.tagRelation;
    }

    public Integer getTagType() {
        return this.tagType;
    }

    public long getTopicId() {
        return this.topicId;
    }

    public void setAggregationTag(Object obj) {
        this.aggregationTag = obj;
    }

    public void setAggregationTagIds(Object obj) {
        this.aggregationTagIds = obj;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPayType(Integer num) {
        this.payType = num;
    }

    public void setSourceType(Integer num) {
        this.sourceType = num;
    }

    public void setTagId(Integer num) {
        this.tagId = num;
    }

    public void setTagRelation(Object obj) {
        this.tagRelation = obj;
    }

    public void setTagType(Integer num) {
        this.tagType = num;
    }

    public void setTopicId(long j) {
        this.topicId = j;
    }
}
