package com.bumptech.glide.load.resource.bytes;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

public class BytesResource implements Resource<byte[]> {
    private final byte[] bytes;

    public BytesResource(byte[] bArr) {
        this.bytes = (byte[]) Preconditions.checkNotNull(bArr);
    }

    @Override
    @NonNull
    public Class<byte[]> getResourceClass() {
        return byte[].class;
    }

    @Override
    public int getSize() {
        return this.bytes.length;
    }

    @Override
    @NonNull
    public byte[] get() {
        return this.bytes;
    }

    @Override
    public void recycle() {
    }
}
