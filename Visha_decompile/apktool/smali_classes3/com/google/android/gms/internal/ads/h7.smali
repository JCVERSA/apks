.class public abstract Lcom/google/android/gms/internal/ads/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/google/android/gms/internal/ads/zzfwf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfwf;La4i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h7;->e:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwf;->zza(Lcom/google/android/gms/internal/ads/zzfwf;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/h7;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfwf;->zze()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/h7;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h7;->e:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zza(Lcom/google/android/gms/internal/ads/zzfwf;)I

    move-result v0

    iget p0, p0, Lcom/google/android/gms/internal/ads/h7;->b:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/h7;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/h7;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/h7;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/h7;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h7;->e:Lcom/google/android/gms/internal/ads/zzfwf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfwf;->zzf(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/h7;->b()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/h7;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lv2i;->m(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/h7;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/h7;->b:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/h7;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h7;->e:Lcom/google/android/gms/internal/ads/zzfwf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwf;->zzg(Lcom/google/android/gms/internal/ads/zzfwf;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/h7;->c:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/h7;->d:I

    return-void
.end method
