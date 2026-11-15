package org.bouncycastle.est;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ESTException extends IOException {
    private static final long MAX_ERROR_BODY = 8192;
    private InputStream body;
    private Throwable cause;
    private int statusCode;

    public class a extends InputStream {
        public a() {
        }

        @Override
        public int read() {
            return -1;
        }
    }

    public ESTException(String str) {
        this(str, null);
    }

    public InputStream getBody() {
        InputStream inputStream = this.body;
        return inputStream == null ? new a() : inputStream;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    @Override
    public String getMessage() {
        return super.getMessage() + " HTTP Status Code: " + this.statusCode;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public ESTException(String str, Throwable th) {
        super(str);
        this.cause = th;
        this.body = null;
        this.statusCode = 0;
    }

    public ESTException(String str, Throwable th, int i, InputStream inputStream) {
        super(str);
        this.cause = th;
        this.statusCode = i;
        if (inputStream == null) {
            this.body = null;
            return;
        }
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int i2 = inputStream.read(bArr);
                if (i2 < 0) {
                    break;
                }
                if (byteArrayOutputStream.size() + i2 > 8192) {
                    byteArrayOutputStream.write(bArr, 0, 8192 - byteArrayOutputStream.size());
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } catch (Exception unused) {
                return;
            }
        }
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        this.body = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
        inputStream.close();
    }
}
