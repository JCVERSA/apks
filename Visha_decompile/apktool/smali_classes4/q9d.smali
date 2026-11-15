.class public final Lq9d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/AudioManager;

.field public final c:Lh3d;

.field public final d:Lg8d;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lh3d;Lg8d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lq9d;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lq9d;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Lq9d;->c:Lh3d;

    iput-object p4, p0, Lq9d;->d:Lg8d;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, Lq9d;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lq9d;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object p0, p0, Lq9d;->c:Lh3d;

    invoke-virtual {p0, v0, v1}, Lh3d;->a(II)F

    move-result p0

    return p0
.end method

.method public final b(F)Z
    .locals 0

    iget p0, p0, Lq9d;->e:F

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lq9d;->d:Lg8d;

    iget p0, p0, Lq9d;->e:F

    invoke-interface {v0, p0}, Lg8d;->a(F)V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lq9d;->a()F

    move-result v0

    iput v0, p0, Lq9d;->e:F

    invoke-virtual {p0}, Lq9d;->c()V

    iget-object v0, p0, Lq9d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lq9d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lq9d;->a()F

    move-result p1

    invoke-virtual {p0, p1}, Lq9d;->b(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lq9d;->e:F

    invoke-virtual {p0}, Lq9d;->c()V

    :cond_0
    return-void
.end method
