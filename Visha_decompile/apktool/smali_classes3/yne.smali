.class public final Lyne;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lzne;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->c0()Lcom/google/android/gms/internal/ads/e;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(Z)Lyne;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->g0(Lcom/google/android/gms/internal/ads/e;Z)V

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lyne;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/e;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->h0(Lcom/google/android/gms/internal/ads/e;Ljava/lang/String;)V

    return-object p0
.end method
