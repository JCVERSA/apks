.class public Lcom/google/android/gms/internal/ads/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Ljava/util/Collection;

.field public final synthetic d:Lcom/google/android/gms/internal/ads/a7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/a7;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/a7;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->c:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/a7;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/a7;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z6;->c:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/a7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a7;->zzb()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/a7;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->c:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->d:Lcom/google/android/gms/internal/ads/a7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a7;->f:Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(Lcom/google/android/gms/internal/ads/zzfvp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzn(Lcom/google/android/gms/internal/ads/zzfvp;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/a7;->c()V

    return-void
.end method
