.class public final Lcom/google/android/gms/internal/ads/zzaah;
.super Lcom/google/android/gms/internal/ads/zzsy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ltkj;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Ltkj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Ljava/lang/Throwable;Ltkj;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method
