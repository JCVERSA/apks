.class public final Lqwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2g;
.implements Lf9g;


# instance fields
.field public b:Lkbf;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/google/android/gms/internal/ads/zzfgq;

.field public final f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final g:Ljava/util/concurrent/Executor;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqwf;->h:Z

    iput-boolean v0, p0, Lqwf;->i:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lqwf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lqwf;->d:Landroid/content/Context;

    iput-object p2, p0, Lqwf;->e:Lcom/google/android/gms/internal/ads/zzfgq;

    iput-object p3, p0, Lqwf;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lqwf;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lqwf;)V
    .locals 1

    iget-object v0, p0, Lqwf;->d:Landroid/content/Context;

    invoke-static {v0}, Ljxe;->e(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqwf;->i:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lqwf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lzze;->j:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lzze;->k:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lzze;->i:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :catch_0
    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lief;

    move-result-object v0

    invoke-virtual {v0}, Lief;->c()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "local_flag_write"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "client"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    const-string v4, "service"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lqwf;->d:Landroid/content/Context;

    iget-object v2, p0, Lqwf;->e:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lqwf;->d:Landroid/content/Context;

    iget-object v2, p0, Lqwf;->e:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lu6f;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v0

    :goto_2
    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    sget-object v3, La7f;->b:Lx6f;

    invoke-virtual {v0, v2, v3, v3}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object v0

    iget-object v2, p0, Lqwf;->d:Landroid/content/Context;

    iget-object v3, p0, Lqwf;->f:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v4, Lmbf;

    invoke-direct {v4, v2, v0, v3}, Lmbf;-><init>(Landroid/content/Context;Lt6f;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v4, p0, Lqwf;->b:Lkbf;

    iput-boolean v1, p0, Lqwf;->h:Z

    :goto_3
    iget-boolean v0, p0, Lqwf;->h:Z

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lqwf;->b:Lkbf;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lkbf;->a()Lim5;

    move-result-object v0

    iget-boolean v1, p0, Lqwf;->i:Z

    if-nez v1, :cond_9

    sget-object v1, Lrze;->i:Leze;

    invoke-virtual {v1}, Leze;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcsq;-><init>(Lqwf;)V

    iget-object p0, p0, Lqwf;->g:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_9
    const-string p0, "persistFlagsClient"

    invoke-static {v0, p0}, Lcff;->a(Lim5;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-virtual {p0}, Lqwf;->b()V

    return-void
.end method

.method public final w(Lvmh;)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 0

    invoke-virtual {p0}, Lqwf;->b()V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lqwf;->b()V

    return-void
.end method
