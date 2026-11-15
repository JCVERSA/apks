.class public final Lece;
.super Lo9e;
.source "SourceFile"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Ld9e;J)V
    .locals 2

    invoke-direct {p0, p1}, Lo9e;-><init>(Ld9e;)V

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ln7g;->d(Z)V

    iput-wide p2, p0, Lece;->b:J

    return-void
.end method


# virtual methods
.method public final zzd()J
    .locals 4

    invoke-super {p0}, Lo9e;->zzd()J

    move-result-wide v0

    iget-wide v2, p0, Lece;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zze()J
    .locals 4

    invoke-super {p0}, Lo9e;->zze()J

    move-result-wide v0

    iget-wide v2, p0, Lece;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzf()J
    .locals 4

    invoke-super {p0}, Lo9e;->zzf()J

    move-result-wide v0

    iget-wide v2, p0, Lece;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
