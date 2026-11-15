.class public final Lcom/google/android/gms/internal/ads/zzdyu;
.super Lcom/google/android/gms/internal/ads/zzbul;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lg8i;

.field private final zzc:Lcug;

.field private final zzd:Llof;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfgq;

.field private final zzg:Lccf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg8i;Lccf;Llof;Lcug;Ljava/util/ArrayDeque;Lvtg;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbul;-><init>()V

    invoke-static {p1}, Lcye;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lg8i;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzg:Lccf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcug;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Llof;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzdyu;Lim5;Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lwrh;)Ljava/io/InputStream;
    .locals 7

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwbf;

    invoke-virtual {v0}, Lwbf;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/json/JSONObject;

    iget-object v4, p3, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    new-instance p2, Lotg;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lwbf;

    move-object v1, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lotg;-><init>(Lwbf;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lwrh;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzo(Lotg;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private final declared-synchronized zzl(Ljava/lang/String;)Lotg;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lotg;

    iget-object v2, v1, Lotg;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static zzm(Lim5;Llrh;Lj7f;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)Lim5;
    .locals 3

    sget-object v0, La7f;->b:Lx6f;

    new-instance v1, Litg;

    invoke-direct {v1}, Litg;-><init>()V

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object p2

    invoke-static {p0, p4}, Lgsh;->d(Lim5;Lwrh;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzffn;->zzg:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {p1, v0, p0}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lgsh;->c(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzbuy;Llrh;Lhfh;)Lim5;
    .locals 2

    new-instance v0, Ldtg;

    invoke-direct {v0, p2, p0}, Ldtg;-><init>(Lhfh;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p2, Letg;

    invoke-direct {p2}, Letg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffn;->zze:Lcom/google/android/gms/internal/ads/zzffn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzo(Lotg;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzp()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lg0f;->b:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzq(Lim5;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 2

    new-instance v0, Ljtg;

    invoke-direct {v0, p0}, Ljtg;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;)V

    sget-object v1, Lzef;->a:Lg8i;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p1

    new-instance v0, Lntg;

    invoke-direct {v0, p0, p3, p2}, Lntg;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;
    .locals 9

    sget-object v0, Lg0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Split request is disabled."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzi:Lcom/google/android/gms/internal/ads/zzfdj;

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Pool configuration missing from request."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfdj;->zzc:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdj;->zzd:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Llof;

    invoke-interface {v2, p1, p2}, Llof;->a(Lcom/google/android/gms/internal/ads/zzbuy;I)Lhfh;

    move-result-object p2

    invoke-virtual {p2}, Lhfh;->c()Llrh;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzn(Lcom/google/android/gms/internal/ads/zzbuy;Llrh;Lhfh;)Lim5;

    move-result-object v6

    invoke-virtual {p2}, Lhfh;->d()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    const/16 v3, 0x9

    invoke-static {v0, v3}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v8

    invoke-static {v6, v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzdyu;->zzm(Lim5;Llrh;Lj7f;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)Lim5;

    move-result-object v5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzz:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v0, 0x2

    new-array v0, v0, [Lim5;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v5, v0, v1

    invoke-virtual {v2, p2, v0}, Lerh;->a(Ljava/lang/Object;[Lim5;)Lvqh;

    move-result-object p2

    new-instance v0, Lhtg;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lhtg;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lim5;Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lwrh;)V

    invoke-virtual {p2, v0}, Lvqh;->a(Ljava/util/concurrent/Callable;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Caching is disabled."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {v3, v4, v5, v6}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Llof;

    invoke-interface {v5, p1, p2}, Llof;->a(Lcom/google/android/gms/internal/ads/zzbuy;I)Lhfh;

    move-result-object v5

    sget-object v6, Lqtg;->d:Lw6f;

    sget-object v7, La7f;->c:Lv6f;

    const-string v8, "google.afma.response.normalize"

    invoke-virtual {v3, v8, v6, v7}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object v6

    sget-object v7, Lg0f;->a:Leze;

    invoke-virtual {v7}, Leze;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzj:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "Request contained a PoolKey but split request is disabled."

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdyu;->zzl(Ljava/lang/String;)Lotg;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v7, "Request contained a PoolKey but no matching parameters were found."

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    const/16 v7, 0x9

    invoke-static {v4, v7}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget-object v7, v8, Lotg;->d:Lwrh;

    :goto_1
    invoke-virtual {v5}, Lhfh;->d()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v9

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    const-string v11, "ad_types"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzfgn;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgn;

    new-instance v10, Lbug;

    iget-object v11, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzg:Ljava/lang/String;

    invoke-direct {v10, v11, v9, v7}, Lbug;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    iget-object v11, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v11, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzg:Lccf;

    new-instance v12, Lutg;

    invoke-direct {v12, v4, v11, p0, p2}, Lutg;-><init>(Landroid/content/Context;Ljava/lang/String;Lccf;I)V

    invoke-virtual {v5}, Lhfh;->c()Llrh;

    move-result-object p0

    const/16 p2, 0xb

    invoke-static {v4, p2}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object p2

    const/16 v11, 0xa

    if-nez v8, :cond_3

    invoke-static {p1, p0, v5}, Lcom/google/android/gms/internal/ads/zzdyu;->zzn(Lcom/google/android/gms/internal/ads/zzbuy;Llrh;Lhfh;)Lim5;

    move-result-object v5

    invoke-static {v5, p0, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzdyu;->zzm(Lim5;Llrh;Lj7f;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)Lim5;

    move-result-object v3

    invoke-static {v4, v11}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzffn;->zzi:Lcom/google/android/gms/internal/ads/zzffn;

    new-array v8, v2, [Lim5;

    aput-object v3, v8, v1

    aput-object v5, v8, v0

    invoke-virtual {p0, v7, v8}, Lerh;->a(Ljava/lang/Object;[Lim5;)Lvqh;

    move-result-object v7

    new-instance v8, Lftg;

    invoke-direct {v8, v3, p1, v5}, Lftg;-><init>(Lim5;Lcom/google/android/gms/internal/ads/zzbuy;Lim5;)V

    invoke-virtual {v7, v8}, Lvqh;->a(Ljava/util/concurrent/Callable;)Lcrh;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object v7

    new-instance v8, Lcsh;

    invoke-direct {v8, v4}, Lcsh;-><init>(Lwrh;)V

    invoke-virtual {v7, v8}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object v7

    invoke-virtual {v7}, Lcrh;->a()Lrqh;

    move-result-object v7

    invoke-static {v7, v9, v4}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    invoke-static {v7, p2}, Lgsh;->d(Lim5;Lwrh;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzk:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v8, 0x3

    new-array v8, v8, [Lim5;

    aput-object v5, v8, v1

    aput-object v3, v8, v0

    aput-object v7, v8, v2

    invoke-virtual {p0, v4, v8}, Lerh;->a(Ljava/lang/Object;[Lim5;)Lvqh;

    move-result-object p0

    new-instance v0, Lgtg;

    invoke-direct {v0, p1, v7, v5, v3}, Lgtg;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lim5;Lim5;Lim5;)V

    invoke-virtual {p0, v0}, Lvqh;->a(Ljava/util/concurrent/Callable;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p1, Laug;

    iget-object v3, v8, Lotg;->b:Lorg/json/JSONObject;

    iget-object v5, v8, Lotg;->a:Lwbf;

    invoke-direct {p1, v3, v5}, Laug;-><init>(Lorg/json/JSONObject;Lwbf;)V

    invoke-static {v4, v11}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzi:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object p1

    new-instance v4, Lcsh;

    invoke-direct {v4, v3}, Lcsh;-><init>(Lwrh;)V

    invoke-virtual {p1, v4}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object p1

    invoke-virtual {p1, v12}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object p1

    invoke-virtual {p1}, Lcrh;->a()Lrqh;

    move-result-object p1

    invoke-static {p1, v9, v3}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v3

    invoke-static {p1, p2}, Lgsh;->d(Lim5;Lwrh;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzk:Lcom/google/android/gms/internal/ads/zzffn;

    new-array v2, v2, [Lim5;

    aput-object p1, v2, v1

    aput-object v3, v2, v0

    invoke-virtual {p0, v4, v2}, Lerh;->a(Ljava/lang/Object;[Lim5;)Lvqh;

    move-result-object p0

    new-instance v0, Lctg;

    invoke-direct {v0, p1, v3}, Lctg;-><init>(Lim5;Lim5;)V

    invoke-virtual {p0, v0}, Lvqh;->a(Ljava/util/concurrent/Callable;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    :goto_2
    invoke-static {p0, v9, p2}, Lgsh;->a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {v0, v1, v2, v3}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v0

    sget-object v2, Ll0f;->a:Leze;

    invoke-virtual {v2}, Leze;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Signal collection disabled."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Llof;

    invoke-interface {v2, p1, p2}, Llof;->a(Lcom/google/android/gms/internal/ads/zzbuy;I)Lhfh;

    move-result-object p2

    invoke-virtual {p2}, Lhfh;->a()Lgeh;

    move-result-object v2

    sget-object v3, La7f;->b:Lx6f;

    sget-object v4, La7f;->c:Lv6f;

    const-string v5, "google.afma.request.getSignals"

    invoke-virtual {v0, v5, v3, v4}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object v0

    const/16 v3, 0x16

    invoke-static {v1, v3}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v1

    invoke-virtual {p2}, Lhfh;->c()Llrh;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzl:Lcom/google/android/gms/internal/ads/zzffn;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zza:Landroid/os/Bundle;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lerh;->b(Ljava/lang/Object;Lim5;)Lcrh;

    move-result-object v3

    new-instance v4, Lcsh;

    invoke-direct {v4, v1}, Lcsh;-><init>(Lwrh;)V

    invoke-virtual {v3, v4}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object v3

    new-instance v4, Lktg;

    invoke-direct {v4, v2, p1}, Lktg;-><init>(Lgeh;Lcom/google/android/gms/internal/ads/zzbuy;)V

    invoke-virtual {v3, v4}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->zzm:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {p1, v2}, Lcrh;->b(Ljava/lang/Object;)Lcrh;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcrh;->f(Lk7i;)Lcrh;

    move-result-object p1

    invoke-virtual {p1}, Lcrh;->a()Lrqh;

    move-result-object p1

    invoke-virtual {p2}, Lhfh;->d()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    const-string v0, "ad_types"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzd(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfgn;

    const-string v0, "extras"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-static {p1, p2, v1}, Lgsh;->b(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    sget-object p2, Lzze;->f:Leze;

    invoke-virtual {p2}, Leze;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcug;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>(Lcug;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lg8i;

    invoke-interface {p1, v0, p0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzb(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lim5;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 4

    sget-object v0, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzg:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzd(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lim5;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 4

    sget-object v0, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzg:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lim5;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    sget-object p1, Lzze;->e:Leze;

    invoke-virtual {p1}, Leze;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzc:Lcug;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdyk;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdyk;-><init>(Lcug;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzb:Lg8i;

    invoke-interface {v0, p2, p0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public final zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuq;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzj(Ljava/lang/String;)Lim5;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzq(Lim5;Lcom/google/android/gms/internal/ads/zzbuq;Lcom/google/android/gms/internal/ads/zzbuy;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbui;Lcom/google/android/gms/internal/ads/zzbur;)V
    .locals 2

    sget-object v0, Ln0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p0, ""

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbur;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbui;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Service can\'t call client"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyu;->zzd:Llof;

    invoke-interface {v0}, Llof;->zzD()Lfef;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbui;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lltg;

    invoke-direct {v1, p0, p2, p1}, Lltg;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzbui;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zzj(Ljava/lang/String;)Lim5;
    .locals 1

    sget-object v0, Lg0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Split request is disabled."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lmtg;

    invoke-direct {v0, p0}, Lmtg;-><init>(Lcom/google/android/gms/internal/ads/zzdyu;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzl(Ljava/lang/String;)Lotg;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "URL to be removed not found for cache key: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
