.class public final synthetic Lclg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n0;


# instance fields
.field public final synthetic a:Lvmh;


# direct methods
.method public synthetic constructor <init>(Lvmh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclg;->a:Lvmh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->C()Lcom/google/android/gms/internal/ads/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->H()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->C()Lcom/google/android/gms/internal/ads/r0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/r0;->d0()Lcom/google/android/gms/internal/ads/z2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ia;->H()Llsi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/y2;

    iget-object p0, p0, Lclg;->a:Lvmh;

    iget-object p0, p0, Lvmh;->b:Lumh;

    iget-object p0, p0, Lumh;->b:Lkmh;

    iget-object p0, p0, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/y2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/y2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q0;->w(Lcom/google/android/gms/internal/ads/y2;)Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/i3;->v(Lcom/google/android/gms/internal/ads/q0;)Lcom/google/android/gms/internal/ads/i3;

    return-void
.end method
