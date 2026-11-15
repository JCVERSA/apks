package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

class z extends o {

    SocketChannel f53530b;

    z(SocketChannel socketChannel) {
        super(socketChannel);
        this.f53530b = socketChannel;
    }

    @Override
    public boolean h() {
        return this.f53530b.isConnected();
    }

    @Override
    public SelectionKey j(Selector selector) {
        return k(selector, 8);
    }

    @Override
    public void l() {
        try {
            this.f53530b.socket().shutdownOutput();
        } catch (Exception unused) {
        }
    }

    @Override
    public int m(ByteBuffer[] byteBufferArr) {
        return (int) this.f53530b.write(byteBufferArr);
    }

    @Override
    public int read(ByteBuffer byteBuffer) {
        return this.f53530b.read(byteBuffer);
    }

    @Override
    public long read(ByteBuffer[] byteBufferArr) {
        return this.f53530b.read(byteBufferArr);
    }

    @Override
    public long read(ByteBuffer[] byteBufferArr, int i10, int i11) {
        return this.f53530b.read(byteBufferArr, i10, i11);
    }
}
