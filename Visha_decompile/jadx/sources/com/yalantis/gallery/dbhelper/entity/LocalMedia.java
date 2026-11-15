package com.yalantis.gallery.dbhelper.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import defpackage.dc7;

public class LocalMedia implements Parcelable {
    public static final Parcelable.Creator<LocalMedia> CREATOR = new a();
    private static dc7 sPool;
    private long bucketId;
    private int chooseModel;
    private LocalMedia compareLocalMedia;
    private String compressPath;
    private boolean compressed;
    private int cropImageHeight;
    private int cropImageWidth;
    private int cropOffsetX;
    private int cropOffsetY;
    private float cropResultAspectRatio;
    private String customData;
    private String cutPath;
    private long dateAddedTime;
    private long duration;
    private String fileName;
    private int height;
    private long id;
    private boolean isChecked;
    private boolean isCut;
    private boolean isEditorImage;
    private boolean isGalleryEnabledMask;
    private boolean isMaxSelectEnabledMask;
    private boolean isOriginal;
    private String mimeType;
    private int num;
    private String originalPath;
    private String parentFolderName;
    private String path;
    public int position;
    private String realPath;
    private String sandboxPath;
    private long size;
    private String videoThumbnailPath;
    private String watermarkPath;
    private int width;

    public class a implements Parcelable.Creator {
        @Override
        public LocalMedia createFromParcel(Parcel parcel) {
            return new LocalMedia(parcel);
        }

        @Override
        public LocalMedia[] newArray(int i) {
            return new LocalMedia[i];
        }
    }

    public LocalMedia() {
        this.bucketId = -1L;
    }

    public static LocalMedia create() {
        return new LocalMedia();
    }

    public static void destroyPool() {
        dc7 dc7Var = sPool;
        if (dc7Var != null) {
            dc7Var.b();
            sPool = null;
        }
    }

    public static LocalMedia generateHttpAsLocalMedia(String str, String str2) {
        LocalMedia localMediaCreate = create();
        localMediaCreate.setPath(str);
        localMediaCreate.setMimeType(str2);
        return localMediaCreate;
    }

    @Deprecated
    public static LocalMedia generateLocalMedia(String str, String str2) {
        LocalMedia localMediaCreate = create();
        localMediaCreate.setPath(str);
        localMediaCreate.setMimeType(str2);
        return localMediaCreate;
    }

