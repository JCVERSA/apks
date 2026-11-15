package com.transsion.socket.pkgdata;

import androidx.annotation.NonNull;
import com.transsion.socket.SocketMain;
import com.transsion.socket.internal.SocketStream;
import com.transsion.socket.internal.SocketUtils;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public abstract class SocketData {
    public static final byte CLAZZ_TYPE_CODE = -116;
    public static final byte CLAZZ_TYPE_CONNECT_CHECK = -125;
    public static final byte CLAZZ_TYPE_END_SOCKET = -128;
    public static final byte CLAZZ_TYPE_ERROR_CODE = -115;
    public static final byte CLAZZ_TYPE_FILE = -114;
    public static final byte CLAZZ_TYPE_FILE_BLOCK = -118;
    public static final byte CLAZZ_TYPE_HEART_BEAT = -127;
    public static final byte CLAZZ_TYPE_SEND_PACKAGE = -126;
    public static final byte CLAZZ_TYPE_STRING = -117;
    public static final byte CLAZZ_TYPE_URI = -113;
    public static final byte[] EMPTY_DATA = new byte[0];
    public static final int MAX_STRING_LENGTH = 21844;

    public interface IDataTransfer {
        void onEnd();

        void onProgress(float f);

        void onStart();
    }

    public static SocketStream.SocketPackage endSocketPackage() {
        return new SocketEndData().toSocketPackage();
    }

    public static SocketData getSocketDataClass(short s) {
        SocketData socketDataCreatorSocketData;
        SocketMain.SocketDataCreator socketDataCreator = SocketMain.getSocketDataCreator();
        if (socketDataCreator != null && (socketDataCreatorSocketData = socketDataCreator.creatorSocketData(s)) != null) {
            return socketDataCreatorSocketData;
        }
        if (s == -128) {
            return new SocketEndData();
        }
        if (s == -125) {
            return new SocketConnectData();
        }
        switch (s) {
            case -118:
                return new SocketFileBlockData();
            case -117:
                return new SocketStringData();
            case -116:
                return new SocketCodeData();
            case -115:
                return new SocketCodeData.SocketErrorCodeData();
            case -114:
                return new SocketFileData();
            case -113:
                return new SocketUriData();
            default:
                return null;
        }
    }

    public static <T extends SocketData> T toSocketData(SocketStream.SocketPackage socketPackage) {
        if (socketPackage == null) {
            return null;
        }
        try {
            T t = (T) getSocketDataClass(socketPackage.mClazzType);
            if (t == null) {
                return null;
            }
            t.readData(SocketUtils.toDataInputStream(socketPackage.mData));
            return t;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void afterWriteData(DataOutputStream dataOutputStream) {
    }

    public void beforeWriteData(DataOutputStream dataOutputStream) {
    }

    public void dump() {
        System.out.println("onClazzType:" + ((int) onClazzType()));
    }

    public boolean isBlockData() {
        return false;
    }

    public boolean isPackageData() {
        return false;
    }

    public abstract byte onClazzType();

    public abstract void onReadData(DataInputStream dataInputStream) throws IOException;

    public abstract void onWriteData(DataOutputStream dataOutputStream) throws IOException;

    public final void readData(DataInputStream dataInputStream) throws IOException {
        onReadData(dataInputStream);
    }

    public String readString(DataInputStream dataInputStream) throws IOException {
        int i = dataInputStream.readInt();
        StringBuffer stringBuffer = new StringBuffer(dataInputStream.readUTF());
        while (stringBuffer.length() < i) {
            stringBuffer.append(dataInputStream.readUTF());
        }
        return stringBuffer.toString();
    }

    public byte[] toBytes() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    writeData(new DataOutputStream(byteArrayOutputStream2));
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    try {
                        byteArrayOutputStream2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return byteArray;
                } catch (IOException e2) {
                    e = e2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    e.printStackTrace();
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return EMPTY_DATA;
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e5) {
            e = e5;
        }
    }

    public SocketStream.SocketPackage toSocketPackage() {
        SocketStream.SocketPackage socketPackage = new SocketStream.SocketPackage();
        socketPackage.mData = toBytes();
        socketPackage.mClazzType = onClazzType();
        socketPackage.mSize = socketPackage.mData.length;
        return socketPackage;
    }

    @NonNull
    public String toString() {
        return "DataType = " + ((int) onClazzType());
    }

    public final void writeData(DataOutputStream dataOutputStream) throws IOException {
        beforeWriteData(dataOutputStream);
        onWriteData(dataOutputStream);
        afterWriteData(dataOutputStream);
    }

    public void writeString(DataOutputStream dataOutputStream, String str) throws IOException {
        int i = 0;
        dataOutputStream.writeInt(str != null ? str.length() : 0);
        if (str == null) {
            dataOutputStream.writeUTF("");
            return;
        }
        while (i < str.length()) {
            int length = str.length();
            int i2 = i + MAX_STRING_LENGTH;
            dataOutputStream.writeUTF(str.substring(i, Math.min(length, i2)));
            i = i2;
        }
    }
}
