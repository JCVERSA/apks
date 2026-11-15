package com.yandex.mobile.ads.impl;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;

final class yh {

    @Nullable
    private final a a;
    private int b;
    private long c;
    private long d;
    private long e;
    private long f;

    @RequiresApi(19)
    public static final class a {
        private final AudioTrack a;
        private final AudioTimestamp b = new AudioTimestamp();
        private long c;
        private long d;
        private long e;

        public a(AudioTrack audioTrack) {
            this.a = audioTrack;
        }

        public final boolean b() {
            boolean timestamp = this.a.getTimestamp(this.b);
            if (timestamp) {
                long j = this.b.framePosition;
                if (this.d > j) {
                    this.c++;
                }
                this.d = j;
                this.e = j + (this.c << 32);
            }
            return timestamp;
        }

        public final long a() {
            return this.b.nanoTime / 1000;
        }
    }

    public yh(AudioTrack audioTrack) {
        if (f92.a >= 19) {
            this.a = new a(audioTrack);
            f();
        } else {
            this.a = null;
            a(3);
        }
    }

    public final void a() {
        if (this.b == 4) {
            f();
        }
    }

    @TargetApi(19)
    public final long b() {
        a aVar = this.a;
        if (aVar != null) {
            return aVar.e;
        }
        return -1L;
    }

    @TargetApi(19)
    public final long c() {
        a aVar = this.a;
        return aVar != null ? aVar.a() : C.TIME_UNSET;
    }

    public final boolean d() {
        return this.b == 2;
    }

    public final void e() {
        a(4);
    }

    public final void f() {
        if (this.a != null) {
            a(0);
        }
    }

    @TargetApi(19)
    public final boolean a(long j) {
        a aVar = this.a;
        if (aVar == null || j - this.e < this.d) {
            return false;
        }
        this.e = j;
        boolean zB = aVar.b();
        int i = this.b;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (zB) {
                        f();
                    }
                } else if (!zB) {
                    f();
                }
            } else if (!zB) {
                f();
            } else if (this.a.e > this.f) {
                a(2);
            }
        } else if (zB) {
            if (this.a.a() < this.c) {
                return false;
            }
            this.f = this.a.e;
            a(1);
        } else if (j - this.c > 500000) {
            a(3);
        }
        return zB;
    }

    private void a(int i) {
        this.b = i;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.c = System.nanoTime() / 1000;
            this.d = 10000L;
            return;
        }
        if (i == 1) {
            this.d = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.d = 10000000L;
        } else {
            if (i == 4) {
                this.d = 500000L;
                return;
            }
            throw new IllegalStateException();
        }
    }
}
