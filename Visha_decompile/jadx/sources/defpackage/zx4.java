package defpackage;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public class zx4 {
    public static final byte[] b = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final int[] c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
    public final b a;

    public static class a {
        public final ByteBuffer a;

        public a(byte[] bArr, int i) {
            this.a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        public short a(int i) {
            return this.a.getShort(i);
        }

        public int b(int i) {
            return this.a.getInt(i);
        }

        public int c() {
            return this.a.remaining();
        }

        public void d(ByteOrder byteOrder) {
            this.a.order(byteOrder);
        }
    }

    public interface b {
        int getUInt16();

        short getUInt8();

        int read(byte[] bArr, int i);

        long skip(long j);
    }

    public static class c implements b {
        public final InputStream a;

        public c(InputStream inputStream) {
            this.a = inputStream;
        }

        @Override
        public int getUInt16() {
            return (this.a.read() & 255) | ((this.a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
        }

        @Override
        public short getUInt8() {
            return (short) (this.a.read() & 255);
        }

        @Override
        public int read(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int i3 = this.a.read(bArr, i - i2, i2);
                if (i3 == -1) {
                    break;
                }
                i2 -= i3;
            }
            return i - i2;
        }

        @Override
        public long skip(long j) throws IOException {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                long jSkip = this.a.skip(j2);
                if (jSkip <= 0) {
                    if (this.a.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j2 -= jSkip;
            }
            return j - j2;
        }
    }

    public zx4(InputStream inputStream) {
        this.a = new c(inputStream);
    }

    public static int a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    public static void b(ExifInterface exifInterface, int i, int i2, String str) throws Throwable {
        String[] strArr = {ExifInterface.TAG_F_NUMBER, "DateTime", ExifInterface.TAG_DATETIME_DIGITIZED, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_FLASH, ExifInterface.TAG_FOCAL_LENGTH, ExifInterface.TAG_GPS_ALTITUDE, ExifInterface.TAG_GPS_ALTITUDE_REF, ExifInterface.TAG_GPS_DATESTAMP, ExifInterface.TAG_GPS_LATITUDE, ExifInterface.TAG_GPS_LATITUDE_REF, ExifInterface.TAG_GPS_LONGITUDE, ExifInterface.TAG_GPS_LONGITUDE_REF, ExifInterface.TAG_GPS_PROCESSING_METHOD, ExifInterface.TAG_GPS_TIMESTAMP, ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, ExifInterface.TAG_MAKE, ExifInterface.TAG_MODEL, ExifInterface.TAG_SUBSEC_TIME, ExifInterface.TAG_SUBSEC_TIME_DIGITIZED, ExifInterface.TAG_SUBSEC_TIME_ORIGINAL, ExifInterface.TAG_WHITE_BALANCE};
        try {
            ExifInterface exifInterface2 = new ExifInterface(str);
            for (int i3 = 0; i3 < 22; i3++) {
                String str2 = strArr[i3];
                String attribute = exifInterface.getAttribute(str2);
                if (!TextUtils.isEmpty(attribute)) {
                    exifInterface2.setAttribute(str2, attribute);
                }
            }
            exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(i));
            exifInterface2.setAttribute(ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(i2));
            exifInterface2.setAttribute(ExifInterface.TAG_ORIENTATION, "0");
            exifInterface2.saveAttributes();
        } catch (IOException e) {
            Log.d("ImageHeaderParser", e.getMessage());
        }
    }

    public static boolean d(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }

    public static int g(a aVar) {
        ByteOrder byteOrder;
        short sA = aVar.a(6);
        if (sA == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (sA == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = " + ((int) sA));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.d(byteOrder);
        int iB = aVar.b(10) + 6;
        short sA2 = aVar.a(iB);
        for (int i = 0; i < sA2; i++) {
            int iA = a(iB, i);
            short sA3 = aVar.a(iA);
            if (sA3 == 274) {
                short sA4 = aVar.a(iA + 2);
                if (sA4 >= 1 && sA4 <= 12) {
                    int iB2 = aVar.b(iA + 4);
                    if (iB2 >= 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got tagIndex=" + i + " tagType=" + ((int) sA3) + " formatCode=" + ((int) sA4) + " componentCount=" + iB2);
                        }
                        int i2 = iB2 + c[sA4];
                        if (i2 <= 4) {
                            int i3 = iA + 8;
                            if (i3 >= 0 && i3 <= aVar.c()) {
                                if (i2 >= 0 && i2 + i3 <= aVar.c()) {
                                    return aVar.a(i3);
                                }
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sA3));
                                }
                            } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                                Log.d("ImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + ((int) sA3));
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sA4));
                        }
                    } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                        Log.d("ImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Got invalid format code = " + ((int) sA4));
                }
            }
        }
        return -1;
    }

    public int c() {
        int uInt16 = this.a.getUInt16();
        if (d(uInt16)) {
            int iF = f();
            if (iF != -1) {
                return h(new byte[iF], iF);
            }
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            Log.d("ImageHeaderParser", "Parser doesn't handle magic number: " + uInt16);
        }
        return -1;
    }

    public final boolean e(byte[] bArr, int i) {
        boolean z = bArr != null && i > b.length;
        if (z) {
            int i2 = 0;
            while (true) {
                byte[] bArr2 = b;
                if (i2 >= bArr2.length) {
                    break;
                }
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
                i2++;
            }
        }
        return z;
    }

    public final int f() {
        short uInt8;
        int uInt16;
        long j;
        long jSkip;
        do {
            short uInt9 = this.a.getUInt8();
            if (uInt9 != 255) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Unknown segmentId=" + ((int) uInt9));
                }
                return -1;
            }
            uInt8 = this.a.getUInt8();
            if (uInt8 == 218) {
                return -1;
            }
            if (uInt8 == 217) {
                if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            uInt16 = this.a.getUInt16() - 2;
            if (uInt8 == 225) {
                return uInt16;
            }
            j = uInt16;
            jSkip = this.a.skip(j);
        } while (jSkip == j);
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            Log.d("ImageHeaderParser", "Unable to skip enough data, type: " + ((int) uInt8) + ", wanted to skip: " + uInt16 + ", but actually skipped: " + jSkip);
        }
        return -1;
    }

    public final int h(byte[] bArr, int i) {
        int i2 = this.a.read(bArr, i);
        if (i2 == i) {
            if (e(bArr, i)) {
                return g(new a(bArr, i));
            }
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
        if (Log.isLoggable("ImageHeaderParser", 3)) {
            Log.d("ImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + i2);
        }
        return -1;
    }
}
