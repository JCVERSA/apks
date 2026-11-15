package org.apache.commons.io.output;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class ProxyOutputStream extends FilterOutputStream {
    public ProxyOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public void afterWrite(int i) throws IOException {
    }

    public void beforeWrite(int i) throws IOException {
    }

    @Override
    public void close() throws IOException {
        try {
            ((FilterOutputStream) this).out.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override
    public void flush() throws IOException {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    public void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            ((FilterOutputStream) this).out.write(i);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override
    public void write(byte[] bArr) throws IOException {
        int length;
        if (bArr != null) {
            try {
                length = bArr.length;
            } catch (IOException e) {
                handleIOException(e);
                return;
            }
        } else {
            length = 0;
        }
        beforeWrite(length);
        ((FilterOutputStream) this).out.write(bArr);
        afterWrite(length);
    }

    @Override
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            afterWrite(i2);
        } catch (IOException e) {
            handleIOException(e);
        }
    }
}
