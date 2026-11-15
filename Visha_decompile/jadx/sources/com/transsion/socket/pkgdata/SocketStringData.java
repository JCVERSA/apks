package com.transsion.socket.pkgdata;

import androidx.annotation.NonNull;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class SocketStringData extends SocketData {
    String mValue;

    public SocketStringData() {
    }

    @Override
    public void dump() {
        System.out.println("mValue:" + this.mValue);
    }

    public String getValue() {
        return this.mValue;
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_STRING;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mValue = readString(dataInputStream);
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        writeString(dataOutputStream, this.mValue);
    }

    public SocketStringData setString(String str) {
        this.mValue = str;
        return this;
    }

    @Override
    @NonNull
    public String toString() {
        return super.toString() + " mValue = " + this.mValue;
    }

    public SocketStringData(String str) {
        this.mValue = str;
    }
}
