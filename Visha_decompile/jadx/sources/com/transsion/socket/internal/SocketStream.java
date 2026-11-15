package com.transsion.socket.internal;

import android.util.Log;
import com.transsion.letswitch.service.api.LetSwitchServiceProxy;
import com.transsion.socket.SLog;
import com.transsion.socket.SocketMain;
import com.transsion.socket.pkgdata.SocketData;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.Socket;
import java.net.SocketException;

public class SocketStream {
    static final String TAG = "SocketStream";

    public interface ISocketPackage {
        void mHandleSocketPackage(SocketPackage socketPackage);

        void onHandleSocketData(short s, DataInputStream dataInputStream);
    }

    public static class SocketPackage {
        public static SocketPackage HEART_BEAT_PACKAGE = new SocketPackage().setClazzType(SocketData.CLAZZ_TYPE_HEART_BEAT).setData(new byte[0]);
        public byte mClazzType;
        public byte[] mData;
        public int mSize;
        public Socket mSocket;

        public SocketPackage setClazzType(byte b) {
            this.mClazzType = b;
            return this;
        }

        public SocketPackage setData(byte[] bArr) {
            this.mSize = bArr == null ? 0 : bArr.length;
            this.mData = bArr;
            return this;
        }

        public SocketData toSocketData() {
            return SocketData.toSocketData(this);
        }
    }

