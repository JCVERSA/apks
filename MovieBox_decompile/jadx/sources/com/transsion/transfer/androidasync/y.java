package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

class y extends o {

    ServerSocketChannel f53529b;

    y(ServerSocketChannel serverSocketChannel) {
        super(serverSocketChannel);
        this.f53529b = serverSocketChannel;
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public SelectionKey j(Selector selector) {
        return this.f53529b.register(selector, 16);
    }

    @Override
    public void l() {
    }

    @Override
    public int m(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    @Override
    public int read(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override
    public long read(ByteBuffer[] byteBufferArr, int i10, int i11) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }
}
