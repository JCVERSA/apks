package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileDirInfo;", "", "dirCount", "", "fileCount", "(II)V", "getDirCount", "()I", "getFileCount", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileDirInfo {
    private final int dirCount;
    private final int fileCount;

    /* JADX WARN: Illegal instructions before constructor call */
    public FileDirInfo() {
        int i = 0;
        this(i, i, 3, null);
    }

    public final int getDirCount() {
        return this.dirCount;
    }

    public final int getFileCount() {
        return this.fileCount;
    }

    public FileDirInfo(@v95(name = "dir_count") int i, @v95(name = "file_count") int i2) {
        this.dirCount = i;
        this.fileCount = i2;
    }

    public FileDirInfo(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2);
    }
}
