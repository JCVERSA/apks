.class public abstract Lp7i;
.super Lcom/google/android/gms/internal/ads/f8;
.source "SourceFile"


# instance fields
.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfwr;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/f8;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;ZZ)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/p7;->a(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lp7i;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract B(Ljava/util/List;)Ljava/lang/Object;
.end method

.method public final p(ILjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lp7i;->j:Ljava/util/List;

    if-eqz p0, :cond_0

    new-instance v0, Lo7i;

    invoke-direct {v0, p2}, Lo7i;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lp7i;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lp7i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/x7;->zzc(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/f8;->s(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lp7i;->j:Ljava/util/List;

    return-void
.end method
