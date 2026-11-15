.class public abstract Lye6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0}, Lye6;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lxe6;

    invoke-direct {v0}, Lxe6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
