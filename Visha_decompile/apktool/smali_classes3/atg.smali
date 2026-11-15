.class public final Latg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg8i;

.field public final b:Ldsg;

.field public final c:Lzxi;


# direct methods
.method public constructor <init>(Lg8i;Ldsg;Lzxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latg;->a:Lg8i;

    iput-object p2, p0, Latg;->b:Ldsg;

    iput-object p3, p0, Latg;->c:Lzxi;

    return-void
.end method

.method public static synthetic a(Latg;Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 0

    iget-object p0, p0, Latg;->c:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyu;->zzj(Ljava/lang/String;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Latg;Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 0

    iget-object p0, p0, Latg;->b:Ldsg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzh:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldsg;->d(Ljava/lang/String;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Latg;Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 1

    iget-object p0, p0, Latg;->c:Lzxi;

    invoke-interface {p0}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdyu;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdyu;->zzb(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Latg;Lzsg;Lcom/google/android/gms/internal/ads/zzbuy;Lk7i;Lcom/google/android/gms/internal/ads/zzdxq;)Lim5;
    .locals 0

    iget-object p0, p0, Latg;->a:Lg8i;

    invoke-interface {p1, p2}, Lzsg;->a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p1

    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 3

    new-instance v0, Lqsg;

    invoke-direct {v0, p1}, Lqsg;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object v1, p0, Latg;->b:Ldsg;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lrsg;

    invoke-direct {v2, v1}, Lrsg;-><init>(Ldsg;)V

    new-instance v1, Lssg;

    invoke-direct {v1, p0}, Lssg;-><init>(Latg;)V

    invoke-virtual {p0, p1, v2, v1, v0}, Latg;->g(Lcom/google/android/gms/internal/ads/zzbuy;Lzsg;Lzsg;Lk7i;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 3

    new-instance v0, Lnsg;

    invoke-direct {v0}, Lnsg;-><init>()V

    new-instance v1, Losg;

    invoke-direct {v1, p0}, Losg;-><init>(Latg;)V

    new-instance v2, Lpsg;

    invoke-direct {v2, p0}, Lpsg;-><init>(Latg;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Latg;->g(Lcom/google/android/gms/internal/ads/zzbuy;Lzsg;Lzsg;Lk7i;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;Lzsg;Lzsg;Lk7i;)Lim5;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lzsg;->a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p2

    new-instance v0, Lysg;

    invoke-direct {v0}, Lysg;-><init>()V

    iget-object v1, p0, Latg;->a:Lg8i;

    const-class v2, Ljava/util/concurrent/ExecutionException;

    invoke-static {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p2

    new-instance v0, Ltsg;

    invoke-direct {v0}, Ltsg;-><init>()V

    iget-object v1, p0, Latg;->a:Lg8i;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p2

    check-cast p2, Lq7i;

    invoke-static {p2, p4, v1}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p2

    check-cast p2, Lq7i;

    new-instance v0, Lusg;

    invoke-direct {v0, p0, p3, p1, p4}, Lusg;-><init>(Latg;Lzsg;Lcom/google/android/gms/internal/ads/zzbuy;Lk7i;)V

    const-class p0, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {p2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0
.end method
