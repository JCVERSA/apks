.class public final Lcom/google/android/gms/internal/ads/a2;
.super Llsi;
.source "SourceFile"

# interfaces
.implements Lsti;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/g2;->e0()Lcom/google/android/gms/internal/ads/g2;

    move-result-object v0

    invoke-direct {p0, v0}, Llsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public synthetic constructor <init>(Lfxe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/a2;-><init>()V

    return-void
.end method


# virtual methods
.method public v(Lcom/google/android/gms/internal/ads/y1;)Lcom/google/android/gms/internal/ads/a2;
    .locals 1

    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    check-cast v0, Lcom/google/android/gms/internal/ads/g2;

    invoke-virtual {p1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/z1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/g2;->f0(Lcom/google/android/gms/internal/ads/g2;Lcom/google/android/gms/internal/ads/z1;)V

    return-object p0
.end method
