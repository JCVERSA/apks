package q0;

import android.media.ExifInterface;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.InputStream;

public final class d extends ExifInterface {

    public static final int f1377b = 0;

    public final InputStream f1378a;

    public d(String str) {
        super(str);
        this.f1378a = null;
    }

    @Override
    public final byte[] getThumbnail() {
        InputStream inputStream = this.f1378a;
        if (inputStream == null || Build.VERSION.SDK_INT < 24) {
            return super.getThumbnail();
        }
        if (!hasThumbnail()) {
            return null;
        }
        try {
            long[] thumbnailRange = getThumbnailRange();
            if (thumbnailRange == null) {
                return null;
            }
            if (inputStream instanceof FileInputStream) {
                if (Os.lseek(((FileInputStream) inputStream).getFD(), thumbnailRange[0], OsConstants.SEEK_SET) != thumbnailRange[0]) {
                    return null;
                }
            } else if (inputStream.markSupported()) {
                inputStream.reset();
                if (inputStream.skip(thumbnailRange[0]) != thumbnailRange[0]) {
                    return null;
                }
            }
            int i2 = (int) thumbnailRange[1];
            byte[] bArr = new byte[i2];
            if (inputStream.read(bArr) != i2) {
                return null;
            }
            return bArr;
        } catch (Exception unused) {
        }
        return null;
    }

    public d(FileDescriptor fileDescriptor) {
        super(fileDescriptor);
        this.f1378a = null;
    }

    public d(InputStream inputStream) {
        super(inputStream);
        this.f1378a = inputStream;
    }
}
