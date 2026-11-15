.class public final Lqzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkzg;


# instance fields
.field public final a:Lubg;

.field public final b:Lg8i;

.field public final c:Lzfg;

.field public final d:Lfoh;

.field public final e:Lnig;

.field public final f:Llmg;


# direct methods
.method public constructor <init>(Lubg;Lg8i;Lzfg;Lfoh;Lnig;Llmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqzg;->a:Lubg;

    iput-object p2, p0, Lqzg;->b:Lg8i;

    iput-object p3, p0, Lqzg;->c:Lzfg;

    iput-object p4, p0, Lqzg;->d:Lfoh;

    iput-object p5, p0, Lqzg;->e:Lnig;

    iput-object p6, p0, Lqzg;->f:Llmg;

    return-void
.end method

.method public static synthetic c(Lqzg;Lim5;Lim5;Lvmh;Lhmh;Lorg/json/JSONObject;)Lzcg;
    .locals 5

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddg;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lhig;

    sget-object v0, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqzg;->f:Llmg;

    invoke-virtual {v1}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v3

    invoke-interface {v3}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lqzg;->a:Lubg;

    new-instance v2, Lpuf;

    const/4 v3, 0x0

    invoke-direct {v2, p3, p4, v3}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p3, Ltdg;

    invoke-direct {p3, p1}, Ltdg;-><init>(Lddg;)V

    new-instance p4, Lhcg;

    invoke-direct {p4, p5, p2}, Lhcg;-><init>(Lorg/json/JSONObject;Lhig;)V

    invoke-virtual {v1, v2, p3, p4}, Lubg;->c(Lpuf;Ltdg;Lhcg;)Ledg;

    move-result-object p3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p4

    invoke-virtual {p4, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p4

    invoke-interface {p4}, Lfy0;->currentTimeMillis()J

    move-result-wide p4

    iget-object v1, p0, Lqzg;->f:Llmg;

    invoke-virtual {v1}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzx:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p3}, Ledg;->j()Lthg;

    move-result-object p4

    invoke-virtual {p4}, Lthg;->b()V

    invoke-virtual {p3}, Ledg;->k()Ldig;

    move-result-object p4

    invoke-virtual {p4, p2}, Ldig;->a(Lhig;)V

    invoke-virtual {p3}, Ledg;->i()Lihg;

    move-result-object p2

    invoke-virtual {p1}, Lddg;->f0()Lejf;

    move-result-object p4

    invoke-virtual {p2, p4}, Lihg;->c(Lejf;)V

    invoke-virtual {p3}, Ledg;->l()Lmig;

    move-result-object p2

    iget-object p4, p0, Lqzg;->e:Lnig;

    invoke-virtual {p1}, Lddg;->d0()Lejf;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lmig;->a(Lnig;Lejf;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p1

    invoke-virtual {p1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lqzg;->f:Llmg;

    invoke-virtual {p0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzy:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    invoke-virtual {p3}, Lgdg;->h()Lzcg;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lqzg;Lvmh;Lhmh;Lorg/json/JSONArray;)Lim5;
    .locals 7

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lvmh;->a:Lsmh;

    iget-object v0, v0, Lsmh;->a:Lenh;

    iget v0, v0, Lenh;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    sget-object v4, Lcye;->t2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lqzg;->f:Llmg;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nsl"

    invoke-virtual {v4, v6, v5}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lqzg;->d:Lfoh;

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lfoh;->c(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, v0, :cond_3

    if-ge v2, v3, :cond_2

    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5}, Lqzg;->g(Lvmh;Lhmh;Lorg/json/JSONObject;)Lim5;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lqzg;->g(Lvmh;Lhmh;Lorg/json/JSONObject;)Lim5;

    move-result-object p1

    new-instance p2, Lpzg;

    invoke-direct {p2}, Lpzg;-><init>()V

    iget-object p0, p0, Lqzg;->b:Lg8i;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static synthetic e(Lqzg;Lhmh;Lhig;)Lim5;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isNonagon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lcye;->M8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ld28;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "skipDeepLinkValidation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object p1, p1, Lhmh;->s:Llmh;

    iget-object p1, p1, Llmh;->c:Lorg/json/JSONObject;

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_params"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.preProcessJson"

    invoke-virtual {p2, p1, v1}, Lhig;->g(Ljava/lang/String;Lorg/json/JSONObject;)Lim5;

    move-result-object p1

    new-instance v0, Lmzg;

    invoke-direct {v0, p0, p2}, Lmzg;-><init>(Lqzg;Lhig;)V

    iget-object p0, p0, Lqzg;->b:Lg8i;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lqzg;Lhig;Lorg/json/JSONObject;)Lim5;
    .locals 0

    iget-object p0, p0, Lqzg;->d:Lfoh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfoh;->b(Lim5;)V

    const-string p0, "success"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "json"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "ads"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbnp;

    const-string p1, "process json failed"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 3

    iget-object v0, p0, Lqzg;->d:Lfoh;

    invoke-virtual {v0}, Lfoh;->a()Lim5;

    move-result-object v0

    new-instance v1, Lnzg;

    invoke-direct {v1, p0, p2}, Lnzg;-><init>(Lqzg;Lhmh;)V

    iget-object v2, p0, Lqzg;->b:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    new-instance v1, Lozg;

    invoke-direct {v1, p0, p1, p2}, Lozg;-><init>(Lqzg;Lvmh;Lhmh;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p2, Lhmh;->s:Llmh;

    if-eqz p0, :cond_0

    iget-object p0, p0, Llmh;->c:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lvmh;Lhmh;Lorg/json/JSONObject;)Lim5;
    .locals 9

    sget-object v0, Lcye;->s2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqzg;->f:Llmg;

    invoke-virtual {v0}, Llmg;->a()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lqzg;->d:Lfoh;

    iget-object v1, p0, Lqzg;->c:Lzfg;

    invoke-virtual {v0}, Lfoh;->a()Lim5;

    move-result-object v5

    invoke-virtual {v1, p1, p2, p3}, Lzfg;->b(Lvmh;Lhmh;Lorg/json/JSONObject;)Lim5;

    move-result-object v4

    const/4 v0, 0x2

    new-array v0, v0, [Lim5;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->c([Lim5;)Lw7i;

    move-result-object v0

    new-instance v1, Llzg;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Llzg;-><init>(Lqzg;Lim5;Lim5;Lvmh;Lhmh;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lqzg;->b:Lg8i;

    invoke-virtual {v0, v1, p0}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
