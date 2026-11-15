.class public final Lnxh;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lpxh;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/h6;->c0()Lcom/google/android/gms/internal/ads/h6;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/String;)Lnxh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/h6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/h6;->d0(Lcom/google/android/gms/internal/ads/h6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(Llxh;)Lnxh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/h6;

    invoke-virtual {p1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/h6;->e0(Lcom/google/android/gms/internal/ads/h6;Lcom/google/android/gms/internal/ads/g6;)V

    return-object p0
.end method

.method public final x(I)Lnxh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object p1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast p1, Lcom/google/android/gms/internal/ads/h6;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/h6;->f0(Lcom/google/android/gms/internal/ads/h6;I)V

    return-object p0
.end method
