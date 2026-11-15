package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.EOFException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.connection.RealConnection;
import okio.ByteString;
import okio.C1062SegmentedByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0080\b\u001a\r\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0080\b\u001a\r\u0010\u0018\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0015*\u00020\u0015H\u0080\b\u001a%\u0010\u001a\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0017\u0010\u001e\u001a\u00020\f*\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0007*\u00020\u00172\u0006\u0010\"\u001a\u00020\nH\u0080\b\u001a\u0015\u0010#\u001a\u00020$*\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0080\b\u001a\r\u0010&\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a%\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010,\u001a\u00020\u0007*\u00020\u00152\u0006\u0010-\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\r\u0010.\u001a\u00020\n*\u00020\u0017H\u0080\b\u001a-\u0010/\u001a\u00020\f*\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a%\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u00100\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00102\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u000203H\u0080\b\u001a\u0014\u00104\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\r\u00106\u001a\u00020$*\u00020\u0015H\u0080\b\u001a\r\u00107\u001a\u00020\u0001*\u00020\u0015H\u0080\b\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00108\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u00108\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\u0015\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010;\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010<\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\r\u0010=\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010>\u001a\u00020?*\u00020\u0015H\u0080\b\u001a\u0014\u0010@\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\u0015\u0010A\u001a\u00020B*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010C\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\u000f\u0010D\u001a\u0004\u0018\u00010B*\u00020\u0015H\u0080\b\u001a\u0015\u0010E\u001a\u00020B*\u00020\u00152\u0006\u0010F\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010G\u001a\u00020\u0007*\u00020\u00172\u0006\u0010H\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010I\u001a\u00020\n*\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010J\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020LH\u0080\b\u001a\u0015\u0010M\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010N\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u0010N\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u0010O\u001a\u00020\u000e*\u00020\u00152\u0006\u0010P\u001a\u00020\nH\u0080\b\u001a\u0015\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u0001H\u0080\b\u001a%\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0014*\u00020\u00152\u0006\u0010R\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a)\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010S\u001a\u00020+2\b\b\u0002\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020T2\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010U\u001a\u00020\u0007*\u00020\u00152\u0006\u0010R\u001a\u00020TH\u0080\b\u001a\u0015\u0010V\u001a\u00020\u0015*\u00020\u00152\u0006\u0010(\u001a\u00020\nH\u0080\b\u001a\u0015\u0010W\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Y\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Z\u001a\u00020\u0015*\u00020\u00152\u0006\u0010[\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\\\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010]\u001a\u00020\u0015*\u00020\u00152\u0006\u0010^\u001a\u00020\nH\u0080\b\u001a%\u0010_\u001a\u00020\u0015*\u00020\u00152\u0006\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010d\u001a\u00020\nH\u0080\b\u001a\u0014\u0010e\u001a\u00020B*\u00020\u00152\u0006\u0010f\u001a\u00020\u0007H\u0000\u001a?\u0010g\u001a\u0002Hh\"\u0004\b\u0000\u0010h*\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u001a\u0010i\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002Hh0jH\u0080\bø\u0001\u0000¢\u0006\u0002\u0010k\u001a\u001e\u0010l\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020L2\b\b\u0002\u0010m\u001a\u00020\fH\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006n"}, d2 = {"HEX_DIGIT_BYTES", "", "getHEX_DIGIT_BYTES$annotations", "()V", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "", "rangeEquals", "", "segment", "Lokio/Segment;", "segmentPos", "bytes", "bytesOffset", "bytesLimit", "commonClear", "", "Lokio/Buffer;", "commonClose", "Lokio/Buffer$UnsafeCursor;", "commonCompleteSegmentByteCount", "commonCopy", "commonCopyTo", "out", "offset", "byteCount", "commonEquals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "commonExpandBuffer", "minByteCount", "commonGet", "", "pos", "commonHashCode", "commonIndexOf", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "fromIndex", "toIndex", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonNext", "commonRangeEquals", "commonRead", "sink", "commonReadAll", "Lokio/Sink;", "commonReadAndWriteUnsafe", "unsafeCursor", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "commonReadShort", "", "commonReadUnsafe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonResizeBuffer", "newSize", "commonSeek", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonSnapshot", "commonWritableSegment", "minimumCapacity", "commonWrite", EventConstants.KEY_SOURCE, "byteString", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", "i", "commonWriteLong", "commonWriteShort", "s", "commonWriteUtf8", "string", "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "readUtf8Line", "newline", "seek", "T", "lambda", "Lkotlin/Function2;", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectPrefix", "selectTruncated", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class Buffer {
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "<this>");
        if (unsafeCursor.buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        unsafeCursor.buffer = null;
        unsafeCursor.setSegment$okio(null);
        unsafeCursor.offset = -1L;
        unsafeCursor.data = null;
        unsafeCursor.start = -1;
        unsafeCursor.end = -1;
    }

    public static final long commonCompleteSegmentByteCount(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segment2 = segment.prev;
        Intrinsics.e(segment2);
        int i10 = segment2.limit;
        return (i10 >= 8192 || !segment2.owner) ? size : size - ((long) (i10 - segment2.pos));
    }

    public static final okio.Buffer commonCopy(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        okio.Buffer buffer2 = new okio.Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer2.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            Intrinsics.e(segment3);
            Intrinsics.e(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    public static final okio.Buffer commonCopyTo(okio.Buffer buffer, okio.Buffer out, long j10, long j11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(out, "out");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, j11);
        if (j11 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j11);
        Segment segment = buffer.head;
        while (true) {
            Intrinsics.e(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            segment = segment.next;
        }
        while (j11 > 0) {
            Intrinsics.e(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            int i12 = segmentSharedCopy.pos + ((int) j10);
            segmentSharedCopy.pos = i12;
            segmentSharedCopy.limit = Math.min(i12 + ((int) j11), segmentSharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                segmentSharedCopy.prev = segmentSharedCopy;
                segmentSharedCopy.next = segmentSharedCopy;
                out.head = segmentSharedCopy;
            } else {
                Intrinsics.e(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.e(segment3);
                segment3.push(segmentSharedCopy);
            }
            j11 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
            segment = segment.next;
            j10 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(okio.Buffer buffer, Object obj) {
        Intrinsics.h(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof okio.Buffer)) {
            return false;
        }
        okio.Buffer buffer2 = (okio.Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        Segment segment2 = buffer2.head;
        Intrinsics.e(segment2);
        int i10 = segment.pos;
        int i11 = segment2.pos;
        long j10 = 0;
        while (j10 < buffer.size()) {
            long jMin = Math.min(segment.limit - i10, segment2.limit - i11);
            long j11 = 0;
            while (j11 < jMin) {
                int i12 = i10 + 1;
                int i13 = i11 + 1;
                if (segment.data[i10] != segment2.data[i11]) {
                    return false;
                }
                j11++;
                i10 = i12;
                i11 = i13;
            }
            if (i10 == segment.limit) {
                segment = segment.next;
                Intrinsics.e(segment);
                i10 = segment.pos;
            }
            if (i11 == segment2.limit) {
                segment2 = segment2.next;
                Intrinsics.e(segment2);
                i11 = segment2.pos;
            }
            j10 += jMin;
        }
        return true;
    }

    public static final long commonExpandBuffer(okio.Buffer.UnsafeCursor unsafeCursor, int i10) {
        Intrinsics.h(unsafeCursor, "<this>");
        if (i10 <= 0) {
            throw new IllegalArgumentException(("minByteCount <= 0: " + i10).toString());
        }
        if (i10 > 8192) {
            throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i10).toString());
        }
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
        }
        long size = buffer.size();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        int i11 = 8192 - segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = 8192;
        long j10 = i11;
        buffer.setSize$okio(size + j10);
        unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
        unsafeCursor.offset = size;
        unsafeCursor.data = segmentWritableSegment$okio.data;
        unsafeCursor.start = 8192 - i11;
        unsafeCursor.end = 8192;
        return j10;
    }

    public static final byte commonGet(okio.Buffer buffer, long j10) {
        Intrinsics.h(buffer, "<this>");
        SegmentedByteString.checkOffsetAndCount(buffer.size(), j10, 1L);
        Segment segment = buffer.head;
        if (segment == null) {
            Intrinsics.e(null);
            throw null;
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            Intrinsics.e(segment);
            return segment.data[(int) ((((long) segment.pos) + j10) - size)];
        }
        long j11 = 0;
        while (true) {
            long j12 = ((long) (segment.limit - segment.pos)) + j11;
            if (j12 > j10) {
                Intrinsics.e(segment);
                return segment.data[(int) ((((long) segment.pos) + j10) - j11)];
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j11 = j12;
        }
    }

    public static final int commonHashCode(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = segment.limit;
            for (int i12 = segment.pos; i12 < i11; i12++) {
                i10 = (i10 * 31) + segment.data[i12];
            }
            segment = segment.next;
            Intrinsics.e(segment);
        } while (segment != buffer.head);
        return i10;
    }

    public static final long commonIndexOf(okio.Buffer buffer, byte b10, long j10, long j11) {
        Segment segment;
        int i10;
        Intrinsics.h(buffer, "<this>");
        long size = 0;
        if (0 > j10 || j10 > j11) {
            throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        if (j11 > buffer.size()) {
            j11 = buffer.size();
        }
        if (j10 == j11 || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j10 < j10) {
            size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < j11) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + j11) - size);
                i10 = (int) ((((long) segment.pos) + j10) - size);
                while (i10 < iMin) {
                    if (bArr[i10] != b10) {
                        i10++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.e(segment);
                j10 = size;
            }
            return -1L;
        }
        while (true) {
            long j12 = ((long) (segment.limit - segment.pos)) + size;
            if (j12 > j10) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j12;
        }
        while (size < j11) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + j11) - size);
            i10 = (int) ((((long) segment.pos) + j10) - size);
            while (i10 < iMin2) {
                if (bArr2[i10] != b10) {
                    i10++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            Intrinsics.e(segment);
            j10 = size;
        }
        return -1L;
        return ((long) (i10 - segment.pos)) + size;
    }

    public static final long commonIndexOfElement(okio.Buffer buffer, ByteString targetBytes, long j10) {
        int i10;
        int i11;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(targetBytes, "targetBytes");
        long size = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j10 < j10) {
            size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b10 = targetBytes.getByte(0);
                byte b11 = targetBytes.getByte(1);
                while (size < buffer.size()) {
                    byte[] bArr = segment.data;
                    i10 = (int) ((((long) segment.pos) + j10) - size);
                    int i12 = segment.limit;
                    while (true) {
                        if (i10 >= i12) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            Intrinsics.e(segment);
                            j10 = size;
                        } else {
                            byte b12 = bArr[i10];
                            if (b12 == b10 || b12 == b11) {
                                i11 = segment.pos;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
            } else {
                byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                while (size < buffer.size()) {
                    byte[] bArr2 = segment.data;
                    i10 = (int) ((((long) segment.pos) + j10) - size);
                    int i13 = segment.limit;
                    while (true) {
                        if (i10 < i13) {
                            byte b13 = bArr2[i10];
                            int length = bArrInternalArray$okio.length;
                            int i14 = 0;
                            while (true) {
                                if (i14 >= length) {
                                    i10++;
                                } else if (b13 == bArrInternalArray$okio[i14]) {
                                    i11 = segment.pos;
                                } else {
                                    i14++;
                                }
                            }
                        } else {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            Intrinsics.e(segment);
                            j10 = size;
                        }
                    }
                }
            }
            return -1L;
        }
        while (true) {
            long j11 = ((long) (segment.limit - segment.pos)) + size;
            if (j11 > j10) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j11;
        }
        if (targetBytes.size() == 2) {
            byte b14 = targetBytes.getByte(0);
            byte b15 = targetBytes.getByte(1);
            while (size < buffer.size()) {
                byte[] bArr3 = segment.data;
                i10 = (int) ((((long) segment.pos) + j10) - size);
                int i15 = segment.limit;
                while (true) {
                    if (i10 >= i15) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j10 = size;
                    } else {
                        byte b16 = bArr3[i10];
                        if (b16 == b14 || b16 == b15) {
                            i11 = segment.pos;
                        } else {
                            i10++;
                        }
                    }
                }
            }
        } else {
            byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
            while (size < buffer.size()) {
                byte[] bArr4 = segment.data;
                i10 = (int) ((((long) segment.pos) + j10) - size);
                int i16 = segment.limit;
                while (true) {
                    if (i10 < i16) {
                        byte b17 = bArr4[i10];
                        int length2 = bArrInternalArray$okio2.length;
                        int i17 = 0;
                        while (true) {
                            if (i17 >= length2) {
                                i10++;
                            } else if (b17 == bArrInternalArray$okio2[i17]) {
                                i11 = segment.pos;
                            } else {
                                i17++;
                            }
                        }
                    } else {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j10 = size;
                    }
                }
            }
        }
        return -1L;
        return ((long) (i10 - i11)) + size;
    }

    public static final int commonNext(okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "<this>");
        long j10 = unsafeCursor.offset;
        okio.Buffer buffer = unsafeCursor.buffer;
        Intrinsics.e(buffer);
        if (j10 == buffer.size()) {
            throw new IllegalStateException("no more bytes");
        }
        long j11 = unsafeCursor.offset;
        return unsafeCursor.seek(j11 == -1 ? 0L : j11 + ((long) (unsafeCursor.end - unsafeCursor.start)));
    }

    public static final boolean commonRangeEquals(okio.Buffer buffer, long j10, ByteString bytes, int i10, int i11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (j10 < 0 || i10 < 0 || i11 < 0 || buffer.size() - j10 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (buffer.getByte(((long) i12) + j10) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(okio.Buffer buffer, byte[] sink) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final long commonReadAll(okio.Buffer buffer, Sink sink) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    public static final okio.Buffer.UnsafeCursor commonReadAndWriteUnsafe(okio.Buffer buffer, okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        okio.Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final byte commonReadByte(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        int i12 = i10 + 1;
        byte b10 = segment.data[i10];
        buffer.setSize$okio(buffer.size() - 1);
        if (i12 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return b10;
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    public static final long commonReadDecimalLong(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i10 = 0;
        boolean z10 = false;
        long j10 = 0;
        long j11 = -7;
        boolean z11 = false;
        do {
            Segment segment = buffer.head;
            Intrinsics.e(segment);
            byte[] bArr = segment.data;
            int i11 = segment.pos;
            int i12 = segment.limit;
            while (i11 < i12) {
                byte b10 = bArr[i11];
                if (b10 >= 48 && b10 <= 57) {
                    int i13 = 48 - b10;
                    if (j10 < OVERFLOW_ZONE || (j10 == OVERFLOW_ZONE && i13 < j11)) {
                        okio.Buffer bufferWriteByte = new okio.Buffer().writeDecimalLong(j10).writeByte((int) b10);
                        if (!z10) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j10 = (j10 * 10) + ((long) i13);
                } else {
                    if (b10 != 45 || i10 != 0) {
                        z11 = true;
                        break;
                    }
                    j11--;
                    z10 = true;
                }
                i11++;
                i10++;
            }
            if (i11 == i12) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            if (z11) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i10));
        if (i10 >= (z10 ? 2 : 1)) {
            return z10 ? j10 : -j10;
        }
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z10 ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + SegmentedByteString.toHexString(buffer.getByte(0L)));
    }

    public static final void commonReadFully(okio.Buffer buffer, byte[] sink) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int i11 = buffer.read(sink, i10, sink.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(okio.Buffer buffer) throws EOFException {
        int i10;
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z10 = false;
        long j10 = 0;
        do {
            Segment segment = buffer.head;
            Intrinsics.e(segment);
            byte[] bArr = segment.data;
            int i12 = segment.pos;
            int i13 = segment.limit;
            while (i12 < i13) {
                byte b10 = bArr[i12];
                if (b10 >= 48 && b10 <= 57) {
                    i10 = b10 - 48;
                } else if (b10 >= 97 && b10 <= 102) {
                    i10 = b10 - 87;
                } else {
                    if (b10 < 65 || b10 > 70) {
                        if (i11 != 0) {
                            z10 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + SegmentedByteString.toHexString(b10));
                    }
                    i10 = b10 - 55;
                }
                if (((-1152921504606846976L) & j10) != 0) {
                    throw new NumberFormatException("Number too large: " + new okio.Buffer().writeHexadecimalUnsignedLong(j10).writeByte((int) b10).readUtf8());
                }
                j10 = (j10 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            if (z10) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i11));
        return j10;
    }

    public static final int commonReadInt(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 4) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        buffer.setSize$okio(buffer.size() - 4);
        if (i14 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return i15;
    }

    public static final long commonReadLong(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 8) {
            return ((((long) buffer.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) buffer.readInt()));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 7;
        long j10 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        int i13 = i10 + 8;
        long j11 = j10 | (((long) bArr[i12]) & 255);
        buffer.setSize$okio(buffer.size() - 8);
        if (i13 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return j11;
    }

    public static final short commonReadShort(okio.Buffer buffer) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() < 2) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        buffer.setSize$okio(buffer.size() - 2);
        if (i14 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return (short) i15;
    }

    public static final okio.Buffer.UnsafeCursor commonReadUnsafe(okio.Buffer buffer, okio.Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        okio.Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = false;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final String commonReadUtf8(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        if (j10 == 0) {
            return "";
        }
        Segment segment = buffer.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        if (((long) i10) + j10 > segment.limit) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j10), 0, 0, 3, null);
        }
        int i11 = (int) j10;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i10, i10 + i11);
        segment.pos += i11;
        buffer.setSize$okio(buffer.size() - j10);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(okio.Buffer buffer) throws EOFException {
        int i10;
        int i11;
        int i12;
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        byte b10 = buffer.getByte(0L);
        if ((b10 & 128) == 0) {
            i10 = b10 & 127;
            i12 = 0;
            i11 = 1;
        } else if ((b10 & 224) == 192) {
            i10 = b10 & 31;
            i11 = 2;
            i12 = 128;
        } else if ((b10 & 240) == 224) {
            i10 = b10 & 15;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((b10 & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = b10 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j10 = i11;
        if (buffer.size() < j10) {
            throw new EOFException("size < " + i11 + ": " + buffer.size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b10) + ')');
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte b11 = buffer.getByte(j11);
            if ((b11 & 192) != 128) {
                buffer.skip(j11);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = (i10 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
        }
        buffer.skip(j10);
        if (i10 > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        return ((55296 > i10 || i10 >= 57344) && i10 >= i12) ? i10 : Utf8.REPLACEMENT_CODE_POINT;
    }

    public static final String commonReadUtf8Line(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j10 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j10).toString());
        }
        long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
        long jIndexOf = buffer.indexOf((byte) 10, 0L, j11);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j11 < buffer.size() && buffer.getByte(j11 - 1) == 13 && buffer.getByte(j11) == 10) {
            return readUtf8Line(buffer, j11);
        }
        okio.Buffer buffer2 = new okio.Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j10) + " content=" + buffer2.readByteString().hex() + (char) 8230);
    }

    public static final long commonResizeBuffer(okio.Buffer.UnsafeCursor unsafeCursor, long j10) {
        Intrinsics.h(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
        }
        long size = buffer.size();
        if (j10 <= size) {
            if (j10 < 0) {
                throw new IllegalArgumentException(("newSize < 0: " + j10).toString());
            }
            long j11 = size - j10;
            while (j11 > 0) {
                Segment segment = buffer.head;
                Intrinsics.e(segment);
                Segment segment2 = segment.prev;
                Intrinsics.e(segment2);
                int i10 = segment2.limit;
                long j12 = i10 - segment2.pos;
                if (j12 > j11) {
                    segment2.limit = i10 - ((int) j11);
                    break;
                }
                buffer.head = segment2.pop();
                SegmentPool.recycle(segment2);
                j11 -= j12;
            }
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j10;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
        } else if (j10 > size) {
            long j13 = j10 - size;
            boolean z10 = true;
            while (j13 > 0) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                int iMin = (int) Math.min(j13, 8192 - segmentWritableSegment$okio.limit);
                segmentWritableSegment$okio.limit += iMin;
                j13 -= (long) iMin;
                if (z10) {
                    unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
                    unsafeCursor.offset = size;
                    unsafeCursor.data = segmentWritableSegment$okio.data;
                    int i11 = segmentWritableSegment$okio.limit;
                    unsafeCursor.start = i11 - iMin;
                    unsafeCursor.end = i11;
                    z10 = false;
                }
            }
        }
        buffer.setSize$okio(j10);
        return size;
    }

    public static final int commonSeek(okio.Buffer.UnsafeCursor unsafeCursor, long j10) {
        Segment segmentPush;
        Intrinsics.h(unsafeCursor, "<this>");
        okio.Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (j10 < -1 || j10 > buffer.size()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
        }
        if (j10 == -1 || j10 == buffer.size()) {
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j10;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return -1;
        }
        long size = buffer.size();
        Segment segment = buffer.head;
        long j11 = 0;
        if (unsafeCursor.getSegment() != null) {
            long j12 = unsafeCursor.offset;
            int i10 = unsafeCursor.start;
            Segment segment2 = unsafeCursor.getSegment();
            Intrinsics.e(segment2);
            long j13 = j12 - ((long) (i10 - segment2.pos));
            if (j13 > j10) {
                segmentPush = segment;
                segment = unsafeCursor.getSegment();
                size = j13;
            } else {
                segmentPush = unsafeCursor.getSegment();
                j11 = j13;
            }
        } else {
            segmentPush = segment;
        }
        if (size - j10 > j10 - j11) {
            while (true) {
                Intrinsics.e(segmentPush);
                int i11 = segmentPush.limit;
                int i12 = segmentPush.pos;
                if (j10 < ((long) (i11 - i12)) + j11) {
                    break;
                }
                j11 += (long) (i11 - i12);
                segmentPush = segmentPush.next;
            }
        } else {
            while (size > j10) {
                Intrinsics.e(segment);
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            j11 = size;
            segmentPush = segment;
        }
        if (unsafeCursor.readWrite) {
            Intrinsics.e(segmentPush);
            if (segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (buffer.head == segmentPush) {
                    buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                Segment segment3 = segmentPush.prev;
                Intrinsics.e(segment3);
                segment3.pop();
            }
        }
        unsafeCursor.setSegment$okio(segmentPush);
        unsafeCursor.offset = j10;
        Intrinsics.e(segmentPush);
        unsafeCursor.data = segmentPush.data;
        int i13 = segmentPush.pos + ((int) (j10 - j11));
        unsafeCursor.start = i13;
        int i14 = segmentPush.limit;
        unsafeCursor.end = i14;
        return i14 - i13;
    }

    public static final int commonSelect(okio.Buffer buffer, Options options) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        while (j10 > 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j10, segment.limit - segment.pos);
            long j11 = iMin;
            buffer.setSize$okio(buffer.size() - j11);
            j10 -= j11;
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            if (i10 == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer) {
        Intrinsics.h(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + buffer.size()).toString());
    }

    public static final Segment commonWritableSegment(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = buffer.head;
        if (segment != null) {
            Intrinsics.e(segment);
            Segment segment2 = segment.prev;
            Intrinsics.e(segment2);
            return (segment2.limit + i10 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        buffer.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, ByteString byteString, int i10, int i11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    public static okio.Buffer commonWrite$default(okio.Buffer buffer, ByteString byteString, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = byteString.size();
        }
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    public static final long commonWriteAll(okio.Buffer buffer, Source source) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        long j10 = 0;
        while (true) {
            long j11 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    public static final okio.Buffer commonWriteByte(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i11 + 1;
        bArr[i11] = (byte) i10;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    public static final okio.Buffer commonWriteDecimalLong(okio.Buffer buffer, long j10) {
        boolean z10;
        Intrinsics.h(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
        }
        int i10 = 1;
        if (j10 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 < 100000000) {
            if (j10 < 10000) {
                if (j10 >= 100) {
                    i10 = j10 < 1000 ? 3 : 4;
                } else if (j10 >= 10) {
                    i10 = 2;
                }
            } else if (j10 < 1000000) {
                i10 = j10 < 100000 ? 5 : 6;
            } else {
                i10 = j10 < 10000000 ? 7 : 8;
            }
        } else if (j10 < 1000000000000L) {
            if (j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = j10 < C.NANOS_PER_SECOND ? 9 : 10;
            } else {
                i10 = j10 < 100000000000L ? 11 : 12;
            }
        } else if (j10 < 1000000000000000L) {
            if (j10 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = j10 < 100000000000000L ? 14 : 15;
            }
        } else if (j10 < 100000000000000000L) {
            i10 = j10 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = j10 < 1000000000000000000L ? 18 : 19;
        }
        if (z10) {
            i10++;
        }
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit + i10;
        while (j10 != 0) {
            long j11 = 10;
            i11--;
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + ((long) i10));
        return buffer;
    }

    public static final okio.Buffer commonWriteHexadecimalUnsignedLong(okio.Buffer buffer, long j10) {
        Intrinsics.h(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + ((long) i10));
        return buffer;
    }

    public static final okio.Buffer commonWriteInt(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 4;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    public static final okio.Buffer commonWriteLong(okio.Buffer buffer, long j10) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((j10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j10 & 255);
        segmentWritableSegment$okio.limit = i10 + 8;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    public static final okio.Buffer commonWriteShort(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 2;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8(okio.Buffer buffer, String string, int i10, int i11) {
        char cCharAt;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(string, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        if (i11 > string.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        }
        while (i10 < i11) {
            char cCharAt2 = string.charAt(i10);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                byte[] bArr = segmentWritableSegment$okio.data;
                int i12 = segmentWritableSegment$okio.limit - i10;
                int iMin = Math.min(i11, 8192 - i12);
                int i13 = i10 + 1;
                bArr[i10 + i12] = (byte) cCharAt2;
                while (true) {
                    i10 = i13;
                    if (i10 >= iMin || (cCharAt = string.charAt(i10)) >= 128) {
                        break;
                    }
                    i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt;
                }
                int i14 = segmentWritableSegment$okio.limit;
                int i15 = (i12 + i10) - i14;
                segmentWritableSegment$okio.limit = i14 + i15;
                buffer.setSize$okio(buffer.size() + ((long) i15));
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i16 = segmentWritableSegment$okio2.limit;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i16 + 2;
                    buffer.setSize$okio(buffer.size() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i17 = segmentWritableSegment$okio3.limit;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i17 + 3;
                    buffer.setSize$okio(buffer.size() + 3);
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? string.charAt(i18) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        buffer.writeByte(63);
                        i10 = i18;
                    } else {
                        int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        Segment segmentWritableSegment$okio4 = buffer.writableSegment$okio(4);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i20 = segmentWritableSegment$okio4.limit;
                        bArr4[i20] = (byte) ((i19 >> 18) | 240);
                        bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                        bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                        bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                        segmentWritableSegment$okio4.limit = i20 + 4;
                        buffer.setSize$okio(buffer.size() + 4);
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
        return buffer;
    }

    public static final okio.Buffer commonWriteUtf8CodePoint(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        if (i10 < 128) {
            buffer.writeByte(i10);
        } else if (i10 < 2048) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i11 = segmentWritableSegment$okio.limit;
            bArr[i11] = (byte) ((i10 >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio.limit = i11 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            buffer.writeByte(63);
        } else if (i10 < 65536) {
            Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i12 = segmentWritableSegment$okio2.limit;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio2.limit = i12 + 3;
            buffer.setSize$okio(buffer.size() + 3);
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(i10));
            }
            Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i13 = segmentWritableSegment$okio3.limit;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio3.limit = i13 + 4;
            buffer.setSize$okio(buffer.size() + 4);
        }
        return buffer;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(Segment segment, int i10, byte[] bytes, int i11, int i12) {
        Intrinsics.h(segment, "segment");
        Intrinsics.h(bytes, "bytes");
        int i13 = segment.limit;
        byte[] bArr = segment.data;
        while (i11 < i12) {
            if (i10 == i13) {
                segment = segment.next;
                Intrinsics.e(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i10 = segment.pos;
                i13 = segment.limit;
            }
            if (bArr[i10] != bytes[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    public static final String readUtf8Line(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (buffer.getByte(j11) == 13) {
                String utf8 = buffer.readUtf8(j11);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf9 = buffer.readUtf8(j10);
        buffer.skip(1L);
        return utf9;
    }

    public static final <T> T seek(okio.Buffer buffer, long j10, Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return (T) lambda.invoke(null, -1L);
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            return (T) lambda.invoke(segment, Long.valueOf(size));
        }
        long j11 = 0;
        while (true) {
            long j12 = ((long) (segment.limit - segment.pos)) + j11;
            if (j12 > j10) {
                return (T) lambda.invoke(segment, Long.valueOf(j11));
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j11 = j12;
        }
    }

    public static final int selectPrefix(okio.Buffer buffer, Options options, boolean z10) {
        int i10;
        int i11;
        Segment segment;
        int i12;
        int i13;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            return z10 ? -2 : -1;
        }
        byte[] bArr = segment2.data;
        int i14 = segment2.pos;
        int i15 = segment2.limit;
        int[] trie$okio = options.getTrie();
        Segment segment3 = segment2;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = trie$okio[i17];
            int i20 = i17 + 2;
            int i21 = trie$okio[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (segment3 == null) {
                break;
            }
            if (i19 >= 0) {
                i10 = i14 + 1;
                int i22 = bArr[i14] & 255;
                int i23 = i20 + i19;
                while (i20 != i23) {
                    if (i22 == trie$okio[i20]) {
                        i11 = trie$okio[i20 + i19];
                        if (i10 == i15) {
                            segment3 = segment3.next;
                            Intrinsics.e(segment3);
                            i10 = segment3.pos;
                            bArr = segment3.data;
                            i15 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            int i24 = i20 + (i19 * (-1));
            while (true) {
                int i25 = i14 + 1;
                int i26 = i20 + 1;
                if ((bArr[i14] & 255) != trie$okio[i20]) {
                    return i16;
                }
                boolean z11 = i26 == i24;
                if (i25 == i15) {
                    Intrinsics.e(segment3);
                    Segment segment4 = segment3.next;
                    Intrinsics.e(segment4);
                    i13 = segment4.pos;
                    byte[] bArr2 = segment4.data;
                    i12 = segment4.limit;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else {
                        if (!z11) {
                            break loop0;
                        }
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    segment = segment3;
                    i12 = i15;
                    i13 = i25;
                }
                if (z11) {
                    i11 = trie$okio[i26];
                    i10 = i13;
                    i15 = i12;
                    segment3 = segment;
                    break;
                }
                i14 = i13;
                i15 = i12;
                segment3 = segment;
                i20 = i26;
            }
            if (i11 >= 0) {
                return i11;
            }
            i17 = -i11;
            i14 = i10;
        }
        if (z10) {
            return -2;
        }
        return i16;
    }

    public static int selectPrefix$default(okio.Buffer buffer, Options options, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return selectPrefix(buffer, options, z10);
    }

    public static final int commonRead(okio.Buffer buffer, byte[] sink, int i10, int i11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, i10, i11);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i11, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i12 = segment.pos;
        ArraysKt.h(bArr, sink, i10, i12, i12 + iMin);
        segment.pos += iMin;
        buffer.setSize$okio(buffer.size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public static final byte[] commonReadByteArray(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j10];
        buffer.readFully(bArr);
        return bArr;
    }

    public static final ByteString commonReadByteString(okio.Buffer buffer, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        if (j10 < 0 || j10 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j10).toString());
        }
        if (buffer.size() < j10) {
            throw new EOFException();
        }
        if (j10 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(buffer.readByteArray(j10));
        }
        ByteString byteStringSnapshot = buffer.snapshot((int) j10);
        buffer.skip(j10);
        return byteStringSnapshot;
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] source) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        return buffer.write(source, 0, source.length);
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, byte[] source, int i10, int i11) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        long j10 = i11;
        SegmentedByteString.checkOffsetAndCount(source.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iMin = Math.min(i12 - i10, 8192 - segmentWritableSegment$okio.limit);
            int i13 = i10 + iMin;
            ArraysKt.h(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i10, i13);
            segmentWritableSegment$okio.limit += iMin;
            i10 = i13;
        }
        buffer.setSize$okio(buffer.size() + j10);
        return buffer;
    }

    public static final void commonReadFully(okio.Buffer buffer, okio.Buffer sink, long j10) throws EOFException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        if (buffer.size() >= j10) {
            sink.write(buffer, j10);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    public static final ByteString commonSnapshot(okio.Buffer buffer, int i10) {
        Intrinsics.h(buffer, "<this>");
        if (i10 == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, i10);
        Segment segment = buffer.head;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            Intrinsics.e(segment);
            int i14 = segment.limit;
            int i15 = segment.pos;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        Segment segment2 = buffer.head;
        int i16 = 0;
        while (i11 < i10) {
            Intrinsics.e(segment2);
            bArr[i16] = segment2.data;
            i11 += segment2.limit - segment2.pos;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = segment2.pos;
            segment2.shared = true;
            i16++;
            segment2 = segment2.next;
        }
        return new C1062SegmentedByteString(bArr, iArr);
    }

    public static final okio.Buffer commonWrite(okio.Buffer buffer, Source source, long j10) throws IOException {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        while (j10 > 0) {
            long j11 = source.read(buffer, j10);
            if (j11 == -1) {
                throw new EOFException();
            }
            j10 -= j11;
        }
        return buffer;
    }

    public static final long commonRead(okio.Buffer buffer, okio.Buffer sink, long j10) {
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(sink, "sink");
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        if (buffer.size() == 0) {
            return -1L;
        }
        if (j10 > buffer.size()) {
            j10 = buffer.size();
        }
        sink.write(buffer, j10);
        return j10;
    }

    public static final void commonWrite(okio.Buffer buffer, okio.Buffer source, long j10) {
        Segment segment;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(source, "source");
        if (source != buffer) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment2 = source.head;
                Intrinsics.e(segment2);
                int i10 = segment2.limit;
                Segment segment3 = source.head;
                Intrinsics.e(segment3);
                if (j10 < i10 - segment3.pos) {
                    Segment segment4 = buffer.head;
                    if (segment4 != null) {
                        Intrinsics.e(segment4);
                        segment = segment4.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + j10) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment5 = source.head;
                            Intrinsics.e(segment5);
                            segment5.writeTo(segment, (int) j10);
                            source.setSize$okio(source.size() - j10);
                            buffer.setSize$okio(buffer.size() + j10);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.e(segment6);
                    source.head = segment6.split((int) j10);
                }
                Segment segment7 = source.head;
                Intrinsics.e(segment7);
                long j11 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = buffer.head;
                if (segment8 == null) {
                    buffer.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.e(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.e(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j11);
                buffer.setSize$okio(buffer.size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    public static final long commonIndexOf(okio.Buffer buffer, ByteString bytes, long j10) {
        long size;
        int i10;
        long j11 = j10;
        Intrinsics.h(buffer, "<this>");
        Intrinsics.h(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long j12 = 0;
        if (j11 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j11 < j11) {
                size = buffer.size();
                while (size > j11) {
                    segment = segment.prev;
                    Intrinsics.e(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b10 = bArrInternalArray$okio[0];
                int size2 = bytes.size();
                long size3 = (buffer.size() - ((long) size2)) + 1;
                while (size < size3) {
                    byte[] bArr = segment.data;
                    int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                    i10 = (int) ((((long) segment.pos) + j11) - size);
                    while (i10 < iMin) {
                        if (bArr[i10] != b10 || !rangeEquals(segment, i10 + 1, bArrInternalArray$okio, 1, size2)) {
                            i10++;
                        }
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    Intrinsics.e(segment);
                    j11 = size;
                }
                return -1L;
            }
            while (true) {
                long j13 = ((long) (segment.limit - segment.pos)) + j12;
                if (j13 > j11) {
                    break;
                }
                segment = segment.next;
                Intrinsics.e(segment);
                j12 = j13;
            }
            byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
            byte b11 = bArrInternalArray$okio2[0];
            int size4 = bytes.size();
            long size5 = (buffer.size() - ((long) size4)) + 1;
            size = j12;
            while (size < size5) {
                byte[] bArr2 = segment.data;
                long j14 = size5;
                int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
                i10 = (int) ((((long) segment.pos) + j11) - size);
                while (i10 < iMin2) {
                    if (bArr2[i10] == b11 && rangeEquals(segment, i10 + 1, bArrInternalArray$okio2, 1, size4)) {
                    }
                    i10++;
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.e(segment);
                size5 = j14;
                j11 = size;
            }
            return -1L;
            return ((long) (i10 - segment.pos)) + size;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j11).toString());
    }
}
