package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.decoder.h;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Settings;

@SuppressLint({"UnsafeOptInUsageError"})
final class FfmpegAudioDecoder extends SimpleDecoder {

    private final String f62278o;

    private final byte[] f62279p;

    private final int f62280q;

    private int f62281r;

    private long f62282s;

    private boolean f62283t;

    private volatile int f62284u;

    private volatile int f62285v;

    public FfmpegAudioDecoder(r rVar, int i10, int i11, int i12, boolean z10) throws FfmpegDecoderException {
        super(new DecoderInputBuffer[i10], new SimpleDecoderOutputBuffer[i11]);
        if (!FfmpegLibrary.d()) {
            throw new FfmpegDecoderException("Failed to load decoder native libraries.");
        }
        androidx.media3.common.util.a.e(rVar.f9849o);
        String str = (String) androidx.media3.common.util.a.e(FfmpegLibrary.a(rVar.f9849o));
        this.f62278o = str;
        byte[] bArrA = A(rVar.f9849o, rVar.f9852r);
        this.f62279p = bArrA;
        this.f62280q = z10 ? 4 : 2;
        this.f62281r = z10 ? 131070 : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        long jFfmpegInitialize = ffmpegInitialize(str, bArrA, z10, rVar.F, rVar.E);
        this.f62282s = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Initialization failed.");
        }
        s(i12);
    }

    private static byte[] A(String str, List list) {
        if (list.isEmpty()) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "audio/vorbis":
                return C(list);
            case "audio/mp4a-latm":
            case "audio/opus":
                return (byte[]) list.get(0);
            case "audio/alac":
                return x(list);
            default:
                return null;
        }
    }

    private static byte[] C(List list) {
        byte[] bArr = (byte[]) list.get(0);
        byte[] bArr2 = (byte[]) list.get(1);
        byte[] bArr3 = new byte[bArr.length + bArr2.length + 6];
        bArr3[0] = (byte) (bArr.length >> 8);
        bArr3[1] = (byte) (bArr.length & 255);
        System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
        bArr3[bArr.length + 2] = 0;
        bArr3[bArr.length + 3] = 0;
        bArr3[bArr.length + 4] = (byte) (bArr2.length >> 8);
        bArr3[bArr.length + 5] = (byte) (bArr2.length & 255);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 6, bArr2.length);
        return bArr3;
    }

    private native int ffmpegDecode(long j10, ByteBuffer byteBuffer, int i10, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, ByteBuffer byteBuffer2, int i11);

    private native int ffmpegGetChannelCount(long j10);

    private native int ffmpegGetSampleRate(long j10);

    private native long ffmpegInitialize(String str, @Nullable byte[] bArr, boolean z10, int i10, int i11);

    private native void ffmpegRelease(long j10);

    private native long ffmpegReset(long j10, @Nullable byte[] bArr);

    @Keep
    private ByteBuffer growOutputBuffer(SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i10) {
        this.f62281r = i10;
        return simpleDecoderOutputBuffer.a(i10);
    }

    private static byte[] x(List list) {
        byte[] bArr = (byte[]) list.get(0);
        int length = bArr.length + 12;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1634492771);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(bArr, 0, bArr.length);
        return byteBufferAllocate.array();
    }

    public int B() {
        return this.f62285v;
    }

    @Override
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(2, FfmpegLibrary.b());
    }

    @Override
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.c() + "-" + this.f62278o;
    }

    @Override
    public void release() {
        super.release();
        ffmpegRelease(this.f62282s);
        this.f62282s = 0L;
    }

    @Override
    public SimpleDecoderOutputBuffer f() {
        return new SimpleDecoderOutputBuffer(new h.a() {
            @Override
            public final void a(h hVar) {
                this.f62294a.p((SimpleDecoderOutputBuffer) hVar);
            }
        });
    }

    @Override
    public FfmpegDecoderException g(Throwable th2) {
        return new FfmpegDecoderException("Unexpected decode error", th2);
    }

    @Override
    public FfmpegDecoderException h(DecoderInputBuffer decoderInputBuffer, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, boolean z10) {
        if (z10) {
            long jFfmpegReset = ffmpegReset(this.f62282s, this.f62279p);
            this.f62282s = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = (ByteBuffer) a1.i(decoderInputBuffer.f10606c);
        int iFfmpegDecode = ffmpegDecode(this.f62282s, byteBuffer, byteBuffer.limit(), simpleDecoderOutputBuffer, simpleDecoderOutputBuffer.b(decoderInputBuffer.f10608e, this.f62281r), this.f62281r);
        if (iFfmpegDecode == -2) {
            return new FfmpegDecoderException("Error decoding (see logcat).");
        }
        if (iFfmpegDecode == -1) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (iFfmpegDecode == 0) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (!this.f62283t) {
            this.f62284u = ffmpegGetChannelCount(this.f62282s);
            this.f62285v = ffmpegGetSampleRate(this.f62282s);
            if (this.f62285v == 0 && "alac".equals(this.f62278o)) {
                androidx.media3.common.util.a.e(this.f62279p);
                j0 j0Var = new j0(this.f62279p);
                j0Var.W(this.f62279p.length - 4);
                this.f62285v = j0Var.L();
            }
            this.f62283t = true;
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) androidx.media3.common.util.a.e(simpleDecoderOutputBuffer.f10627b);
        byteBuffer2.position(0);
        byteBuffer2.limit(iFfmpegDecode);
        return null;
    }

    public int y() {
        return this.f62284u;
    }

    public int z() {
        return this.f62280q;
    }
}
