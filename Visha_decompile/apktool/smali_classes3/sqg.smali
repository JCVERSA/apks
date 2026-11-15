.class public final Lsqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsqg;->a:Lqyi;

    iput-object p2, p0, Lsqg;->b:Lqyi;

    iput-object p3, p0, Lsqg;->c:Lqyi;

    iput-object p4, p0, Lsqg;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lsqg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfre;

    iget-object v1, p0, Lsqg;->b:Lqyi;

    check-cast v1, Lskf;

    invoke-virtual {v1}, Lskf;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsqg;->c:Lqyi;

    check-cast v2, Lzyf;

    invoke-virtual {v2}, Lzyf;->a()Lenh;

    move-result-object v2

    iget-object p0, p0, Lsqg;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object p0

    sget-object v5, Lcye;->U2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v2, v2, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-object v2, Lcye;->W2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v5, v2

    if-gez v2, :cond_1

    new-instance v2, Llqg;

    invoke-direct {v2, v0, v1}, Llqg;-><init>(Lfre;Landroid/content/Context;)V

    invoke-interface {p0, v2}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v2, Lmqg;

    invoke-direct {v2, v0, v1}, Lmqg;-><init>(Lfre;Landroid/content/Context;)V

    invoke-interface {p0, v2}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
