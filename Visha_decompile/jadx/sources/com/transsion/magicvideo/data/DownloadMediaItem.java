package com.transsion.magicvideo.data;

import defpackage.av3;
import defpackage.b23;
import java.util.List;

public class DownloadMediaItem {
    private String imgUrl;
    private int mHeight;
    private List<mediaItemDownloadChoice> mList;
    private String mTitle;
    private int mWidth;
    private String url;

    public static class mediaItemDownloadChoice {
        private String mMimeType;
        private String mResolutionRadio;
        private long mSize;
        private String mUrl;

        public mediaItemDownloadChoice(String str, long j, String str2, String str3) {
            this.mResolutionRadio = str;
            this.mSize = j;
            this.mMimeType = str2;
            this.mUrl = str3;
        }

        public String getMimeType() {
            return this.mMimeType;
        }

        public String getResolutionRadio() {
            return this.mResolutionRadio;
        }

        public long getSize() {
            return this.mSize;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public void setMimeType(String str) {
            this.mMimeType = str;
        }

        public void setResolutionRadio(String str) {
            this.mResolutionRadio = str;
        }

        public void setSize(long j) {
            this.mSize = j;
        }

        public void setUrl(String str) {
            this.mUrl = str;
        }
    }

    public DownloadMediaItem(String str, String str2, List<mediaItemDownloadChoice> list, String str3, int i, int i2) {
        this.url = str;
        this.imgUrl = str2;
        this.mList = list;
        this.mTitle = resetFileName(str3);
        this.mWidth = i;
        this.mHeight = i2;
    }

    private String resetFileName(String str) {
        return av3.a(b23.b(str, this.url));
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public List<mediaItemDownloadChoice> getList() {
        return this.mList;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getUrl() {
        return this.url;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public List<mediaItemDownloadChoice> getmList() {
        return this.mList;
    }

    public String getmTitle() {
        return this.mTitle;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setList(List<mediaItemDownloadChoice> list) {
        this.mList = list;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public void setmList(List<mediaItemDownloadChoice> list) {
        this.mList = list;
    }

    public void setmTitle(String str) {
        this.mTitle = str;
    }
}
