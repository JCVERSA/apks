package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.mvel2.ast.ASTNode;

public class FileLoader<Data> implements ModelLoader<File, Data> {
    private static final String TAG = "FileLoader";
    private final FileOpener<Data> fileOpener;

    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory() {
            super(new FileOpener<ParcelFileDescriptor>() {
                @Override
                public Class<ParcelFileDescriptor> getDataClass() {
                    return ParcelFileDescriptor.class;
                }

                @Override
                public void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public ParcelFileDescriptor open(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, ASTNode.DEOP);
                }
            });
        }
    }

    public interface FileOpener<Data> {
        void close(Data data) throws IOException;

        Class<Data> getDataClass();

        Data open(File file) throws FileNotFoundException;
    }

    public static class StreamFactory extends Factory<InputStream> {
        public StreamFactory() {
            super(new FileOpener<InputStream>() {
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
                public InputStream open(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }
            });
        }
    }

    public FileLoader(FileOpener<Data> fileOpener) {
        this.fileOpener = fileOpener;
    }

    @Override
    public boolean handles(@NonNull File file) {
        return true;
    }

    @Override
    public ModelLoader.LoadData<Data> buildLoadData(@NonNull File file, int i10, int i11, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(file), new FileFetcher(file, this.fileOpener));
    }

    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {
        private final FileOpener<Data> opener;

        public Factory(FileOpener<Data> fileOpener) {
            this.opener = fileOpener;
        }

        @Override
        @NonNull
        public final ModelLoader<File, Data> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.opener);
        }

        @Override
        public final void teardown() {
        }
    }

    private static final class FileFetcher<Data> implements DataFetcher<Data> {
        private Data data;
        private final File file;
        private final FileOpener<Data> opener;

        FileFetcher(File file, FileOpener<Data> fileOpener) {
            this.file = file;
            this.opener = fileOpener;
        }

        @Override
        public void cleanup() {
            Data data = this.data;
            if (data != null) {
                try {
                    this.opener.close(data);
                } catch (IOException unused) {
                }
            }
        }

        @Override
        @NonNull
        public Class<Data> getDataClass() {
            return this.opener.getDataClass();
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [Data, java.lang.Object] */
        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Data> dataCallback) {
            try {
                Data dataOpen = this.opener.open(this.file);
                this.data = dataOpen;
                dataCallback.onDataReady(dataOpen);
            } catch (FileNotFoundException e10) {
                Log.isLoggable(FileLoader.TAG, 3);
                dataCallback.onLoadFailed(e10);
            }
        }

        @Override
        public void cancel() {
        }
    }
}
