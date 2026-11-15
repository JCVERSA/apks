package defpackage;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

public final class qhj {
    public final AudioTrack a;
    public final AudioTimestamp b = new AudioTimestamp();
    public long c;
    public long d;
    public long e;
    public long f;

    public qhj(AudioTrack audioTrack) {
        this.a = audioTrack;
    }

    public final long a() {
        return this.e;
    }

    public final long b() {
        return this.b.nanoTime / 1000;
    }

    public final boolean c() {
        AudioTrack audioTrack = this.a;
        AudioTimestamp audioTimestamp = this.b;
        boolean timestamp = audioTrack.getTimestamp(audioTimestamp);
        if (timestamp) {
            long j = audioTimestamp.framePosition;
            if (this.d > j) {
                this.c++;
            }
            this.d = j;
            this.e = j + this.f + (this.c << 32);
        }
        return timestamp;
    }
}
