package com.transsion.socket.pkgdata;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class SocketCodeData extends SocketData {
    public int mCode;

    public static class SocketErrorCodeData extends SocketCodeData {
        @Override
        public byte onClazzType() {
            return SocketData.CLAZZ_TYPE_ERROR_CODE;
        }
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_CODE;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mCode = dataInputStream.readInt();
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeInt(this.mCode);
    }

    public SocketCodeData setCode(int i) {
        this.mCode = i;
        return this;
    }
}
