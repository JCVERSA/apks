package com.bumptech.glide.integration.cronet;

import java.nio.ByteBuffer;

interface ByteBufferParser<T> {
    Class<T> getDataClass();

    T parse(ByteBuffer byteBuffer);
}
