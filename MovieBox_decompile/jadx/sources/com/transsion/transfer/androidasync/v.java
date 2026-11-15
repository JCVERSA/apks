package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class v implements st.d {

    Charset f53497a;

    ByteBufferList f53498b;

    a f53499c;

    public interface a {
        void a(String str);
    }

    public v() {
        this(null);
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferList.C());
        while (byteBufferList.C() > 0) {
            byte bE = byteBufferList.e();
            if (bE == 10) {
                byteBufferAllocate.flip();
                this.f53498b.a(byteBufferAllocate);
                this.f53499c.a(this.f53498b.z(this.f53497a));
                this.f53498b = new ByteBufferList();
                return;
            }
            byteBufferAllocate.put(bE);
        }
        byteBufferAllocate.flip();
        this.f53498b.a(byteBufferAllocate);
    }

    public void a(a aVar) {
        this.f53499c = aVar;
    }

    public v(Charset charset) {
        this.f53498b = new ByteBufferList();
        this.f53497a = charset;
    }
}
