package com.transsion.socket.pkgdata;

import android.net.Uri;
import android.text.TextUtils;
import com.transsion.socket.SocketMain;
import com.transsion.socket.internal.SocketUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class SocketUriData extends SocketData {
    static final short BLOCK_BUFFER_SIZE = 32667;
    static final short FLAG_BUFFER_END = 32668;
    static final byte URI_DEF = 0;
    public Uri mUri;
    public byte mUriType = 0;

    public DataOutputStream getUriDataOutputStream() throws FileNotFoundException {
        OutputStream outputStreamOpenOutputStream = SocketMain.app().getContentResolver().openOutputStream(this.mUri);
        if (outputStreamOpenOutputStream == null) {
            return null;
        }
        return new DataOutputStream(outputStreamOpenOutputStream);
    }

    public InputStream getUriInputStream() throws FileNotFoundException {
        return SocketMain.app().getContentResolver().openInputStream(this.mUri);
    }

    @Override
    public byte onClazzType() {
        return SocketData.CLAZZ_TYPE_URI;
    }

    @Override
    public void onReadData(DataInputStream dataInputStream) throws IOException {
        String utf = dataInputStream.readUTF();
        if (!TextUtils.isEmpty(utf)) {
            this.mUri = Uri.parse(utf);
        }
        this.mUriType = dataInputStream.readByte();
        DataOutputStream uriDataOutputStream = getUriDataOutputStream();
        short s = dataInputStream.readShort();
        byte[] bArr = null;
        while (s != 32668 && uriDataOutputStream != null) {
            if (bArr == null) {
                bArr = new byte[32667];
            }
            int i = 0;
            while (i != s) {
                int i2 = dataInputStream.read(bArr, i, s - i);
                if (i2 == -1) {
                    break;
                } else {
                    i += i2;
                }
            }
            if (i > 0) {
                uriDataOutputStream.write(bArr, 0, i);
            }
            s = dataInputStream.readShort();
        }
        SocketUtils.close(uriDataOutputStream);
    }

    @Override
    public void onWriteData(DataOutputStream dataOutputStream) throws IOException {
        int i;
        Uri uri = this.mUri;
        if (uri == null) {
            writeString(dataOutputStream, null);
        } else {
            writeString(dataOutputStream, uri.toString());
        }
        dataOutputStream.writeByte(this.mUriType);
        InputStream uriInputStream = getUriInputStream();
        if (uriInputStream == null) {
            dataOutputStream.writeShort(32668);
            SocketUtils.close(uriInputStream);
            return;
        }
        try {
            byte[] bArr = new byte[32667];
            DataInputStream dataInputStream = new DataInputStream(uriInputStream);
            loop0: while (true) {
                i = 0;
                do {
                    int i2 = dataInputStream.read(bArr, i, 32667 - i);
                    if (i2 == -1) {
                        break loop0;
                    } else {
                        i += i2;
                    }
                } while (i != 32667);
                dataOutputStream.writeShort(32667);
                dataOutputStream.write(bArr, 0, 32667);
            }
            if (i != 0) {
                dataOutputStream.writeShort(i);
                dataOutputStream.write(bArr, 0, i);
            }
        } finally {
            dataOutputStream.writeShort(32668);
            SocketUtils.close(uriInputStream);
        }
    }

    public SocketUriData setUri(Uri uri) {
        this.mUri = uri;
        return this;
    }
}
