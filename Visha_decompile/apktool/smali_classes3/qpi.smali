.class public final Lqpi;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public synthetic constructor <init>(Lrpi;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/x9;->d0()Lcom/google/android/gms/internal/ads/x9;

    move-result-object p1

    invoke-direct {p0, p1}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method


# virtual methods
.method public final v(I)Lqpi;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/x9;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/x9;->f0(Lcom/google/android/gms/internal/ads/x9;I)V

    return-object p0
.end method
