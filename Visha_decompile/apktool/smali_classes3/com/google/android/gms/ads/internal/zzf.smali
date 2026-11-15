.class public final Lcom/google/android/gms/ads/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/zzf;->b:J

    return-void
.end method

.method public static final b(Lsmg;Ljava/lang/String;J)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcye;->Kc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsmg;->a()Lrmg;

    move-result-object p0

    const-string v0, "action"

    const-string v1, "lat_init"

    invoke-virtual {p0, v0, v1}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {p0}, Lrmg;->j()V

    :cond_0
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lsmg;Lwrh;Lcom/google/android/gms/internal/ads/zzfgq;Lorg/json/JSONObject;)Lim5;
    .locals 4

    const-string p0, "isSuccessful"

    const/4 v0, 0x0

    invoke-virtual {p5, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "appSettingsJson"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzs(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string p1, "cld_s"

    invoke-static {p2, p1, v0, v1}, Lcom/google/android/gms/ads/internal/zzf;->b(Lsmg;Ljava/lang/String;J)V

    :cond_0
    const-string p1, "errorMessage"

    const-string p2, ""

    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p3, p1}, Lwrh;->zzc(Ljava/lang/String;)Lwrh;

    :cond_1
    invoke-interface {p3, p0}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {p3}, Lwrh;->zzm()Lash;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/ads/internal/zzf;Lsmg;Ljava/lang/Long;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p0

    invoke-interface {p0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string p0, "cld_r"

    invoke-static {p1, p0, v0, v1}, Lcom/google/android/gms/ads/internal/zzf;->b(Lsmg;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLief;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfgq;Lsmg;Ljava/lang/Long;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v6

    invoke-interface {v6}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/ads/internal/zzf;->b:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Not retrying to fetch app settings"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v6

    invoke-interface {v6}, Lfy0;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/ads/internal/zzf;->b:J

    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Lief;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lief;->a()J

    move-result-wide v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v8

    invoke-interface {v8}, Lfy0;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sget-object v6, Lcye;->q4:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-gtz v6, :cond_2

    invoke-virtual/range {p4 .. p4}, Lief;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Context not provided to fetch application settings"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "App settings could not be fetched. Required parameters missing"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_6

    move-object v6, v1

    :cond_6
    iput-object v6, v0, Lcom/google/android/gms/ads/internal/zzf;->a:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {p1, v6}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v6

    invoke-interface {v6}, Lwrh;->zzi()Lwrh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzf;->a:Landroid/content/Context;

    invoke-virtual {v7, v8, p2, v4}, Lu6f;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v7

    const-string v8, "google.afma.config.fetchAppSettings"

    sget-object v9, La7f;->b:Lx6f;

    invoke-virtual {v7, v8, v9, v9}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "app_id"

    move-object/from16 v11, p5

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_7
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "ad_unit_id"

    move-object/from16 v11, p6

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_2
    const-string v10, "is_init"

    move/from16 v11, p3

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "pn"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "experiment_ids"

    const-string v11, ","

    sget-object v12, Lcye;->a:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    move-result-object v12

    invoke-virtual {v12}, Luxe;->a()Ljava/util/List;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "js"

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcye;->E9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v10

    invoke-virtual {v10, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "inspector_enabled"

    move/from16 v10, p11

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzf;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-static {p1}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object v1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lkv7;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "version"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    :try_start_2
    const-string v1, "Error fetching PackageInfo."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_a
    :goto_3
    invoke-interface {v7, v9}, Lt6f;->zzb(Ljava/lang/Object;)Lim5;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzd;

    move-object p1, v2

    move-object p2, p0

    move-object/from16 p3, p10

    move-object/from16 p4, p9

    move-object/from16 p5, v6

    move-object/from16 p6, p8

    invoke-direct/range {p1 .. p6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lsmg;Lwrh;Lcom/google/android/gms/internal/ads/zzfgq;)V

    sget-object v7, Lzef;->g:Lg8i;

    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object v2

    if-eqz v3, :cond_b

    invoke-interface {v1, v3, v7}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_b
    if-eqz v5, :cond_c

    new-instance v3, Lcom/google/android/gms/ads/internal/zze;

    move-object/from16 v9, p9

    invoke-direct {v3, p0, v9, v5}, Lcom/google/android/gms/ads/internal/zze;-><init>(Lcom/google/android/gms/ads/internal/zzf;Lsmg;Ljava/lang/Long;)V

    invoke-interface {v1, v3, v7}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_c
    sget-object v0, Lcye;->M7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "ConfigLoader.maybeFetchNewAppSettings"

    if-eqz v0, :cond_d

    :try_start_3
    invoke-static {v2, v1}, Lcff;->b(Lim5;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-static {v2, v1}, Lcff;->a(Lim5;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_4
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Error requesting application settings"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v6, v0}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    invoke-interface {v6, v8}, Lwrh;->zzg(Z)Lwrh;

    invoke-interface {v6}, Lwrh;->zzm()Lash;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lash;)V

    return-void
.end method

.method public final zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfgq;Lsmg;Ljava/lang/Long;Z)V
    .locals 12
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lsmg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/zzf;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLief;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfgq;Lsmg;Ljava/lang/Long;Z)V

    return-void
.end method

.method public final zze(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lief;Lcom/google/android/gms/internal/ads/zzfgq;Z)V
    .locals 12

    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Lief;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object v6, p3

    move-object/from16 v8, p5

    move/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/zzf;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLief;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lcom/google/android/gms/internal/ads/zzfgq;Lsmg;Ljava/lang/Long;Z)V

    return-void
.end method
