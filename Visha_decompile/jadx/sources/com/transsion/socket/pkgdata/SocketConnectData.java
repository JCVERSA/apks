package com.transsion.socket.pkgdata;

import androidx.annotation.NonNull;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class SocketConnectData extends SocketData {
    private static final int DEFAULT_ACK = 1000;
    private static final int DEFAULT_ADD = 1;
    private static final int DEFAULT_REQ = 0;
    private static final int HEART_VERSION = 2;
    public static final byte STATUS_CONNECT_ACK = 3;
    public static final byte STATUS_CONNECT_DEFAULT = 0;
    public static final byte STATUS_CONNECT_REQ = 1;
    public static final byte STATUS_CONNECT_SYN = 2;
    private int req = 0;
    private int ack = 1000;
    public int version = 0;
    public boolean isHeartReq = false;
    public byte mStatus = 1;

    private SocketConnectData copyFrom(SocketConnectData socketConnectData) {
        SocketConnectData socketConnectData2 = new SocketConnectData();
        socketConnectData2.mStatus = socketConnectData.mStatus;
        socketConnectData2.version = socketConnectData.version;
        socketConnectData2.req = socketConnectData.req;
        socketConnectData2.ack = socketConnectData.ack;
        return socketConnectData2;
    }

    public boolean isNeedHeat() {
        return this.version >= 2;
    }

    public boolean isSignalRight() {
        byte b = this.mStatus;
        if (b != 2) {
            return b == 3 && this.ack + (-1000) == 1;
        }
        return this.req == 1;
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_CONNECT_CHECK;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        this.mStatus = dataInputStream.readByte();
        this.req = dataInputStream.readInt();
        if (this.mStatus != 1) {
            this.ack = dataInputStream.readInt();
            return;
        }
        this.version = dataInputStream.readInt();
        if (isNeedHeat()) {
            this.isHeartReq = dataInputStream.readBoolean();
        }
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.mStatus);
        dataOutputStream.writeInt(this.req);
        if (this.mStatus != 1) {
            dataOutputStream.writeInt(this.ack);
            return;
        }
        dataOutputStream.writeInt(this.version);
        if (isNeedHeat()) {
            dataOutputStream.writeBoolean(this.isHeartReq);
        }
    }

    public SocketConnectData refuse(boolean z) {
        if (z) {
            this.mStatus = (byte) 0;
        } else {
            this.mStatus = (byte) 2;
        }
        return this;
    }

    public SocketConnectData responseReqData() {
        SocketConnectData socketConnectDataCopyFrom = new SocketConnectData().copyFrom(this);
        socketConnectDataCopyFrom.mStatus = (byte) 2;
        socketConnectDataCopyFrom.req++;
        return socketConnectDataCopyFrom;
    }

    public SocketConnectData responseSYNData() {
        SocketConnectData socketConnectDataCopyFrom = new SocketConnectData().copyFrom(this);
        socketConnectDataCopyFrom.mStatus = (byte) 3;
        socketConnectDataCopyFrom.ack++;
        return socketConnectDataCopyFrom;
    }

    public SocketConnectData setHeartReq(boolean z) {
        this.isHeartReq = z;
        return this;
    }

    public SocketConnectData setVersion(int i) {
        this.version = i;
        return this;
    }

    @Override
    @NonNull
    public String toString() {
        return "SocketConnectData  mStatus " + ((int) this.mStatus) + " req " + this.req + " ack " + this.ack + " version " + this.version;
    }
}
