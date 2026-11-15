.class public Lcom/hunantv/media/source/ImgoCacheLibLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLibsLoaded()Z
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isDsLibLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->isCacheLibLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized loadLibs(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Lcom/hunantv/media/source/ImgoCacheLibLoader;

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method
