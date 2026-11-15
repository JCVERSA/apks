.class public final Lahe;
.super Liwe;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzboy;

.field public final synthetic d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .locals 0

    iput-object p2, p0, Lahe;->b:Landroid/content/Context;

    iput-object p3, p0, Lahe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p4, p0, Lahe;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {p0}, Liwe;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbks;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbks;-><init>()V

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzco;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lahe;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkf;

    iget-object v2, p0, Lahe;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    iget-object p0, p0, Lahe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    const v2, 0xefc3650

    invoke-interface {p1, v0, p0, v2, v1}, Lcom/google/android/gms/ads/internal/client/zzco;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;ILcom/google/android/gms/internal/ads/zzbki;)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lahe;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl"

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzaj;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/client/zzaj;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zzs;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzq;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbko;

    iget-object v2, p0, Lahe;->c:Lcom/google/android/gms/internal/ads/zzboy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbkf;

    iget-object p0, p0, Lahe;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    const p0, 0xefc3650

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/zzbko;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzboy;ILcom/google/android/gms/internal/ads/zzbki;)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/util/client/zzr; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
