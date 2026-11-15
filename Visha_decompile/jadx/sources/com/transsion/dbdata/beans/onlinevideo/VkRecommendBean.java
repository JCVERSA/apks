package com.transsion.dbdata.beans.onlinevideo;

import java.util.List;

public class VkRecommendBean extends TypeBean {
    public static final String TAG = "VkRecommendBean";
    private List<CategoryBean> categories;
    private String created;
    private String description;
    private Integer duration;
    private String id;
    private List<ImageBean> images;
    private Long likes;
    private String source;
    private String sourceImage;
    private String title;
    private String videoLink;
    private Long views;

    public static class CategoryBean {
        public Integer id;
        public String name;

        public Integer getId() {
            return this.id;
        }

        public String getName() {
            return this.name;
        }
    }

    public static class ImageBean {
        public Integer height;
        public String url;
        public Integer width;

        public int getResolution() {
            return this.width.intValue() * this.height.intValue();
        }
    }

    public List<CategoryBean> getCategories() {
        return this.categories;
    }

    public String getCreated() {
        return this.created;
    }

    public String getDescription() {
        return this.description;
    }

    public Integer getDuration() {
        return this.duration;
    }

    public String getId() {
        return this.id;
    }

    public List<ImageBean> getImages() {
        return this.images;
    }

    public Long getLikes() {
        return this.likes;
    }

    public String getSource() {
        return this.source;
    }

    public String getSourceImage() {
        return this.sourceImage;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVideoLink() {
        return this.videoLink;
    }

    public Long getViews() {
        return this.views;
    }

    public void setCategories(List<CategoryBean> list) {
        this.categories = list;
    }

    public void setCreated(String str) {
        this.created = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDuration(Integer num) {
        this.duration = num;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImages(List<ImageBean> list) {
        this.images = list;
    }

    public void setLikes(Long l) {
        this.likes = l;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSourceImage(String str) {
        this.sourceImage = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideoLink(String str) {
        this.videoLink = str;
    }

    public void setViews(Long l) {
        this.views = l;
    }

    public FeedStreamBean toFeedStreamBean() {
        FeedStreamBean feedStreamBean = new FeedStreamBean();
        feedStreamBean.setTitle(getTitle());
        feedStreamBean.setShortDescribe(getDescription());
        FeedStreamBean.VideoBean videoBean = new FeedStreamBean.VideoBean();
        videoBean.setVkVideoId(getId());
        videoBean.setTitle(getTitle());
        videoBean.setDescription(getDescription());
        videoBean.setShortDescribe(getDescription());
        videoBean.setDuration(getDuration());
        videoBean.setViews(getViews());
        videoBean.setLikes(getLikes());
        videoBean.setSourceName(getSource());
        videoBean.setSourceImage(getSourceImage());
        videoBean.setCategories(getCategories());
        videoBean.setImages(getImages());
        videoBean.setVideoLink(getVideoLink());
        videoBean.setCreated(getCreated());
        feedStreamBean.setVideo(videoBean);
        return feedStreamBean;
    }
}
