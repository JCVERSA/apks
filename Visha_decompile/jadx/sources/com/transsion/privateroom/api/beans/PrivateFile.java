package com.transsion.privateroom.api.beans;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import defpackage.r0a;
import defpackage.zu3;
import java.io.File;

@Keep
public class PrivateFile {
    private static final String PRIVATE_FILES_NAME_EXTENSION = ".visha";
    private long date;
    private long duration;
    private String hideFileName;
    private String hidePath;
    private String originalFileName;
    private String originalPath;
    private long size;

    public static final class PrivateFileBuilder {
        private long date;
        private long duration;
        private String hideFileName;
        private String hidePath;
        private String originalFileName;
        private String originalPath;
        private long size;

        public static PrivateFileBuilder aPrivateFile() {
            return new PrivateFileBuilder();
        }

        public PrivateFile build() {
            PrivateFile privateFile = new PrivateFile();
            privateFile.setOriginalPath(this.originalPath);
            privateFile.setHidePath(this.hidePath);
            privateFile.setHideFileName(this.hideFileName);
            privateFile.setDuration(this.duration);
            privateFile.setSize(this.size);
            privateFile.setDate(this.date);
            privateFile.originalFileName = this.originalFileName;
            return privateFile;
        }

        public PrivateFileBuilder withDate(long j) {
            this.date = j;
            return this;
        }

        public PrivateFileBuilder withDuration(long j) {
            this.duration = j;
            return this;
        }

        public PrivateFileBuilder withHideFileName(String str) {
            this.hideFileName = str;
            return this;
        }

        public PrivateFileBuilder withHidePath(String str) {
            this.hidePath = str;
            return this;
        }

        public PrivateFileBuilder withOriginalFileName(String str) {
            this.originalFileName = str;
            return this;
        }

        public PrivateFileBuilder withOriginalPath(String str) {
            this.originalPath = str;
            return this;
        }

        public PrivateFileBuilder withSize(long j) {
            this.size = j;
            return this;
        }
    }

    public static boolean isPrivateFile(File file) {
        if (file == null || !file.isFile()) {
            return false;
        }
        String name = file.getName();
        return !r0a.g(name) && name.endsWith(PRIVATE_FILES_NAME_EXTENSION);
    }

    public boolean canDelete() {
        return !r0a.g(this.hidePath);
    }

    public boolean canHide() {
        return !r0a.g(this.originalPath);
    }

    public boolean canRestore() {
        return !r0a.g(this.originalPath);
    }

    public long getDate() {
        return this.date;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getHideFileName() {
        return this.hideFileName;
    }

    public String getHidePath() {
        return this.hidePath;
    }

    public String getOriginalFilename() {
        return this.originalFileName;
    }

    public String getOriginalPath() {
        return this.originalPath;
    }

    public long getSize() {
        if (this.size == 0 && zu3.y(this.originalPath)) {
            this.size = zu3.p(this.originalPath);
        }
        return this.size;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setHideFileName(String str) {
        this.hideFileName = str;
    }

    public void setHidePath(String str) {
        this.hidePath = str;
    }

    public void setOriginalFilename(String str) {
        this.originalFileName = str;
    }

    public void setOriginalPath(String str) {
        this.originalPath = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    @NonNull
    public String toString() {
        return "PrivateFile{\noriginalFileName='" + this.originalFileName + "'\noriginalPath='" + this.originalPath + "'\nhidePath='" + this.hidePath + "'\nhideFileName='" + this.hideFileName + "'\nduration=" + this.duration + "\nsize=" + this.size + "\ndate='" + this.date + "'}";
    }
}
