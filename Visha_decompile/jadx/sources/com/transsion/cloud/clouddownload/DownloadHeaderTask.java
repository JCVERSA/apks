package com.transsion.cloud.clouddownload;

import com.transsion.cloud.upload.task.UploadHeaderTask;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;

public class DownloadHeaderTask extends NewDownloadTask {
    private final UploadHeaderTask.HeaderType mHeaderType;

    public DownloadHeaderTask(UploadHeaderTask.HeaderType headerType) {
        super(headerType);
        this.mHeaderType = headerType;
    }

    public UploadHeaderTask.HeaderType getHeaderType() {
        return this.mHeaderType;
    }

    @Override
    public int getItemType() {
        return 1;
    }
}
