package com.transsion.cloud.upload.model;

import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.Progress;
import defpackage.fe7;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\b\u0018\u0000 -2\u00020\u0001:\u0002,-B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010'\u001a\u00020 2\b\u0010(\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010)\u001a\u00020\u0013H\u0016J\u0010\u0010*\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0002J\b\u0010+\u001a\u00020\u0005H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\r0&X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/transsion/cloud/upload/model/UploadProgressInfo;", "", MethodDecl.initName, "()V", Progress.TAG, "", Progress.FILE_PATH, "getFilePath", "()Ljava/lang/String;", "setFilePath", "(Ljava/lang/String;)V", Progress.FILE_NAME, Progress.TOTAL_SIZE, "", Progress.CURRENT_SIZE, Progress.FRACTION, "", "speed", "status", "", "lastStatus", "date", "duration", "taskId", "fileType", "getFileType", "()I", "setFileType", "(I)V", "mediaId", "fileId", "hadMarkError", "", "transcodingProgress", "tempSize", "lastRefreshTime", "lastSize", "speedBuffer", "", "equals", "other", "hashCode", "bufferSpeed", "toString", "Action", "Companion", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UploadProgressInfo {

    public static final Companion INSTANCE = new Companion(null);
    public long currentSize;
    public long date;
    public long duration;
    public String fileId;
    public String fileName;
    public String filePath;
    private int fileType;
    public float fraction;
    public boolean hadMarkError;
    private transient long lastRefreshTime;
    public long lastSize;
    public int lastStatus;
    public int mediaId;
    public long speed;
    private final transient List<Long> speedBuffer = new CopyOnWriteArrayList();
    public int status;
    public String tag;
    public String taskId;
    private transient long tempSize;
    public long totalSize;
    public int transcodingProgress;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;", "", "Lcom/transsion/cloud/upload/model/UploadProgressInfo;", "progress", "Lzfb;", NotificationCompat.CATEGORY_CALL, "(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Action {
        void call(UploadProgressInfo progress);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\f"}, d2 = {"Lcom/transsion/cloud/upload/model/UploadProgressInfo$Companion;", "", MethodDecl.initName, "()V", "changeProgress", "Lcom/transsion/cloud/upload/model/UploadProgressInfo;", "progress", "writeSize", "", Progress.TOTAL_SIZE, "action", "Lcom/transsion/cloud/upload/model/UploadProgressInfo$Action;", "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UploadProgressInfo changeProgress(UploadProgressInfo progress, long writeSize, long totalSize, Action action) {
            y45.j(progress, "progress");
            progress.totalSize = totalSize;
            long j = progress.currentSize;
            progress.lastSize = j;
            progress.currentSize = j + writeSize;
            progress.tempSize += writeSize;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - progress.lastRefreshTime >= fe7.i || progress.currentSize == totalSize) {
                long j2 = jElapsedRealtime - progress.lastRefreshTime;
                if (j2 == 0) {
                    j2 = 1;
                }
                progress.fraction = (progress.currentSize * 1.0f) / totalSize;
                progress.speed = progress.bufferSpeed((progress.tempSize * ((long) 1000)) / j2);
                progress.lastRefreshTime = jElapsedRealtime;
                progress.tempSize = 0L;
                if (action != null) {
                    action.call(progress);
                }
            }
            return progress;
        }

        private Companion() {
        }
    }

    public final long bufferSpeed(long speed) {
        this.speedBuffer.add(Long.valueOf(speed));
        if (this.speedBuffer.size() > 10) {
            this.speedBuffer.remove(0);
        }
        Iterator<Long> it = this.speedBuffer.iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue += it.next().longValue();
        }
        return jLongValue / ((long) this.speedBuffer.size());
    }

    public static final UploadProgressInfo changeProgress(UploadProgressInfo uploadProgressInfo, long j, long j2, Action action) {
        return INSTANCE.changeProgress(uploadProgressInfo, j, j2, action);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UploadProgressInfo)) {
            return false;
        }
        UploadProgressInfo uploadProgressInfo = (UploadProgressInfo) other;
        return y45.e(this.tag, uploadProgressInfo.tag) && y45.e(getFilePath(), uploadProgressInfo.getFilePath());
    }

    public final String getFilePath() {
        String str = this.filePath;
        if (str != null) {
            return str;
        }
        y45.B(Progress.FILE_PATH);
        return null;
    }

    public final int getFileType() {
        return this.fileType;
    }

    public int hashCode() {
        String str = this.tag;
        if (str == null || str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setFilePath(String str) {
        y45.j(str, "<set-?>");
        this.filePath = str;
    }

    public final void setFileType(int i) {
        this.fileType = i;
    }

    public String toString() {
        return "UploadProgressInfo{tag=" + this.tag + ", filePath=" + getFilePath() + ", fileName=" + this.fileName + ", totalSize=" + this.totalSize + ", currentSize=" + this.currentSize + ", fraction=" + this.fraction + ", speed=" + this.speed + ", status=" + this.status + ", date=" + this.date + ", duration=" + this.duration + ", taskId=" + this.taskId + ", fileType=" + this.fileType + ", mediaId=" + this.mediaId + ", hadMarkError=" + this.hadMarkError + StringSubstitutor.DEFAULT_VAR_END;
    }
}
