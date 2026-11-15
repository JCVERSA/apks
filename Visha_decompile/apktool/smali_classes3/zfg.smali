.class public final Lzfg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg8i;

.field public final b:Logg;

.field public final c:Lwgg;


# direct methods
.method public constructor <init>(Lg8i;Logg;Lwgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzfg;->a:Lg8i;

    iput-object p2, p0, Lzfg;->b:Logg;

    iput-object p3, p0, Lzfg;->c:Lwgg;

    return-void
.end method

.method public static synthetic a(Lzfg;Lim5;Lim5;Lim5;Lim5;Lim5;Lorg/json/JSONObject;Lim5;Lim5;Lim5;Lim5;Lim5;)Lddg;
    .locals 0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddg;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lddg;->p(Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {p0, p1}, Lddg;->m(Lcom/google/android/gms/internal/ads/zzbft;)V

    invoke-interface {p4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbft;

    invoke-virtual {p0, p1}, Lddg;->q(Lcom/google/android/gms/internal/ads/zzbft;)V

    invoke-interface {p5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfm;

    invoke-virtual {p0, p1}, Lddg;->j(Lcom/google/android/gms/internal/ads/zzbfm;)V

    invoke-static {p6}, Logg;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lddg;->s(Ljava/util/List;)V

    invoke-static {p6}, Logg;->i(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/client/zzev;

    move-result-object p1

    invoke-virtual {p0, p1}, Lddg;->l(Lcom/google/android/gms/ads/internal/client/zzev;)V

    invoke-interface {p7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejf;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lddg;->E(Lejf;)V

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lddg;->D(Landroid/view/View;)V

    invoke-interface {p1}, Lejf;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p1

    invoke-virtual {p0, p1}, Lddg;->C(Lcom/google/android/gms/ads/internal/client/zzea;)V

    :cond_0
    invoke-virtual {p0}, Lddg;->Q()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-interface {p9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejf;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lddg;->o(Lejf;)V

    invoke-interface {p1}, Lejf;->zzF()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lddg;->F(Landroid/view/View;)V

    :cond_1
    sget-object p1, Lcye;->t5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object p2

    invoke-virtual {p2, p1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p6}, Lzfg;->c(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p10}, Lddg;->u(Lim5;)V

    new-instance p1, Leff;

    invoke-direct {p1}, Leff;-><init>()V

    invoke-virtual {p0, p1}, Lddg;->x(Leff;)V

    goto :goto_0

    :cond_2
    invoke-interface {p10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejf;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lddg;->t(Lejf;)V

    :cond_3
    :goto_0
    invoke-interface {p11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvgg;

    iget p3, p2, Lvgg;->a:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_4

    iget-object p3, p2, Lvgg;->b:Ljava/lang/String;

    iget-object p2, p2, Lvgg;->d:Lcom/google/android/gms/internal/ads/zzbfg;

    invoke-virtual {p0, p3, p2}, Lddg;->n(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfg;)V

    goto :goto_1

    :cond_4
    iget-object p3, p2, Lvgg;->b:Ljava/lang/String;

    iget-object p2, p2, Lvgg;->c:Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Lddg;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public static final c(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "template_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Lvmh;Lhmh;Lorg/json/JSONObject;)Lim5;
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    new-instance v2, Lxfg;

    invoke-direct {v2, v13, v0, v1, v7}, Lxfg;-><init>(Lzfg;Lvmh;Lhmh;Lorg/json/JSONObject;)V

    iget-object v3, v13, Lzfg;->a:Lg8i;

    invoke-interface {v3, v2}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object v2

    iget-object v3, v13, Lzfg;->b:Logg;

    const-string v4, "images"

    invoke-virtual {v3, v7, v4}, Logg;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;

    move-result-object v5

    iget-object v0, v0, Lvmh;->b:Lumh;

    iget-object v0, v0, Lumh;->b:Lkmh;

    invoke-virtual {v3, v7, v4, v1, v0}, Logg;->g(Lorg/json/JSONObject;Ljava/lang/String;Lhmh;Lkmh;)Lim5;

    move-result-object v10

    const-string v4, "secondary_image"

    invoke-virtual {v3, v7, v4}, Logg;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;

    move-result-object v6

    const-string v4, "app_icon"

    invoke-virtual {v3, v7, v4}, Logg;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;

    move-result-object v4

    const-string v8, "attribution"

    invoke-virtual {v3, v7, v8}, Logg;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;

    move-result-object v8

    invoke-virtual {v3, v7, v1, v0}, Logg;->h(Lorg/json/JSONObject;Lhmh;Lkmh;)Lim5;

    move-result-object v9

    sget-object v0, Lcye;->Zc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "video"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "flags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v11, "key"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "afma_video_player_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :try_start_0
    const-string v0, "value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, v13, Lzfg;->b:Logg;

    new-instance v1, Leff;

    invoke-direct {v1}, Leff;-><init>()V

    new-instance v3, Lngg;

    invoke-direct {v3, v0, v1}, Lngg;-><init>(Logg;Leff;)V

    sget-object v0, Lzef;->f:Lg8i;

    invoke-static {v9, v3, v0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    move-object v11, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    move-object v11, v0

    :goto_2
    iget-object v0, v13, Lzfg;->c:Lwgg;

    const-string v1, "custom_assets"

    invoke-virtual {v0, v7, v1}, Lwgg;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lim5;

    move-result-object v12

    iget-object v0, v13, Lzfg;->b:Logg;

    const-string v1, "enable_omid"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    :goto_3
    move-object v14, v0

    goto :goto_4

    :cond_3
    const-string v1, "omid_settings"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v14, "omid_html"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v3

    new-instance v14, Ldgg;

    invoke-direct {v14, v0, v1}, Ldgg;-><init>(Logg;Ljava/lang/String;)V

    sget-object v0, Lzef;->f:Lg8i;

    invoke-static {v3, v14, v0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    goto :goto_3

    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcye;->t5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p3 .. p3}, Lzfg;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->a(Ljava/lang/Iterable;)Lw7i;

    move-result-object v15

    new-instance v3, Lyfg;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v16, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v7, p3

    move-object v8, v9

    move-object v9, v11

    move-object v11, v14

    invoke-direct/range {v0 .. v12}, Lyfg;-><init>(Lzfg;Lim5;Lim5;Lim5;Lim5;Lim5;Lorg/json/JSONObject;Lim5;Lim5;Lim5;Lim5;Lim5;)V

    iget-object v0, v13, Lzfg;->a:Lg8i;

    move-object/from16 v1, v16

    invoke-virtual {v15, v1, v0}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v0

    return-object v0
.end method
