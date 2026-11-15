package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Timeout;
import okio.buffer;

@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a%\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\r\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a-\u0010\u0011\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u0016\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u001bH\u0080\b\u001a\r\u0010\u001c\u001a\u00020\b*\u00020\u0002H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u0018*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a\u001d\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010!\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010\"\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010#\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010$\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010%\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010&\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010)\u001a\u00020**\u00020\u0002H\u0080\b\u001a\u0015\u0010)\u001a\u00020**\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010+\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\u000f\u0010,\u001a\u0004\u0018\u00010**\u00020\u0002H\u0080\b\u001a\u0015\u0010-\u001a\u00020**\u00020\u00022\u0006\u0010.\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00100\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00101\u001a\u00020\u0014*\u00020\u00022\u0006\u00102\u001a\u000203H\u0080\b\u001a\u0015\u00104\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u00105\u001a\u000206*\u00020\u0002H\u0080\b\u001a\r\u00107\u001a\u00020**\u00020\u0002H\u0080\b¨\u00068"}, d2 = {"commonClose", "", "Lokio/RealBufferedSource;", "commonExhausted", "", "commonIndexOf", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonPeek", "Lokio/BufferedSource;", "commonRangeEquals", "offset", "bytesOffset", "", "byteCount", "commonRead", "sink", "", "Lokio/Buffer;", "commonReadAll", "Lokio/Sink;", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadIntLe", "commonReadLong", "commonReadLongLe", "commonReadShort", "", "commonReadShortLe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonRequest", "commonRequire", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonTimeout", "Lokio/Timeout;", "commonToString", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class RealBufferedSource {
    public static final void commonClose(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            return;
        }
        bufferVar.closed = true;
        bufferVar.source.close();
        bufferVar.bufferField.clear();
    }

    public static final boolean commonExhausted(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        return bufferVar.bufferField.exhausted() && bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    public static final long commonIndexOf(buffer bufferVar, byte b10, long j10, long j11) {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        while (j10 < j11) {
            long jIndexOf = bufferVar.bufferField.indexOf(b10, j10, j11);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = bufferVar.bufferField.size();
            if (size >= j11 || bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j10 = Math.max(j10, size);
        }
        return -1L;
    }

    public static final long commonIndexOfElement(buffer bufferVar, ByteString targetBytes, long j10) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(targetBytes, "targetBytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOfElement = bufferVar.bufferField.indexOfElement(targetBytes, j10);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = bufferVar.bufferField.size();
            if (bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, size);
        }
    }

    public static final BufferedSource commonPeek(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        return Okio.buffer(new PeekSource(bufferVar));
    }

    public static final boolean commonRangeEquals(buffer bufferVar, long j10, ByteString bytes, int i10, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || i10 < 0 || i11 < 0 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            long j11 = ((long) i12) + j10;
            if (!bufferVar.request(1 + j11) || bufferVar.bufferField.getByte(j11) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public static final long commonRead(buffer bufferVar, Buffer sink, long j10) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return bufferVar.bufferField.read(sink, Math.min(j10, bufferVar.bufferField.size()));
    }

    public static final long commonReadAll(buffer bufferVar, Sink sink) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(sink, "sink");
        long j10 = 0;
        while (bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jCompleteSegmentByteCount = bufferVar.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j10 += jCompleteSegmentByteCount;
                sink.write(bufferVar.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (bufferVar.bufferField.size() <= 0) {
            return j10;
        }
        long size = j10 + bufferVar.bufferField.size();
        Buffer buffer = bufferVar.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    public static final byte commonReadByte(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(1L);
        return bufferVar.bufferField.readByte();
    }

    public static final byte[] commonReadByteArray(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(j10);
        return bufferVar.bufferField.readByteArray(j10);
    }

    public static final ByteString commonReadByteString(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(j10);
        return bufferVar.bufferField.readByteString(j10);
    }

    public static final long commonReadDecimalLong(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(1L);
        long j10 = 0;
        while (true) {
            long j11 = j10 + 1;
            if (!bufferVar.request(j11)) {
                break;
            }
            byte b10 = bufferVar.bufferField.getByte(j10);
            if ((b10 < 48 || b10 > 57) && !(j10 == 0 && b10 == 45)) {
                if (j10 != 0) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Expected a digit or '-' but was 0x");
                String string = Integer.toString(b10, CharsKt.a(CharsKt.a(16)));
                Intrinsics.g(string, "toString(this, checkRadix(radix))");
                sb2.append(string);
                throw new NumberFormatException(sb2.toString());
            }
            j10 = j11;
        }
        return bufferVar.bufferField.readDecimalLong();
    }

    public static final void commonReadFully(buffer bufferVar, byte[] sink) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(sink, "sink");
        try {
            bufferVar.require(sink.length);
            bufferVar.bufferField.readFully(sink);
        } catch (EOFException e10) {
            int i10 = 0;
            while (bufferVar.bufferField.size() > 0) {
                Buffer buffer = bufferVar.bufferField;
                int i11 = buffer.read(sink, i10, (int) buffer.size());
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
            throw e10;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!bufferVar.request(i11)) {
                break;
            }
            byte b10 = bufferVar.bufferField.getByte(i10);
            if ((b10 < 48 || b10 > 57) && ((b10 < 97 || b10 > 102) && (b10 < 65 || b10 > 70))) {
                if (i10 != 0) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Expected leading [0-9a-fA-F] character but was 0x");
                String string = Integer.toString(b10, CharsKt.a(CharsKt.a(16)));
                Intrinsics.g(string, "toString(this, checkRadix(radix))");
                sb2.append(string);
                throw new NumberFormatException(sb2.toString());
            }
            i10 = i11;
        }
        return bufferVar.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(4L);
        return bufferVar.bufferField.readInt();
    }

    public static final int commonReadIntLe(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(4L);
        return bufferVar.bufferField.readIntLe();
    }

    public static final long commonReadLong(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(8L);
        return bufferVar.bufferField.readLong();
    }

    public static final long commonReadLongLe(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(8L);
        return bufferVar.bufferField.readLongLe();
    }

    public static final short commonReadShort(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(2L);
        return bufferVar.bufferField.readShort();
    }

    public static final short commonReadShortLe(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(2L);
        return bufferVar.bufferField.readShortLe();
    }

    public static final String commonReadUtf8(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(j10);
        return bufferVar.bufferField.readUtf8(j10);
    }

    public static final int commonReadUtf8CodePoint(buffer bufferVar) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.require(1L);
        byte b10 = bufferVar.bufferField.getByte(0L);
        if ((b10 & 224) == 192) {
            bufferVar.require(2L);
        } else if ((b10 & 240) == 224) {
            bufferVar.require(3L);
        } else if ((b10 & 248) == 240) {
            bufferVar.require(4L);
        }
        return bufferVar.bufferField.readUtf8CodePoint();
    }

    public static final String commonReadUtf8Line(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        long jIndexOf = bufferVar.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(bufferVar.bufferField, jIndexOf);
        }
        if (bufferVar.bufferField.size() != 0) {
            return bufferVar.readUtf8(bufferVar.bufferField.size());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j10).toString());
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jIndexOf = bufferVar.indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return Buffer.readUtf8Line(bufferVar.bufferField, jIndexOf);
        }
        if (j11 < Long.MAX_VALUE && bufferVar.request(j11) && bufferVar.bufferField.getByte(j11 - 1) == 13 && bufferVar.request(1 + j11) && bufferVar.bufferField.getByte(j11) == 10) {
            return Buffer.readUtf8Line(bufferVar.bufferField, j11);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = bufferVar.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(bufferVar.bufferField.size(), j10) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public static final boolean commonRequest(buffer bufferVar, long j10) {
        Intrinsics.h(bufferVar, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (bufferVar.bufferField.size() < j10) {
            if (bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    public static final void commonRequire(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        if (!bufferVar.request(j10)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(buffer bufferVar, Options options) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(options, "options");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        do {
            int iSelectPrefix = Buffer.selectPrefix(bufferVar.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                bufferVar.bufferField.skip(options.getByteStrings()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    public static final void commonSkip(buffer bufferVar, long j10) throws EOFException {
        Intrinsics.h(bufferVar, "<this>");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, bufferVar.bufferField.size());
            bufferVar.bufferField.skip(jMin);
            j10 -= jMin;
        }
    }

    public static final Timeout commonTimeout(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        return bufferVar.source.getTimeout();
    }

    public static final String commonToString(buffer bufferVar) {
        Intrinsics.h(bufferVar, "<this>");
        return "buffer(" + bufferVar.source + ')';
    }

    public static final byte[] commonReadByteArray(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readByteArray();
    }

    public static final ByteString commonReadByteString(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readByteString();
    }

    public static final String commonReadUtf8(buffer bufferVar) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        bufferVar.bufferField.writeAll(bufferVar.source);
        return bufferVar.bufferField.readUtf8();
    }

    public static final void commonReadFully(buffer bufferVar, Buffer sink, long j10) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(sink, "sink");
        try {
            bufferVar.require(j10);
            bufferVar.bufferField.readFully(sink, j10);
        } catch (EOFException e10) {
            sink.writeAll(bufferVar.bufferField);
            throw e10;
        }
    }

    public static final long commonIndexOf(buffer bufferVar, ByteString bytes, long j10) throws IOException {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (bufferVar.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long jIndexOf = bufferVar.bufferField.indexOf(bytes, j10);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = bufferVar.bufferField.size();
            if (bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j10 = Math.max(j10, (size - ((long) bytes.size())) + 1);
        }
    }

    public static final int commonRead(buffer bufferVar, byte[] sink, int i10, int i11) {
        Intrinsics.h(bufferVar, "<this>");
        Intrinsics.h(sink, "sink");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(sink.length, i10, j10);
        if (bufferVar.bufferField.size() == 0 && bufferVar.source.read(bufferVar.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return bufferVar.bufferField.read(sink, i10, (int) Math.min(j10, bufferVar.bufferField.size()));
    }
}
