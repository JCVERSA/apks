.class public final Lcom/transsion/log/strategy/DefaultFileStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsr3;


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->a:J

    const-wide/32 v2, 0x1b7740

    iput-wide v2, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->b:J

    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const/16 v4, 0xa

    int-to-long v4, v4

    div-long/2addr p1, v4

    goto :goto_0

    :cond_0
    move-wide p1, v2

    :goto_0
    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->a:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 5

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->c:J

    sub-long/2addr v1, v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-ltz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public b([Ljava/io/File;)V
    .locals 6

    const-string v0, "files"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->c:J

    sub-long/2addr v0, v2

    array-length p0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->a:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string p0, "filePath"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/log/strategy/DefaultFileStrategy$onStorageLow$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/transsion/log/strategy/DefaultFileStrategy$onStorageLow$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lhi;->L0([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->b:J

    return-wide v0
.end method

.method public final f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/log/strategy/DefaultFileStrategy;->c:J

    return-void
.end method
