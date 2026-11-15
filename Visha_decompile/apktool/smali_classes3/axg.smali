.class public final Laxg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final c:Lhmh;

.field public final d:Lejf;

.field public final e:Lsmg;

.field public f:Lcom/google/android/gms/internal/ads/b6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lhmh;Lejf;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxg;->a:Landroid/content/Context;

    iput-object p2, p0, Laxg;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Laxg;->c:Lhmh;

    iput-object p4, p0, Laxg;->d:Lejf;

    iput-object p5, p0, Laxg;->e:Lsmg;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lzwg;->g(Lcom/google/android/gms/internal/ads/b6;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxg;->d:Lejf;

    if-eqz v0, :cond_0

    const-string v1, "onSdkImpression"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v0, :cond_1

    iget-object v1, p0, Laxg;->d:Lejf;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lejf;->zzV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lzwg;->g(Lcom/google/android/gms/internal/ads/b6;Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "onSdkLoaded"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized e(Z)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Laxg;->c:Lhmh;

    iget-boolean v0, p1, Lhmh;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Lcye;->m5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Laxg;->d:Lejf;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v2, :cond_1

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Omid javascript session service already started for ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v2, p0, Laxg;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v3

    invoke-interface {v3, v2}, Lzwg;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to initialize omid."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object p1, p1, Lhmh;->V:Lhnh;

    invoke-virtual {p1}, Lhnh;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Laxg;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v2

    invoke-interface {v0}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, p1, v3, v4}, Lzwg;->j(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/b6;

    move-result-object p1

    sget-object v2, Lcye;->q5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Laxg;->e:Lsmg;

    if-eqz p1, :cond_3

    const-string v3, "1"

    goto :goto_0

    :cond_3
    const-string v3, "0"

    :goto_0
    invoke-virtual {v2}, Lsmg;->a()Lrmg;

    move-result-object v2

    const-string v5, "omid_js_session_success"

    invoke-virtual {v2, v5, v3}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v2}, Lrmg;->j()V

    :cond_4
    if-nez p1, :cond_5

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Unable to create javascript session service."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_5
    :try_start_3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Created omid javascript session service."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iput-object p1, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    invoke-interface {v0, p0}, Lejf;->zzas(Laxg;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v4

    :cond_6
    :goto_1
    monitor-exit p0

    return v1

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Lojf;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    if-eqz v0, :cond_0

    iget-object v1, p0, Laxg;->d:Lejf;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lzwg;->b(Lcom/google/android/gms/internal/ads/b6;Lojf;)V

    const/4 p1, 0x0

    iput-object p1, p0, Laxg;->f:Lcom/google/android/gms/internal/ads/b6;

    invoke-interface {v1, p1}, Lejf;->zzas(Laxg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
