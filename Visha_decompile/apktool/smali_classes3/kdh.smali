.class public final Lkdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# static fields
.field public static final k:Lldh;


# instance fields
.field public final a:Lg8i;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lh3h;

.field public final d:Landroid/content/Context;

.field public final e:Lenh;

.field public final f:Lf3h;

.field public final g:Ljkg;

.field public final h:Llog;

.field public final i:I

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lldh;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1, v2}, Lldh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v0, Lkdh;->k:Lldh;

    return-void
.end method

.method public constructor <init>(Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lh3h;Landroid/content/Context;Lenh;Lf3h;Ljkg;Llog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkdh;->a:Lg8i;

    iput-object p2, p0, Lkdh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lkdh;->j:Ljava/lang/String;

    iput-object p4, p0, Lkdh;->c:Lh3h;

    iput-object p5, p0, Lkdh;->d:Landroid/content/Context;

    iput-object p6, p0, Lkdh;->e:Lenh;

    iput-object p7, p0, Lkdh;->f:Lf3h;

    iput-object p8, p0, Lkdh;->g:Ljkg;

    iput-object p9, p0, Lkdh;->h:Llog;

    iput p10, p0, Lkdh;->i:I

    return-void
.end method

.method public static synthetic a(Lkdh;)Lim5;
    .locals 12

    sget-object v0, Lcye;->Za:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkdh;->e:Lenh;

    iget-object v0, v0, Lenh;->f:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkdh;->e:Lenh;

    iget-object v0, v0, Lenh;->f:Ljava/lang/String;

    :goto_0
    sget-object v1, Lcye;->P1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkdh;->h:Llog;

    invoke-virtual {v1}, Llog;->a()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcye;->Y1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lkdh;->c:Lh3h;

    iget-object v4, p0, Lkdh;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lh3h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwz;->zzh()Lcom/google/android/gms/internal/ads/zzfxb;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v7}, Lkdh;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lkdh;->e(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lq7i;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lh3h;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lkdh;->g(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lkdh;->c:Lh3h;

    iget-object v4, p0, Lkdh;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lh3h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lkdh;->g(Ljava/util/List;Ljava/util/Map;)V

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/j8;->b(Ljava/lang/Iterable;)Lw7i;

    move-result-object v0

    new-instance v3, Lfdh;

    invoke-direct {v3, v2, v1}, Lfdh;-><init>(Ljava/util/List;Landroid/os/Bundle;)V

    iget-object p0, p0, Lkdh;->a:Lg8i;

    invoke-virtual {v0, v3, p0}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkdh;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lim5;
    .locals 8

    new-instance v7, Leff;

    invoke-direct {v7}, Leff;-><init>()V

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    sget-object p5, Lcye;->Q1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, p5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lkdh;->f:Lf3h;

    invoke-virtual {p5, p1}, Lf3h;->b(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lf3h;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p5

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p5, p0, Lkdh;->g:Ljkg;

    invoke-virtual {p5, p1}, Ljkg;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    const-string v1, "Couldn\'t create RTB adapter : "

    invoke-static {v1, p5}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p5, v0

    :goto_0
    if-nez p5, :cond_2

    sget-object p0, Lcye;->G1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, v7}, Lcom/google/android/gms/internal/ads/zzeiq;->zzb(Ljava/lang/String;Leff;)V

    goto/16 :goto_1

    :cond_1
    throw v0

    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzeiq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p1

    move-object v2, p5

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeiq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqx;Leff;J)V

    sget-object p1, Lcye;->L1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    invoke-virtual {v0, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lkdh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesa;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzesa;-><init>(Lcom/google/android/gms/internal/ads/zzeiq;)V

    sget-object v1, Lcye;->E1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    if-eqz p4, :cond_5

    sget-object p1, Lcye;->S1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p4

    invoke-virtual {p4, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lkdh;->a:Lg8i;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzerx;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzerx;-><init>(Lkdh;Lcom/google/android/gms/internal/ads/zzbqx;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeiq;Leff;)V

    invoke-interface {p1, p4}, Lg8i;->i(Ljava/lang/Runnable;)Lim5;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p5, p3, p2, v6}, Lkdh;->f(Lcom/google/android/gms/internal/ads/zzbqx;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeiq;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeiq;->zzd()V

    :goto_1
    return-object v7
.end method

.method public static synthetic c(Lkdh;Lcom/google/android/gms/internal/ads/zzbqx;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeiq;Leff;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkdh;->f(Lcom/google/android/gms/internal/ads/zzbqx;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeiq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p5, p0}, Leff;->d(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lkdh;->e:Lenh;

    iget-object p0, p0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lq7i;
    .locals 8

    new-instance v7, Lgdh;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lgdh;-><init>(Lkdh;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V

    iget-object p2, p0, Lkdh;->a:Lg8i;

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/ads/j8;->k(Lj7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p3

    invoke-static {p3}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p3

    sget-object p4, Lcye;->L1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p5

    invoke-virtual {p5, p4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p4, Lcye;->E1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p5

    invoke-virtual {p5, p4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    iget-object p0, p0, Lkdh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, p4, p5, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->o(Lim5;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lim5;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lq7i;

    :cond_0
    new-instance p0, Lhdh;

    invoke-direct {p0, p1}, Lhdh;-><init>(Ljava/lang/String;)V

    const-class p1, Ljava/lang/Throwable;

    invoke-static {p3, p1, p0, p2}, Lcom/google/android/gms/internal/ads/j8;->e(Lim5;Ljava/lang/Class;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    check-cast p0, Lq7i;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzbqx;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeiq;)V
    .locals 8

    iget-object v0, p0, Lkdh;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/os/Bundle;

    iget-object v3, p0, Lkdh;->j:Ljava/lang/String;

    iget-object p0, p0, Lkdh;->e:Lenh;

    iget-object v6, p0, Lenh;->e:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v1, p1

    move-object v4, p2

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbqx;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzbra;)V

    return-void
.end method

.method public final g(Ljava/util/List;Ljava/util/Map;)V
    .locals 7

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk3h;

    iget-object v2, v0, Lk3h;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lkdh;->d(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v1, v0, Lk3h;->e:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-boolean v5, v0, Lk3h;->b:Z

    iget-boolean v6, v0, Lk3h;->c:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lkdh;->e(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lq7i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    iget v0, p0, Lkdh;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p0, Lkdh;->k:Lldh;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lkdh;->e:Lenh;

    iget-boolean v1, v0, Lenh;->r:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcye;->R1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lkdh;->k:Lldh;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ledh;

    invoke-direct {v0, p0}, Ledh;-><init>(Lkdh;)V

    iget-object p0, p0, Lkdh;->a:Lg8i;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/j8;->k(Lj7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
