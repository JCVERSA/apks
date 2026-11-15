package com.transsion.socket.pkgdata;

import com.transsion.socket.SocketMain;
import com.transsion.socket.internal.SocketStream;
import com.transsion.socket.internal.SocketUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

@Deprecated
class SocketFileBlockData extends SocketBlockData {
    static final String TAG = "SocketFileData";
    public String mPath;

    @Override
    public SocketBlockData copyObject() {
        return new SocketFileBlockData().setPath(this.mPath).copyDataFrom(this);
    }

    @Override
    public void dump() {
        super.dump();
        System.out.println("dump path:" + this.mPath);
    }

    public String getTempWritePath() {
        return getWritePath() + ".tmp";
    }

    @Override
    public long getUploadPosition() {
        File file = new File(getWritePath());
        if (file.exists()) {
            long length = file.length();
            long j = this.mTotalSize;
            if (length == j) {
                return j;
            }
        }
        File file2 = new File(getTempWritePath());
        if (!file2.exists()) {
            return 0L;
        }
        if (file2.length() != this.mTotalSize) {
            return file2.length();
        }
        File file3 = new File(getWritePath());
        SocketUtils.renameFile(file2, file3);
        return file3.length();
    }

    public String getWritePath() {
        return this.mPath;
    }

    @Override
    public long loadTotalSize() {
        if (this.mPath == null) {
            return 0L;
        }
        return new File(this.mPath).length();
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_FILE_BLOCK;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mPath = dataInputStream.readUTF();
        super.onReadData(dataInputStream);
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        writeString(dataOutputStream, this.mPath);
        super.onWriteData(dataOutputStream);
    }

    @Override
    public void readBlockData(DataInputStream dataInputStream, long j) throws Throwable {
        if (j >= this.mTotalSize) {
            return;
        }
        SocketStream.readStreamToFile(dataInputStream, getWritePath(), getTempWritePath(), j, this.mTotalSize);
    }

    public SocketFileBlockData setPath(String str) {
        this.mPath = str;
        return this;
    }

    @Override
    public void writeBlockData(DataOutputStream dataOutputStream, long j) throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        if (j >= this.mTotalSize) {
            return;
        }
        try {
            randomAccessFile = new RandomAccessFile(new File(this.mPath), "r");
            try {
                randomAccessFile.seek(j);
                byte[] bArr = new byte[SocketMain.PACKAGE_MAX_BLOCK_SIZE];
                while (true) {
                    int i = randomAccessFile.read(bArr);
                    if (i < 0) {
                        SocketUtils.close(randomAccessFile);
                        return;
                    }
                    dataOutputStream.write(bArr, 0, i);
                }
            } catch (Throwable th2) {
                th = th2;
                SocketUtils.close(randomAccessFile);
                throw th;
            }
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
        }
    }
}
