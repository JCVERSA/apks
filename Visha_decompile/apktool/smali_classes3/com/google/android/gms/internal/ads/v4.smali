.class public final Lcom/google/android/gms/internal/ads/v4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/t4;

.field public final b:Lgkg;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/util/List;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t4;Lgkg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v4;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/t4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v4;->b:Lgkg;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v4;->d:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/v4;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/v4;->d(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v4;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/v4;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/t4;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t4;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t4;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/v4;->d(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/v4;->c()V

    monitor-exit v1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v4;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvog;

    invoke-virtual {v2}, Lvog;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    monitor-exit v1

    :goto_2
    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdtw;-><init>(Lcom/google/android/gms/internal/ads/v4;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v4;->a:Lcom/google/android/gms/internal/ads/t4;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/t4;->s(Lcom/google/android/gms/internal/ads/zzblo;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v4;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/v4;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzblh;

    sget-object v3, Lcye;->v9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v4;->b:Lgkg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzblh;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgkg;->a(Ljava/lang/String;)Lfkg;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lfkg;->c:Lcom/google/android/gms/internal/ads/zzbrm;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v6, v3

    goto :goto_3

    :cond_2
    :goto_2
    const-string v3, ""

    goto :goto_1

    :cond_3
    const-string v3, ""

    goto :goto_1

    :goto_3
    sget-object v3, Lcye;->w9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v4;->b:Lgkg;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzblh;->zza:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lgkg;->a(Ljava/lang/String;)Lfkg;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move v11, v4

    goto :goto_4

    :cond_5
    iget-boolean v3, v3, Lfkg;->d:Z

    if-eqz v3, :cond_4

    move v11, v2

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v4;->d:Ljava/util/List;

    new-instance v3, Lvog;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzblh;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/v4;->b:Lgkg;

    invoke-virtual {v4, v5}, Lgkg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzblh;->zzb:Z

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzblh;->zzd:Ljava/lang/String;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzblh;->zzc:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lvog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/v4;->e:Z

    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
