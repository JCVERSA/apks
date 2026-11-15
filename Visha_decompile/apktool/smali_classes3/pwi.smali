.class public final Lpwi;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Llxi;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/lb;->c0()Lcom/google/android/gms/internal/ads/lb;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(Lcom/google/android/gms/internal/ads/zzgwn;)Lpwi;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/lb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/lb;->d0(Lcom/google/android/gms/internal/ads/lb;Lcom/google/android/gms/internal/ads/zzgwn;)V

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lpwi;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object p1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast p1, Lcom/google/android/gms/internal/ads/lb;

    const-string v0, "image/png"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/lb;->e0(Lcom/google/android/gms/internal/ads/lb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(I)Lpwi;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object p1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast p1, Lcom/google/android/gms/internal/ads/lb;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/lb;->f0(Lcom/google/android/gms/internal/ads/lb;I)V

    return-object p0
.end method
