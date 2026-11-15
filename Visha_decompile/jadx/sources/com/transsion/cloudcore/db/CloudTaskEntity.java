package com.transsion.cloudcore.db;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.push.PushConstants;
import defpackage.hb0;
import org.apache.commons.lang3.BooleanUtils;

@Entity(tableName = "cloud_task")
public class CloudTaskEntity implements Parcelable {
    public static final Parcelable.Creator<CloudTaskEntity> CREATOR = new Parcelable.Creator<CloudTaskEntity>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CloudTaskEntity createFromParcel(Parcel parcel) {
            return new CloudTaskEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public CloudTaskEntity[] newArray(int i) {
            return new CloudTaskEntity[i];
        }
    };
    private static final String TAG = "CloudTaskEntity";

    @ColumnInfo(name = "cloud_file_id")
    public String cloudFileId;

    @ColumnInfo(name = "create_time")
    public long createTime;

    @ColumnInfo(name = "download_source")
    public int downloadSource;

    @ColumnInfo(name = "duration")
    public long duration;

    @ColumnInfo(name = "file_name")
    public String fileName;

    @ColumnInfo(name = "file_size")
    public long fileSize;

    @ColumnInfo(name = hb0.KEY_NAME_FILE_TYPE)
    public int fileType;

    @ColumnInfo(name = "cover_img_url")
    public String imgUrl;

    @ColumnInfo(defaultValue = BooleanUtils.TRUE, name = "isCloudFileExist")
    public boolean isCloudFileExist;

    @ColumnInfo(defaultValue = BooleanUtils.TRUE, name = "isLocalFileExist")
    public boolean isLocalFileExist;

    @ColumnInfo(name = "local_file_id")
    public int localFileId;

    @ColumnInfo(name = "local_file_path")
    public String localFilePath;

    @ColumnInfo(name = "mime_type")
    public String mimeType;

    @ColumnInfo(name = "progress")
    public float progress;

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "task_id")
    public String taskId;

    @ColumnInfo(name = "task_status")
    public int taskStatus;

    @ColumnInfo(name = "task_type")
    public int taskType;

    @ColumnInfo(name = PushConstants.PROVIDER_FIELD_UPDATE_TIME)
    public long updateTime;

    public static class DownloadSource {
        public static final int CLOUD = 1;
        public static final int CLOUD_SHARE_LINK = 2;
        public static final int MI_MEDIA_LINK = 3;
        public static final int SNIFF = 0;
    }

    public static class TaskStatus {
        public static final int ERROR = 4;
        public static final int FINISH = 5;
        public static final int LOADING = 2;
        public static final int NONE = 0;
        public static final int NO_NET = 7;
        public static final int PAUSE = 3;
        public static final int PAUSE_MOBILE = 6;
        public static final int PROCESSING = 8;
        public static final int PROCESS_FAIL = 9;
        public static final int WAITING = 1;
    }

    public static class TaskType {
        public static final int DOWNLOAD = 2;
        public static final int UPLOAD = 1;
    }

    public CloudTaskEntity() {
        this.taskId = "";
        this.progress = 0.0f;
        this.taskType = 0;
        this.taskStatus = 0;
        this.fileType = MediaItem.MediaType.OTHERS.mValue;
        this.createTime = System.currentTimeMillis();
        this.updateTime = System.currentTimeMillis();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "CloudTaskEntity{taskId='" + this.taskId + "', cloudFileId='" + this.cloudFileId + "', fileName='" + this.fileName + "', fileSize=" + this.fileSize + ", progress=" + this.progress + ", localFileId=" + this.localFileId + ", localFilePath='" + this.localFilePath + "', taskType=" + this.taskType + ", taskStatus=" + this.taskStatus + ", fileType=" + this.fileType + ", createTime=" + this.createTime + ", updateTime=" + this.updateTime + ", duration=" + this.duration + ", downloadSource=" + this.downloadSource + ", isCloudFileExist=" + this.isCloudFileExist + ", isLocalFileExist=" + this.isLocalFileExist + '}';
    }

    public void updateProgress(float f) {
        this.progress = f;
        this.updateTime = System.currentTimeMillis();
    }

    public void updateStatus(int i) {
        this.taskStatus = i;
        this.updateTime = System.currentTimeMillis();
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeString(this.taskId);
        parcel.writeString(this.cloudFileId);
        parcel.writeString(this.fileName);
        parcel.writeLong(this.fileSize);
        parcel.writeFloat(this.progress);
        parcel.writeInt(this.localFileId);
        parcel.writeString(this.localFilePath);
        parcel.writeInt(this.taskType);
        parcel.writeInt(this.taskStatus);
        parcel.writeInt(this.fileType);
        parcel.writeLong(this.createTime);
        parcel.writeLong(this.updateTime);
        parcel.writeLong(this.duration);
        parcel.writeInt(this.downloadSource);
        parcel.writeByte(this.isCloudFileExist ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isLocalFileExist ? (byte) 1 : (byte) 0);
    }

    public CloudTaskEntity(@NonNull String str, String str2, String str3, int i, String str4, int i2, int i3, int i4) {
        this.taskId = str;
        this.cloudFileId = str2;
        this.fileName = str3;
        this.localFileId = i;
        this.localFilePath = str4;
        this.taskType = i2;
        this.taskStatus = i3;
        this.progress = 0.0f;
        this.fileType = i4;
        this.createTime = System.currentTimeMillis();
        this.updateTime = System.currentTimeMillis();
    }

    public CloudTaskEntity(Parcel parcel) {
        this.taskId = parcel.readString();
        this.cloudFileId = parcel.readString();
        this.fileName = parcel.readString();
        this.fileSize = parcel.readLong();
        this.progress = parcel.readFloat();
        this.localFileId = parcel.readInt();
        this.localFilePath = parcel.readString();
        this.taskType = parcel.readInt();
        this.taskStatus = parcel.readInt();
        this.fileType = parcel.readInt();
        this.createTime = parcel.readLong();
        this.updateTime = parcel.readLong();
        this.duration = parcel.readLong();
        this.downloadSource = parcel.readInt();
        this.isCloudFileExist = parcel.readByte() != 0;
        this.isLocalFileExist = parcel.readByte() != 0;
    }
}
