package defpackage;

public final class aee extends l8e implements eee {
    public final long g;
    public final int h;
    public final int i;
    public final long j;

    public aee(long j, long j2, int i, int i2, boolean z) {
        super(j, j2, i, i2, false);
        this.g = j2;
        this.h = i;
        this.i = i2;
        this.j = j == -1 ? -1L : j;
    }

    @Override
    public final long c(long j) {
        return b(j);
    }

    public final aee e(long j) {
        return new aee(j, this.g, this.h, this.i, false);
    }

    @Override
    public final int zzc() {
        return this.h;
    }

    @Override
    public final long zzd() {
        return this.j;
    }
}
