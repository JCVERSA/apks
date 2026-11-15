.class public final Llyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Latf;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Latf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llyg;->a:Landroid/content/Context;

    iput-object p2, p0, Llyg;->b:Latf;

    iput-object p3, p0, Llyg;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic c(Llyg;Landroid/view/View;Lhmh;Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Llyg;->a:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lhmh;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;Lnxg;)V
    .locals 10

    iget-object p1, p1, Lvmh;->a:Lsmh;

    iget-object p1, p1, Lsmh;->a:Lenh;

    iget-object v0, p1, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llyg;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzr;

    iget v3, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzc;->zzd(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    sget-object v1, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lhmh;->g0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Llyg;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzr;

    iget v3, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzc;->zze(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llyg;->a:Landroid/content/Context;

    iget-object v1, p2, Lhmh;->u:Ljava/util/List;

    invoke-static {v0, v1}, Lknh;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    goto :goto_0

    :goto_1
    sget-object v0, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lhmh;->g0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    iget-object v4, p0, Llyg;->a:Landroid/content/Context;

    iget-object v6, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    move-object v3, v0

    check-cast v3, Leoh;

    iget-object p0, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p2, Lhmh;->s:Llmh;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Llmh;)Ljava/lang/String;

    move-result-object v8

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v9, p0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-virtual/range {v3 .. v9}, Leoh;->s(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void

    :cond_2
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    iget-object v4, p0, Llyg;->a:Landroid/content/Context;

    iget-object v6, p1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    move-object v3, v0

    check-cast v3, Leoh;

    iget-object p0, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p2, Lhmh;->s:Llmh;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Llmh;)Ljava/lang/String;

    move-result-object v8

    iget-object p0, p3, Lnxg;->c:Lx0g;

    move-object v9, p0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbpe;

    invoke-virtual/range {v3 .. v9}, Leoh;->r(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void
.end method

.method public final bridge synthetic b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcye;->U7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lhmh;->g0:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    invoke-virtual {v0}, Leoh;->h()Lcom/google/android/gms/internal/ads/zzbph;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v3, Ljyg;

    invoke-direct {v3, p0, v2, p2}, Ljyg;-><init>(Llyg;Landroid/view/View;Lhmh;)V

    sget-object v2, Lzef;->f:Lg8i;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
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

    const-string p2, "BannerAdapterWrapper interscrollerView should not be null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    iget-object v0, p3, Lnxg;->b:Ljava/lang/Object;

    check-cast v0, Leoh;

    invoke-virtual {v0}, Leoh;->f()Landroid/view/View;

    move-result-object v2

    :cond_3
    :goto_0
    iget-object v0, p0, Llyg;->b:Latf;

    iget-object v3, p3, Lnxg;->a:Ljava/lang/String;

    new-instance v4, Lpuf;

    invoke-direct {v4, p1, p2, v3}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object p1, p3, Lnxg;->b:Ljava/lang/Object;

    new-instance v3, Lasf;

    check-cast p1, Leoh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lkyg;

    invoke-direct {v5, p1}, Lkyg;-><init>(Leoh;)V

    iget-object p2, p2, Lhmh;->u:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Limh;

    invoke-direct {v3, v2, v1, v5, p2}, Lasf;-><init>(Landroid/view/View;Lejf;Lztf;Limh;)V

    invoke-virtual {v0, v4, v3}, Latf;->a(Lpuf;Lasf;)Lvrf;

    move-result-object p2

    invoke-virtual {p2}, Lvrf;->i()Lk8g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lk8g;->F(Landroid/view/View;)V

    invoke-virtual {p2}, Lcuf;->c()Lm0g;

    move-result-object v0

    new-instance v1, Lqpf;

    invoke-direct {v1, p1}, Lqpf;-><init>(Leoh;)V

    iget-object p0, p0, Llyg;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, La6g;->C(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p0, p3, Lnxg;->c:Lx0g;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p2}, Lcuf;->g()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    invoke-virtual {p2}, Lvrf;->h()Lsrf;

    move-result-object p0

    return-object p0
.end method
