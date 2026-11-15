package com.transsion.vishatransfer.socket;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.transsion.socket.pkgdata.SocketStringData;

public class TransferSocketCodeData extends SocketStringData {
    public TransferSocketCodeData() {
    }

    public int getPhase() {
        if (TextUtils.isEmpty(getValue())) {
            return -1;
        }
        return ((TransferHead) new Gson().fromJson(getValue(), TransferHead.class)).getPhase();
    }

    public int getType() {
        if (TextUtils.isEmpty(getValue())) {
            return -1;
        }
        return ((TransferHead) new Gson().fromJson(getValue(), TransferHead.class)).getType();
    }

    @Override
    public byte onClazzType() {
        return TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE;
    }

    public TransferSocketCodeData(int i, int i2) {
        TransferHead transferHead = new TransferHead();
        transferHead.setPhase(i);
        transferHead.setType(i2);
        setString(new Gson().toJson(transferHead));
    }
}