    public static LocalMedia obtain() {
        if (sPool == null) {
            sPool = new dc7();
        }
        LocalMedia localMedia = (LocalMedia) sPool.a();
        return localMedia == null ? create() : localMedia;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalMedia)) {
            return false;
        }
        LocalMedia localMedia = (LocalMedia) obj;
        if (!TextUtils.equals(getPath(), localMedia.getPath()) && !TextUtils.equals(getRealPath(), localMedia.getRealPath()) && getId() != localMedia.getId()) {
            z = false;
        }
        if (!z) {
            localMedia = null;
        }
        this.compareLocalMedia = localMedia;
        return z;
    }

    public String getAvailablePath() {
        String path = getPath();
        if (isCut()) {
            path = getCutPath();
        }
        if (isCompressed()) {
            path = getCompressPath();
        }
        if (isToSandboxPath()) {
            path = getSandboxPath();
        }
        if (isOriginal()) {
            path = getOriginalPath();
        }
        return isWatermarkPath() ? getWatermarkPath() : path;
    }

    public long getBucketId() {
        return this.bucketId;
    }

    public int getChooseModel() {
        return this.chooseModel;
    }

    public LocalMedia getCompareLocalMedia() {
        return this.compareLocalMedia;
    }

    public String getCompressPath() {
        return this.compressPath;
    }

    public int getCropImageHeight() {
        return this.cropImageHeight;
    }

    public int getCropImageWidth() {
        return this.cropImageWidth;
    }

    public int getCropOffsetX() {
        return this.cropOffsetX;
    }

    public int getCropOffsetY() {
        return this.cropOffsetY;
    }

    public float getCropResultAspectRatio() {
        return this.cropResultAspectRatio;
    }

    public String getCustomData() {
        return this.customData;
    }

    public String getCutPath() {
        return this.cutPath;
    }

    public long getDateAddedTime() {
        return this.dateAddedTime;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getHeight() {
        return this.height;
    }

    public long getId() {
        return this.id;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public int getNum() {
        return this.num;
    }

    public String getOriginalPath() {
        return this.originalPath;
    }

    public String getParentFolderName() {
        return this.parentFolderName;
    }

    public String getPath() {
        return this.path;
    }

    public int getPosition() {
        return this.position;
    }

    public String getRealPath() {
        return this.realPath;
    }

    public String getSandboxPath() {
        return this.sandboxPath;
    }

    public long getSize() {
        return this.size;
    }

    public String getVideoThumbnailPath() {
        return this.videoThumbnailPath;
    }

    public String getWatermarkPath() {
        return this.watermarkPath;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public boolean isCompressed() {
        return this.compressed && !TextUtils.isEmpty(getCompressPath());
    }

    public boolean isCut() {
        return this.isCut && !TextUtils.isEmpty(getCutPath());
    }

    public boolean isEditorImage() {
        return this.isEditorImage && !TextUtils.isEmpty(getCutPath());
    }

    public boolean isGalleryEnabledMask() {
        return this.isGalleryEnabledMask;
    }

    public boolean isMaxSelectEnabledMask() {
        return this.isMaxSelectEnabledMask;
    }

    public boolean isOriginal() {
        return this.isOriginal && !TextUtils.isEmpty(getOriginalPath());
    }

    public boolean isToSandboxPath() {
        return !TextUtils.isEmpty(getSandboxPath());
    }

    public boolean isWatermarkPath() {
        return !TextUtils.isEmpty(getWatermarkPath());
    }

    public void recycle() {
        dc7 dc7Var = sPool;
        if (dc7Var != null) {
            dc7Var.d(this);
        }
    }

    public void setBucketId(long j) {
        this.bucketId = j;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public void setChooseModel(int i) {
        this.chooseModel = i;
    }

    public void setCompressPath(String str) {
        this.compressPath = str;
    }

    public void setCompressed(boolean z) {
        this.compressed = z;
    }

    public void setCropImageHeight(int i) {
        this.cropImageHeight = i;
    }

    public void setCropImageWidth(int i) {
        this.cropImageWidth = i;
    }

    public void setCropOffsetX(int i) {
        this.cropOffsetX = i;
    }

    public void setCropOffsetY(int i) {
        this.cropOffsetY = i;
    }

    public void setCropResultAspectRatio(float f) {
        this.cropResultAspectRatio = f;
    }

    public void setCustomData(String str) {
        this.customData = str;
    }

    public void setCut(boolean z) {
        this.isCut = z;
    }

    public void setCutPath(String str) {
        this.cutPath = str;
    }

    public void setDateAddedTime(long j) {
        this.dateAddedTime = j;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setEditorImage(boolean z) {
        this.isEditorImage = z;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setGalleryEnabledMask(boolean z) {
        this.isGalleryEnabledMask = z;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setId(long j) {
        this.id = j;
    }

    public void setMaxSelectEnabledMask(boolean z) {
        this.isMaxSelectEnabledMask = z;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setNum(int i) {
        this.num = i;
    }

    public void setOriginal(boolean z) {
        this.isOriginal = z;
    }

    public void setOriginalPath(String str) {
        this.originalPath = str;
    }

    public void setParentFolderName(String str) {
        this.parentFolderName = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setRealPath(String str) {
        this.realPath = str;
    }

    public void setSandboxPath(String str) {
        this.sandboxPath = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setVideoThumbnailPath(String str) {
        this.videoThumbnailPath = str;
    }

    public void setWatermarkPath(String str) {
        this.watermarkPath = str;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.id);
        parcel.writeString(this.path);
        parcel.writeString(this.realPath);
        parcel.writeString(this.originalPath);
        parcel.writeString(this.compressPath);
        parcel.writeString(this.cutPath);
        parcel.writeString(this.watermarkPath);
        parcel.writeString(this.videoThumbnailPath);
        parcel.writeString(this.sandboxPath);
        parcel.writeLong(this.duration);
        parcel.writeByte(this.isChecked ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isCut ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.position);
        parcel.writeInt(this.num);
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.chooseModel);
        parcel.writeByte(this.compressed ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.cropImageWidth);
        parcel.writeInt(this.cropImageHeight);
        parcel.writeInt(this.cropOffsetX);
        parcel.writeInt(this.cropOffsetY);
        parcel.writeFloat(this.cropResultAspectRatio);
        parcel.writeLong(this.size);
        parcel.writeByte(this.isOriginal ? (byte) 1 : (byte) 0);
        parcel.writeString(this.fileName);
        parcel.writeString(this.parentFolderName);
        parcel.writeLong(this.bucketId);
        parcel.writeLong(this.dateAddedTime);
        parcel.writeString(this.customData);
        parcel.writeByte(this.isMaxSelectEnabledMask ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isGalleryEnabledMask ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isEditorImage ? (byte) 1 : (byte) 0);
    }

    public LocalMedia(Parcel parcel) {
        this.bucketId = -1L;
        this.id = parcel.readLong();
        this.path = parcel.readString();
        this.realPath = parcel.readString();
        this.originalPath = parcel.readString();
        this.compressPath = parcel.readString();
        this.cutPath = parcel.readString();
        this.watermarkPath = parcel.readString();
        this.videoThumbnailPath = parcel.readString();
        this.sandboxPath = parcel.readString();
        this.duration = parcel.readLong();
        this.isChecked = parcel.readByte() != 0;
        this.isCut = parcel.readByte() != 0;
        this.position = parcel.readInt();
        this.num = parcel.readInt();
        this.mimeType = parcel.readString();
        this.chooseModel = parcel.readInt();
        this.compressed = parcel.readByte() != 0;
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.cropImageWidth = parcel.readInt();
        this.cropImageHeight = parcel.readInt();
        this.cropOffsetX = parcel.readInt();
        this.cropOffsetY = parcel.readInt();
        this.cropResultAspectRatio = parcel.readFloat();
        this.size = parcel.readLong();
        this.isOriginal = parcel.readByte() != 0;
        this.fileName = parcel.readString();
        this.parentFolderName = parcel.readString();
        this.bucketId = parcel.readLong();
        this.dateAddedTime = parcel.readLong();
        this.customData = parcel.readString();
        this.isMaxSelectEnabledMask = parcel.readByte() != 0;
        this.isGalleryEnabledMask = parcel.readByte() != 0;
        this.isEditorImage = parcel.readByte() != 0;
    }
}
