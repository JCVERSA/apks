package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import okhttp3.internal.connection.RealConnection;

@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0000H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u001a\u001a\u00020\fJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020\u0000H\u0016J\b\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\fH\u0087\u0002¢\u0006\u0002\b+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\fH\u0016J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\b\u0010@\u001a\u00020\u0019H\u0016J\b\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020\f2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010M\u001a\u00020)H\u0016J\b\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010P\u001a\u00020\fH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\fJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010U\u001a\u00020\fH\u0016J\b\u0010V\u001a\u00020/H\u0016J\b\u0010W\u001a\u00020/H\u0016J\b\u0010X\u001a\u00020\fH\u0016J\b\u0010Y\u001a\u00020\fH\u0016J\b\u0010Z\u001a\u00020[H\u0016J\b\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\fH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\b\u0010q\u001a\u00020rH\u0016J\b\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000¢\u0006\u0002\bvJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010{\u001a\u00020\f2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0091\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "()V", "buffer", "getBuffer", "()Lokio/Buffer;", TtmlNode.TAG_HEAD, "Lokio/Segment;", "<set-?>", "", "size", "()J", "setSize$okio", "(J)V", "clear", "", "clone", "close", "completeSegmentByteCount", "copy", "copyTo", "out", "Ljava/io/OutputStream;", "offset", "byteCount", "digest", "Lokio/ByteString;", "algorithm", "", "emit", "emitCompleteSegments", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "exhausted", "flush", "get", "", "pos", "getByte", "index", "-deprecated_getByte", "hashCode", "", "hmac", "key", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "md5", "outputStream", "peek", "rangeEquals", "bytesOffset", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readAndWriteUnsafe", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFrom", "input", "forever", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "charset", "Ljava/nio/charset/Charset;", "readUnsafe", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", "sha1", "sha256", "sha512", "-deprecated_size", "skip", TmcStartParams.KEY_ENABLE_SNAPSHOT, "timeout", "Lokio/Timeout;", "toString", "writableSegment", "minimumCapacity", "writableSegment$okio", "write", EventConstants.KEY_SOURCE, "byteString", "Lokio/Source;", "writeAll", "writeByte", "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "beginIndex", "endIndex", "writeTo", "writeUtf8", "writeUtf8CodePoint", "codePoint", "UnsafeCursor", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @JvmField
    public Segment head;
    private long size;

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\bJ\u0006\u0010\u0018\u001a\u00020\bJ\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "()V", "buffer", "Lokio/Buffer;", "data", "", TtmlNode.END, "", "offset", "", "readWrite", "", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "start", "close", "", "expandBuffer", "minByteCount", "next", "resizeBuffer", "newSize", "seek", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class UnsafeCursor implements Closeable {

        @JvmField
        public Buffer buffer;

        @JvmField
        public byte[] data;

        @JvmField
        public boolean readWrite;
        private Segment segment;

        @JvmField
        public long offset = -1;

        @JvmField
        public int start = -1;

        @JvmField
        public int end = -1;

        @Override
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int minByteCount) {
            if (minByteCount <= 0) {
                throw new IllegalArgumentException(("minByteCount <= 0: " + minByteCount).toString());
            }
            if (minByteCount > 8192) {
                throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + minByteCount).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(minByteCount);
            int i10 = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j10 = i10;
            buffer.setSize$okio(size + j10);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i10;
            this.end = 8192;
            return j10;
        }

        public final Segment getSegment() {
            return this.segment;
        }

        public final int next() {
            long j10 = this.offset;
            Buffer buffer = this.buffer;
            Intrinsics.e(buffer);
            if (j10 == buffer.size()) {
                throw new IllegalStateException("no more bytes");
            }
            long j11 = this.offset;
            return seek(j11 == -1 ? 0L : j11 + ((long) (this.end - this.start)));
        }

        public final long resizeBuffer(long newSize) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            long size = buffer.size();
            if (newSize <= size) {
                if (newSize < 0) {
                    throw new IllegalArgumentException(("newSize < 0: " + newSize).toString());
                }
                long j10 = size - newSize;
                while (j10 > 0) {
                    Segment segment = buffer.head;
                    Intrinsics.e(segment);
                    Segment segment2 = segment.prev;
                    Intrinsics.e(segment2);
                    int i10 = segment2.limit;
                    long j11 = i10 - segment2.pos;
                    if (j11 > j10) {
                        segment2.limit = i10 - ((int) j10);
                        break;
                    }
                    buffer.head = segment2.pop();
                    SegmentPool.recycle(segment2);
                    j10 -= j11;
                }
                setSegment$okio(null);
                this.offset = newSize;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (newSize > size) {
                long j12 = newSize - size;
                boolean z10 = true;
                while (j12 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j12, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j12 -= (long) iMin;
                    if (z10) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i11 = segmentWritableSegment$okio.limit;
                        this.start = i11 - iMin;
                        this.end = i11;
                        z10 = false;
                    }
                }
            }
            buffer.setSize$okio(newSize);
            return size;
        }

        public final int seek(long offset) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer");
            }
            if (offset < -1 || offset > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + offset + " > size=" + buffer.size());
            }
            if (offset == -1 || offset == buffer.size()) {
                setSegment$okio(null);
                this.offset = offset;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.size();
            Segment segment = buffer.head;
            long j10 = 0;
            if (getSegment() != null) {
                long j11 = this.offset;
                int i10 = this.start;
                Segment segment2 = getSegment();
                Intrinsics.e(segment2);
                long j12 = j11 - ((long) (i10 - segment2.pos));
                if (j12 > offset) {
                    segmentPush = segment;
                    segment = getSegment();
                    size = j12;
                } else {
                    segmentPush = getSegment();
                    j10 = j12;
                }
            } else {
                segmentPush = segment;
            }
            if (size - offset > offset - j10) {
                while (true) {
                    Intrinsics.e(segmentPush);
                    int i11 = segmentPush.limit;
                    int i12 = segmentPush.pos;
                    if (offset < ((long) (i11 - i12)) + j10) {
                        break;
                    }
                    j10 += (long) (i11 - i12);
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > offset) {
                    Intrinsics.e(segment);
                    segment = segment.prev;
                    Intrinsics.e(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                j10 = size;
                segmentPush = segment;
            }
            if (this.readWrite) {
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
            setSegment$okio(segmentPush);
            this.offset = offset;
            Intrinsics.e(segmentPush);
            this.data = segmentPush.data;
            int i13 = segmentPush.pos + ((int) (offset - j10));
            this.start = i13;
            int i14 = segmentPush.limit;
            this.end = i14;
            return i14 - i13;
        }

        public final void setSegment$okio(Segment segment) {
            this.segment = segment;
        }
    }

    public static Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j10, long j11, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        long j12 = j10;
        if ((i10 & 4) != 0) {
            j11 = buffer.size - j12;
        }
        return buffer.copyTo(outputStream, j12, j11);
    }

    private final ByteString digest(String algorithm) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i10 = segment.pos;
            messageDigest.update(bArr, i10, segment.limit - i10);
            Segment segment2 = segment.next;
            Intrinsics.e(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i11 = segment2.pos;
                messageDigest.update(bArr2, i11, segment2.limit - i11);
                segment2 = segment2.next;
                Intrinsics.e(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        Intrinsics.g(bArrDigest, "digest(...)");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String algorithm, ByteString key) throws NoSuchAlgorithmException {
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.internalArray$okio(), algorithm));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i10 = segment.pos;
                mac.update(bArr, i10, segment.limit - i10);
                Segment segment2 = segment.next;
                Intrinsics.e(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i11 = segment2.pos;
                    mac.update(bArr2, i11, segment2.limit - i11);
                    segment2 = segment2.next;
                    Intrinsics.e(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            Intrinsics.g(bArrDoFinal, "doFinal(...)");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = SegmentedByteString.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = buffer.size;
        }
        return buffer.writeTo(outputStream, j10);
    }

    @Deprecated
    @JvmName
    public final byte m608deprecated_getByte(long index) {
        return getByte(index);
    }

    @Deprecated
    @JvmName
    public final long getSize() {
        return this.size;
    }

    @Override
    public Buffer getBufferField() {
        return this;
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    @Override
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        Segment segment2 = segment.prev;
        Intrinsics.e(segment2);
        int i10 = segment2.limit;
        if (i10 < 8192 && segment2.owner) {
            size -= (long) (i10 - segment2.pos);
        }
        return size;
    }

    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.e(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            buffer.head = segmentSharedCopy;
            segmentSharedCopy.prev = segmentSharedCopy;
            segmentSharedCopy.next = segmentSharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = segmentSharedCopy.prev;
                Intrinsics.e(segment3);
                Intrinsics.e(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @JvmOverloads
    public final Buffer copyTo(OutputStream out) throws IOException {
        Intrinsics.h(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @Override
    public Buffer emit() {
        return this;
    }

    @Override
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Buffer) {
            Buffer buffer = (Buffer) other;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                Intrinsics.e(segment);
                Segment segment2 = buffer.head;
                Intrinsics.e(segment2);
                int i10 = segment.pos;
                int i11 = segment2.pos;
                long j10 = 0;
                while (j10 < size()) {
                    long jMin = Math.min(segment.limit - i10, segment2.limit - i11);
                    long j11 = 0;
                    while (j11 < jMin) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (segment.data[i10] == segment2.data[i11]) {
                            j11++;
                            i10 = i12;
                            i11 = i13;
                        }
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
        }
        return false;
    }

    @Override
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override
    public void flush() {
    }

    @Override
    public Buffer getBuffer() {
        return this;
    }

    @JvmName
    public final byte getByte(long pos) {
        SegmentedByteString.checkOffsetAndCount(size(), pos, 1L);
        Segment segment = this.head;
        if (segment == null) {
            Intrinsics.e(null);
            throw null;
        }
        if (size() - pos < pos) {
            long size = size();
            while (size > pos) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            Intrinsics.e(segment);
            return segment.data[(int) ((((long) segment.pos) + pos) - size)];
        }
        long j10 = 0;
        while (true) {
            long j11 = ((long) (segment.limit - segment.pos)) + j10;
            if (j11 > pos) {
                Intrinsics.e(segment);
                return segment.data[(int) ((((long) segment.pos) + pos) - j10)];
            }
            segment = segment.next;
            Intrinsics.e(segment);
            j10 = j11;
        }
    }

    public int hashCode() {
        Segment segment = this.head;
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
        } while (segment != this.head);
        return i10;
    }

    public final ByteString hmacSha1(ByteString key) {
        Intrinsics.h(key, "key");
        return hmac("HmacSHA1", key);
    }

    public final ByteString hmacSha256(ByteString key) {
        Intrinsics.h(key, "key");
        return hmac("HmacSHA256", key);
    }

    public final ByteString hmacSha512(ByteString key) {
        Intrinsics.h(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override
    public long indexOf(byte b10) {
        return indexOf(b10, 0L, Long.MAX_VALUE);
    }

    @Override
    public long indexOfElement(ByteString targetBytes) {
        Intrinsics.h(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override
    public InputStream inputStream() {
        return new InputStream() {
            @Override
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override
            public void close() {
            }

            @Override
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override
            public int read(byte[] sink, int offset, int byteCount) {
                Intrinsics.h(sink, "sink");
                return Buffer.this.read(sink, offset, byteCount);
            }
        };
    }

    @Override
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest("MD5");
    }

    @Override
    public OutputStream outputStream() {
        return new OutputStream() {
            @Override
            public void close() {
            }

            @Override
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override
            public void write(int b10) {
                Buffer.this.writeByte(b10);
            }

            @Override
            public void write(byte[] data, int offset, int byteCount) {
                Intrinsics.h(data, "data");
                Buffer.this.write(data, offset, byteCount);
            }
        };
    }

    @Override
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override
    public boolean rangeEquals(long offset, ByteString bytes) {
        Intrinsics.h(bytes, "bytes");
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override
    public int read(ByteBuffer sink) throws IOException {
        Intrinsics.h(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i10 = segment.pos + iMin;
        segment.pos = i10;
        this.size -= (long) iMin;
        if (i10 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @Override
    public long readAll(Sink sink) throws IOException {
        Intrinsics.h(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @JvmOverloads
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override
    public byte readByte() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        int i12 = i10 + 1;
        byte b10 = segment.data[i10];
        setSize$okio(size() - 1);
        if (i12 == i11) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return b10;
    }

    @Override
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override
    public long readDecimalLong() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        int i10 = 0;
        boolean z10 = false;
        long j10 = 0;
        long j11 = -7;
        boolean z11 = false;
        do {
            Segment segment = this.head;
            Intrinsics.e(segment);
            byte[] bArr = segment.data;
            int i11 = segment.pos;
            int i12 = segment.limit;
            while (i11 < i12) {
                byte b10 = bArr[i11];
                if (b10 >= 48 && b10 <= 57) {
                    int i13 = 48 - b10;
                    if (j10 < okio.internal.Buffer.OVERFLOW_ZONE || (j10 == okio.internal.Buffer.OVERFLOW_ZONE && i13 < j11)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j10).writeByte((int) b10);
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
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            if (z11) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - ((long) i10));
        if (i10 >= (z10 ? 2 : 1)) {
            return z10 ? j10 : -j10;
        }
        if (size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z10 ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + SegmentedByteString.toHexString(getByte(0L)));
    }

    public final Buffer readFrom(InputStream input) throws IOException {
        Intrinsics.h(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override
    public void readFully(Buffer sink, long byteCount) throws EOFException {
        Intrinsics.h(sink, "sink");
        if (size() >= byteCount) {
            sink.write(this, byteCount);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    @Override
    public long readHexadecimalUnsignedLong() throws EOFException {
        int i10;
        if (size() == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z10 = false;
        long j10 = 0;
        do {
            Segment segment = this.head;
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
                    throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j10).writeByte((int) b10).readUtf8());
                }
                j10 = (j10 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            if (z10) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - ((long) i11));
        return j10;
    }

    @Override
    public int readInt() throws EOFException {
        if (size() < 4) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        setSize$okio(size() - 4);
        if (i14 == i11) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return i15;
    }

    @Override
    public int readIntLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readInt());
    }

    @Override
    public long readLong() throws EOFException {
        if (size() < 8) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 8) {
            return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 7;
        long j10 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        int i13 = i10 + 8;
        long j11 = j10 | (((long) bArr[i12]) & 255);
        setSize$okio(size() - 8);
        if (i13 == i11) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return j11;
    }

    @Override
    public long readLongLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readLong());
    }

    @Override
    public short readShort() throws EOFException {
        if (size() < 2) {
            throw new EOFException();
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 2) {
            return (short) (((readByte() & 255) << 8) | (readByte() & 255));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        setSize$okio(size() - 2);
        if (i14 == i11) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return (short) i15;
    }

    @Override
    public short readShortLe() throws EOFException {
        return SegmentedByteString.reverseBytes(readShort());
    }

    @Override
    public String readString(Charset charset) {
        Intrinsics.h(charset, "charset");
        return readString(this.size, charset);
    }

    @JvmOverloads
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override
    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override
    public int readUtf8CodePoint() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (size() == 0) {
            throw new EOFException();
        }
        byte b10 = getByte(0L);
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
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = b10 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j10 = i11;
        if (size() < j10) {
            throw new EOFException("size < " + i11 + ": " + size() + " (to read code point prefixed 0x" + SegmentedByteString.toHexString(b10) + ')');
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j11 = i13;
            byte b11 = getByte(j11);
            if ((b11 & 192) != 128) {
                skip(j11);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = (i10 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
        }
        skip(j10);
        if (i10 > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        return ((55296 > i10 || i10 >= 57344) && i10 >= i12) ? i10 : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Override
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override
    public boolean request(long byteCount) {
        return this.size >= byteCount;
    }

    @Override
    public void require(long byteCount) throws EOFException {
        if (this.size < byteCount) {
            throw new EOFException();
        }
    }

    @Override
    public int select(Options options) throws EOFException {
        Intrinsics.h(options, "options");
        int iSelectPrefix$default = okio.internal.Buffer.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public final void setSize$okio(long j10) {
        this.size = j10;
    }

    public final ByteString sha1() {
        return digest(EncoderUtil.ALGORITHM_SHA_1);
    }

    public final ByteString sha256() {
        return digest(EncoderUtil.ALGORITHM_SHA_256);
    }

    public final ByteString sha512() {
        return digest(EncoderUtil.ALGORITHM_SHA_512);
    }

    @JvmName
    public final long size() {
        return this.size;
    }

    @Override
    public void skip(long byteCount) throws EOFException {
        while (byteCount > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            long j10 = iMin;
            setSize$okio(size() - j10);
            byteCount -= j10;
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            if (i10 == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @Override
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final Segment writableSegment$okio(int minimumCapacity) {
        if (minimumCapacity < 1 || minimumCapacity > 8192) {
            throw new IllegalArgumentException("unexpected capacity");
        }
        Segment segment = this.head;
        if (segment != null) {
            Intrinsics.e(segment);
            Segment segment2 = segment.prev;
            Intrinsics.e(segment2);
            return (segment2.limit + minimumCapacity > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @Override
    public long writeAll(Source source) throws IOException {
        Intrinsics.h(source, "source");
        long j10 = 0;
        while (true) {
            long j11 = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
        }
    }

    @JvmOverloads
    public final Buffer writeTo(OutputStream out) throws IOException {
        Intrinsics.h(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    public Buffer clone() {
        return copy();
    }

    @JvmOverloads
    public final Buffer copyTo(OutputStream out, long j10) throws IOException {
        Intrinsics.h(out, "out");
        return copyTo$default(this, out, j10, 0L, 4, (Object) null);
    }

    @Override
    public long indexOf(byte b10, long fromIndex) {
        return indexOf(b10, fromIndex, Long.MAX_VALUE);
    }

    @Override
    public long indexOfElement(ByteString targetBytes, long fromIndex) {
        int i10;
        int i11;
        Intrinsics.h(targetBytes, "targetBytes");
        long size = 0;
        if (fromIndex < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + fromIndex).toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b10 = targetBytes.getByte(0);
                byte b11 = targetBytes.getByte(1);
                while (size < size()) {
                    byte[] bArr = segment.data;
                    i10 = (int) ((((long) segment.pos) + fromIndex) - size);
                    int i12 = segment.limit;
                    while (true) {
                        if (i10 >= i12) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            Intrinsics.e(segment);
                            fromIndex = size;
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
                return -1L;
            }
            byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
            while (size < size()) {
                byte[] bArr2 = segment.data;
                i10 = (int) ((((long) segment.pos) + fromIndex) - size);
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
                        fromIndex = size;
                    }
                }
            }
            return -1L;
        }
        while (true) {
            long j10 = ((long) (segment.limit - segment.pos)) + size;
            if (j10 > fromIndex) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j10;
        }
        if (targetBytes.size() == 2) {
            byte b14 = targetBytes.getByte(0);
            byte b15 = targetBytes.getByte(1);
            while (size < size()) {
                byte[] bArr3 = segment.data;
                i10 = (int) ((((long) segment.pos) + fromIndex) - size);
                int i15 = segment.limit;
                while (true) {
                    if (i10 >= i15) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        fromIndex = size;
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
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
        while (size < size()) {
            byte[] bArr4 = segment.data;
            i10 = (int) ((((long) segment.pos) + fromIndex) - size);
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
                    fromIndex = size;
                }
            }
        }
        return -1L;
        return ((long) (i10 - i11)) + size;
    }

    @Override
    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        Intrinsics.h(bytes, "bytes");
        if (offset < 0 || bytesOffset < 0 || byteCount < 0 || size() - offset < byteCount || bytes.size() - bytesOffset < byteCount) {
            return false;
        }
        for (int i10 = 0; i10 < byteCount; i10++) {
            if (getByte(((long) i10) + offset) != bytes.getByte(bytesOffset + i10)) {
                return false;
            }
        }
        return true;
    }

    @JvmOverloads
    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override
    public byte[] readByteArray(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) byteCount];
        readFully(bArr);
        return bArr;
    }

    @Override
    public ByteString readByteString(long byteCount) throws EOFException {
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (size() < byteCount) {
            throw new EOFException();
        }
        if (byteCount < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(readByteArray(byteCount));
        }
        ByteString byteStringSnapshot = snapshot((int) byteCount);
        skip(byteCount);
        return byteStringSnapshot;
    }

    public final Buffer readFrom(InputStream input, long byteCount) throws IOException {
        Intrinsics.h(input, "input");
        if (byteCount >= 0) {
            readFrom(input, byteCount, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
    }

    @Override
    public String readString(long byteCount, Charset charset) throws EOFException {
        Intrinsics.h(charset, "charset");
        if (byteCount < 0 || byteCount > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + byteCount).toString());
        }
        if (this.size < byteCount) {
            throw new EOFException();
        }
        if (byteCount == 0) {
            return "";
        }
        Segment segment = this.head;
        Intrinsics.e(segment);
        int i10 = segment.pos;
        if (((long) i10) + byteCount > segment.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        int i11 = (int) byteCount;
        String str = new String(segment.data, i10, i11, charset);
        int i12 = segment.pos + i11;
        segment.pos = i12;
        this.size -= byteCount;
        if (i12 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @JvmOverloads
    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        Intrinsics.h(unsafeCursor, "unsafeCursor");
        return okio.internal.Buffer.commonReadUnsafe(this, unsafeCursor);
    }

    @Override
    public String readUtf8(long byteCount) throws EOFException {
        return readString(byteCount, Charsets.UTF_8);
    }

    @Override
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            throw new IllegalArgumentException(("limit < 0: " + limit).toString());
        }
        long j10 = limit != Long.MAX_VALUE ? limit + 1 : Long.MAX_VALUE;
        long jIndexOf = indexOf((byte) 10, 0L, j10);
        if (jIndexOf != -1) {
            return okio.internal.Buffer.readUtf8Line(this, jIndexOf);
        }
        if (j10 < size() && getByte(j10 - 1) == 13 && getByte(j10) == 10) {
            return okio.internal.Buffer.readUtf8Line(this, j10);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), limit) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override
    public Buffer writeByte(int b10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) b10;
        setSize$okio(size() + 1);
        return this;
    }

    @Override
    public Buffer writeDecimalLong(long v10) {
        boolean z10;
        if (v10 == 0) {
            return writeByte(48);
        }
        int i10 = 1;
        if (v10 < 0) {
            v10 = -v10;
            if (v10 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (v10 < 100000000) {
            if (v10 < 10000) {
                if (v10 >= 100) {
                    i10 = v10 < 1000 ? 3 : 4;
                } else if (v10 >= 10) {
                    i10 = 2;
                }
            } else if (v10 < 1000000) {
                i10 = v10 < 100000 ? 5 : 6;
            } else {
                i10 = v10 < 10000000 ? 7 : 8;
            }
        } else if (v10 < 1000000000000L) {
            if (v10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = v10 < C.NANOS_PER_SECOND ? 9 : 10;
            } else {
                i10 = v10 < 100000000000L ? 11 : 12;
            }
        } else if (v10 < 1000000000000000L) {
            if (v10 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = v10 < 100000000000000L ? 14 : 15;
            }
        } else if (v10 < 100000000000000000L) {
            i10 = v10 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = v10 < 1000000000000000000L ? 18 : 19;
        }
        if (z10) {
            i10++;
        }
        Segment segmentWritableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit + i10;
        while (v10 != 0) {
            long j10 = 10;
            i11--;
            bArr[i11] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (v10 % j10)];
            v10 /= j10;
        }
        if (z10) {
            bArr[i11 - 1] = 45;
        }
        segmentWritableSegment$okio.limit += i10;
        setSize$okio(size() + ((long) i10));
        return this;
    }

    @Override
    public Buffer writeHexadecimalUnsignedLong(long v10) {
        if (v10 == 0) {
            return writeByte(48);
        }
        long j10 = (v10 >>> 1) | v10;
        long j11 = j10 | (j10 >>> 2);
        long j12 = j11 | (j11 >>> 4);
        long j13 = j12 | (j12 >>> 8);
        long j14 = j13 | (j13 >>> 16);
        long j15 = j14 | (j14 >>> 32);
        long j16 = j15 - ((j15 >>> 1) & 6148914691236517205L);
        long j17 = ((j16 >>> 2) & 3689348814741910323L) + (j16 & 3689348814741910323L);
        long j18 = ((j17 >>> 4) + j17) & 1085102592571150095L;
        long j19 = j18 + (j18 >>> 8);
        long j20 = j19 + (j19 >>> 16);
        int i10 = (int) ((((j20 & 63) + ((j20 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        Segment segmentWritableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = okio.internal.Buffer.getHEX_DIGIT_BYTES()[(int) (15 & v10)];
            v10 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i10;
        setSize$okio(size() + ((long) i10));
        return this;
    }

    @Override
    public Buffer writeInt(int i10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override
    public Buffer writeIntLe(int i10) {
        return writeInt(SegmentedByteString.reverseBytes(i10));
    }

    @Override
    public Buffer writeLong(long v10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((v10 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((v10 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((v10 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((v10 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((v10 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((v10 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((v10 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (v10 & 255);
        segmentWritableSegment$okio.limit = i10 + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override
    public Buffer writeLongLe(long v10) {
        return writeLong(SegmentedByteString.reverseBytes(v10));
    }

    @Override
    public Buffer writeShort(int s10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((s10 >>> 8) & 255);
        bArr[i10 + 1] = (byte) (s10 & 255);
        segmentWritableSegment$okio.limit = i10 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override
    public Buffer writeShortLe(int s10) {
        return writeShort((int) SegmentedByteString.reverseBytes((short) s10));
    }

    @JvmOverloads
    public final Buffer writeTo(OutputStream out, long byteCount) throws IOException {
        Intrinsics.h(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment segment = this.head;
        while (byteCount > 0) {
            Intrinsics.e(segment);
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            long j10 = iMin;
            this.size -= j10;
            byteCount -= j10;
            if (i10 == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override
    public Buffer writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            writeByte(codePoint);
        } else if (codePoint < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i10 = segmentWritableSegment$okio.limit;
            bArr[i10] = (byte) ((codePoint >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i10 + 1] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio.limit = i10 + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= codePoint && codePoint < 57344) {
            writeByte(63);
        } else if (codePoint < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i11 = segmentWritableSegment$okio2.limit;
            bArr2[i11] = (byte) ((codePoint >> 12) | 224);
            bArr2[i11 + 1] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr2[i11 + 2] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio2.limit = i11 + 3;
            setSize$okio(size() + 3);
        } else {
            if (codePoint > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.toHexString(codePoint));
            }
            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i12 = segmentWritableSegment$okio3.limit;
            bArr3[i12] = (byte) ((codePoint >> 18) | 240);
            bArr3[i12 + 1] = (byte) (((codePoint >> 12) & 63) | 128);
            bArr3[i12 + 2] = (byte) (((codePoint >> 6) & 63) | 128);
            bArr3[i12 + 3] = (byte) ((codePoint & 63) | 128);
            segmentWritableSegment$okio3.limit = i12 + 4;
            setSize$okio(size() + 4);
        }
        return this;
    }

    public static Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, long j11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10, j11);
    }

    @JvmOverloads
    public final Buffer copyTo(OutputStream out, long offset, long byteCount) throws IOException {
        Intrinsics.h(out, "out");
        SegmentedByteString.checkOffsetAndCount(this.size, offset, byteCount);
        if (byteCount == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            Intrinsics.e(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (offset < i10 - i11) {
                break;
            }
            offset -= (long) (i10 - i11);
            segment = segment.next;
        }
        while (byteCount > 0) {
            Intrinsics.e(segment);
            int i12 = (int) (((long) segment.pos) + offset);
            int iMin = (int) Math.min(segment.limit - i12, byteCount);
            out.write(segment.data, i12, iMin);
            byteCount -= (long) iMin;
            segment = segment.next;
            offset = 0;
        }
        return this;
    }

    @Override
    public long indexOf(ByteString bytes) throws IOException {
        Intrinsics.h(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override
    public Buffer writeString(String string, Charset charset) {
        Intrinsics.h(string, "string");
        Intrinsics.h(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override
    public Buffer writeUtf8(String string) {
        Intrinsics.h(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10);
    }

    private final void readFrom(InputStream input, long byteCount, boolean forever) throws IOException {
        while (true) {
            if (byteCount <= 0 && !forever) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i10 = input.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(byteCount, 8192 - segmentWritableSegment$okio.limit));
            if (i10 == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!forever) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i10;
            long j10 = i10;
            this.size += j10;
            byteCount -= j10;
        }
    }

    @Override
    public long indexOf(byte b10, long fromIndex, long toIndex) {
        Segment segment;
        int i10;
        long size = 0;
        if (0 > fromIndex || fromIndex > toIndex) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + fromIndex + " toIndex=" + toIndex).toString());
        }
        if (toIndex > size()) {
            toIndex = size();
        }
        if (fromIndex == toIndex || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - fromIndex < fromIndex) {
            size = size();
            while (size > fromIndex) {
                segment = segment.prev;
                Intrinsics.e(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < toIndex) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
                i10 = (int) ((((long) segment.pos) + fromIndex) - size);
                while (i10 < iMin) {
                    if (bArr[i10] != b10) {
                        i10++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.e(segment);
                fromIndex = size;
            }
            return -1L;
        }
        while (true) {
            long j10 = ((long) (segment.limit - segment.pos)) + size;
            if (j10 > fromIndex) {
                break;
            }
            segment = segment.next;
            Intrinsics.e(segment);
            size = j10;
        }
        while (size < toIndex) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + toIndex) - size);
            i10 = (int) ((((long) segment.pos) + fromIndex) - size);
            while (i10 < iMin2) {
                if (bArr2[i10] != b10) {
                    i10++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            Intrinsics.e(segment);
            fromIndex = size;
        }
        return -1L;
        return ((long) (i10 - segment.pos)) + size;
    }

    public final ByteString snapshot(int byteCount) {
        if (byteCount == 0) {
            return ByteString.EMPTY;
        }
        SegmentedByteString.checkOffsetAndCount(size(), 0L, byteCount);
        Segment segment = this.head;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < byteCount) {
            Intrinsics.e(segment);
            int i13 = segment.limit;
            int i14 = segment.pos;
            if (i13 != i14) {
                i11 += i13 - i14;
                i12++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i12][];
        int[] iArr = new int[i12 * 2];
        Segment segment2 = this.head;
        int i15 = 0;
        while (i10 < byteCount) {
            Intrinsics.e(segment2);
            bArr[i15] = segment2.data;
            i10 += segment2.limit - segment2.pos;
            iArr[i15] = Math.min(i10, byteCount);
            iArr[i15 + i12] = segment2.pos;
            segment2.shared = true;
            i15++;
            segment2 = segment2.next;
        }
        return new C1062SegmentedByteString(bArr, iArr);
    }

    @Override
    public Buffer writeUtf8(String string, int beginIndex, int endIndex) {
        char cCharAt;
        Intrinsics.h(string, "string");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex > string.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
            }
            while (beginIndex < endIndex) {
                char cCharAt2 = string.charAt(beginIndex);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = segmentWritableSegment$okio.data;
                    int i10 = segmentWritableSegment$okio.limit - beginIndex;
                    int iMin = Math.min(endIndex, 8192 - i10);
                    int i11 = beginIndex + 1;
                    bArr[beginIndex + i10] = (byte) cCharAt2;
                    while (true) {
                        beginIndex = i11;
                        if (beginIndex >= iMin || (cCharAt = string.charAt(beginIndex)) >= 128) {
                            break;
                        }
                        i11 = beginIndex + 1;
                        bArr[beginIndex + i10] = (byte) cCharAt;
                    }
                    int i12 = segmentWritableSegment$okio.limit;
                    int i13 = (i10 + beginIndex) - i12;
                    segmentWritableSegment$okio.limit = i12 + i13;
                    setSize$okio(size() + ((long) i13));
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i14 = segmentWritableSegment$okio2.limit;
                        bArr2[i14] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                        bArr2[i14 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i14 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i15 = beginIndex + 1;
                        char cCharAt3 = i15 < endIndex ? string.charAt(i15) : (char) 0;
                        if (cCharAt2 <= 56319 && 56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i16 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = segmentWritableSegment$okio3.data;
                            int i17 = segmentWritableSegment$okio3.limit;
                            bArr3[i17] = (byte) ((i16 >> 18) | 240);
                            bArr3[i17 + 1] = (byte) (((i16 >> 12) & 63) | 128);
                            bArr3[i17 + 2] = (byte) (((i16 >> 6) & 63) | 128);
                            bArr3[i17 + 3] = (byte) ((i16 & 63) | 128);
                            segmentWritableSegment$okio3.limit = i17 + 4;
                            setSize$okio(size() + 4);
                            beginIndex += 2;
                        } else {
                            writeByte(63);
                            beginIndex = i15;
                        }
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i18 = segmentWritableSegment$okio4.limit;
                        bArr4[i18] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i18 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i18 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i18 + 3;
                        setSize$okio(size() + 3);
                    }
                    beginIndex++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override
    public void readFully(byte[] sink) throws EOFException {
        Intrinsics.h(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int i11 = read(sink, i10, sink.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override
    public Buffer writeString(String string, int beginIndex, int endIndex, Charset charset) {
        Intrinsics.h(string, "string");
        Intrinsics.h(charset, "charset");
        if (beginIndex < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + beginIndex).toString());
        }
        if (endIndex >= beginIndex) {
            if (endIndex <= string.length()) {
                if (Intrinsics.c(charset, Charsets.UTF_8)) {
                    return writeUtf8(string, beginIndex, endIndex);
                }
                String strSubstring = string.substring(beginIndex, endIndex);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                byte[] bytes = strSubstring.getBytes(charset);
                Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + endIndex + " > " + string.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + endIndex + " < " + beginIndex).toString());
    }

    @Override
    public int write(ByteBuffer source) throws IOException {
        Intrinsics.h(source, "source");
        int iRemaining = source.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i10, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i10 -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += (long) iRemaining;
        return iRemaining;
    }

    @Override
    public int read(byte[] sink) {
        Intrinsics.h(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override
    public int read(byte[] sink, int offset, int byteCount) {
        Intrinsics.h(sink, "sink");
        SegmentedByteString.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(byteCount, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i10 = segment.pos;
        ArraysKt.h(bArr, sink, offset, i10, i10 + iMin);
        segment.pos += iMin;
        setSize$okio(size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public final Buffer copyTo(Buffer out, long offset) {
        Intrinsics.h(out, "out");
        return copyTo(out, offset, this.size - offset);
    }

    @Override
    public Buffer write(ByteString byteString) {
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    public final Buffer copyTo(Buffer out, long offset, long byteCount) {
        Intrinsics.h(out, "out");
        SegmentedByteString.checkOffsetAndCount(size(), offset, byteCount);
        if (byteCount != 0) {
            out.setSize$okio(out.size() + byteCount);
            Segment segment = this.head;
            while (true) {
                Intrinsics.e(segment);
                int i10 = segment.limit;
                int i11 = segment.pos;
                if (offset < i10 - i11) {
                    break;
                }
                offset -= (long) (i10 - i11);
                segment = segment.next;
            }
            while (byteCount > 0) {
                Intrinsics.e(segment);
                Segment segmentSharedCopy = segment.sharedCopy();
                int i12 = segmentSharedCopy.pos + ((int) offset);
                segmentSharedCopy.pos = i12;
                segmentSharedCopy.limit = Math.min(i12 + ((int) byteCount), segmentSharedCopy.limit);
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
                byteCount -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
                segment = segment.next;
                offset = 0;
            }
        }
        return this;
    }

    @Override
    public Buffer write(ByteString byteString, int offset, int byteCount) {
        Intrinsics.h(byteString, "byteString");
        byteString.write$okio(this, offset, byteCount);
        return this;
    }

    @Override
    public Buffer write(byte[] source) {
        Intrinsics.h(source, "source");
        return write(source, 0, source.length);
    }

    @Override
    public Buffer write(byte[] source, int offset, int byteCount) {
        Intrinsics.h(source, "source");
        long j10 = byteCount;
        SegmentedByteString.checkOffsetAndCount(source.length, offset, j10);
        int i10 = byteCount + offset;
        while (offset < i10) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i10 - offset, 8192 - segmentWritableSegment$okio.limit);
            int i11 = offset + iMin;
            ArraysKt.h(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, offset, i11);
            segmentWritableSegment$okio.limit += iMin;
            offset = i11;
        }
        setSize$okio(size() + j10);
        return this;
    }

    @Override
    public long read(Buffer sink, long byteCount) {
        Intrinsics.h(sink, "sink");
        if (byteCount < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (byteCount > size()) {
            byteCount = size();
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    @Override
    public Buffer write(Source source, long byteCount) throws IOException {
        Intrinsics.h(source, "source");
        while (byteCount > 0) {
            long j10 = source.read(this, byteCount);
            if (j10 == -1) {
                throw new EOFException();
            }
            byteCount -= j10;
        }
        return this;
    }

    @Override
    public long indexOf(ByteString bytes, long fromIndex) throws IOException {
        int i10;
        long j10 = fromIndex;
        Intrinsics.h(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        long size = 0;
        if (j10 >= 0) {
            Segment segment = this.head;
            if (segment != null) {
                if (size() - j10 < j10) {
                    size = size();
                    while (size > j10) {
                        segment = segment.prev;
                        Intrinsics.e(segment);
                        size -= (long) (segment.limit - segment.pos);
                    }
                    byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                    byte b10 = bArrInternalArray$okio[0];
                    int size2 = bytes.size();
                    long size3 = (size() - ((long) size2)) + 1;
                    while (size < size3) {
                        byte[] bArr = segment.data;
                        long j11 = size3;
                        int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                        i10 = (int) ((((long) segment.pos) + j10) - size);
                        while (i10 < iMin) {
                            if (bArr[i10] == b10 && okio.internal.Buffer.rangeEquals(segment, i10 + 1, bArrInternalArray$okio, 1, size2)) {
                                return ((long) (i10 - segment.pos)) + size;
                            }
                            i10++;
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j10 = size;
                        size3 = j11;
                    }
                } else {
                    while (true) {
                        long j12 = ((long) (segment.limit - segment.pos)) + size;
                        if (j12 > j10) {
                            break;
                        }
                        segment = segment.next;
                        Intrinsics.e(segment);
                        size = j12;
                    }
                    byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
                    byte b11 = bArrInternalArray$okio2[0];
                    int size4 = bytes.size();
                    long size5 = (size() - ((long) size4)) + 1;
                    while (size < size5) {
                        byte[] bArr2 = segment.data;
                        int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
                        i10 = (int) ((((long) segment.pos) + j10) - size);
                        while (i10 < iMin2) {
                            if (bArr2[i10] == b11 && okio.internal.Buffer.rangeEquals(segment, i10 + 1, bArrInternalArray$okio2, 1, size4)) {
                                return ((long) (i10 - segment.pos)) + size;
                            }
                            i10++;
                        }
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        Intrinsics.e(segment);
                        j10 = size;
                    }
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }

    @Override
    public void write(Buffer source, long byteCount) {
        Segment segment;
        Intrinsics.h(source, "source");
        if (source != this) {
            SegmentedByteString.checkOffsetAndCount(source.size(), 0L, byteCount);
            while (byteCount > 0) {
                Segment segment2 = source.head;
                Intrinsics.e(segment2);
                int i10 = segment2.limit;
                Segment segment3 = source.head;
                Intrinsics.e(segment3);
                if (byteCount < i10 - segment3.pos) {
                    Segment segment4 = this.head;
                    if (segment4 != null) {
                        Intrinsics.e(segment4);
                        segment = segment4.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + byteCount) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment5 = source.head;
                            Intrinsics.e(segment5);
                            segment5.writeTo(segment, (int) byteCount);
                            source.setSize$okio(source.size() - byteCount);
                            setSize$okio(size() + byteCount);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.e(segment6);
                    source.head = segment6.split((int) byteCount);
                }
                Segment segment7 = source.head;
                Intrinsics.e(segment7);
                long j10 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.e(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.e(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j10);
                setSize$okio(size() + j10);
                byteCount -= j10;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
