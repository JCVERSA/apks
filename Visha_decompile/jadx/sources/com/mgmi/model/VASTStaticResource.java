package com.mgmi.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.g4d;

public class VASTStaticResource implements Parcelable {
    public static final Parcelable.Creator<VASTStaticResource> CREATOR = new Parcelable.Creator<VASTStaticResource>() {
        @Override
        public VASTStaticResource createFromParcel(Parcel parcel) {
            VASTStaticResource vASTStaticResource = new VASTStaticResource();
            vASTStaticResource.videoClick = (Clicks) parcel.readParcelable(Clicks.class.getClassLoader());
            return vASTStaticResource;
        }

        @Override
        public VASTStaticResource[] newArray(int i) {
            return new VASTStaticResource[i];
        }
    };
    private static final int RESOURCE_CREATIVE_TYPE_FILE = 103;
    private static final int RESOURCE_CREATIVE_TYPE_FILE_ERROR = -200;
    public static final int RESOURCE_CREATIVE_TYPE_INVALID = -100;
    private static final int RESOURCE_CREATIVE_TYPE_PIC = 101;
    private static final int RESOURCE_CREATIVE_TYPE_VIDEO = 102;
    private static final int RESOURCE_CREATIVE_TYPE_ZIP = 100;
    private float adWratio;
    private String cid;
    private int height;
    private String md5;
    private q staticResourceBinder;
    private String style;
    private String type;
    private String url;
    private Clicks videoClick;
    private int width;
    private int adStrict = 0;
    private int resourceType = -100;

    private void getResourceType() {
        if (TextUtils.isEmpty(this.url)) {
            return;
        }
        if (this.url.endsWith(".zip")) {
            this.resourceType = 100;
            return;
        }
        if (g4d.o(this.url)) {
            this.resourceType = 101;
            return;
        }
        if (g4d.p(this.url)) {
            this.resourceType = 102;
            return;
        }
        if (this.url.endsWith(".json")) {
            this.resourceType = 103;
            return;
        }
        if (!TextUtils.isEmpty(this.type) && this.type.equals("file/h5_zip")) {
            this.resourceType = 100;
            return;
        }
        if (!TextUtils.isEmpty(this.type) && this.type.startsWith("image")) {
            this.resourceType = 101;
            return;
        }
        if (!TextUtils.isEmpty(this.type) && this.type.startsWith("video")) {
            this.resourceType = 102;
        } else if (TextUtils.isEmpty(this.type) || !(this.type.equals("ai_implant") || this.type.equals("ai_follow"))) {
            this.resourceType = RESOURCE_CREATIVE_TYPE_FILE_ERROR;
        } else {
            this.resourceType = 103;
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public int getAdStrict() {
        return this.adStrict;
    }

    public float getAdWratio() {
        return this.adWratio;
    }

    public String getCid() {
        return this.cid;
    }

    public int getHeight() {
        return this.height;
    }

    public String getMd5() {
        return this.md5;
    }

    public q getStaticResourceBinder() {
        return this.staticResourceBinder;
    }

    public String getStyle() {
        return this.style;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public Clicks getVideoClick() {
        return this.videoClick;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isFileResource() {
        if (this.resourceType == -100) {
            getResourceType();
        }
        return this.resourceType == 103;
    }

    public boolean isPictureResource() {
        if (this.resourceType == -100) {
            getResourceType();
        }
        return this.resourceType == 101;
    }

    public boolean isResourceValid() {
        if (this.resourceType == -100) {
            getResourceType();
        }
        return this.resourceType != RESOURCE_CREATIVE_TYPE_FILE_ERROR;
    }

    public boolean isVideoResource() {
        if (this.resourceType == -100) {
            getResourceType();
        }
        return this.resourceType == 102;
    }

    public boolean isZipResource() {
        if (this.resourceType == -100) {
            getResourceType();
        }
        return this.resourceType == 100;
    }

    public void setAdStrict(int i) {
        this.adStrict = i;
    }

    public void setAdWratio(float f) {
        this.adWratio = f;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setStaticResourceBinder(q qVar) {
        this.staticResourceBinder = qVar;
    }

    public void setStyle(String str) {
        this.style = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVideoClick(Clicks clicks) {
        this.videoClick = clicks;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.videoClick, i);
    }
}
