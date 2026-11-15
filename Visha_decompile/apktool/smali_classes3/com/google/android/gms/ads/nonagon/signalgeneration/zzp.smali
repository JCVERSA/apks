.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

.field public final b:Lxmg;

.field public final c:Z

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;ZILjava/lang/Boolean;Lxmg;)V
    .locals 0
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->c:Z

    iput p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->d:I

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->f:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->b:Lxmg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->e:J

    return-void
.end method

.method public static a()J
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Le0f;->h:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final b()J
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->e:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 14

    new-instance v0, Landroid/util/Pair;

    const-string v1, "sgf_reason"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "se"

    const-string v3, "query_g"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_format"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rtype"

    invoke-direct {v3, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "scar"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lat_ms"

    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    iget v12, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->d:I

    const-string v7, "sgpc_rn"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    iget-object v8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->f:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sgpc_lsu"

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v13, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->c:Z

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x1

    if-eq v9, v13, :cond_0

    const-string v9, "0"

    goto :goto_0

    :cond_0
    const-string v9, "1"

    :goto_0
    const-string v10, "tpc"

    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v8}, [Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->b:Lxmg;

    const/4 v2, 0x0

    const-string v3, "sgpcf"

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Lxmg;Llmg;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    const/4 v8, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->a()J

    move-result-wide v10

    move-object v7, v0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    invoke-virtual {p0, v13, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->a(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 13

    new-instance v0, Landroid/util/Pair;

    const-string v1, "se"

    const-string v2, "query_g"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_format"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rtype"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const-string v4, "scar"

    const-string v5, "true"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lat_ms"

    invoke-direct {v4, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    iget v11, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->d:I

    const-string v6, "sgpc_rn"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->f:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sgpc_lsu"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v12, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->c:Z

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    if-eq v8, v12, :cond_0

    const-string v8, "0"

    goto :goto_0

    :cond_0
    const-string v8, "1"

    :goto_0
    const-string v9, "tpc"

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v7}, [Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->b:Lxmg;

    const/4 v2, 0x0

    const-string v3, "sgpcs"

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Lxmg;Llmg;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    const-string v8, ""

    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->a()J

    move-result-wide v9

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    invoke-virtual {p0, v12, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->a(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    return-void
.end method
