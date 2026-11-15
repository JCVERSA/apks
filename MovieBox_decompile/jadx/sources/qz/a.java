package qz;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

public abstract class a {

    class C0866a implements d {

        final File f70279a;

        C0866a(File file) {
            this.f70279a = file;
        }

        @Override
        public FileChannel a() {
            return new FileInputStream(this.f70279a).getChannel();
        }
    }

    class b implements d {

        final ParcelFileDescriptor f70280a;

        b(ParcelFileDescriptor parcelFileDescriptor) {
            this.f70280a = parcelFileDescriptor;
        }

        @Override
        public FileChannel a() throws IOException {
            if (this.f70280a.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.f70280a).getChannel();
            }
            this.f70280a.close();
            throw new IllegalArgumentException("Not a file: " + this.f70280a);
        }
    }

    private static final class c extends UploadDataProvider {

        private final ByteBuffer f70281a;

        @Override
        public long getLength() {
            return this.f70281a.limit();
        }

        @Override
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            if (byteBuffer.remaining() >= this.f70281a.remaining()) {
                byteBuffer.put(this.f70281a);
            } else {
                int iLimit = this.f70281a.limit();
                ByteBuffer byteBuffer2 = this.f70281a;
                byteBuffer.put(this.f70281a);
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override
        public void rewind(UploadDataSink uploadDataSink) {
            uploadDataSink.onRewindSucceeded();
        }

        private c(ByteBuffer byteBuffer) {
            this.f70281a = byteBuffer;
        }
    }

    private interface d {
        FileChannel a();
    }

    private static final class e extends UploadDataProvider {

        private volatile FileChannel f70282a;

        private final d f70283b;

        private final Object f70284c;

        private FileChannel d() {
            if (this.f70282a == null) {
                synchronized (this.f70284c) {
                    try {
                        if (this.f70282a == null) {
                            this.f70282a = this.f70283b.a();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return this.f70282a;
        }

        @Override
        public void close() throws IOException {
            FileChannel fileChannel = this.f70282a;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override
        public long getLength() {
            return d().size();
        }

        @Override
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            FileChannel fileChannelD = d();
            int i10 = 0;
            while (i10 == 0) {
                int i11 = fileChannelD.read(byteBuffer);
                if (i11 == -1) {
                    break;
                } else {
                    i10 += i11;
                }
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            d().position(0L);
            uploadDataSink.onRewindSucceeded();
        }

        private e(d dVar) {
            this.f70284c = new Object();
            this.f70283b = dVar;
        }
    }

    public static UploadDataProvider a(ParcelFileDescriptor parcelFileDescriptor) {
        return new e(new b(parcelFileDescriptor));
    }

    public static UploadDataProvider b(File file) {
        return new e(new C0866a(file));
    }

    public static UploadDataProvider c(ByteBuffer byteBuffer) {
        return new c(byteBuffer.slice());
    }

    public static UploadDataProvider d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    public static UploadDataProvider e(byte[] bArr, int i10, int i11) {
        return new c(ByteBuffer.wrap(bArr, i10, i11).slice());
    }
}
