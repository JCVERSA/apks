package com.bumptech.glide.integration.cronet;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class ChromiumUrlLoader<T> implements ModelLoader<GlideUrl, T> {
    private final ByteBufferParser<T> parser;
    private final ChromiumRequestSerializer requestSerializer;

    public static final class StreamFactory implements ModelLoaderFactory<GlideUrl, InputStream>, ByteBufferParser<InputStream> {

        @Nullable
        private final DataLogger dataLogger;
        private CronetRequestFactory requestFactory;

        public StreamFactory(CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
            this.requestFactory = cronetRequestFactory;
            this.dataLogger = dataLogger;
        }

        @Override
        public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ChromiumUrlLoader(this, this.requestFactory, this.dataLogger);
        }

        @Override
        public Class<InputStream> getDataClass() {
            return InputStream.class;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public InputStream parse(ByteBuffer byteBuffer) {
            return ByteBufferUtil.toStream(byteBuffer);
        }

        @Override
        public void teardown() {
        }
    }

    ChromiumUrlLoader(CronetRequestFactory cronetRequestFactory, ByteBufferParser<T> byteBufferParser) {
        this(byteBufferParser, cronetRequestFactory, null);
    }

    @Override
    public boolean handles(GlideUrl glideUrl) {
        return true;
    }

    ChromiumUrlLoader(ByteBufferParser<T> byteBufferParser, CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
        this.parser = byteBufferParser;
        this.requestSerializer = new ChromiumRequestSerializer(cronetRequestFactory, dataLogger);
    }

    @Override
    public ModelLoader.LoadData<T> buildLoadData(GlideUrl glideUrl, int i10, int i11, Options options) {
        return new ModelLoader.LoadData<>(glideUrl, new ChromiumUrlFetcher(this.requestSerializer, this.parser, glideUrl));
    }

    public static final class ByteBufferFactory implements ModelLoaderFactory<GlideUrl, ByteBuffer>, ByteBufferParser<ByteBuffer> {

        @Nullable
        private final DataLogger dataLogger;
        private CronetRequestFactory requestFactory;

        public ByteBufferFactory(CronetRequestFactory cronetRequestFactory, @Nullable DataLogger dataLogger) {
            this.requestFactory = cronetRequestFactory;
            this.dataLogger = dataLogger;
        }

        @Override
        public ModelLoader<GlideUrl, ByteBuffer> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ChromiumUrlLoader(this, this.requestFactory, this.dataLogger);
        }

        @Override
        public Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override
        public ByteBuffer parse(ByteBuffer byteBuffer) {
            return byteBuffer;
        }

        @Override
        public void teardown() {
        }
    }
}
