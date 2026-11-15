.class public final synthetic Lpjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lpjf;->a:Z

    iput p2, p0, Lpjf;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/c4;->d0:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/s2;->d0()Lcom/google/android/gms/internal/ads/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r2;->x()Z

    move-result v1

    iget-boolean v2, p0, Lpjf;->a:Z

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/r2;->v(Z)Lcom/google/android/gms/internal/ads/r2;

    :cond_0
    iget p0, p0, Lpjf;->b:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/r2;->w(I)Lcom/google/android/gms/internal/ads/r2;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/s2;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/i3;->A(Lcom/google/android/gms/internal/ads/s2;)Lcom/google/android/gms/internal/ads/i3;

    return-void
.end method
