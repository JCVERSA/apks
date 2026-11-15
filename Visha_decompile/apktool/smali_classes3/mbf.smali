.class public final Lmbf;
.super Lkbf;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/content/Context;

.field public c:Landroid/content/SharedPreferences;

.field public final d:Lt6f;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt6f;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 1

    invoke-direct {p0}, Lkbf;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmbf;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmbf;->b:Landroid/content/Context;

    iput-object p3, p0, Lmbf;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lmbf;->d:Lt6f;

    return-void
.end method

.method public static synthetic b(Lmbf;Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 3

    sget-object v0, Lcye;->a:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lvxe;

    iget-object v0, p0, Lmbf;->b:Landroid/content/Context;

    invoke-static {v0}, Lvxe;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    sget v1, Lkze;->a:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zza()Luxe;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, p1}, Luxe;->e(Landroid/content/SharedPreferences$Editor;ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb()Lvxe;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p0, Lmbf;->c:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "js_last_update"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lzze;->b:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "js"

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mf"

    sget-object v1, Lzze;->c:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cl"

    const-string v1, "741296643"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rapid_rc"

    const-string v1, "dev"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "rapid_rollup"

    const-string v1, "HEAD"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "admob_module_version"

    const v1, 0xbdfcb8

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "dynamite_local_version"

    const v2, 0xefaafb0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "dynamite_version"

    const-string v2, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "container_version"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a()Lim5;
    .locals 5

    iget-object v0, p0, Lmbf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmbf;->c:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lmbf;->b:Landroid/content/Context;

    const-string v2, "google_ads_flags_meta"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lmbf;->c:Landroid/content/SharedPreferences;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lmbf;->c:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "js_last_update"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v0, Lzze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lmbf;->b:Landroid/content/Context;

    iget-object v1, p0, Lmbf;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, p0, Lmbf;->d:Lt6f;

    invoke-static {v0, v1}, Lmbf;->c(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v2, v0}, Lt6f;->zzb(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Llbf;

    invoke-direct {v1, p0}, Llbf;-><init>(Lmbf;)V

    sget-object p0, Lzef;->g:Lg8i;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->m(Lim5;Lm2i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
