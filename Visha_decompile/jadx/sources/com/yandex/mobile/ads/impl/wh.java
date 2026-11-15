package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

public interface wh {

    public static final class b extends Exception {
        public final int b;
        public final boolean c;
        public final jc0 d;

        public b(int i, int i2, int i3, int i4, jc0 jc0Var, boolean z, @Nullable RuntimeException runtimeException) {
            StringBuilder sb = new StringBuilder("AudioTrack init failed ");
            sb.append(i);
            sb.append(" Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(")");
            sb.append(z ? " (recoverable)" : "");
            super(sb.toString(), runtimeException);
            this.b = i;
            this.c = z;
            this.d = jc0Var;
        }
    }

    public interface c {
    }

    public static final class d extends Exception {
        public d(long j, long j2) {
            super("Unexpected audio track timestamp discontinuity: expected " + j2 + ", got " + j);
        }
    }

    public static final class e extends Exception {
        public final int b;
        public final boolean c;
        public final jc0 d;

        public e(int i, jc0 jc0Var, boolean z) {
            super(oe.a("AudioTrack write failed: ", i));
            this.c = z;
            this.b = i;
            this.d = jc0Var;
        }
    }

    long a(boolean z);

    void a(int i);

    void a(bi1 bi1Var);

    void a(jc0 jc0Var, @Nullable int[] iArr) throws a;

    void a(ji jiVar);

    default void a(@Nullable mi1 mi1Var) {
    }

    void a(ph phVar);

    boolean a();

    boolean a(jc0 jc0Var);

    boolean a(ByteBuffer byteBuffer, long j, int i) throws e, b;

    int b(jc0 jc0Var);

    void b();

    void b(boolean z);

    void c();

    void d() throws e;

    boolean e();

    void f();

    void flush();

    void g();

    bi1 getPlaybackParameters();

    void pause();

    void play();

    void setVolume(float f);

    public static final class a extends Exception {
        public final jc0 b;

        public a(uh.b bVar, jc0 jc0Var) {
            super(bVar);
            this.b = jc0Var;
        }

        public a(String str, jc0 jc0Var) {
            super(str);
            this.b = jc0Var;
        }
    }
}
