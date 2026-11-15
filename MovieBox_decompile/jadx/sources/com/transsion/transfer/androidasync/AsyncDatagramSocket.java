package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

public class AsyncDatagramSocket extends AsyncNetworkSocket {
    public void H(final String str, final int i10, final ByteBuffer byteBuffer) {
        if (a().o() != Thread.currentThread()) {
            a().H(new Runnable() {
                @Override
                public void run() {
                    AsyncDatagramSocket.this.H(str, i10, byteBuffer);
                }
            });
        } else {
            try {
                android.support.v4.media.session.c.a(l());
                throw null;
            } catch (IOException unused) {
            }
        }
    }

    public void J(final InetSocketAddress inetSocketAddress, final ByteBuffer byteBuffer) {
        if (a().o() != Thread.currentThread()) {
            a().H(new Runnable() {
                @Override
                public void run() {
                    AsyncDatagramSocket.this.J(inetSocketAddress, byteBuffer);
                }
            });
        } else {
            try {
                android.support.v4.media.session.c.a(l());
                throw null;
            } catch (IOException unused) {
            }
        }
    }
}
