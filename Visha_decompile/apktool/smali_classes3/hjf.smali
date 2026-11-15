.class public final Lhjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field public final b:Lejf;

.field public final c:Lcom/google/android/gms/ads/internal/overlay/zzr;


# direct methods
.method public constructor <init>(Lejf;Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjf;->b:Lejf;

    iput-object p2, p0, Lhjf;->c:Lcom/google/android/gms/ads/internal/overlay/zzr;

    return-void
.end method


# virtual methods
.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdi()V
    .locals 0

    return-void
.end method

.method public final zzdo()V
    .locals 0

    iget-object p0, p0, Lhjf;->c:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdo()V

    :cond_0
    return-void
.end method

.method public final zzdp()V
    .locals 1

    iget-object v0, p0, Lhjf;->c:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdp()V

    :cond_0
    iget-object p0, p0, Lhjf;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzaa()V

    return-void
.end method

.method public final zzdr()V
    .locals 0

    iget-object p0, p0, Lhjf;->c:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdr()V

    :cond_0
    return-void
.end method

.method public final zzds(I)V
    .locals 1

    iget-object v0, p0, Lhjf;->c:Lcom/google/android/gms/ads/internal/overlay/zzr;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzds(I)V

    :cond_0
    iget-object p0, p0, Lhjf;->b:Lejf;

    invoke-interface {p0}, Lejf;->zzY()V

    return-void
.end method
