.class public final Lcom/google/android/gms/internal/ads/c2;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/d2;->e0()Lcom/google/android/gms/internal/ads/d2;

    move-result-object v0

    invoke-direct {p0, v0}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfxe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c2;-><init>()V

    return-void
.end method


# virtual methods
.method public v(Z)Lcom/google/android/gms/internal/ads/c2;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/d2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d2;->g0(Lcom/google/android/gms/internal/ads/d2;Z)V

    return-object p0
.end method

.method public w(I)Lcom/google/android/gms/internal/ads/c2;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/d2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d2;->h0(Lcom/google/android/gms/internal/ads/d2;I)V

    return-object p0
.end method
