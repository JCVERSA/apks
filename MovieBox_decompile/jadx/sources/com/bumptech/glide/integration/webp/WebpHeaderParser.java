package com.bumptech.glide.integration.webp;

import androidx.core.view.MotionEventCompat;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.bumptech.glide.util.Preconditions;
import com.tn.lib.view.FlowLayout;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import okhttp3.internal.http2.Settings;

public class WebpHeaderParser {
    public static final int MAX_WEBP_HEADER_SIZE = 21;
    private static final int RIFF_HEADER = 1380533830;
    private static final String VP8X_WEBP_BASE64 = "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==";
    private static final int WEBP_EXTENDED_ALPHA_FLAG = 16;
    private static final int WEBP_EXTENDED_ANIM_FLAG = 2;
    private static final int WEBP_HEADER = 1464156752;
    private static final int WEBP_LOSSLESS_ALPHA_FLAG = 8;
    private static final int WEBP_VP8L_HEADER = 1448097868;
    private static final int WEBP_VP8X_HEADER = 1448097880;
    private static final int WEBP_VP8_HEADER = 1448097824;
    public static final boolean sIsExtendedWebpSupported = isExtendedWebpSupported();

    private static final class ByteArrayReader implements Reader {
        private final byte[] data;
        private final int offset;
        private int pos;
        private final int size;

        ByteArrayReader(byte[] bArr, int i10, int i11) {
            this.data = bArr;
            this.offset = i10;
            this.size = i11;
            this.pos = i10;
        }

        @Override
        public int getByte() throws IOException {
            int i10 = this.pos;
            if (i10 >= this.offset + this.size) {
                return -1;
            }
            byte[] bArr = this.data;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        @Override
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (getByte() & 255);
        }

        @Override
        public short getUInt8() throws IOException {
            return (short) (getByte() & 255);
        }

        @Override
        public int read(byte[] bArr, int i10) throws IOException {
            int iMin = Math.min((this.offset + this.size) - this.pos, i10);
            if (iMin == 0) {
                return -1;
            }
            System.arraycopy(this.data, this.pos, bArr, 0, iMin);
            return iMin;
        }

        @Override
        public long skip(long j10) throws IOException {
            int iMin = (int) Math.min((this.offset + this.size) - this.pos, j10);
            this.pos += iMin;
            return iMin;
        }
    }

    private static final class ByteBufferReader implements Reader {
        private final ByteBuffer byteBuffer;

