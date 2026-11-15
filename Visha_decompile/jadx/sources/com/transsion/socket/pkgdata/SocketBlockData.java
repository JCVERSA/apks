package com.transsion.socket.pkgdata;

import android.util.Log;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

@Deprecated
public abstract class SocketBlockData extends SocketData {
    public static final byte STATUS_BLOCK_CONTENT_FINISH = 3;
    public static final byte STATUS_BLOCK_CONTENT_RESPONSE = 1;
    public static final byte STATUS_BLOCK_CONTENT_UPLOAD = 2;
    public static final byte STATUS_BLOCK_INIT_REQUEST = 0;
    public String mMD5Sign;
    public long mPosition = 0;
    public byte mStatus = 0;
    public long mTotalSize;

    public SocketBlockData copyDataFrom(SocketBlockData socketBlockData) {
        this.mTotalSize = socketBlockData.mTotalSize;
        this.mStatus = socketBlockData.mStatus;
        this.mPosition = socketBlockData.mPosition;
        return this;
    }

    public abstract SocketBlockData copyObject();

    @Override
    public void dump() {
        Log.d("dump", "TotalSize:" + this.mTotalSize + ", status:" + ((int) this.mStatus) + ", position:" + this.mPosition);
    }

    public long getUploadPosition() {
        return this.mPosition;
    }

    @Override
    public boolean isBlockData() {
        return true;
    }

    public abstract long loadTotalSize();

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mStatus = dataInputStream.readByte();
        this.mTotalSize = dataInputStream.readLong();
        this.mMD5Sign = dataInputStream.readUTF();
        byte b = this.mStatus;
        if (b == 0 || b == 3) {
            return;
        }
        long j = dataInputStream.readLong();
        this.mPosition = j;
        byte b2 = this.mStatus;
        if (b2 != 1 && b2 == 2) {
            readBlockData(dataInputStream, j);
        }
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.mStatus);
        if (this.mTotalSize <= 0 && this.mStatus == 0) {
            this.mTotalSize = loadTotalSize();
        }
        dataOutputStream.writeLong(this.mTotalSize);
        writeString(dataOutputStream, this.mMD5Sign);
        byte b = this.mStatus;
        if (b == 0 || b == 3) {
            return;
        }
        dataOutputStream.writeLong(this.mPosition);
        byte b2 = this.mStatus;
        if (b2 != 1 && b2 == 2) {
            writeBlockData(dataOutputStream, this.mPosition);
        }
    }

    public abstract void readBlockData(DataInputStream dataInputStream, long j) throws IOException;

    public SocketBlockData requestBlockData() {
        SocketBlockData socketBlockDataCopyObject = copyObject();
        if (this.mStatus != 3) {
            socketBlockDataCopyObject.mStatus = (byte) 2;
        }
        return socketBlockDataCopyObject;
    }

    public SocketBlockData responseFinish() {
        SocketBlockData socketBlockDataCopyObject = copyObject();
        socketBlockDataCopyObject.mStatus = (byte) 3;
        return socketBlockDataCopyObject;
    }

    public SocketBlockData responseInitRequest() {
        SocketBlockData socketBlockDataCopyObject = copyObject();
        long uploadPosition = getUploadPosition();
        socketBlockDataCopyObject.mPosition = uploadPosition;
        if (uploadPosition == socketBlockDataCopyObject.mTotalSize) {
            socketBlockDataCopyObject.mStatus = (byte) 3;
        } else {
            socketBlockDataCopyObject.mStatus = (byte) 1;
        }
        return socketBlockDataCopyObject;
    }

    public abstract void writeBlockData(DataOutputStream dataOutputStream, long j) throws IOException;
}
