.class public final Lhig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luhg;

.field public final b:Lcom/google/android/gms/ads/internal/zza;

.field public final c:Landroid/content/Context;

.field public final d:Lsmg;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lfre;

.field public final g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final h:Ld4f;

.field public final i:Ldwg;

.field public final j:Lwth;

.field public final k:Lcom/google/android/gms/internal/ads/zzebe;

.field public final l:Linh;

.field public m:Lim5;


# direct methods
.method public constructor <init>(Leig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Leig;->a(Leig;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhig;->c:Landroid/content/Context;

    invoke-static {p1}, Leig;->j(Leig;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Leig;->b(Leig;)Lfre;

    move-result-object v0

    iput-object v0, p0, Lhig;->f:Lfre;

    invoke-static {p1}, Leig;->d(Leig;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lhig;->g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1}, Leig;->c(Leig;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    iput-object v0, p0, Lhig;->b:Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Luhg;

    invoke-direct {v0}, Luhg;-><init>()V

    iput-object v0, p0, Lhig;->a:Luhg;

    new-instance v0, Ld4f;

    invoke-direct {v0}, Ld4f;-><init>()V

    iput-object v0, p0, Lhig;->h:Ld4f;

    invoke-static {p1}, Leig;->f(Leig;)Ldwg;

    move-result-object v0

    iput-object v0, p0, Lhig;->i:Ldwg;

    invoke-static {p1}, Leig;->i(Leig;)Lwth;

    move-result-object v0

    iput-object v0, p0, Lhig;->j:Lwth;

    invoke-static {p1}, Leig;->e(Leig;)Lsmg;

    move-result-object v0

    iput-object v0, p0, Lhig;->d:Lsmg;

    invoke-static {p1}, Leig;->g(Leig;)Lcom/google/android/gms/internal/ads/zzebe;

    move-result-object v0

    iput-object v0, p0, Lhig;->k:Lcom/google/android/gms/internal/ads/zzebe;

    invoke-static {p1}, Leig;->h(Leig;)Linh;

    move-result-object p1

    iput-object p1, p0, Lhig;->l:Linh;

    return-void
.end method

.method public static synthetic a(Lhig;Lejf;)Lejf;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lhig;->h:Ld4f;

    const-string v3, "/result"

    invoke-interface {v1, v3, v2}, Lejf;->zzag(Ljava/lang/String;Ln3f;)V

    invoke-interface/range {p1 .. p1}, Lejf;->zzN()Likf;

    move-result-object v4

    new-instance v2, Lcom/google/android/gms/ads/internal/zzb;

    move-object v12, v2

    iget-object v3, v0, Lhig;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lddf;Lcom/google/android/gms/internal/ads/zzbug;)V

    iget-object v15, v0, Lhig;->i:Ldwg;

    iget-object v2, v0, Lhig;->j:Lwth;

    move-object/from16 v16, v2

    iget-object v2, v0, Lhig;->d:Lsmg;

    move-object/from16 v17, v2

    iget-object v6, v0, Lhig;->a:Luhg;

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v4 .. v23}, Likf;->d(Lcom/google/android/gms/ads/internal/client/zza;Lr1f;Lcom/google/android/gms/ads/internal/overlay/zzr;Lz1f;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLq3f;Lcom/google/android/gms/ads/internal/zzb;Lbaf;Lddf;Ldwg;Lwth;Lsmg;Lo4f;Lt8g;Ln4f;La4f;Lo3f;Lwpf;)V

    return-object v1
.end method

.method public static bridge synthetic b(Lhig;)Luhg;
    .locals 0

    iget-object p0, p0, Lhig;->a:Luhg;

    return-object p0
.end method

.method public static bridge synthetic c(Lhig;)Lsmg;
    .locals 0

    iget-object p0, p0, Lhig;->d:Lsmg;

    return-object p0
.end method

.method public static bridge synthetic d(Lhig;)Ldwg;
    .locals 0

    iget-object p0, p0, Lhig;->i:Ldwg;

    return-object p0
.end method

.method public static bridge synthetic e(Lhig;)Lwth;
    .locals 0

    iget-object p0, p0, Lhig;->j:Lwth;

    return-object p0
.end method

.method public static synthetic f(Lhig;Ljava/lang/String;Lorg/json/JSONObject;Lejf;)Lim5;
    .locals 0

    iget-object p0, p0, Lhig;->h:Ld4f;

    invoke-virtual {p0, p3, p1, p2}, Ld4f;->b(Lx5f;Ljava/lang/String;Lorg/json/JSONObject;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized g(Ljava/lang/String;Lorg/json/JSONObject;)Lim5;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhig;->m:Lim5;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Lvhg;

    invoke-direct {v1, p0, p1, p2}, Lvhg;-><init>(Lhig;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized h(Lhmh;Lkmh;Lwpf;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhig;->m:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lbig;

    invoke-direct {v1, p0, p1, p2, p3}, Lbig;-><init>(Lhig;Lhmh;Lkmh;Lwpf;)V

    iget-object p1, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhig;->m:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lxhg;

    invoke-direct {v1, p0}, Lxhg;-><init>(Lhig;)V

    iget-object v2, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lhig;->m:Lim5;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lhig;->m:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Laig;

    const-string v1, "sendMessageToNativeJs"

    invoke-direct {v0, p0, v1, p2}, Laig;-><init>(Lhig;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized k()V
    .locals 10

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcye;->X3:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    new-instance v0, Ljjf;

    iget-object v2, p0, Lhig;->c:Landroid/content/Context;

    iget-object v3, p0, Lhig;->f:Lfre;

    iget-object v4, p0, Lhig;->g:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, p0, Lhig;->b:Lcom/google/android/gms/ads/internal/zza;

    iget-object v6, p0, Lhig;->k:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v7, p0, Lhig;->l:Linh;

    iget-object v8, p0, Lhig;->d:Lsmg;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljjf;-><init>(Landroid/content/Context;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzebe;Linh;Lsmg;Ljava/lang/String;)V

    sget-object v1, Lzef;->f:Lg8i;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/j8;->k(Lj7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    new-instance v1, Lwhg;

    invoke-direct {v1, p0}, Lwhg;-><init>(Lhig;)V

    iget-object v2, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    iput-object v0, p0, Lhig;->m:Lim5;

    const-string v1, "NativeJavascriptExecutor.initializeEngine"

    invoke-static {v0, v1}, Lcff;->a(Lim5;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized l(Ljava/lang/String;Ln3f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhig;->m:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lyhg;

    invoke-direct {v1, p0, p1, p2}, Lyhg;-><init>(Lhig;Ljava/lang/String;Ln3f;)V

    iget-object p1, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final m(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;)V
    .locals 7

    new-instance v6, Lfig;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfig;-><init>(Lhig;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ln3f;Lgig;)V

    invoke-virtual {p0, p2, v6}, Lhig;->l(Ljava/lang/String;Ln3f;)V

    return-void
.end method

.method public final declared-synchronized n(Ljava/lang/String;Ln3f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhig;->m:Lim5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lzhg;

    invoke-direct {v1, p0, p1, p2}, Lzhg;-><init>(Lhig;Ljava/lang/String;Ln3f;)V

    iget-object p1, p0, Lhig;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
