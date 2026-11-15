.class public final Lcom/google/android/gms/internal/ads/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public final d:J

.field public final e:Leff;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/lang/ref/WeakReference;

.field public final h:Ljkg;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Ljava/util/concurrent/ScheduledExecutorService;

.field public final l:Lbng;

.field public final m:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final n:Ljava/util/Map;

.field public final o:Lp7g;

.field public final p:Lcom/google/android/gms/internal/ads/zzfgq;

.field public q:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;Ljkg;Ljava/util/concurrent/ScheduledExecutorService;Lbng;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lp7g;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->c:Z

    new-instance v1, Leff;

    invoke-direct {v1}, Leff;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/t4;->n:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t4;->q:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/t4;->h:Ljkg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t4;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/t4;->g:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/t4;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/t4;->j:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/t4;->m:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/t4;->p:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/t4;->d:J

    const-string p1, ""

    const-string p2, "com.google.android.gms.ads.MobileAds"

    invoke-virtual {p0, p2, v0, p1, v0}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/ads/t4;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/t4;->d:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/t4;)Leff;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/t4;)Lp7g;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/t4;)Lbng;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/t4;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->p:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/gms/internal/ads/t4;Lwrh;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Leff;->c(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lwrh;->zzg(Z)Lwrh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->p:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-interface {p1}, Lwrh;->zzm()Lash;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/internal/ads/t4;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Leff;Ljava/lang/String;JLwrh;)V
    .locals 3

    monitor-enter p1

    :try_start_0
    invoke-virtual {p2}, Leff;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Timeout."

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p4

    long-to-int p4, v1

    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5, v0, p4}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    const-string v0, "timeout"

    invoke-virtual {p4, p3, v0}, Lbng;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    const-string v0, "timeout"

    invoke-virtual {p4, p3, v0}, Lp7g;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->p:Lcom/google/android/gms/internal/ads/zzfgq;

    const-string p3, "Timeout"

    invoke-interface {p6, p3}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    invoke-interface {p6, p5}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p6}, Lwrh;->zzm()Lash;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, Leff;->c(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic j(Lcom/google/android/gms/internal/ads/t4;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    invoke-virtual {v0}, Lbng;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    invoke-virtual {v0}, Lp7g;->zze()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->b:Z

    return-void
.end method

.method public static synthetic k(Lcom/google/android/gms/internal/ads/t4;Leff;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdtc;-><init>(Lcom/google/android/gms/internal/ads/t4;Leff;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/gms/internal/ads/t4;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->c:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.MobileAds"

    const-string v1, "Timeout."

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/t4;->d:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    const-string v1, "com.google.android.gms.ads.MobileAds"

    const-string v2, "timeout"

    invoke-virtual {v0, v1, v2}, Lbng;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    const-string v1, "com.google.android.gms.ads.MobileAds"

    const-string v2, "timeout"

    invoke-virtual {v0, v1, v2}, Lp7g;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Leff;->d(Ljava/lang/Throwable;)Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Leoh;Ljava/util/List;)V
    .locals 1

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbll;->zzf()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->f:Landroid/content/Context;

    :goto_0
    invoke-virtual {p3, v0, p2, p4}, Leoh;->n(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbll;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfuu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to initialize adapter. "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not implement the initialize() method."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzbll;->zze(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/android/gms/internal/ads/t4;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/t4;->c:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v9, p0

    const-string v10, "data"

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/t4;->f:Landroid/content/Context;

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v13

    invoke-interface {v13}, Lwrh;->zzi()Lwrh;

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initializer_settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v11, v12}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v6

    invoke-interface {v6}, Lwrh;->zzi()Lwrh;

    invoke-interface {v6, v0}, Lwrh;->zzd(Ljava/lang/String;)Lwrh;

    new-instance v17, Ljava/lang/Object;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    new-instance v7, Leff;

    invoke-direct {v7}, Leff;-><init>()V

    sget-object v1, Lcye;->a2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/t4;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object v5

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    invoke-virtual {v1, v0}, Lbng;->c(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    invoke-virtual {v1, v0}, Lp7g;->zzc(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v18

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdsy;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object v12, v4

    move-object v4, v7

    move-object v14, v5

    move-object v5, v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v6, v18

    move-object/from16 v22, v11

    move-object v11, v8

    move-object/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdsy;-><init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Leff;Ljava/lang/String;JLwrh;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v14, v12, v1}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdth;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object v4, v0

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzdth;-><init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/Object;Ljava/lang/String;JLwrh;Leff;)V

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, ""

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "format"

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 p1, v1

    invoke-virtual {v3, v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    goto :goto_2

    :cond_0
    move-object/from16 p1, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblr;

    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzblr;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v9, v0, v1, v7, v1}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->h:Ljkg;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljkg;->c(Ljava/lang/String;Lorg/json/JSONObject;)Leoh;

    move-result-object v5

    iget-object v8, v9, Lcom/google/android/gms/internal/ads/t4;->j:Ljava/util/concurrent/Executor;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzdtd;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdtd;-><init>(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbll;Leoh;Ljava/util/List;)V

    invoke-interface {v8, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-object v8, v11

    move-object/from16 v11, v22

    const/4 v12, 0x5

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "Failed to create Adapter."

    sget-object v2, Lcye;->ad:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_4
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/ads/zzbll;->zze(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :goto_5
    :try_start_5
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v7, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/j8;->a(Ljava/lang/Iterable;)Lw7i;

    move-result-object v0

    new-instance v1, Lfog;

    invoke-direct {v1, v9, v13}, Lfog;-><init>(Lcom/google/android/gms/internal/ads/t4;Lwrh;)V

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :goto_6
    const-string v1, "Malformed CLD response"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    const-string v2, "MalformedJson"

    invoke-virtual {v1, v2}, Lp7g;->zza(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    invoke-virtual {v1, v2}, Lbng;->a(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    invoke-virtual {v1, v0}, Leff;->d(Ljava/lang/Throwable;)Z

    const-string v1, "AdapterInitializer.updateAdapterStatus"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/t4;->p:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-interface {v13, v0}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    const/4 v2, 0x0

    invoke-interface {v13, v2}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {v13}, Lwrh;->zzm()Lash;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/google/android/gms/internal/ads/t4;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final g()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->n:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzblh;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzblh;

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzblh;->zzb:Z

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzblh;->zzc:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzblh;->zzd:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzblh;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->q:Z

    return-void
.end method

.method public final r()V
    .locals 7

    sget-object v0, Lf0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->m:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    sget-object v2, Lcye;->Z1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->q:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->l:Lbng;

    invoke-virtual {v0}, Lbng;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->o:Lp7g;

    invoke-virtual {v0}, Lp7g;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdte;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdte;-><init>(Lcom/google/android/gms/internal/ads/t4;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t4;->i:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/t4;->u()Lim5;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/t4;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdsx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdsx;-><init>(Lcom/google/android/gms/internal/ads/t4;)V

    sget-object v4, Lcye;->b2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Ljog;

    invoke-direct {v1, p0}, Ljog;-><init>(Lcom/google/android/gms/internal/ads/t4;)V

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    if-nez v0, :cond_3

    const-string v0, ""

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/t4;->v(Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Leff;->c(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t4;->a:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/t4;->b:Z

    :cond_3
    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzblo;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdtb;-><init>(Lcom/google/android/gms/internal/ads/t4;Lcom/google/android/gms/internal/ads/zzblo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/t4;->j:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->e:Leff;

    invoke-virtual {p0, v0, p1}, Leff;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/t4;->b:Z

    return p0
.end method

.method public final declared-synchronized u()Lim5;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lief;

    move-result-object v0

    invoke-virtual {v0}, Lief;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdta;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdta;-><init>(Lcom/google/android/gms/internal/ads/t4;Leff;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzo(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final v(Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblh;

    invoke-direct {v0, p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzblh;-><init>(Ljava/lang/String;ZILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/t4;->n:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
