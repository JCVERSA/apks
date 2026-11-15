.class public final Lksh;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lmsh;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/n5;->d0()Lcom/google/android/gms/internal/ads/n5;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v()I
    .locals 0

    iget-object p0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast p0, Lcom/google/android/gms/internal/ads/n5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n5;->b0()I

    move-result p0

    return p0
.end method

.method public final w(Llsh;)Lksh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/n5;

    invoke-virtual {p1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/m5;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/n5;->e0(Lcom/google/android/gms/internal/ads/n5;Lcom/google/android/gms/internal/ads/m5;)V

    return-object p0
.end method

.method public final x()Lksh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/n5;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/n5;->f0(Lcom/google/android/gms/internal/ads/n5;)V

    return-object p0
.end method
