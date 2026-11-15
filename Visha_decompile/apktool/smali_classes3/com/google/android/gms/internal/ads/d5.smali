.class public final Lcom/google/android/gms/internal/ads/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Latf;

.field public c:Landroid/view/View;

.field public d:Lcom/google/android/gms/internal/ads/zzbph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Latf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d5;->b:Latf;

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/ads/d5;Landroid/view/View;Lhmh;Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d5;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lhmh;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/internal/ads/d5;Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d5;->d:Lcom/google/android/gms/internal/ads/zzbph;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/d5;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d5;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 9

    :try_start_0
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    iget-object v0, p2, Lhmh;->Z:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzq(Ljava/lang/String;)V

    sget-object v0, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lhmh;->g0:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/d5;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {v6, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/d5;Lnxg;Lpyg;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v8, p1, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v2, v0

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbqx;->zzk(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzr;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lhmh;->U:Ljava/lang/String;

    iget-object p2, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v4, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/d5;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {v6, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/d5;Lnxg;Lpyg;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v7, p0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v8, p1, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v2, v0

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbqx;->zzj(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lhmh;->g0:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d5;->d:Lcom/google/android/gms/internal/ads/zzbph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d5;->d:Lcom/google/android/gms/internal/ads/zzbph;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v2

    new-instance v3, Loyg;

    invoke-direct {v3, p0, v0, p2}, Loyg;-><init>(Lcom/google/android/gms/internal/ads/d5;Landroid/view/View;Lhmh;)V

    sget-object v0, Lzef;->f:Lg8i;

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfbw;

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "BannerRtbAdapterWrapper interscrollerView should not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d5;->c:Landroid/view/View;

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/d5;->b:Latf;

    iget-object v2, p3, Lnxg;->a:Ljava/lang/String;

    new-instance v3, Lpuf;

    invoke-direct {v3, p1, p2, v2}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p1, Lasf;

    new-instance v2, Lnyg;

    invoke-direct {v2, p3}, Lnyg;-><init>(Lnxg;)V

    iget-object p2, p2, Lhmh;->u:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Limh;

    invoke-direct {p1, v0, v1, v2, p2}, Lasf;-><init>(Landroid/view/View;Lejf;Lztf;Limh;)V

    invoke-virtual {p0, v3, p1}, Latf;->a(Lpuf;Lasf;)Lvrf;

    move-result-object p0

    invoke-virtual {p0}, Lvrf;->i()Lk8g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lk8g;->F(Landroid/view/View;)V

    iget-object p1, p3, Lnxg;->c:Lx0g;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p0}, Lcuf;->f()Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p0}, Lvrf;->h()Lsrf;

    move-result-object p0

    return-object p0
.end method
