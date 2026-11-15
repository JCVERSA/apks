.class public final Ljqg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg8i;

.field public final b:Lg8i;

.field public final c:Lurg;

.field public final d:Lzxi;


# direct methods
.method public constructor <init>(Lg8i;Lg8i;Lurg;Lzxi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljqg;->a:Lg8i;

    iput-object p2, p0, Ljqg;->b:Lg8i;

    iput-object p3, p0, Ljqg;->c:Lurg;

    iput-object p4, p0, Ljqg;->d:Lzxi;

    return-void
.end method

.method public static synthetic a(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;)Lmsg;
    .locals 2

    iget-object p0, p0, Ljqg;->c:Lurg;

    invoke-virtual {p0, p1}, Lurg;->c(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p0

    sget-object p1, Lcye;->F5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmsg;

    return-object p0
.end method

.method public static synthetic b(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;ILcom/google/android/gms/internal/ads/zzdxq;)Lim5;
    .locals 2

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Ljqg;->d:Lzxi;

    invoke-interface {p3}, Lzxi;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdyu;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lim5;

    move-result-object p2

    new-instance p3, Lfqg;

    invoke-direct {p3, p1}, Lfqg;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object p0, p0, Ljqg;->b:Lg8i;

    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljqg;->a:Lg8i;

    new-instance v1, Lgqg;

    invoke-direct {v1, p0, p1}, Lgqg;-><init>(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;)V

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object v0

    new-instance v1, Lhqg;

    invoke-direct {v1}, Lhqg;-><init>()V

    iget-object v2, p0, Ljqg;->b:Lg8i;

    const-class v3, Ljava/util/concurrent/ExecutionException;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Liqg;

    invoke-direct {v2, p0, p1, v1}, Liqg;-><init>(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;I)V

    iget-object p0, p0, Ljqg;->b:Lg8i;

    const-class p1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0, p1, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->f(Lim5;Ljava/lang/Class;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
