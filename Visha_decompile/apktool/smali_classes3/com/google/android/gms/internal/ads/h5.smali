.class public final Lcom/google/android/gms/internal/ads/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lbjg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lbjg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/h5;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h5;->c:Lbjg;

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/h5;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/h5;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/h5;Lvmh;Lhmh;Lnxg;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/h5;->e(Lvmh;Lhmh;Lnxg;)V

    return-void
.end method

.method public static final e(Lvmh;Lhmh;Lnxg;)V
    .locals 1

    :try_start_0
    iget-object v0, p2, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    iget-object p0, p0, Lvmh;->a:Lsmh;

    iget-object p0, p0, Lsmh;->a:Lenh;

    iget-object p0, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p1, p1, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Leoh;->p(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p1, p2, Lnxg;->a:Ljava/lang/String;

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fail to load ad from adapter "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 7

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Leoh;

    invoke-virtual {v1}, Leoh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lx1h;

    invoke-direct {v0, p0, p1, p2, p3}, Lx1h;-><init>(Lcom/google/android/gms/internal/ads/h5;Lvmh;Lhmh;Lnxg;)V

    iget-object p3, p3, Lnxg;->c:Lx0g;

    move-object v2, p3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzedx;->zzd(Le9g;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/h5;->a:Landroid/content/Context;

    iget-object p0, p1, Lvmh;->a:Lsmh;

    iget-object p0, p0, Lsmh;->a:Lenh;

    move-object v5, p3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbvv;

    iget-object p1, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Leoh;->m(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvv;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/h5;->e(Lvmh;Lhmh;Lnxg;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lpuf;

    iget-object v1, p3, Lnxg;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lyig;

    new-instance v1, Ly1h;

    invoke-direct {v1, p0, p3, p2}, Ly1h;-><init>(Lcom/google/android/gms/internal/ads/h5;Lnxg;Lhmh;)V

    invoke-direct {p1, v1}, Lyig;-><init>(Lebg;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/h5;->c:Lbjg;

    invoke-virtual {p2, v0, p1}, Lbjg;->b(Lpuf;Lyig;)Lxig;

    move-result-object p1

    invoke-virtual {p1}, Lcuf;->c()Lm0g;

    move-result-object p2

    new-instance v0, Lqpf;

    iget-object v1, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v1, Leoh;

    invoke-direct {v0, v1}, Lqpf;-><init>(Leoh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h5;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcuf;->d()Lu0g;

    move-result-object v6

    invoke-virtual {p1}, Lcuf;->a()Lizf;

    move-result-object v5

    invoke-virtual {p1}, Lxig;->h()Lw1g;

    move-result-object v4

    invoke-virtual {p1}, Lxig;->i()Lc9g;

    move-result-object v7

    iget-object p2, p3, Lnxg;->c:Lx0g;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzedx;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzehc;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzehc;-><init>(Lcom/google/android/gms/internal/ads/h5;Lw1g;Lizf;Lu0g;Lc9g;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzedx;->zzc(Lcom/google/android/gms/internal/ads/zzbvv;)V

    invoke-virtual {p1}, Lxig;->k()Lwig;

    move-result-object p0

    return-object p0
.end method
