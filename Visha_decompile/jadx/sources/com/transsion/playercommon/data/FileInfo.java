package com.transsion.playercommon.data;

import com.transsion.playercommon.R;
import java.io.File;

public class FileInfo {
    public static final int FILENAME_MAX_LENGTH = 255;
    private static final String TAG = "FileInfo";
    private final String mAbsolutePath;
    private final File mFile;
    private final boolean mIsDir;
    private boolean mIsMountPoint;
    private final String mName;
    private String name;
    public int srcId;
    private String mParentPath = null;
    private String mFileSizeStr = null;
    public long id = -1;

    public FileInfo(File file) throws IllegalArgumentException {
        if (file == null) {
            throw new IllegalArgumentException();
        }
        this.mFile = file;
        this.mName = file.getName();
        this.mAbsolutePath = file.getAbsolutePath();
        boolean zIsDirectory = file.isDirectory();
        this.mIsDir = zIsDirectory;
        this.srcId = zIsDirectory ? R.drawable.ic_folder : R.drawable.ic_subtitle_local;
    }

    public File getFile() {
        return this.mFile;
    }

    public String getFileName() {
        return this.mName;
    }

    public String getName() {
        return this.name;
    }

    public boolean isMountPoint() {
        return this.mIsMountPoint;
    }

    public void setIsMountPoint(boolean z) {
        this.mIsMountPoint = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public FileInfo(String str) {
        if (str != null) {
            this.mAbsolutePath = str;
            File file = new File(str);
            this.mFile = file;
            this.mName = file.getName();
            boolean zIsDirectory = file.isDirectory();
            this.mIsDir = zIsDirectory;
            this.srcId = zIsDirectory ? R.drawable.ic_folder : R.drawable.ic_subtitle_local;
            return;
        }
        throw new IllegalArgumentException();
    }
}
