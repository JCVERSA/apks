package defpackage;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

public interface rkj {
    void a(int i, int i2, int i3, long j, int i4);

    void b(Surface surface);

    boolean c(qkj qkjVar);

    void d(int i, int i2, pzi pziVar, long j, int i3);

    ByteBuffer e(int i);

    void f(int i, long j);

    void g(int i);

    void h(int i, boolean z);

    int i(MediaCodec.BufferInfo bufferInfo);

    int zza();

    MediaFormat zzc();

    ByteBuffer zzg(int i);

    void zzi();

    void zzj();

    void zzm();

    void zzq(Bundle bundle);
}
