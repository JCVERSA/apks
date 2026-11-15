.class public final Lcom/google/android/gms/internal/ads/y3;
.super Lcom/google/android/gms/ads/internal/util/zzb;
.source "SourceFile"


# instance fields
.field public final c:Lchf;

.field public final d:Lcom/google/android/gms/internal/ads/z3;

.field public final e:Ljava/lang/String;

.field public final f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lchf;Lcom/google/android/gms/internal/ads/z3;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y3;->c:Lchf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y3;->d:Lcom/google/android/gms/internal/ads/z3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y3;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/y3;->f:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzz()Lshf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lshf;->c(Lcom/google/android/gms/internal/ads/y3;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/y3;)Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y3;->d:Lcom/google/android/gms/internal/ads/z3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y3;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y3;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/z3;->r(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/y3;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/y3;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y3;->d:Lcom/google/android/gms/internal/ads/z3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y3;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/y3;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/z3;->o(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzccj;-><init>(Lcom/google/android/gms/internal/ads/y3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzccj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzccj;-><init>(Lcom/google/android/gms/internal/ads/y3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public final zzb()Lim5;
    .locals 2

    sget-object v0, Lcye;->i2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y3;->d:Lcom/google/android/gms/internal/ads/z3;

    instance-of v0, v0, Laif;

    if-eqz v0, :cond_0

    sget-object v0, Lzef;->f:Lg8i;

    new-instance v1, Lrhf;

    invoke-direct {v1, p0}, Lrhf;-><init>(Lcom/google/android/gms/internal/ads/y3;)V

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lim5;

    move-result-object p0

    return-object p0
.end method
