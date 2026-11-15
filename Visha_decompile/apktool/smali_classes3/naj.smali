.class public final Lnaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8j;


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Lvwe;


# direct methods
.method public constructor <init>(Ltbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lvwe;->d:Lvwe;

    iput-object p1, p0, Lnaj;->d:Lvwe;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lnaj;->b:J

    iget-boolean p1, p0, Lnaj;->a:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lnaj;->c:J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lnaj;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lnaj;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnaj;->a:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lnaj;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnaj;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnaj;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnaj;->a:Z

    :cond_0
    return-void
.end method

.method public final h(Lvwe;)V
    .locals 2

    iget-boolean v0, p0, Lnaj;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnaj;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnaj;->a(J)V

    :cond_0
    iput-object p1, p0, Lnaj;->d:Lvwe;

    return-void
.end method

.method public final zza()J
    .locals 6

    iget-wide v0, p0, Lnaj;->b:J

    iget-boolean v2, p0, Lnaj;->a:Z

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lnaj;->c:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lnaj;->d:Lvwe;

    iget v4, p0, Lvwe;->a:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lkfh;->N(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lvwe;->a(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method

.method public final zzc()Lvwe;
    .locals 0

    iget-object p0, p0, Lnaj;->d:Lvwe;

    return-object p0
.end method

.method public final synthetic zzj()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
