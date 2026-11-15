package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;

abstract class o implements ReadableByteChannel, ScatteringByteChannel {

    private AbstractSelectableChannel f53470a;

    o(AbstractSelectableChannel abstractSelectableChannel) throws IOException {
        abstractSelectableChannel.configureBlocking(false);
        this.f53470a = abstractSelectableChannel;
    }

    @Override
    public void close() throws IOException {
        this.f53470a.close();
    }

    public boolean d() {
        return false;
    }

    public abstract boolean h();

    @Override
    public boolean isOpen() {
        return this.f53470a.isOpen();
    }

    public abstract SelectionKey j(Selector selector);

    public SelectionKey k(Selector selector, int i10) {
        return this.f53470a.register(selector, i10);
    }

    public abstract void l();

    public abstract int m(ByteBuffer[] byteBufferArr);
}
