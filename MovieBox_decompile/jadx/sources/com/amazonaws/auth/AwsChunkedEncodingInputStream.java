package com.amazonaws.auth;

import android.support.v4.media.session.PlaybackStateCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.internal.SdkInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

public final class AwsChunkedEncodingInputStream extends SdkInputStream {

    private static final byte[] f17719m = new byte[0];

    private static final Log f17720n = LogFactory.b(AwsChunkedEncodingInputStream.class);

    private InputStream f17721a;

    private final int f17722b;

    private final byte[] f17723c;

    private final String f17724d;

    private final String f17725e;

    private final String f17726f;

    private String f17727g;

    private final AWS4Signer f17728h;

    private ChunkContentIterator f17729i;

    private DecodedStreamBuffer f17730j;

    private boolean f17731k;

    private boolean f17732l;

    public AwsChunkedEncodingInputStream(InputStream inputStream, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this(inputStream, 262144, bArr, str, str2, str3, aWS4Signer);
    }

    private static long m(long j10) {
        return ((long) (Long.toHexString(j10).length() + 83)) + j10 + ((long) 2);
    }

    public static long n(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException("Nonnegative content length expected.");
        }
        long j11 = j10 / PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        long j12 = j10 % PlaybackStateCompat.ACTION_PREPARE_FROM_URI;
        return (j11 * m(PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) + (j12 > 0 ? m(j12) : 0L) + m(0L);
    }

    private byte[] o(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Integer.toHexString(bArr.length));
        String strD = BinaryUtils.d(this.f17728h.r("AWS4-HMAC-SHA256-PAYLOAD\n" + this.f17724d + "\n" + this.f17725e + "\n" + this.f17727g + "\n" + BinaryUtils.d(this.f17728h.o("")) + "\n" + BinaryUtils.d(this.f17728h.p(bArr)), this.f17723c, SigningAlgorithm.HmacSHA256));
        this.f17727g = strD;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(";chunk-signature=");
        sb3.append(strD);
        sb2.append(sb3.toString());
        sb2.append("\r\n");
        try {
            String string = sb2.toString();
            Charset charset = StringUtils.f18387a;
            byte[] bytes = string.getBytes(charset);
            byte[] bytes2 = "\r\n".getBytes(charset);
            byte[] bArr2 = new byte[bytes.length + bArr.length + bytes2.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
            return bArr2;
        } catch (Exception e10) {
            throw new AmazonClientException("Unable to sign the chunked data. " + e10.getMessage(), e10);
        }
    }

    private boolean p() throws IOException {
        byte[] bArr = new byte[131072];
        int i10 = 0;
        while (i10 < 131072) {
            DecodedStreamBuffer decodedStreamBuffer = this.f17730j;
            if (decodedStreamBuffer == null || !decodedStreamBuffer.b()) {
                int i11 = this.f17721a.read(bArr, i10, 131072 - i10);
                if (i11 == -1) {
                    break;
                }
                DecodedStreamBuffer decodedStreamBuffer2 = this.f17730j;
                if (decodedStreamBuffer2 != null) {
                    decodedStreamBuffer2.a(bArr, i10, i11);
                }
                i10 += i11;
            } else {
                bArr[i10] = this.f17730j.c();
                i10++;
            }
        }
        if (i10 == 0) {
            this.f17729i = new ChunkContentIterator(o(f17719m));
            return true;
        }
        if (i10 < 131072) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, 0, bArr2, 0, i10);
            bArr = bArr2;
        }
        this.f17729i = new ChunkContentIterator(o(bArr));
        return false;
    }

    @Override
    protected InputStream l() {
        return this.f17721a;
    }

    @Override
    public synchronized void mark(int i10) {
        try {
            k();
            if (!this.f17731k) {
                throw new UnsupportedOperationException("Chunk-encoded stream only supports mark() at the start of the stream.");
            }
            if (this.f17721a.markSupported()) {
                Log log = f17720n;
                if (log.b()) {
                    log.a("AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it's mark-supported).");
                }
                this.f17721a.mark(Integer.MAX_VALUE);
            } else {
                Log log2 = f17720n;
                if (log2.b()) {
                    log2.a("AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported).");
                }
                this.f17730j = new DecodedStreamBuffer(this.f17722b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public boolean markSupported() {
        return true;
    }

    @Override
    public int read() {
        byte[] bArr = new byte[1];
        int i10 = read(bArr, 0, 1);
        if (i10 == -1) {
            return i10;
        }
        Log log = f17720n;
        if (log.b()) {
            log.a("One byte read from the stream.");
        }
        return bArr[0] & 255;
    }

    @Override
    public synchronized void reset() {
        try {
            k();
            this.f17729i = null;
            this.f17727g = this.f17726f;
            if (this.f17721a.markSupported()) {
                Log log = f17720n;
                if (log.b()) {
                    log.a("AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported).");
                }
                this.f17721a.reset();
            } else {
                Log log2 = f17720n;
                if (log2.b()) {
                    log2.a("AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream).");
                }
                DecodedStreamBuffer decodedStreamBuffer = this.f17730j;
                if (decodedStreamBuffer == null) {
                    throw new IOException("Cannot reset the stream because the mark is not set.");
                }
                decodedStreamBuffer.d();
            }
            this.f17729i = null;
            this.f17731k = true;
            this.f17732l = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public long skip(long j10) {
        int i10;
        if (j10 <= 0) {
            return 0L;
        }
        int iMin = (int) Math.min(PlaybackStateCompat.ACTION_SET_REPEAT_MODE, j10);
        byte[] bArr = new byte[iMin];
        long j11 = j10;
        while (j11 > 0 && (i10 = read(bArr, 0, iMin)) >= 0) {
            j11 -= (long) i10;
        }
        return j10 - j11;
    }

    public AwsChunkedEncodingInputStream(InputStream inputStream, int i10, byte[] bArr, String str, String str2, String str3, AWS4Signer aWS4Signer) {
        this.f17721a = null;
        this.f17731k = true;
        this.f17732l = false;
        if (inputStream instanceof AwsChunkedEncodingInputStream) {
            AwsChunkedEncodingInputStream awsChunkedEncodingInputStream = (AwsChunkedEncodingInputStream) inputStream;
            i10 = Math.max(awsChunkedEncodingInputStream.f17722b, i10);
            this.f17721a = awsChunkedEncodingInputStream.f17721a;
            this.f17730j = awsChunkedEncodingInputStream.f17730j;
        } else {
            this.f17721a = inputStream;
            this.f17730j = null;
        }
        if (i10 < 131072) {
            throw new IllegalArgumentException("Max buffer size should not be less than chunk size");
        }
        this.f17722b = i10;
        this.f17723c = bArr;
        this.f17724d = str;
        this.f17725e = str2;
        this.f17726f = str3;
        this.f17727g = str3;
        this.f17728h = aWS4Signer;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        k();
        bArr.getClass();
        if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
            throw new IndexOutOfBoundsException();
        }
        if (i11 == 0) {
            return 0;
        }
        ChunkContentIterator chunkContentIterator = this.f17729i;
        if (chunkContentIterator == null || !chunkContentIterator.a()) {
            if (this.f17732l) {
                return -1;
            }
            this.f17732l = p();
        }
        int iB = this.f17729i.b(bArr, i10, i11);
        if (iB > 0) {
            this.f17731k = false;
            Log log = f17720n;
            if (log.b()) {
                log.a(iB + " byte read from the stream.");
            }
        }
        return iB;
    }
}
