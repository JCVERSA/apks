.class public final Lcom/google/android/gms/internal/ads/b7;
.super Lcom/google/android/gms/internal/ads/z6;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/ads/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b7;->e:Lcom/google/android/gms/internal/ads/c7;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/z6;-><init>(Lcom/google/android/gms/internal/ads/a7;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/c7;I)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b7;->e:Lcom/google/android/gms/internal/ads/c7;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/a7;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/z6;-><init>(Lcom/google/android/gms/internal/ads/a7;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b7;->e:Lcom/google/android/gms/internal/ads/c7;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/google/android/gms/internal/ads/c7;->g:Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzd(Lcom/google/android/gms/internal/ads/zzfvp;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzn(Lcom/google/android/gms/internal/ads/zzfvp;I)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/a7;->b()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z6;->a()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/z6;->b:Ljava/util/Iterator;

    check-cast p0, Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
