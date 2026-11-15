.class public final Lcom/google/android/gms/internal/ads/r7;
.super Ld5i;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg5i;


# direct methods
.method public constructor <init>(Lg5i;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r7;->a:Lg5i;

    invoke-direct {p0}, Ld5i;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lu4i;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/r7;->a:Lg5i;

    invoke-virtual {p0}, Lg5i;->a()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxx;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxx;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfyd;-><init>(Ljava/util/Map;Lk3i;)V

    return-object v1
.end method
