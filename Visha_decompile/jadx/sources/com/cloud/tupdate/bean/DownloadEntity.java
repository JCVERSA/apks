package com.cloud.tupdate.bean;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import java.io.Serializable;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u0019\u0010\u0011R\u001a\u0010\u001a\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000f\"\u0004\b \u0010\u0011R\u001a\u0010!\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\n\"\u0004\b#\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u000f\"\u0004\b%\u0010\u0011¨\u0006&"}, d2 = {"Lcom/cloud/tupdate/bean/DownloadEntity;", "Ljava/io/Serializable;", "title", "", "url", "(Ljava/lang/String;Ljava/lang/String;)V", "()V", "completedSize", "", "getCompletedSize", "()J", "setCompletedSize", "(J)V", Progress.FILE_NAME, "getFileName", "()Ljava/lang/String;", "setFileName", "(Ljava/lang/String;)V", Progress.FILE_PATH, "getFilePath", "setFilePath", TtmlNode.ATTR_ID, "", "taskId", "getTaskId", "setTaskId", "taskStatus", "getTaskStatus", "()I", "setTaskStatus", "(I)V", "getTitle", "setTitle", Progress.TOTAL_SIZE, "getTotalSize", "setTotalSize", "getUrl", "setUrl", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class DownloadEntity implements Serializable {
    private long completedSize;
    private String fileName;
    private String filePath;
    private final int id;
    private String taskId;
    private int taskStatus;
    private String title;
    private long totalSize;
    private String url;

    public DownloadEntity() {
    }

    public final long getCompletedSize() {
        return this.completedSize;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final int getTaskStatus() {
        return this.taskStatus;
    }

    public final String getTitle() {
        return this.title;
    }

    public final long getTotalSize() {
        return this.totalSize;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setCompletedSize(long j) {
        this.completedSize = j;
    }

    public final void setFileName(String str) {
        this.fileName = str;
    }

    public final void setFilePath(String str) {
        this.filePath = str;
    }

    public final void setTaskId(String str) {
        this.taskId = str;
    }

    public final void setTaskStatus(int i) {
        this.taskStatus = i;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setTotalSize(long j) {
        this.totalSize = j;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public DownloadEntity(String str, String str2) {
        this();
        this.url = str2;
        this.title = str;
    }
}
