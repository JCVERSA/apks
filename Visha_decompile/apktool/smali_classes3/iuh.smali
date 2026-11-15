.class public final Liuh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:J

.field public final c:Lfy0;

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lfy0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liuh;->a:Ljava/lang/Object;

    iput-object p2, p0, Liuh;->c:Lfy0;

    invoke-interface {p2}, Lfy0;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Liuh;->b:J

    sget-object p1, Lcye;->D:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Liuh;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    sget-object v0, Lcye;->y:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Liuh;->d:J

    add-long/2addr v2, v0

    iget-object v0, p0, Liuh;->c:Lfy0;

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Liuh;->b:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Liuh;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Liuh;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final d()Z
    .locals 6

    iget-wide v0, p0, Liuh;->b:J

    iget-wide v2, p0, Liuh;->d:J

    iget-object p0, p0, Liuh;->c:Lfy0;

    invoke-interface {p0}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    cmp-long p0, v4, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
