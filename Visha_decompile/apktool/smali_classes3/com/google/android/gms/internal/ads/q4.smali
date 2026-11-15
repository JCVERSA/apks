.class public final Lcom/google/android/gms/internal/ads/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmrh;


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Lcom/google/android/gms/internal/ads/o0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/o0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q4;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q4;->c:Lcom/google/android/gms/internal/ads/o0;

    return-void
.end method


# virtual methods
.method public final h(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/q4;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q4;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lulg;

    iget p1, p1, Lulg;->a:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/q4;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q4;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lulg;

    iget p1, p1, Lulg;->c:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    :cond_0
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzffn;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/q4;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/q4;->c:Lcom/google/android/gms/internal/ads/o0;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lulg;

    iget p1, p1, Lulg;->b:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o0;->c(I)V

    :cond_0
    return-void
.end method
