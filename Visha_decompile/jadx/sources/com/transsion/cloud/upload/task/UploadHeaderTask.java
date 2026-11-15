package com.transsion.cloud.upload.task;

public class UploadHeaderTask extends NewUploadTask {
    private final HeaderType mHeaderType;

    public enum HeaderType {
        FAILED,
        NOT_FAILED
    }

    public UploadHeaderTask(HeaderType headerType) {
        super(headerType);
        this.mHeaderType = headerType;
    }

    public HeaderType getHeaderType() {
        return this.mHeaderType;
    }

    @Override
    public int getItemType() {
        return 1;
    }
}
