.class public final Llxh;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lmxh;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/g6;->c0()Lcom/google/android/gms/internal/ads/g6;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(Ljava/lang/String;)Llxh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/g6;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/g6;->d0(Lcom/google/android/gms/internal/ads/g6;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(I)Llxh;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object p1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast p1, Lcom/google/android/gms/internal/ads/g6;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/g6;->e0(Lcom/google/android/gms/internal/ads/g6;I)V

    return-object p0
.end method
