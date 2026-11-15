package com.transsion.socket.pkgdata;

import androidx.annotation.NonNull;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class SocketEndData extends SocketData {
    public static final int FLAG_FINISH = 2;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_SYNC = 1;
    public byte mFlag = 0;

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_END_SOCKET;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mFlag = dataInputStream.readByte();
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.mFlag);
    }

    public SocketEndData setFlag(byte b) {
        this.mFlag = b;
        return this;
    }

    @Override
    @NonNull
    public String toString() {
        return super.toString() + " SocketEndData mFlag = " + ((int) this.mFlag);
    }
}
