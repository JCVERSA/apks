.class public final Llte;
.super Ltte;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;

.field public final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILandroid/content/Context;)V
    .locals 7

    const-string v3, "y6emfCNhZ0kgm94Xn7mtTAzqT55FluzQgY4gK5Wl0vc="

    const/16 v6, 0x1f

    const-string v2, "LPK2X6rZ40gCB/Aq86X/xtgAWXMNEk55OhrxDhgRpzoh9HPZZ/0RCmx0fLjxSQow"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Llte;->i:Ljava/util/List;

    iput-object p7, p0, Llte;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Ltte;->e:Looe;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Looe;->Q(J)Looe;

    invoke-virtual {v0, v1, v2}, Looe;->M(J)Looe;

    iget-object v1, p0, Llte;->j:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Llte;->i:Ljava/util/List;

    if-nez v2, :cond_1

    iget-object v2, p0, Ltte;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Llte;->i:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Llte;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llte;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Looe;->Q(J)Looe;

    iget-object p0, p0, Llte;->i:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Looe;->M(J)Looe;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
