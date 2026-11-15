.class public abstract Lv0i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lu0i;
    .locals 3

    new-instance v0, Lw0i;

    new-instance v1, Lcom/google/android/gms/internal/ads/j6;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/j6;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lw0i;-><init>(Lcom/google/android/gms/internal/ads/j6;)V

    return-object v0
.end method
