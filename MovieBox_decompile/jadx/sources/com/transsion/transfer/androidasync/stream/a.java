package com.transsion.transfer.androidasync.stream;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.p;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import st.d;

public abstract class a implements d, st.a {

    private OutputStream f53477a;

    public a(OutputStream outputStream) {
        this.f53477a = outputStream;
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        while (byteBufferList.E() > 0) {
            try {
                try {
                    ByteBuffer byteBufferD = byteBufferList.D();
                    this.f53477a.write(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                    ByteBufferList.A(byteBufferD);
                } catch (Exception e10) {
                    g(e10);
                }
            } catch (Throwable th2) {
                byteBufferList.B();
                throw th2;
            }
        }
        byteBufferList.B();
    }

    @Override
    public void g(Exception exc) {
        exc.printStackTrace();
    }
}
