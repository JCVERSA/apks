.class public final Lsjh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvoh;

.field public final b:Loyf;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:Lqjh;


# direct methods
.method public constructor <init>(Lvoh;Loyf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsjh;->a:Lvoh;

    iput-object p2, p0, Lsjh;->b:Loyf;

    iput-object p3, p0, Lsjh;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lsjh;)Lqjh;
    .locals 0

    iget-object p0, p0, Lsjh;->d:Lqjh;

    return-object p0
.end method

.method public static bridge synthetic b(Lsjh;)Lcph;
    .locals 0

    invoke-virtual {p0}, Lsjh;->e()Lcph;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lsjh;Lqjh;)V
    .locals 0

    iput-object p1, p0, Lsjh;->d:Lqjh;

    return-void
.end method


# virtual methods
.method public final c()Lim5;
    .locals 4

    iget-object v0, p0, Lsjh;->d:Lqjh;

    if-nez v0, :cond_1

    sget-object v0, Lg0f;->a:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lqjh;

    invoke-virtual {p0}, Lsjh;->e()Lcph;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lqjh;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcph;Lrjh;)V

    iput-object v0, p0, Lsjh;->d:Lqjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsjh;->b:Loyf;

    iget-object v1, p0, Lsjh;->a:Lvoh;

    invoke-interface {v0}, Loyf;->zzb()Lgvf;

    move-result-object v0

    invoke-interface {v1}, Lvoh;->zza()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvf;->f(Lcom/google/android/gms/internal/ads/zzfdj;)Lim5;

    move-result-object v0

    invoke-static {v0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object v0

    new-instance v1, Lpjh;

    invoke-direct {v1, p0}, Lpjh;-><init>(Lsjh;)V

    iget-object v2, p0, Lsjh;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    new-instance v1, Lojh;

    invoke-direct {v1, p0}, Lojh;-><init>(Lsjh;)V

    const-class v3, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    check-cast v0, Lq7i;

    :goto_0
    new-instance v1, Lnjh;

    invoke-direct {v1}, Lnjh;-><init>()V

    iget-object p0, p0, Lsjh;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcph;
    .locals 3

    iget-object v0, p0, Lsjh;->b:Loyf;

    invoke-interface {v0}, Loyf;->zzf()Lenh;

    move-result-object v0

    iget-object v1, v0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v0, Lenh;->f:Ljava/lang/String;

    iget-object v0, v0, Lenh;->j:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object p0, p0, Lsjh;->a:Lvoh;

    invoke-interface {p0, v1, v2, v0}, Lvoh;->b(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcph;

    move-result-object p0

    return-object p0
.end method
