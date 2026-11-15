.class public final Lokf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final b:Landroid/content/Context;

.field public final c:J

.field public final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Lmkf;Lnkf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lmkf;->c(Lmkf;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p2

    iput-object p2, p0, Lokf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p1}, Lmkf;->b(Lmkf;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lokf;->b:Landroid/content/Context;

    invoke-static {p1}, Lmkf;->g(Lmkf;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    iput-object p2, p0, Lokf;->d:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lmkf;->a(Lmkf;)J

    move-result-wide p1

    iput-wide p1, p0, Lokf;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lokf;->c:J

    return-wide v0
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lokf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/ads/internal/zzk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/zzk;

    iget-object v1, p0, Lokf;->b:Landroid/content/Context;

    iget-object p0, p0, Lokf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/ads/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v0
.end method

.method public final d()Lx0f;
    .locals 1

    new-instance v0, Lx0f;

    iget-object p0, p0, Lokf;->b:Landroid/content/Context;

    invoke-direct {v0, p0}, Lx0f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    iget-object p0, p0, Lokf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v0

    iget-object v1, p0, Lokf;->a:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object p0, p0, Lokf;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lokf;->d:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
