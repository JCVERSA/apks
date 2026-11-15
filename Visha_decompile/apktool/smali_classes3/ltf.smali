.class public final Lltf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1g;
.implements Ld0g;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lejf;

.field public final d:Lhmh;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public f:Lfxg;

.field public g:Z

.field public final h:Laxg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lejf;Lhmh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Laxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lltf;->b:Landroid/content/Context;

    iput-object p2, p0, Lltf;->c:Lejf;

    iput-object p3, p0, Lltf;->d:Lhmh;

    iput-object p4, p0, Lltf;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lltf;->h:Laxg;

    return-void
.end method

.method private final declared-synchronized a()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lltf;->d:Lhmh;

    iget-boolean v1, v0, Lhmh;->T:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lltf;->c:Lejf;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lltf;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v3

    invoke-interface {v3, v2}, Lzwg;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lltf;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v3, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lhmh;->V:Lhnh;

    invoke-virtual {v2}, Lhnh;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lhnh;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzebw;->zzc:Lcom/google/android/gms/internal/ads/zzebw;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzebx;->zzb:Lcom/google/android/gms/internal/ads/zzebx;

    move-object v12, v2

    move-object v11, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    iget v2, v0, Lhmh;->e:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzebw;->zza:Lcom/google/android/gms/internal/ads/zzebw;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zzc:Lcom/google/android/gms/internal/ads/zzebx;

    :goto_0
    move-object v11, v2

    move-object v12, v4

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zza:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_0

    :goto_1
    iget-object v13, v0, Lhmh;->l0:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v5

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v9, "javascript"

    invoke-interface/range {v5 .. v13}, Lzwg;->d(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lfxg;

    move-result-object v0

    iput-object v0, p0, Lltf;->f:Lfxg;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lfxg;->a()Lpuh;

    move-result-object v0

    sget-object v2, Lcye;->o5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v2

    invoke-interface {v1}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    invoke-interface {v1}, Lejf;->zzV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lzwg;->e(Lpuh;Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lejf;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lzwg;->c(Lpuh;Landroid/view/View;)V

    :cond_4
    iget-object v2, p0, Lltf;->f:Lfxg;

    invoke-interface {v1, v2}, Lejf;->zzat(Lfxg;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v2

    invoke-interface {v2, v0}, Lzwg;->h(Lpuh;)V

    iput-boolean v3, p0, Lltf;->g:Z

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v1, v2, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    sget-object v0, Lcye;->p5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lltf;->h:Laxg;

    invoke-virtual {p0}, Laxg;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized zzs()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lltf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltf;->h:Laxg;

    invoke-virtual {v0}, Laxg;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lltf;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lltf;->a()V

    :cond_1
    iget-object v0, p0, Lltf;->d:Lhmh;

    iget-boolean v0, v0, Lhmh;->T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lltf;->f:Lfxg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lltf;->c:Lejf;

    if-eqz v0, :cond_2

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzt()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lltf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltf;->h:Laxg;

    invoke-virtual {v0}, Laxg;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lltf;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lltf;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
