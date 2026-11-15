package androidx.media3.exoplayer.offline;

public final class c {

    public final DownloadRequest f12101a;

    public final int f12102b;

    public final long f12103c;

    public final long f12104d;

    public final long f12105e;

    public final int f12106f;

    public final int f12107g;

    final l f12108h;

    public c(DownloadRequest downloadRequest, int i10, long j10, long j11, long j12, int i11, int i12) {
        this(downloadRequest, i10, j10, j11, j12, i11, i12, new l());
    }

    public long a() {
        return this.f12108h.f12112a;
    }

    public float b() {
        return this.f12108h.f12113b;
    }

    public boolean c() {
        int i10 = this.f12102b;
        return i10 == 3 || i10 == 4;
    }

    public c(DownloadRequest downloadRequest, int i10, long j10, long j11, long j12, int i11, int i12, l lVar) {
        androidx.media3.common.util.a.e(lVar);
        boolean z10 = false;
        androidx.media3.common.util.a.a((i12 == 0) == (i10 != 4));
        if (i11 != 0) {
            if (i10 != 2 && i10 != 0) {
                z10 = true;
            }
            androidx.media3.common.util.a.a(z10);
        }
        this.f12101a = downloadRequest;
        this.f12102b = i10;
        this.f12103c = j10;
        this.f12104d = j11;
        this.f12105e = j12;
        this.f12106f = i11;
        this.f12107g = i12;
        this.f12108h = lVar;
    }
}
