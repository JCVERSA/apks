.class public final synthetic Lcom/google/android/gms/internal/ads/zzxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lf4i;->i()Lf4i;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpqj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpqj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lf4i;->b(II)Lf4i;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpqj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lpqj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyk;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lf4i;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lf4i;

    move-result-object p0

    invoke-virtual {p0}, Lf4i;->a()I

    move-result p0

    return p0
.end method
