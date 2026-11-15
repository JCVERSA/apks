.class public final synthetic Lrvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/o1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrvg;->a:Lcom/google/android/gms/internal/ads/o1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->E()Lcom/google/android/gms/internal/ads/d3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->H()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/c3;

    iget-object p0, p0, Lrvg;->a:Lcom/google/android/gms/internal/ads/o1;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/c3;->w(Lcom/google/android/gms/internal/ads/o1;)Lcom/google/android/gms/internal/ads/c3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/i3;->x(Lcom/google/android/gms/internal/ads/c3;)Lcom/google/android/gms/internal/ads/i3;

    return-void
.end method