        ByteBufferReader(ByteBuffer byteBuffer) {
            this.byteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override
        public int getByte() throws IOException {
            if (this.byteBuffer.remaining() < 1) {
                return -1;
            }
            return this.byteBuffer.get();
        }

        @Override
        public int getUInt16() throws IOException {
            return ((getByte() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (getByte() & 255);
        }

        @Override
        public short getUInt8() throws IOException {
            return (short) (getByte() & 255);
        }

        @Override
        public int read(byte[] bArr, int i10) throws IOException {
            int iMin = Math.min(i10, this.byteBuffer.remaining());
            if (iMin == 0) {
                return -1;
            }
            this.byteBuffer.get(bArr, 0, iMin);
            return iMin;
        }

        @Override
        public long skip(long j10) throws IOException {
            int iMin = (int) Math.min(this.byteBuffer.remaining(), j10);
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.position(byteBuffer.position() + iMin);
            return iMin;
        }
    }

    private interface Reader {
        int getByte() throws IOException;

        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i10) throws IOException;

        long skip(long j10) throws IOException;
    }

    private static final class StreamReader implements Reader {

        private final InputStream f19525is;

        StreamReader(InputStream inputStream) {
            this.f19525is = inputStream;
        }

        @Override
        public int getByte() throws IOException {
            return this.f19525is.read();
        }

        @Override
        public int getUInt16() throws IOException {
            return ((this.f19525is.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f19525is.read() & 255);
        }

        @Override
        public short getUInt8() throws IOException {
            return (short) (this.f19525is.read() & 255);
        }

        @Override
        public int read(byte[] bArr, int i10) throws IOException {
            int i11 = i10;
            while (i11 > 0) {
                int i12 = this.f19525is.read(bArr, i10 - i11, i11);
                if (i12 == -1) {
                    break;
                }
                i11 -= i12;
            }
            return i10 - i11;
        }

        @Override
        public long skip(long j10) throws IOException {
            if (j10 < 0) {
                return 0L;
            }
            long j11 = j10;
            while (j11 > 0) {
                long jSkip = this.f19525is.skip(j11);
                if (jSkip <= 0) {
                    if (this.f19525is.read() == -1) {
                        break;
                    }
                    jSkip = 1;
                }
                j11 -= jSkip;
            }
            return j10 - j11;
        }
    }

    public enum WebpImageType {
        WEBP_SIMPLE(false, false),
        WEBP_LOSSLESS(false, false),
        WEBP_LOSSLESS_WITH_ALPHA(true, false),
        WEBP_EXTENDED(false, false),
        WEBP_EXTENDED_WITH_ALPHA(true, false),
        WEBP_EXTENDED_ANIMATED(false, true),
        NONE_WEBP(false, false);

        private final boolean hasAlpha;
        private final boolean hasAnimation;

        WebpImageType(boolean z10, boolean z11) {
            this.hasAlpha = z10;
            this.hasAnimation = z11;
        }

        public boolean hasAlpha() {
            return this.hasAlpha;
        }

        public boolean hasAnimation() {
            return this.hasAnimation;
        }
    }

    public static WebpImageType getType(InputStream inputStream, ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return WebpImageType.NONE_WEBP;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(21);
        try {
            return getType(new StreamReader((InputStream) Preconditions.checkNotNull(inputStream)));
        } finally {
            inputStream.reset();
        }
    }

    public static boolean isAnimatedWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_EXTENDED_ANIMATED;
    }

    public static boolean isExtendedWebpSupported() {
        return true;
    }

    public static boolean isNonSimpleWebpType(WebpImageType webpImageType) {
        return (webpImageType == WebpImageType.NONE_WEBP || webpImageType == WebpImageType.WEBP_SIMPLE) ? false : true;
    }

    public static boolean isStaticWebpType(WebpImageType webpImageType) {
        return webpImageType == WebpImageType.WEBP_SIMPLE || webpImageType == WebpImageType.WEBP_LOSSLESS || webpImageType == WebpImageType.WEBP_LOSSLESS_WITH_ALPHA || webpImageType == WebpImageType.WEBP_EXTENDED || webpImageType == WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
    }

    public static WebpImageType getType(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return WebpImageType.NONE_WEBP;
        }
        return getType(new ByteBufferReader((ByteBuffer) Preconditions.checkNotNull(byteBuffer)));
    }

    public static WebpImageType getType(byte[] bArr) throws IOException {
        return getType(bArr, 0, bArr.length);
    }

    public static WebpImageType getType(byte[] bArr, int i10, int i11) throws IOException {
        return getType(new ByteArrayReader(bArr, i10, i11));
    }

    private static WebpImageType getType(Reader reader) throws IOException {
        if ((((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != RIFF_HEADER) {
            return WebpImageType.NONE_WEBP;
        }
        reader.skip(4L);
        if ((((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) != WEBP_HEADER) {
            return WebpImageType.NONE_WEBP;
        }
        int uInt16 = ((reader.getUInt16() << 16) & FlowLayout.SPACING_AUTO) | (reader.getUInt16() & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        if (uInt16 == WEBP_VP8_HEADER) {
            return WebpImageType.WEBP_SIMPLE;
        }
        if (uInt16 == WEBP_VP8L_HEADER) {
            reader.skip(4L);
            return (reader.getByte() & 8) != 0 ? WebpImageType.WEBP_LOSSLESS_WITH_ALPHA : WebpImageType.WEBP_LOSSLESS;
        }
        if (uInt16 == WEBP_VP8X_HEADER) {
            reader.skip(4L);
            int i10 = reader.getByte();
            if ((i10 & 2) != 0) {
                return WebpImageType.WEBP_EXTENDED_ANIMATED;
            }
            if ((i10 & 16) != 0) {
                return WebpImageType.WEBP_EXTENDED_WITH_ALPHA;
            }
            return WebpImageType.WEBP_EXTENDED;
        }
        return WebpImageType.NONE_WEBP;
    }
}
