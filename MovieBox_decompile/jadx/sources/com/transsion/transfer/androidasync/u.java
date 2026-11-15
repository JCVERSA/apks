package com.transsion.transfer.androidasync;

public abstract class u extends n {
    public u(s sVar) {
        super(sVar);
        o(0);
    }

    @Override
    protected void j(ByteBufferList byteBufferList) {
        ByteBufferList byteBufferListR = r(byteBufferList);
        if (byteBufferListR != byteBufferList) {
            byteBufferList.B();
            byteBufferListR.f(byteBufferList);
        }
    }

    public abstract ByteBufferList r(ByteBufferList byteBufferList);
}
