.class public final Lcom/google/android/gms/internal/ads/c6;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/AudioManager;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Livh;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lxuh;Livh;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c6;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c6;->b:Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c6;->d:Livh;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/internal/ads/c6;)F
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c6;->b:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1

    move v0, p0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/internal/ads/c6;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/internal/ads/c6;)Livh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c6;->d:Livh;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c6;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c6;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkm;-><init>(Lcom/google/android/gms/internal/ads/c6;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c6;->f()V

    return-void
.end method
