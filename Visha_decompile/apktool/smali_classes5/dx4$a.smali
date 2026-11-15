.class public abstract Ldx4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldx4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ldx4;Ljava/util/List;)Ljava/util/List;
    .locals 7

    const-string p0, "mediaItems"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lx71;->c()Ljava/util/List;

    move-result-object p0

    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lvna;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4, v0}, Lvna;->e(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->createGroupHeaderItem(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lx71;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
