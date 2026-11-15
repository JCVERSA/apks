.class public final Lb1f;
.super Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbfm;

.field public final b:Ljava/util/List;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfm;)V
    .locals 4

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb1f;->b:Ljava/util/List;

    iput-object p1, p0, Lb1f;->a:Lcom/google/android/gms/internal/ads/zzbfm;

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb1f;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lb1f;->c:Ljava/lang/String;

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfm;->zzh()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzbft;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbft;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Landroid/os/IBinder;)V

    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    iget-object v1, p0, Lb1f;->b:Ljava/util/List;

    new-instance v2, Lc1f;

    invoke-direct {v2, v3}, Lc1f;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_4
    return-void

    :goto_3
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getImages()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lb1f;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lb1f;->c:Ljava/lang/String;

    return-object p0
.end method
