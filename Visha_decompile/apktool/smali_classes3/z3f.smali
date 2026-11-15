.class public final Lz3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/zzb;

.field public final b:Lsmg;

.field public final c:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field public final d:Lq9f;

.field public final e:Ldwg;

.field public final f:Lwpf;

.field public g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

.field public final h:Lg8i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lq9f;Ldwg;Lsmg;Lwpf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    sget-object v1, Lzef;->g:Lg8i;

    iput-object v1, p0, Lz3f;->h:Lg8i;

    iput-object p1, p0, Lz3f;->a:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p2, p0, Lz3f;->d:Lq9f;

    iput-object p3, p0, Lz3f;->e:Ldwg;

    iput-object p4, p0, Lz3f;->b:Lsmg;

    new-instance p1, Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lz3f;->c:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p5, p0, Lz3f;->f:Lwpf;

    return-void
.end method

.method public static b(Ljava/util/Map;)I
    .locals 1

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Landroid/content/Context;Lfre;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Linh;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    sget-object v0, Lcye;->dc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p1, p2}, Lfre;->e(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p5, p2, p0, p3, p4}, Linh;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lfre;->e(Landroid/net/Uri;)Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1, p2, p0, p3, p4}, Lfre;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzauz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method

.method public static d(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    :try_start_0
    const-string v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public static bridge synthetic e(Lz3f;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lz3f;->h(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/util/Map;)Z
    .locals 2

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lz3f;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lz3f;->m(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, p1

    check-cast v2, Lejf;

    invoke-interface {v2}, Lejf;->zzD()Lhmh;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lejf;->zzD()Lhmh;

    move-result-object v1

    iget-object v1, v1, Lhmh;->w0:Ljava/util/Map;

    :cond_0
    invoke-interface {v2}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Ltdf;->c(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Action missing from an open GMSG."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lz3f;->a:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzb;->zzc()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    sget-object v2, Lcye;->ga:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lz3f;->f:Lwpf;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lwpf;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lwpf;->e(Ljava/lang/String;Ljava/util/Random;)Lim5;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    :goto_1
    new-instance v2, Lv3f;

    invoke-direct {v2, p0, p2, p1, v1}, Lv3f;-><init>(Lz3f;Ljava/util/Map;Lcom/google/android/gms/ads/internal/client/zza;Ljava/lang/String;)V

    iget-object p0, p0, Lz3f;->h:Lg8i;

    invoke-static {v0, v2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final h(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    move-object v10, v8

    check-cast v10, Lejf;

    invoke-interface {v10}, Lejf;->zzD()Lhmh;

    move-result-object v0

    invoke-interface {v10}, Lejf;->zzR()Lkmh;

    move-result-object v2

    const/4 v11, 0x0

    const-string v3, ""

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lhmh;->b()Z

    move-result v0

    move v12, v0

    move-object v13, v2

    goto :goto_0

    :cond_0
    move-object v13, v3

    move v12, v11

    :goto_0
    sget-object v0, Lcye;->Pa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "sc"

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v14, v11

    goto :goto_1

    :cond_1
    move v14, v2

    :goto_1
    sget-object v0, Lcye;->Oc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "true"

    if-eqz v0, :cond_2

    const-string v0, "ig_cl"

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v15, v2

    goto :goto_2

    :cond_2
    move v15, v11

    :goto_2
    const-string v0, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Lejf;->zzaF()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v7, v11}, Lz3f;->k(Z)V

    move-object v0, v8

    check-cast v0, Lxjf;

    invoke-static/range {p3 .. p3}, Lz3f;->f(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p3 .. p3}, Lz3f;->b(Ljava/util/Map;)I

    move-result v2

    invoke-interface {v0, v1, v2, v14}, Lxjf;->zzaL(ZIZ)V

    return-void

    :cond_4
    const-string v0, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v7, v11}, Lz3f;->k(Z)V

    sget-object v0, Lcye;->Zb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_allowed_for_lock_screen"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v11, v2

    :cond_5
    if-eqz p1, :cond_6

    move-object v3, v8

    check-cast v3, Lxjf;

    invoke-static/range {p3 .. p3}, Lz3f;->f(Ljava/util/Map;)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lz3f;->b(Ljava/util/Map;)I

    move-result v5

    move-object/from16 v6, p1

    move v7, v14

    move v8, v11

    invoke-interface/range {v3 .. v8}, Lxjf;->zzaN(ZILjava/lang/String;ZZ)V

    return-void

    :cond_6
    move-object v3, v8

    check-cast v3, Lxjf;

    invoke-static/range {p3 .. p3}, Lz3f;->f(Ljava/util/Map;)Z

    move-result v4

    invoke-static/range {p3 .. p3}, Lz3f;->b(Ljava/util/Map;)I

    move-result v5

    const-string v0, "html"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "baseurl"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    move v8, v14

    invoke-interface/range {v3 .. v8}, Lxjf;->zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    const-string v0, "chrome_custom_tab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcye;->S4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "User opt out chrome custom tab."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Lz3f;->m(I)V

    goto :goto_4

    :cond_8
    sget-object v1, Lcye;->N4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0, v4}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move v11, v2

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lxye;->g(Landroid/content/Context;)Z

    move-result v11

    :cond_a
    :goto_3
    if-nez v11, :cond_b

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lz3f;->m(I)V

    :goto_4
    const-string v0, "use_first_package"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move-object v5, v13

    move v6, v14

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lz3f;->j(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    :cond_b
    invoke-virtual {v7, v2}, Lz3f;->k(Z)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot open browser with null or empty url"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Lz3f;->m(I)V

    return-void

    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v10}, Lejf;->zzI()Lfre;

    move-result-object v2

    invoke-interface {v10}, Lejf;->zzF()Landroid/view/View;

    move-result-object v4

    invoke-interface {v10}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v10}, Lejf;->zzS()Linh;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lz3f;->c(Landroid/content/Context;Lfre;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Linh;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lz3f;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v12, :cond_d

    iget-object v1, v7, Lz3f;->e:Ldwg;

    if-eqz v1, :cond_d

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2, v13}, Lz3f;->l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_c

    :cond_d
    new-instance v1, Lw3f;

    invoke-direct {v1, v7}, Lw3f;-><init>(Lz3f;)V

    iput-object v1, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move-object v1, v8

    check-cast v1, Lxjf;

    new-instance v12, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move-object/from16 v16, v12

    move v12, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    move-object/from16 v0, v16

    invoke-interface {v1, v0, v14, v15, v13}, Lxjf;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    :cond_e
    const-string v0, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "system_browser"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move-object v5, v13

    move v6, v14

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Lz3f;->j(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    :cond_10
    :goto_5
    const-string v0, "open_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "p"

    if-eqz v0, :cond_14

    sget-object v0, Lcye;->p8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v7, v2}, Lz3f;->k(Z)V

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Package name missing from open app action."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_11
    if-eqz v12, :cond_12

    iget-object v1, v7, Lz3f;->e:Ldwg;

    if-eqz v1, :cond_12

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v0, v13}, Lz3f;->l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_12
    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_13

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot get package manager from open app action."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object v1, v8

    check-cast v1, Lxjf;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v1, v2, v14, v15, v13}, Lxjf;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v7, v2}, Lz3f;->k(Z)V

    const-string v0, "intent_url"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_0
    invoke-static {v3, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    :goto_6
    move-object v0, v4

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v3, "Error parsing the url: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_7
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-interface {v10}, Lejf;->zzI()Lfre;

    move-result-object v17

    invoke-interface {v10}, Lejf;->zzF()Landroid/view/View;

    move-result-object v19

    invoke-interface {v10}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v20

    invoke-interface {v10}, Lejf;->zzS()Linh;

    move-result-object v21

    move-object/from16 v18, v3

    invoke-static/range {v16 .. v21}, Lz3f;->c(Landroid/content/Context;Lfre;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Linh;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lz3f;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-object v4, Lcye;->q8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v5

    invoke-virtual {v5, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    :cond_16
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_17
    :goto_8
    sget-object v3, Lcye;->L8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v3}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v5, "event_id"

    if-eqz v3, :cond_18

    const-string v3, "intent_async"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v16, v2

    goto :goto_9

    :cond_18
    move/from16 v16, v11

    :goto_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_19

    new-instance v3, Lx3f;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v11, v3

    move v3, v14

    move-object v14, v4

    move-object/from16 v4, p2

    move/from16 v18, v15

    move-object v15, v5

    move-object v5, v14

    move-object/from16 p4, v14

    move-object v14, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lx3f;-><init>(Lz3f;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v11, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move-object/from16 v1, p4

    const/4 v11, 0x0

    goto :goto_a

    :cond_19
    move-object v1, v4

    move v2, v14

    move/from16 v18, v15

    move-object v15, v5

    move-object v14, v6

    move v11, v2

    :goto_a
    const-string v2, "openIntentAsync"

    if-eqz v0, :cond_1b

    if-eqz v12, :cond_1a

    iget-object v3, v7, Lz3f;->e:Ldwg;

    if-eqz v3, :cond_1a

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v3, v4, v13}, Lz3f;->l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v16, :cond_1d

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lp5f;

    invoke-interface {v0, v2, v1}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1a
    move-object v1, v8

    check-cast v1, Lxjf;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    move/from16 v3, v18

    invoke-interface {v1, v2, v11, v3, v13}, Lxjf;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    :cond_1b
    move/from16 v3, v18

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-interface {v10}, Lejf;->zzI()Lfre;

    move-result-object v18

    invoke-interface {v10}, Lejf;->zzF()Landroid/view/View;

    move-result-object v20

    invoke-interface {v10}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v21

    invoke-interface {v10}, Lejf;->zzS()Linh;

    move-result-object v22

    invoke-static/range {v17 .. v22}, Lz3f;->c(Landroid/content/Context;Lfre;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Linh;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lz3f;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1c
    move-object/from16 v0, p1

    :goto_b
    if-eqz v12, :cond_1e

    iget-object v4, v7, Lz3f;->e:Ldwg;

    if-eqz v4, :cond_1e

    invoke-interface {v10}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v7, v8, v4, v0, v13}, Lz3f;->l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v16, :cond_1d

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, Lp5f;

    invoke-interface {v0, v2, v1}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    :goto_c
    return-void

    :cond_1e
    move-object v1, v8

    check-cast v1, Lxjf;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v4, "i"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/String;

    const-string v4, "m"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Ljava/lang/String;

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Ljava/lang/String;

    const-string v4, "c"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/String;

    const-string v4, "f"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Ljava/lang/String;

    const-string v4, "e"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, Ljava/lang/String;

    iget-object v4, v7, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move-object/from16 v17, v2

    move-object/from16 v19, v0

    move-object/from16 v25, v4

    invoke-direct/range {v17 .. v25}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v1, v2, v11, v3, v13}, Lxjf;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v2, p0, Lz3f;->e:Ldwg;

    invoke-virtual {v2, p2}, Ldwg;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lz3f;->b:Lsmg;

    if-eqz v1, :cond_0

    const-string p0, "dialog_not_shown_reason"

    invoke-static {p0, p3}, Lcom/google/android/gms/internal/ads/zzfwz;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v5

    const-string v4, "dialog_not_shown"

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzebe;->zzp(Landroid/content/Context;Lsmg;Ldwg;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final j(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lz3f;->k(Z)V

    move-object v5, v1

    check-cast v5, Lejf;

    invoke-interface {v5}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v5}, Lejf;->zzI()Lfre;

    move-result-object v13

    invoke-interface {v5}, Lejf;->zzF()Landroid/view/View;

    move-result-object v14

    invoke-interface {v5}, Lejf;->zzS()Linh;

    move-result-object v15

    const-string v6, "activity"

    invoke-virtual {v12, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/app/ActivityManager;

    const-string v6, "u"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v17, 0x0

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v2, v17

    goto/16 :goto_6

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    move-object v6, v12

    move-object v7, v13

    move-object v9, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Lz3f;->c(Landroid/content/Context;Lfre;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Linh;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lz3f;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "use_first_package"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const-string v7, "use_running_process"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string v7, "use_custom_tabs"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcye;->J4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v11

    :goto_1
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v9, "https"

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    :cond_4
    :goto_2
    move-object/from16 v7, v17

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    goto :goto_2

    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v12, v13, v14, v15}, Ly3f;->a(Landroid/net/Uri;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v7, v12, v13, v14, v15}, Ly3f;->a(Landroid/net/Uri;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v12, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v12, v8}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    move-object v6, v9

    move-object v7, v10

    move-object v2, v8

    move-object v8, v12

    move-object/from16 v17, v9

    move-object v9, v13

    move-object/from16 p2, v10

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ly3f;->d(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object/from16 v6, v17

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ly3f;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v2, v12, v13, v14, v15}, Ly3f;->c(Landroid/content/Intent;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object/from16 v6, v17

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ly3f;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v12, v13, v14, v15}, Ly3f;->c(Landroid/content/Intent;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_d

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_0

    :cond_9
    if-eqz v19, :cond_c

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_c

    move-object/from16 v7, p2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    add-int/lit8 v16, v11, 0x1

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v6, v17

    move-object v7, v8

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ly3f;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 p2, v7

    move/from16 v11, v16

    goto :goto_4

    :cond_c
    move-object/from16 v7, p2

    if-eqz v18, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object/from16 v6, v17

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Ly3f;->b(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lfre;Landroid/view/View;Linh;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_d
    :goto_6
    if-eqz p3, :cond_f

    iget-object v4, v0, Lz3f;->e:Ldwg;

    if-eqz v4, :cond_f

    if-eqz v2, :cond_f

    invoke-interface {v5}, Lejf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5, v3}, Lz3f;->l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    return-void

    :cond_f
    :goto_7
    :try_start_0
    check-cast v1, Lxjf;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lz3f;->g:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    move/from16 v0, p5

    move/from16 v2, p6

    invoke-interface {v1, v4, v0, v2, v3}, Lxjf;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Z)V
    .locals 0

    iget-object p0, p0, Lz3f;->d:Lq9f;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lq9f;->i(Z)V

    :cond_0
    return-void
.end method

.method public final l(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lz3f;->b:Lsmg;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz3f;->e:Ldwg;

    const-string v2, "offline_open"

    invoke-static {p2, v0, v1, p4, v2}, Lcom/google/android/gms/internal/ads/zzebe;->zzo(Landroid/content/Context;Lsmg;Ldwg;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p2}, Lqef;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lz3f;->e:Ldwg;

    iget-object p0, p0, Lz3f;->c:Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-virtual {p1, p0, p4}, Ldwg;->n(Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lejf;

    invoke-interface {v0}, Lejf;->zzD()Lhmh;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v4, v2, Lhmh;->y0:Lcom/google/android/gms/ads/internal/util/client/zzw;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, v2, Lhmh;->d0:Lqaf;

    if-eqz v2, :cond_3

    iget-boolean v5, v2, Lqaf;->a:Z

    if-eqz v5, :cond_3

    iget-object v5, v2, Lqaf;->b:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-boolean v2, v2, Lqaf;->c:Z

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-nez v4, :cond_f

    if-eqz v2, :cond_4

    sget-object v2, Lcye;->F8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbr;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v4

    const-string v5, "offline_notification_channel"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v0}, Lejf;->zzO()Lkkf;

    move-result-object v6

    invoke-virtual {v6}, Lkkf;->i()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    if-nez v4, :cond_9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-ge v4, v7, :cond_7

    sget-object v4, Lcye;->A8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_3

    :cond_7
    sget-object v4, Lcye;->z8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v4}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    const-string p1, "notifications_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    const-string p1, "notification_channel_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a
    if-nez v2, :cond_b

    const-string p1, "work_manager_unavailable"

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    if-eqz v6, :cond_c

    const-string p1, "ad_no_activity"

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_c
    sget-object v2, Lcye;->x8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    const-string p1, "notification_flow_disabled"

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-interface {v0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {}, Lqwg;->e()Lpwg;

    move-result-object v2

    invoke-interface {v0}, Lejf;->zzi()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lpwg;->a(Landroid/app/Activity;)Lpwg;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lpwg;->b(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lpwg;

    invoke-virtual {v2, p4}, Lpwg;->c(Ljava/lang/String;)Lpwg;

    invoke-virtual {v2, p3}, Lpwg;->d(Ljava/lang/String;)Lpwg;

    invoke-virtual {v2}, Lpwg;->e()Lqwg;

    move-result-object p3

    :try_start_0
    invoke-interface {v0}, Lejf;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf(Lqwg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p4, p1}, Lz3f;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_e
    move-object p0, p1

    check-cast p0, Lxjf;

    const/16 p2, 0xe

    invoke-interface {p0, p4, p3, p2}, Lxjf;->zzaK(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    return v3

    :cond_f
    :goto_7
    iget-object p1, p0, Lz3f;->b:Lsmg;

    if-eqz p1, :cond_10

    iget-object p0, p0, Lz3f;->e:Ldwg;

    const-string p3, "onfs"

    invoke-static {p2, p1, p0, p4, p3}, Lcom/google/android/gms/internal/ads/zzebe;->zzo(Landroid/content/Context;Lsmg;Ldwg;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v1
.end method

.method public final m(I)V
    .locals 2

    sget-object v0, Lcye;->M4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lz3f;->b:Lsmg;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v0, "action"

    const-string v1, "cct_action"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    packed-switch p1, :pswitch_data_0

    const-string p1, "OPT_OUT"

    goto :goto_0

    :pswitch_0
    const-string p1, "WRONG_EXP_SETUP"

    goto :goto_0

    :pswitch_1
    const-string p1, "UNKNOWN"

    goto :goto_0

    :pswitch_2
    const-string p1, "EMPTY_URL"

    goto :goto_0

    :pswitch_3
    const-string p1, "ACTIVITY_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string p1, "CCT_READY_TO_OPEN"

    goto :goto_0

    :pswitch_5
    const-string p1, "CCT_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_6
    const-string p1, "CONTEXT_NULL"

    goto :goto_0

    :pswitch_7
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    :goto_0
    const-string v0, "cct_open_status"

    invoke-virtual {p0, v0, p1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
