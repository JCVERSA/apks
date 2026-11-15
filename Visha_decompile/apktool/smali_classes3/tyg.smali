.class public final Ltyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyag;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lgmh;

.field public final e:Lsmg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lyag;Lgmh;Lsmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltyg;->a:Landroid/content/Context;

    iput-object p3, p0, Ltyg;->b:Lyag;

    iput-object p2, p0, Ltyg;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Ltyg;->d:Lgmh;

    iput-object p5, p0, Ltyg;->e:Lsmg;

    return-void
.end method

.method public static bridge synthetic c(Ltyg;)Lsmg;
    .locals 0

    iget-object p0, p0, Ltyg;->e:Lsmg;

    return-object p0
.end method

.method public static synthetic d(Ltyg;Landroid/net/Uri;Lvmh;Lhmh;Lkmh;Ljava/lang/Object;)Lim5;
    .locals 10

    :try_start_0
    new-instance p5, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p5}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p5

    iget-object v0, p5, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object p1, p5, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/4 p5, 0x0

    invoke-direct {v2, p1, p5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    new-instance p1, Leff;

    invoke-direct {p1}, Leff;-><init>()V

    iget-object v0, p0, Ltyg;->b:Lyag;

    new-instance v1, Lpuf;

    invoke-direct {v1, p2, p3, p5}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    new-instance p2, Lw9g;

    new-instance v3, Lsyg;

    invoke-direct {v3, p0, p1, p3}, Lsyg;-><init>(Ltyg;Leff;Lhmh;)V

    invoke-direct {p2, v3, p5}, Lw9g;-><init>(Lebg;Lejf;)V

    invoke-virtual {v0, v1, p2}, Lyag;->c(Lpuf;Lw9g;)Lt9g;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {p2}, Lt9g;->h()Lw1g;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 p5, 0x0

    invoke-direct {v6, p5, p5, p5}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(IIZ)V

    iget-object v9, p4, Lkmh;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lejf;Lt8g;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Leff;->c(Ljava/lang/Object;)Z

    iget-object p0, p0, Ltyg;->d:Lgmh;

    invoke-virtual {p0}, Lgmh;->a()V

    invoke-virtual {p2}, Lt9g;->i()Ls9g;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Error in CustomTabsAdRenderer"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static e(Lhmh;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lhmh;->v:Lorg/json/JSONObject;

    const-string v0, "tab_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 8

    sget-object v0, Lcye;->ed:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltyg;->e:Lsmg;

    invoke-virtual {v0}, Lsmg;->a()Lrmg;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cstm_tbs_rndr"

    invoke-virtual {v0, v1, v2}, Lrmg;->b(Ljava/lang/String;Ljava/lang/String;)Lrmg;

    invoke-virtual {v0}, Lrmg;->j()V

    :cond_0
    invoke-static {p2}, Ltyg;->e(Lhmh;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iget-object v0, p1, Lvmh;->b:Lumh;

    iget-object v7, v0, Lumh;->b:Lkmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    new-instance v1, Lryg;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lryg;-><init>(Ltyg;Landroid/net/Uri;Lvmh;Lhmh;Lkmh;)V

    iget-object p0, p0, Ltyg;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->n(Lim5;Lk7i;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p0, Ltyg;->a:Landroid/content/Context;

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lxye;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Ltyg;->e(Lhmh;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
