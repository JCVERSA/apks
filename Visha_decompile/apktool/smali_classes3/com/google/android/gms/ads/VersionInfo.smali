.class public Lcom/google/android/gms/ads/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    iput p2, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    iput p3, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    return p0
.end method

.method public getMicroVersion()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    return p0
.end method

.method public getMinorVersion()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/google/android/gms/ads/VersionInfo;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/ads/VersionInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/gms/ads/VersionInfo;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d.%d.%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
