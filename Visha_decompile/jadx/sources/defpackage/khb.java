package defpackage;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

public abstract class khb {

    public class a implements d {
        public final File a;

        public a(File file) {
            this.a = file;
        }

        @Override
        public FileChannel b() {
            return new FileInputStream(this.a).getChannel();
        }
    }

    public class b implements d {
        public final ParcelFileDescriptor a;

        public b(ParcelFileDescriptor parcelFileDescriptor) {
            this.a = parcelFileDescriptor;
        }

        @Override
        public FileChannel b() throws IOException {
            if (this.a.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.a).getChannel();
            }
            this.a.close();
            throw new IllegalArgumentException("Not a file: " + this.a);
        }
    }

    public static final class c extends UploadDataProvider {
        public final ByteBuffer b;

        @Override
        public long getLength() {
            return this.b.limit();
        }

        @Override
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            if (byteBuffer.remaining() >= this.b.remaining()) {
                byteBuffer.put(this.b);
            } else {
                int iLimit = this.b.limit();
                ByteBuffer byteBuffer2 = this.b;
                byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
                byteBuffer.put(this.b);
                this.b.limit(iLimit);
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override
        public void rewind(UploadDataSink uploadDataSink) {
            this.b.position(0);
            uploadDataSink.onRewindSucceeded();
        }

        public c(ByteBuffer byteBuffer) {
            this.b = byteBuffer;
        }
    }

    public interface d {
        FileChannel b();
    }

    public static final class e extends UploadDataProvider {
        public volatile FileChannel b;
        public final d c;
        public final Object d;

        public final FileChannel b() {
            if (this.b == null) {
                synchronized (this.d) {
                    try {
                        if (this.b == null) {
                            this.b = this.c.b();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.b;
        }

        @Override
        public void close() throws IOException {
            FileChannel fileChannel = this.b;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override
        public long getLength() {
            return b().size();
        }

        @Override
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            FileChannel fileChannelB = b();
            int i = 0;
            while (i == 0) {
                int i2 = fileChannelB.read(byteBuffer);
                if (i2 == -1) {
                    break;
                } else {
                    i += i2;
                }
            }
            uploadDataSink.onReadSucceeded(false);
        }

        @Override
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            b().position(0L);
            uploadDataSink.onRewindSucceeded();
        }

        public e(d dVar) {
            this.d = new Object();
            this.c = dVar;
        }
    }

    public static UploadDataProvider a(ParcelFileDescriptor parcelFileDescriptor) {
        return new e(new b(parcelFileDescriptor));
    }

    public static UploadDataProvider b(File file) {
        return new e(new a(file));
    }

    public static UploadDataProvider c(ByteBuffer byteBuffer) {
        return new c(byteBuffer.slice());
    }

    public static UploadDataProvider d(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    public static UploadDataProvider e(byte[] bArr, int i, int i2) {
        return new c(ByteBuffer.wrap(bArr, i, i2).slice());
    }
}
