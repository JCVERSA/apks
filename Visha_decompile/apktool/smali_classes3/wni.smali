.class public final Lwni;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lxni;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/d9;->e0()Lcom/google/android/gms/internal/ads/d9;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(I)Lwni;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/d9;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d9;->g0(Lcom/google/android/gms/internal/ads/d9;I)V

    return-object p0
.end method
