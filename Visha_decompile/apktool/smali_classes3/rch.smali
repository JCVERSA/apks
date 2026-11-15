.class public final Lrch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/pm/ApplicationInfo;

.field public final b:Landroid/content/pm/PackageInfo;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrch;->a:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lrch;->b:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lrch;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method public final zzb()Lim5;
    .locals 9

    iget-object v0, p0, Lrch;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lrch;->b:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lrch;->c:Landroid/content/Context;

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    invoke-static {v0}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkv7;->d(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_2

    :catch_0
    move-object v5, v1

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v0, v6, :cond_4

    sget-object v0, Lcye;->Pc:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v6

    invoke-virtual {v6, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object p0, p0, Lrch;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v2}, Loch;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lpch;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "No installing package name found"

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {p0}, Lqch;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "No initiating package name found"

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v0

    move-object v7, v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_3
    :goto_3
    move-object v7, p0

    move-object v6, v0

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    goto :goto_5

    :catch_3
    move-exception p0

    goto :goto_4

    :cond_4
    move-object v6, v1

    move-object v7, v6

    goto :goto_6

    :goto_4
    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    :goto_5
    const-string v6, "PackageInfoSignalSource.getInstallSourceInfo"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :goto_6
    new-instance p0, Lsch;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lsch;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
