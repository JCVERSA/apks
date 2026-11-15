package com.transsion.vishatransfer.data;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, d2 = {"Lcom/transsion/vishatransfer/data/FileSizeData;", "", "totalFileSize", "", MethodDecl.initName, "(J)V", "getTotalFileSize", "()J", "setTotalFileSize", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileSizeData {
    private long totalFileSize;

    public FileSizeData() {
        this(0L, 1, null);
    }

    public static FileSizeData copy$default(FileSizeData fileSizeData, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = fileSizeData.totalFileSize;
        }
        return fileSizeData.copy(j);
    }

    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public final FileSizeData copy(long totalFileSize) {
        return new FileSizeData(totalFileSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof FileSizeData) && this.totalFileSize == ((FileSizeData) other).totalFileSize;
    }

    public final long getTotalFileSize() {
        return this.totalFileSize;
    }

    public int hashCode() {
        return Long.hashCode(this.totalFileSize);
    }

    public final void setTotalFileSize(long j) {
        this.totalFileSize = j;
    }

    public String toString() {
        return "FileSizeData(totalFileSize=" + this.totalFileSize + ")";
    }

    public FileSizeData(long j) {
        this.totalFileSize = j;
    }

    public FileSizeData(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j);
    }
}
