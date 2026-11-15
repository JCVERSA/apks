package com.transsion.playercommon.whatsapp;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.documentfile.provider.DocumentFile;
import java.net.URI;

public class WhatsappFile implements Parcelable {
    public static final Parcelable.Creator<WhatsappFile> CREATOR = new a();
    public static final int FILE_ALL = 0;
    public static final int FILE_IMAGE = 2;
    public static final int FILE_VIDEO = 1;
    public static final int STATUS_DEF = 0;
    public static final int STATUS_SAVED = 1;
    public static final int STATUS_SAVING = 2;
    private DocumentFile documentFile;
    private String fileName;
    private String filePath;
    private int fileType;
    public volatile boolean isSelected;
    private String savePath;
    private int status;
    private URI uri;

    public class a implements Parcelable.Creator {
        @Override
        public WhatsappFile createFromParcel(Parcel parcel) {
            return new WhatsappFile(parcel);
        }

        @Override
        public WhatsappFile[] newArray(int i) {
            return new WhatsappFile[i];
        }
    }

    public WhatsappFile(int i, String str) {
        this.fileType = i;
        this.filePath = str;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        WhatsappFile whatsappFile = (WhatsappFile) obj;
        String str2 = this.filePath;
        if (str2 != null && (str = whatsappFile.filePath) != null) {
            return str2.equals(str);
        }
        DocumentFile documentFile = this.documentFile;
        if (documentFile != null) {
            return documentFile.equals(whatsappFile.documentFile);
        }
        return whatsappFile.documentFile == null;
    }

    public DocumentFile getDocumentFile() {
        return this.documentFile;
    }

    public String getFileName() {
        return this.fileName;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public int getFileType() {
        return this.fileType;
    }

    public Uri getFileUri() {
        DocumentFile documentFile = this.documentFile;
        return documentFile == null ? Uri.parse(this.filePath) : documentFile.getUri();
    }

    public String getSavePath() {
        return this.savePath;
    }

    public int getStatus() {
        return this.status;
    }

    public URI getUri() {
        return this.uri;
    }

    public int hashCode() {
        String str = this.filePath;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        DocumentFile documentFile = this.documentFile;
        return iHashCode + (documentFile != null ? documentFile.hashCode() : 0);
    }

    public boolean isDefStatus() {
        return this.status == 0;
    }

    public boolean isSaved() {
        return this.status == 1;
    }

    public boolean isSaving() {
        return this.status == 2;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isVideo() {
        return this.fileType == 1;
    }

    public void setDocumentFile(DocumentFile documentFile) {
        this.documentFile = documentFile;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setFileType(int i) {
        this.fileType = i;
    }

    public void setSavePath(String str) {
        this.savePath = str;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setUri(URI uri) {
        this.uri = uri;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.fileType);
        parcel.writeString(this.filePath);
        parcel.writeString(this.fileName);
        parcel.writeString(this.savePath);
        parcel.writeInt(this.status);
    }

    public WhatsappFile(String str) {
        this.filePath = str;
    }

    public WhatsappFile(int i, String str, String str2) {
        this.fileType = i;
        this.filePath = str;
        this.fileName = str2;
    }

    public WhatsappFile(int i, String str, DocumentFile documentFile) {
        this.fileType = i;
        this.documentFile = documentFile;
        this.fileName = str;
    }

    public WhatsappFile(Parcel parcel) {
        this.isSelected = parcel.readByte() != 0;
        this.fileType = parcel.readInt();
        this.filePath = parcel.readString();
        this.fileName = parcel.readString();
        this.savePath = parcel.readString();
        this.status = parcel.readInt();
    }
}
