package com.bumptech.glide.load.model;

import android.util.Base64;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {
    private static final String BASE64_TAG = ";base64";
    private static final String DATA_SCHEME_IMAGE = "data:image";
    private final DataDecoder<Data> dataDecoder;

    public interface DataDecoder<Data> {
        void close(Data data) throws IOException;

        Data decode(String str) throws IllegalArgumentException;

        Class<Data> getDataClass();
    }

    public static final class DataUriFetcher<Data> implements DataFetcher<Data> {
        private Data data;
        private final String dataUri;
        private final DataDecoder<Data> reader;

        public DataUriFetcher(String str, DataDecoder<Data> dataDecoder) {
            this.dataUri = str;
            this.reader = dataDecoder;
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
            try {
                this.reader.close(this.data);
            } catch (IOException unused) {
            }
        }

        @Override
        @NonNull
        public Class<Data> getDataClass() {
            return this.reader.getDataClass();
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [Data, java.lang.Object] */
        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data dataDecode = this.reader.decode(this.dataUri);
                this.data = dataDecode;
                dataCallback.onDataReady(dataDecode);
            } catch (IllegalArgumentException e) {
                dataCallback.onLoadFailed(e);
            }
        }
    }

    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {
        private final DataDecoder<InputStream> opener = new DataDecoder<InputStream>() {
            @Override
            public Class<InputStream> getDataClass() {
                return InputStream.class;
            }

            @Override
            public void close(InputStream inputStream) throws IOException {
                inputStream.close();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public InputStream decode(String str) {
                if (!str.startsWith(DataUrlLoader.DATA_SCHEME_IMAGE)) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int iIndexOf = str.indexOf(44);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, iIndexOf).endsWith(DataUrlLoader.BASE64_TAG)) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        };

        @Override
        @NonNull
        public ModelLoader<Model, InputStream> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DataUrlLoader(this.opener);
        }

        @Override
        public void teardown() {
        }
    }

    public DataUrlLoader(DataDecoder<Data> dataDecoder) {
        this.dataDecoder = dataDecoder;
    }

    @Override
    public ModelLoader.LoadData<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(model), new DataUriFetcher(model.toString(), this.dataDecoder));
    }

    @Override
    public boolean handles(@NonNull Model model) {
        return model.toString().startsWith(DATA_SCHEME_IMAGE);
    }
}
