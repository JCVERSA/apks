.class public final Lzse;
.super Ltte;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/Map;

.field public final j:Landroid/view/View;

.field public final k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;IILjava/util/Map;Landroid/view/View;Landroid/content/Context;)V
    .locals 8

    move-object v7, p0

    const-string v3, "CMabZGCeVS+h4QS0ZdkH8zZqB5SpBTHljExDl6prBWs="

    const/16 v6, 0x55

    const-string v2, "XpvF2/uvRNELJ1euLlde/4Jw6HxaseM6XnxEZgh8F+D9gojVn7K9cNMJ3MeGBnay"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    move-object v0, p7

    iput-object v0, v7, Lzse;->i:Ljava/util/Map;

    move-object/from16 v0, p8

    iput-object v0, v7, Lzse;->j:Landroid/view/View;

    move-object/from16 v0, p9

    iput-object v0, v7, Lzse;->k:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzse;->b(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lzse;->b(I)J

    move-result-wide v4

    new-array v6, v3, [J

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    aput-wide v4, v6, v0

    iget-object v1, p0, Lzse;->k:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lzse;->j:Landroid/view/View;

    filled-new-array {v6, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    aget-wide v4, v1, v7

    iget-object v2, p0, Lzse;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-wide v7, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v6, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aget-wide v8, v1, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ltte;->e:Looe;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v4, v5}, Looe;->t0(J)Looe;

    invoke-virtual {p0, v6, v7}, Looe;->s0(J)Looe;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)J
    .locals 1

    iget-object p0, p0, Lzse;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0
.end method
