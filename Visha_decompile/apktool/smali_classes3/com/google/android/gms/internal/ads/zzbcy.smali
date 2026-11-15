.class public final Lcom/google/android/gms/internal/ads/zzbcy;
.super Lcom/google/android/gms/internal/ads/zzbcz;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zzg;

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zza:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zza:Lcom/google/android/gms/ads/internal/zzg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zze()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zza:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/zzg;->zzb()V

    return-void
.end method

.method public final zzf()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbcy;->zza:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/zzg;->zzc()V

    return-void
.end method
