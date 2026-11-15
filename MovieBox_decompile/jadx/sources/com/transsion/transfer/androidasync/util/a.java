package com.transsion.transfer.androidasync.util;

import com.transsion.transfer.androidasync.ByteBufferList;
import java.nio.ByteBuffer;

public class a {

    int f53491b = 0;

    int f53492c = 4096;

    final int f53490a = ByteBufferList.f53093f;

    public ByteBuffer a() {
        return b(this.f53491b);
    }

    public ByteBuffer b(int i10) {
        return ByteBufferList.t(Math.min(Math.max(i10, this.f53492c), this.f53490a));
    }

    public int c() {
        return this.f53492c;
    }

    public a d(int i10) {
        this.f53492c = Math.max(0, i10);
        return this;
    }

    public void e(long j10) {
        this.f53491b = ((int) j10) * 2;
    }
}
