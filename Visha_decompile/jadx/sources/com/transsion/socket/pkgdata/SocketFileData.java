package com.transsion.socket.pkgdata;

import android.text.TextUtils;
import android.util.Log;
import com.transsion.letswitch.service.api.FileInformation;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.letswitch.service.api.utils.PathMatcher;
import com.transsion.socket.SLog;
import com.transsion.socket.SocketMain;
import com.transsion.socket.internal.SocketInputStream;
import com.transsion.socket.internal.SocketOutputStream;
import com.transsion.socket.internal.SocketStream;
import com.transsion.socket.untils.FileReader;
import com.transsion.socket.untils.FileWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SocketFileData extends SocketData {
    static final byte FLAG_DIR_END = 4;
    static final byte FLAG_DIR_FILE_INFO = 5;
    static final byte FLAG_DIR_START = 3;
    static final byte FLAG_END = 1;
    static final byte FLAG_FILE_START = 2;
    static final String TAG = "SocketDirData";
    private boolean mCoverOldFile;
    private FileInfo mFileInfo;
    public String mReceiveDir;
    private SocketInputStream mSIS;
    private SocketOutputStream mSOS;
    public String mSendFile;
    FileInfo mTFIProgress;
    private boolean mTrafficStats;
    private IFileTransferProgress mTransferProgress;
    private boolean mWriteSendFileInfo;
    private byte mReceiveFileType = 3;
    private List<String> mFailFiles = new ArrayList();
    private long mTrafficStatsPosition = -1;

    public static class FileInfo {
        public int mFileCount = 0;
        public long mTransferLength = 0;

        public void addFileCount() {
            this.mFileCount++;
        }

        public FileInfo setFileCount(int i) {
            this.mFileCount = i;
            return this;
        }

        public FileInfo setLength(long j) {
            this.mTransferLength = j;
            return this;
        }
    }

    public interface IFileTransferProgress {
        void onFileTransferProgress(int i, long j);
    }

    public FileInfo calcTotalSendFileInfo() {
        FileInformation fileInfo;
        FileInfo fileInfo2 = new FileInfo();
        if (this.mSendFile == null || (fileInfo = LetSwitchServiceProxy.getFileOperation().getFileInfo(this.mSendFile)) == null) {
            return fileInfo2;
        }
        if (fileInfo.isFile()) {
            return fileInfo2.setFileCount(1).setLength(fileInfo.getLength());
        }
        fileInfo.isDir();
        return fileInfo2;
    }

    public List<String> getFailFilesCopy() {
        return new ArrayList(this.mFailFiles);
    }

    public String getReceiveDir() {
        return this.mReceiveDir;
    }

    public String getSendDir() {
        return this.mSendFile;
    }

    public FileInfo getTransferFileInfo() {
        return getTransferFileInfo(null);
    }

    public boolean isReceiveSuccess() {
        return this.mFailFiles.size() == 0;
    }

    public void notifyFinishFile(long j) {
        IFileTransferProgress iFileTransferProgress = this.mTransferProgress;
        if (iFileTransferProgress != null || this.mTrafficStats) {
            if (this.mTFIProgress == null) {
                this.mTFIProgress = new FileInfo();
            }
            if (this.mTrafficStats) {
                synchronized (this) {
                    FileInfo fileInfo = this.mTFIProgress;
                    fileInfo.mFileCount++;
                    fileInfo.mTransferLength += j;
                    this.mTrafficStatsPosition = -1L;
                }
            } else {
                FileInfo fileInfo2 = this.mTFIProgress;
                fileInfo2.mFileCount++;
                fileInfo2.mTransferLength += j;
            }
            if (iFileTransferProgress != null) {
                FileInfo fileInfo3 = this.mTFIProgress;
                iFileTransferProgress.onFileTransferProgress(fileInfo3.mFileCount, fileInfo3.mTransferLength);
            }
        }
    }

    public void notifyStartFile(boolean z) {
        SocketInputStream socketInputStream;
        if (this.mTrafficStats) {
            synchronized (this) {
                if (z) {
                    try {
                        SocketOutputStream socketOutputStream = this.mSOS;
                        if (socketOutputStream != null) {
                            this.mTrafficStatsPosition = socketOutputStream.getOutputSize();
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!z && (socketInputStream = this.mSIS) != null) {
                    this.mTrafficStatsPosition = socketInputStream.getInputSize();
                }
            }
        }
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_FILE;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        if (this.mTrafficStats && (dataInputStream instanceof SocketInputStream)) {
            this.mSIS = (SocketInputStream) dataInputStream;
        }
        this.mReceiveFileType = dataInputStream.readByte();
        String string = readString(dataInputStream);
        this.mReceiveDir = string;
        this.mReceiveDir = PathMatcher.toAppPath(string);
        this.mSendFile = readString(dataInputStream);
        this.mCoverOldFile = dataInputStream.readBoolean();
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "mReceiveDir:" + this.mReceiveDir + ", mSendDir:" + this.mSendFile + " mCoverOldFile = " + this.mCoverOldFile);
        }
        byte b = dataInputStream.readByte();
        if (b == 1) {
            return;
        }
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "onReadData-flag:" + ((int) b));
        }
        String receiveDir = getReceiveDir();
        if (TextUtils.isEmpty(receiveDir)) {
            receiveDir = getSendDir();
            if (b == 2) {
                receiveDir = new File(receiveDir).getParent();
            }
        }
        File file = new File(receiveDir);
        if (b == 2) {
            readStreamToFile(dataInputStream, file);
            return;
        }
        if (this.mReceiveFileType == 2) {
            this.mReceiveFileType = (byte) 3;
        }
        onReadFileInfo(dataInputStream, b);
        readDir(file, dataInputStream);
    }

    public byte onReadFileInfo(DataInputStream dataInputStream, byte b) throws IOException {
        if (b != 5) {
            return b;
        }
        FileInfo fileInfo = new FileInfo();
        this.mFileInfo = fileInfo;
        fileInfo.setFileCount(dataInputStream.readInt()).setLength(dataInputStream.readLong());
        return dataInputStream.readByte();
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        if (this.mTrafficStats && (dataOutputStream instanceof SocketOutputStream)) {
            this.mSOS = (SocketOutputStream) dataOutputStream;
        }
        this.mFailFiles.clear();
        dataOutputStream.writeByte(this.mReceiveFileType);
        writeString(dataOutputStream, this.mReceiveDir);
        writeString(dataOutputStream, this.mSendFile);
        dataOutputStream.writeBoolean(this.mCoverOldFile);
        String sendDir = getSendDir();
        if (sendDir == null) {
            dataOutputStream.writeByte(1);
            return;
        }
        FileInformation fileInfo = LetSwitchServiceProxy.getFileOperation().getFileInfo(sendDir);
        if (fileInfo == null) {
            dataOutputStream.writeByte(1);
            return;
        }
        if (fileInfo.isDir()) {
            dataOutputStream.writeByte(1);
        } else if (fileInfo.isFile()) {
            writeStreamFromFile(dataOutputStream, fileInfo);
        } else {
            dataOutputStream.writeByte(1);
        }
    }

    public void onWriteFileInfo(DataOutputStream dataOutputStream) throws IOException {
        if (this.mWriteSendFileInfo) {
            FileInfo fileInfoCalcTotalSendFileInfo = this.mFileInfo;
            if (fileInfoCalcTotalSendFileInfo == null) {
                fileInfoCalcTotalSendFileInfo = calcTotalSendFileInfo();
                this.mFileInfo = fileInfoCalcTotalSendFileInfo;
            }
            dataOutputStream.writeByte(5);
            dataOutputStream.writeInt(fileInfoCalcTotalSendFileInfo.mFileCount);
            dataOutputStream.writeLong(fileInfoCalcTotalSendFileInfo.mTransferLength);
        }
    }

    public void readDir(File file, DataInputStream dataInputStream) throws IOException {
        String string = readString(dataInputStream);
        if (!TextUtils.isEmpty(string)) {
            file = new File(file, string);
        }
        SocketStream.makeDirs(file);
        byte b = dataInputStream.readByte();
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "readDir-dirName:" + string + ", flag:" + ((int) b));
        }
        while (b != 4) {
            if (b == 3) {
                readDir(file, dataInputStream);
            } else if (b == 2) {
                readStreamToFile(dataInputStream, file);
            }
            b = dataInputStream.readByte();
        }
    }

    public void readStreamToFile(DataInputStream dataInputStream, File file) throws IOException {
        File file2;
        long j;
        long j2 = dataInputStream.readLong();
        String string = readString(dataInputStream);
        if (this.mReceiveFileType == 2) {
            SocketStream.makeDirs(file.getParentFile());
            file2 = file;
        } else {
            SocketStream.makeDirs(file);
            file2 = new File(file, string);
        }
        notifyStartFile(false);
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "readStreamToFile-fileName0:" + string + ", size:" + j2 + " , " + ((SocketInputStream) dataInputStream).getInputSize());
        }
        boolean z = dataInputStream instanceof SocketInputStream;
        if (z) {
            ((SocketInputStream) dataInputStream).resetReceiveTraffic();
        }
        boolean zWrite = new FileWriter().write(dataInputStream, file2.getAbsolutePath(), null, 0L, j2, this.mCoverOldFile);
        if (!zWrite) {
            Log.d(TAG, "readStreamToFileSkipError fail");
            this.mFailFiles.add(file2.getAbsolutePath());
        }
        if (z) {
            ((SocketInputStream) dataInputStream).stopReceiveCount();
        }
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            StringBuilder sb = new StringBuilder();
            sb.append("readStreamToFile-fileName1:");
            sb.append(string);
            sb.append(", size:");
            j = j2;
            sb.append(j);
            sb.append(", ");
            sb.append(((SocketInputStream) dataInputStream).getInputSize());
            sb.append("  result = ");
            sb.append(zWrite);
            Log.d(TAG, sb.toString());
        } else {
            j = j2;
        }
        notifyFinishFile(j);
    }

    public SocketFileData setCoverOldFile(boolean z) {
        this.mCoverOldFile = z;
        return this;
    }

    public SocketFileData setFileInfo(FileInfo fileInfo) {
        this.mFileInfo = fileInfo;
        return this;
    }

    public SocketFileData setFileTransferProgress(IFileTransferProgress iFileTransferProgress) {
        this.mTransferProgress = iFileTransferProgress;
        return this;
    }

    public SocketFileData setReceiveDir(String str) {
        this.mReceiveDir = str;
        if (!TextUtils.isEmpty(str)) {
            this.mReceiveFileType = (byte) 3;
        }
        return this;
    }

    public SocketFileData setReceiveFile(String str) {
        this.mReceiveDir = str;
        if (!TextUtils.isEmpty(str)) {
            this.mReceiveFileType = (byte) 2;
        }
        return this;
    }

    public SocketFileData setSendFile(String str) {
        this.mSendFile = str;
        return this;
    }

    public SocketFileData setSendFileInfo(boolean z) {
        this.mWriteSendFileInfo = z;
        return this;
    }

    public SocketFileData setTrafficStats(boolean z) {
        this.mTrafficStats = z;
        return this;
    }

    public void writeDir(String str, File[] fileArr, DataOutputStream dataOutputStream) throws IOException {
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            SLog.d(TAG, "writeDir:" + str);
        }
        dataOutputStream.writeByte(3);
        writeString(dataOutputStream, str);
        if (fileArr == null || fileArr.length == 0) {
            dataOutputStream.writeByte(4);
            return;
        }
        for (int i = 0; i < fileArr.length; i++) {
            File file = fileArr[i];
            if (SocketMain.DEBUG_SOCKET_STREAM) {
                SLog.d(TAG, "writeDir[" + i + "]=isDirectory=" + file.isDirectory() + "::name:" + file.getName());
            }
            if (file.exists() && file.isDirectory()) {
                writeDir(file.getName(), file.listFiles(), dataOutputStream);
            }
        }
        dataOutputStream.writeByte(4);
    }

    public void writeStreamFromFile(DataOutputStream dataOutputStream, FileInformation fileInformation) throws IOException {
        long length = fileInformation.getLength();
        String fileName = fileInformation.getFileName();
        dataOutputStream.writeByte(2);
        dataOutputStream.writeLong(length);
        writeString(dataOutputStream, fileName);
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "writeStreamFromFile-size:" + length + ", name:" + fileName);
        }
        notifyStartFile(true);
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "writeStreamFromFile-fileName0:" + fileName + ", size:" + length + ", " + ((SocketOutputStream) dataOutputStream).getOutputSize());
        }
        boolean z = dataOutputStream instanceof SocketOutputStream;
        if (z) {
            ((SocketOutputStream) dataOutputStream).resetSendTraffic();
        }
        new FileReader().read(0L, fileInformation, dataOutputStream);
        if (z) {
            ((SocketOutputStream) dataOutputStream).stopSendCount();
        }
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            Log.d(TAG, "writeStreamFromFile-fileName1:" + fileName + ", size:" + length + ", " + ((SocketOutputStream) dataOutputStream).getOutputSize());
        }
        notifyFinishFile(length);
    }

    public FileInfo getTransferFileInfo(FileInfo fileInfo) {
        if (fileInfo == null) {
            fileInfo = new FileInfo();
        }
        if (!this.mTrafficStats) {
            return fileInfo;
        }
        synchronized (this) {
            try {
                FileInfo fileInfo2 = this.mTFIProgress;
                if (fileInfo2 != null) {
                    fileInfo.mFileCount = fileInfo2.mFileCount;
                    fileInfo.mTransferLength = fileInfo2.mTransferLength;
                }
                if (this.mTrafficStatsPosition >= 0) {
                    SocketOutputStream socketOutputStream = this.mSOS;
                    if (socketOutputStream != null) {
                        fileInfo.mTransferLength += socketOutputStream.getOutputSize() - this.mTrafficStatsPosition;
                    } else {
                        SocketInputStream socketInputStream = this.mSIS;
                        if (socketInputStream != null) {
                            fileInfo.mTransferLength += socketInputStream.getInputSize() - this.mTrafficStatsPosition;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fileInfo;
    }
}
