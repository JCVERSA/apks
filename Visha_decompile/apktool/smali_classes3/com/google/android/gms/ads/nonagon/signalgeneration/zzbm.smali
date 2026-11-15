.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf9g;


# instance fields
.field public final b:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iput p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->c:I

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;

    iget-object p0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzb;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbl;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbm;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbk;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
