.class public abstract Lsdf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lsdf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lsdf;
    .locals 4

    const-class v0, Lsdf;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsdf;->a:Lsdf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcye;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzp(Landroid/content/Context;)V

    new-instance v2, Lkdf;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lkdf;-><init>(Lmdf;)V

    invoke-virtual {v2, p0}, Lkdf;->b(Landroid/content/Context;)Lkdf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-virtual {v2, p0}, Lkdf;->c(Lfy0;)Lkdf;

    invoke-virtual {v2, v1}, Lkdf;->a(Lcom/google/android/gms/ads/internal/util/zzg;)Lkdf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lrdf;

    move-result-object p0

    invoke-virtual {v2, p0}, Lkdf;->d(Lrdf;)Lkdf;

    invoke-virtual {v2}, Lkdf;->e()Lsdf;

    move-result-object p0

    sput-object p0, Lsdf;->a:Lsdf;

    check-cast p0, Lldf;

    iget-object p0, p0, Lldf;->e:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ledf;

    invoke-virtual {p0}, Ledf;->a()V

    sget-object p0, Lsdf;->a:Lsdf;

    check-cast p0, Lldf;

    iget-object p0, p0, Lldf;->j:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbef;

    sget-object v1, Lcye;->I0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    sget-object v1, Lcye;->J0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzw(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lbef;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance v2, Ludf;

    invoke-direct {v2, p0, v1}, Ludf;-><init>(Lbef;Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lbef;->d(Ludf;)V

    :goto_1
    sget-object p0, Lsdf;->a:Lsdf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract a()Lidf;
.end method