    public static void makeDirs(File file) {
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            SLog.d(TAG, "makeDirs:" + file.getAbsolutePath());
        }
        if (file.exists() || file.mkdirs()) {
            SLog.d(TAG, "makeDirs-mkOK: true");
            return;
        }
        boolean zMkdirs = LetSwitchServiceProxy.getFileOperation().mkdirs(file.getAbsolutePath());
        if (SocketMain.DEBUG_SOCKET_STREAM) {
            SLog.d(TAG, "makeDirs-mkOK:" + zMkdirs);
        }
    }

    public static void readSocket(DataInputStream dataInputStream, ISocketPackage iSocketPackage) throws SocketException {
        if (dataInputStream == null || iSocketPackage == null) {
            return;
        }
        try {
            byte[] bArr = new byte[10240];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i = 0;
            int i2 = -1;
            byte b = -1;
            while (true) {
                if (i2 == -1) {
                    b = dataInputStream.readByte();
                    SLog.i(TAG, "readSocket type:" + ((int) b) + " size:" + i2);
                    if (b != -126) {
                        iSocketPackage.onHandleSocketData(b, dataInputStream);
                    } else {
                        b = dataInputStream.readByte();
                        i2 = dataInputStream.readInt();
                    }
                }
                int iMin = Math.min(i2 - i, 10240);
                if (SocketMain.DEBUG_SOCKET_STREAM) {
                    System.out.println("Read Data size：" + i2 + " type = " + ((int) b) + " remainCount = " + iMin);
                }
                int i3 = dataInputStream.read(bArr, 0, iMin);
                if (i3 == -1) {
                    return;
                }
                byteArrayOutputStream.write(bArr, 0, i3);
                i += i3;
                if (i == i2) {
                    SocketPackage socketPackage = new SocketPackage();
                    socketPackage.mClazzType = b;
                    socketPackage.mSize = i2;
                    socketPackage.mData = byteArrayOutputStream.toByteArray();
                    iSocketPackage.mHandleSocketPackage(socketPackage);
                    byteArrayOutputStream.reset();
                    i = 0;
                    i2 = -1;
                }
            }
        } catch (SocketException e) {
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e.printStackTrace();
            }
            SLog.i(TAG, "readSocket msg:" + e.getMessage());
            throw new SocketException(e.getMessage());
        } catch (IOException e2) {
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e2.printStackTrace();
            }
            SLog.i(TAG, "io-msg:" + e2.getMessage());
            throw new SocketException(e2.getMessage());
        }
    }

    public static void readStreamToFile(DataInputStream dataInputStream, String str, String str2, long j, long j2) throws Throwable {
        readStreamToFile(dataInputStream, str, str2, j, j2, false);
    }

    public static boolean readStreamToFileSkipError(DataInputStream dataInputStream, String str, String str2, long j, long j2, boolean z) throws IOException {
        String str3;
        RandomAccessFile randomAccessFile;
        boolean z2;
        long j3;
        boolean z3;
        int i = SocketMain.PACKAGE_MAX_BLOCK_SIZE;
        byte[] bArr = new byte[i];
        if (str2 == null) {
            str3 = str + ".tmp";
        } else {
            str3 = str2;
        }
        File file = new File(str3);
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile.seek(j);
                z2 = false;
                while (true) {
                    z3 = z2;
                    try {
                        int i2 = dataInputStream.read(bArr, 0, (int) Math.min((j2 - j) - j3, i));
                        if (i2 < 0) {
                            break;
                        }
                        j3 += (long) i2;
                        if (!z3) {
                            try {
                                randomAccessFile.write(bArr, 0, i2);
                            } catch (Exception unused) {
                                z3 = true;
                            }
                        }
                        if (j + j3 >= j2) {
                            SocketUtils.close(randomAccessFile);
                            if (!z3) {
                                File file2 = new File(str);
                                if (SocketMain.DEBUG_SOCKET_STREAM) {
                                    SLog.i("SocketDirData", "=============Target File Path:" + file2.getAbsolutePath());
                                }
                                SocketUtils.renameFile(file, file2, z);
                                SocketUtils.scanFile(file2.getAbsolutePath());
                                break;
                            }
                            SLog.i("SocketDirData", "when write file occur exception and skip file: " + str);
                            break;
                        }
                        z2 = z3;
                    } catch (Throwable th) {
                        SocketUtils.close(randomAccessFile);
                        throw th;
                    }
                }
            } catch (Exception unused2) {
                randomAccessFile2 = randomAccessFile;
                randomAccessFile = randomAccessFile2;
                z2 = true;
            }
        } catch (Exception unused3) {
        }
        Log.d("NewFile", "realPath:" + str3 + " , canWrite:" + file.canWrite() + " , canRead:" + file.exists());
        j3 = 0;
        boolean z4 = z3;
        SocketUtils.close(randomAccessFile);
        return !z4;
    }

    private static void skipByte(DataInputStream dataInputStream, long j) {
        long j2 = 0;
        while (true) {
            try {
                long jSkip = dataInputStream.skip(Math.max(j - j2, 0L));
                j2 += jSkip;
                if (jSkip >= j) {
                    return;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static void writeSocketPackage(DataOutputStream dataOutputStream, SocketPackage socketPackage) throws SocketException {
        if (dataOutputStream == null || socketPackage == null) {
            return;
        }
        try {
            dataOutputStream.writeByte(-126);
            dataOutputStream.writeByte(socketPackage.mClazzType);
            dataOutputStream.writeInt(socketPackage.mSize);
            byte[] bArr = socketPackage.mData;
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
        } catch (IOException e) {
            SLog.i(TAG, "io-msg:" + e.getMessage());
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e.printStackTrace();
            }
            throw new SocketException(e.getMessage());
        }
    }

    public static void writeSocketStream(DataOutputStream dataOutputStream, SocketData socketData) throws SocketException {
        if (dataOutputStream == null || socketData == null) {
            return;
        }
        try {
            dataOutputStream.writeByte(socketData.onClazzType());
            socketData.writeData(dataOutputStream);
            if (SocketMain.DEBUG_SOCKET_STREAM) {
                SLog.d(SLog.TAG, "writeSocketStream：" + socketData);
            }
            dataOutputStream.flush();
        } catch (Exception e) {
            if (SocketMain.DEBUG_SOCKET_PRINT_TRACE) {
                e.printStackTrace();
            }
            throw new SocketException(e.getMessage());
        }
    }

    public static void writeStreamFromFile(long j, File file, DataOutputStream dataOutputStream) throws IOException {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                randomAccessFile2.seek(j);
                try {
                    byte[] bArr = new byte[SocketMain.PACKAGE_MAX_BLOCK_SIZE];
                    while (true) {
                        int i = randomAccessFile2.read(bArr);
                        if (i < 0) {
                            SocketUtils.close(randomAccessFile2);
                            return;
                        }
                        dataOutputStream.write(bArr, 0, i);
                    }
                } catch (Throwable th) {
                    SocketUtils.close(randomAccessFile2);
                    throw th;
                }
            } catch (Exception unused) {
                randomAccessFile = randomAccessFile2;
                SocketUtils.close(randomAccessFile);
            }
        } catch (Exception unused2) {
        }
    }

    public static boolean readStreamToFile(DataInputStream dataInputStream, String str, String str2, long j, long j2, boolean z) throws Throwable {
        String str3;
        int i = SocketMain.PACKAGE_MAX_BLOCK_SIZE;
        byte[] bArr = new byte[i];
        RandomAccessFile randomAccessFile = null;
        try {
            if (str2 == null) {
                str3 = str + ".tmp";
            } else {
                str3 = str2;
            }
            File file = new File(str3);
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rw");
            try {
                randomAccessFile2.seek(j);
                long j3 = 0;
                do {
                    int i2 = dataInputStream.read(bArr, 0, (int) Math.min((j2 - j) - j3, i));
                    if (i2 >= 0) {
                        randomAccessFile2.write(bArr, 0, i2);
                        j3 += (long) i2;
                    }
                    SocketUtils.close(randomAccessFile2);
                    return true;
                } while (j + j3 < j2);
                SocketUtils.close(randomAccessFile2);
                File file2 = new File(str);
                if (SocketMain.DEBUG_SOCKET_STREAM) {
                    SLog.i("SocketFileData", "=============Target File Path:" + file2.getAbsolutePath());
                }
                SocketUtils.renameFile(file, file2, z);
                SocketUtils.scanFile(file2.getAbsolutePath());
                SocketUtils.close(randomAccessFile2);
                return true;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                SocketUtils.close(randomAccessFile);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
