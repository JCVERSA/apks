.class public final Lsdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg8i;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdh;->a:Lg8i;

    iput-object p2, p0, Lsdh;->b:Landroid/content/Context;

    iput-object p3, p0, Lsdh;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lsdh;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lsdh;)Ltdh;
    .locals 10

    new-instance v9, Ltdh;

    iget-object v0, p0, Lsdh;->b:Landroid/content/Context;

    invoke-static {v0}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object v1

    invoke-virtual {v1}, Lkv7;->g()Z

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lsdh;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzG()Z

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_0
    const-string v6, "com.google.android.gms.ads.dynamite"

    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    iget-object p0, p0, Lsdh;->d:Ljava/lang/String;

    move-object v0, v9

    move v6, v7

    move v7, v8

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Ltdh;-><init>(ZZLjava/lang/String;ZIIILjava/lang/String;)V

    return-object v9
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lrdh;

    invoke-direct {v0, p0}, Lrdh;-><init>(Lsdh;)V

    iget-object p0, p0, Lsdh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
