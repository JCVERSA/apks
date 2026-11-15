.class public final Ljte;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "mbdIWlqr/AIx3NpqoEZqhPYOK/hsicHKSTj8PTzGR/g="

    const/4 v6, 0x3

    const-string v2, "eOeeCCDaHEKu0CdXgH37stIhKsViYKbWUfDprJIAztyuoZ35HLkPrqpB3uvB5WOW"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcye;->c3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lore;

    invoke-direct {v1, v0}, Lore;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lore;->b:J

    invoke-virtual {p0, v2, v3}, Looe;->j0(J)Looe;

    iget-wide v0, v1, Lore;->c:J

    invoke-virtual {p0, v0, v1}, Looe;->v(J)Looe;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
