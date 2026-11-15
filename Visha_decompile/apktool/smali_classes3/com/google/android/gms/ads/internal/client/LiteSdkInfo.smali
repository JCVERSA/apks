.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzcu;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcu;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzboy;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    return-object p0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzex;
    .locals 3

    new-instance p0, Lcom/google/android/gms/ads/internal/client/zzex;

    const v0, 0xefaafb0

    const v1, 0xefc3650

    const-string v2, "24.2.0"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzex;-><init>(IILjava/lang/String;)V

    return-object p0
.end method
