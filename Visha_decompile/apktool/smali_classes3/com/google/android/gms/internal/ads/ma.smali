.class public final Lcom/google/android/gms/internal/ads/ma;
.super Lrri;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/oa;

.field public c:Lsri;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/zzgzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->d:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-direct {p0}, Lrri;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/oa;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/oa;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lbui;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->b:Lcom/google/android/gms/internal/ads/oa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->a()Lsri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->c:Lsri;

    return-void
.end method


# virtual methods
.method public final a()Lsri;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ma;->b:Lcom/google/android/gms/internal/ads/oa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oa;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oa;->a()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzs()Lsri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ma;->c:Lsri;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->c:Lsri;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lsri;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->c:Lsri;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->a()Lsri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->c:Lsri;

    :cond_0
    return v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
