package com.transsion.dbdata.beans.onlinevideo;

public class LabelBean extends TypeBean {
    public static final int TAG_TYPE_SPACIAL = 6;
    private long category_id;
    private String description;
    private String icon;
    private String name;
    private int sort;
    private String source_name;
    private int source_type;
    private long tag_id;
    private int tag_type;
    private int topic_id;

    public long getCategory_id() {
        return this.category_id;
    }

    public String getDescription() {
        return this.description;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getName() {
        return this.name;
    }

    public int getSort() {
        return this.sort;
    }

    public String getSource_name() {
        return this.source_name;
    }

    public int getSource_type() {
        return this.source_type;
    }

    public long getTag_id() {
        return this.tag_id;
    }

    public int getTag_type() {
        return this.tag_type;
    }

    public int getTopic_id() {
        return this.topic_id;
    }

    public boolean isSpacialType() {
        return getTag_type() == 6;
    }

    public void setCategory_id(long j) {
        this.category_id = j;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSort(int i) {
        this.sort = i;
    }

    public void setSource_name(String str) {
        this.source_name = str;
    }

    public void setSource_type(int i) {
        this.source_type = i;
    }

    public void setTag_id(long j) {
        this.tag_id = j;
    }

    public void setTag_type(int i) {
        this.tag_type = i;
    }

    public void setTopic_id(int i) {
        this.topic_id = i;
    }
}
