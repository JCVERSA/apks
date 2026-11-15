.class public final Lslf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lslf;->a:Lqyi;

    iput-object p2, p0, Lslf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lkbf;
    .locals 4

    iget-object v0, p0, Lslf;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lslf;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object v1

    sget-object v2, La7f;->b:Lx6f;

    const-string v3, "google.afma.request.getAdDictionary"

    invoke-virtual {v1, v3, v2, v2}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lu6f;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    invoke-virtual {v1, v0, v3, p0}, Lu6f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lj7f;

    move-result-object p0

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {p0, v1, v2, v2}, Lj7f;->a(Ljava/lang/String;Lw6f;Lv6f;)Lt6f;

    move-result-object p0

    new-instance v1, Lmbf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->forPackage()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lmbf;-><init>(Landroid/content/Context;Lt6f;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lslf;->a()Lkbf;

    move-result-object p0

    return-object p0
.end method
