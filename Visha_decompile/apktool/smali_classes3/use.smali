.class public final Luse;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs="

    const/4 v6, 0x5

    const-string v2, "S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->e:Looe;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Looe;->m0(J)Looe;

    invoke-virtual {v0, v1, v2}, Looe;->l0(J)Looe;

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget v1, p0, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Looe;->m0(J)Looe;

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Looe;->l0(J)Looe;

    const/4 v1, 0x2

    aget p0, p0, v1

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Looe;->k0(J)Looe;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
