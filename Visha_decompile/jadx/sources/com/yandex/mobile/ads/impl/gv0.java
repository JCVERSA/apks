package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

public interface gv0 {

    public static final class a {
        public final kv0 a;
        public final MediaFormat b;
        public final jc0 c;

        @Nullable
        public final Surface d;

        @Nullable
        public final MediaCrypto e;

        private a(kv0 kv0Var, MediaFormat mediaFormat, jc0 jc0Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            this.a = kv0Var;
            this.b = mediaFormat;
            this.c = jc0Var;
            this.d = surface;
            this.e = mediaCrypto;
        }

        public static a a(kv0 kv0Var, MediaFormat mediaFormat, jc0 jc0Var, @Nullable MediaCrypto mediaCrypto) {
            return new a(kv0Var, mediaFormat, jc0Var, null, mediaCrypto);
        }

        public static a a(kv0 kv0Var, MediaFormat mediaFormat, jc0 jc0Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(kv0Var, mediaFormat, jc0Var, surface, mediaCrypto);
        }
    }

    public interface b {
        gv0 a(a aVar) throws IOException;
    }

    public interface c {
        void a(long j);
    }

    int a(MediaCodec.BufferInfo bufferInfo);

    MediaFormat a();

    void a(int i);

    void a(int i, int i2, long j, int i3);

    @RequiresApi(21)
    void a(int i, long j);

    void a(int i, gv gvVar, long j);

    @RequiresApi(19)
    void a(Bundle bundle);

    @RequiresApi(23)
    void a(Surface surface);

    @RequiresApi(23)
    void a(c cVar, Handler handler);

    void a(boolean z, int i);

    int b();

    @Nullable
    ByteBuffer b(int i);

    @Nullable
    ByteBuffer c(int i);

    void flush();

    void release();
}
