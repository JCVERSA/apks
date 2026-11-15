.class final Lcom/yandex/mobile/ads/impl/jn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/jn$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field private final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/yandex/mobile/ads/impl/oy1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yandex/mobile/ads/impl/jn$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yandex/mobile/ads/impl/nz;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/impl/nz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/jn;->a:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(JJ)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_7

    cmp-long v2, p3, v0

    if-ltz v2, :cond_6

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/jn;->b(JJ)Lcom/yandex/mobile/ads/impl/oy1;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, Lcom/yandex/mobile/ads/impl/fn;->e:Z

    const-wide v4, 0x7fffffffffffffffL

    if-nez v3, :cond_1

    .line 7
    iget-wide p0, v2, Lcom/yandex/mobile/ads/impl/fn;->d:J

    const-wide/16 v0, -0x1

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, p0

    .line 8
    :goto_0
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    neg-long p0, p0

    return-wide p0

    :cond_1
    add-long v6, p1, p3

    cmp-long v0, v6, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, v6

    .line 9
    :goto_1
    iget-wide v0, v2, Lcom/yandex/mobile/ads/impl/fn;->c:J

    iget-wide v6, v2, Lcom/yandex/mobile/ads/impl/fn;->d:J

    add-long/2addr v0, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_5

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/oy1;

    .line 11
    iget-wide v6, v2, Lcom/yandex/mobile/ads/impl/fn;->c:J

    cmp-long v3, v6, v0

    if-lez v3, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-wide v2, v2, Lcom/yandex/mobile/ads/impl/fn;->d:J

    add-long/2addr v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    :cond_5
    :goto_2
    sub-long/2addr v0, p1

    .line 13
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    .line 14
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 15
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/nz;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oy1;JZ)Lcom/yandex/mobile/ads/impl/oy1;
    .locals 6

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/fn;->f:Ljava/io/File;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    .line 24
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-wide v1, p1, Lcom/yandex/mobile/ads/impl/fn;->c:J

    .line 26
    iget v3, p0, Lcom/yandex/mobile/ads/impl/jn;->a:I

    sget v4, Lcom/yandex/mobile/ads/impl/oy1;->k:I

    .line 27
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".v3.exo"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p4

    if-eqz p4, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 29
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Failed to rename "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CachedContent"

    invoke-static {v1, p4}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/yandex/mobile/ads/impl/oy1;->a(Ljava/io/File;J)Lcom/yandex/mobile/ads/impl/oy1;

    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 32
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(J)V
    .locals 3

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/jn$a;

    iget-wide v1, v1, Lcom/yandex/mobile/ads/impl/jn$a;->a:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oy1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    .line 3
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/nz;->a(Lcom/yandex/mobile/ads/impl/es;)Lcom/yandex/mobile/ads/impl/nz;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    .line 4
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/nz;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/fn;)Z
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 18
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/fn;->f:Ljava/io/File;

    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b(JJ)Lcom/yandex/mobile/ads/impl/oy1;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/oy1;->a(Ljava/lang/String;J)Lcom/yandex/mobile/ads/impl/oy1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/oy1;

    if-eqz v1, :cond_0

    .line 3
    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/fn;->c:J

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/fn;->d:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/oy1;

    if-eqz v0, :cond_2

    .line 5
    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/fn;->c:J

    sub-long/2addr v0, p1

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    move-wide p3, v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 7
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/oy1;->a(Ljava/lang/String;JJ)Lcom/yandex/mobile/ads/impl/oy1;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/TreeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/yandex/mobile/ads/impl/oy1;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final c(JJ)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/jn$a;

    .line 4
    iget-wide v3, v2, Lcom/yandex/mobile/ads/impl/jn$a;->b:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 5
    iget-wide v2, v2, Lcom/yandex/mobile/ads/impl/jn$a;->a:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    goto :goto_1

    :cond_0
    cmp-long v5, p3, v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-wide v5, v2, Lcom/yandex/mobile/ads/impl/jn$a;->a:J

    cmp-long v2, v5, p1

    if-gtz v2, :cond_2

    add-long v7, p1, p3

    add-long/2addr v5, v3

    cmp-long v2, v7, v5

    if-gtz v2, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final d(JJ)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/jn$a;

    .line 4
    iget-wide v3, v2, Lcom/yandex/mobile/ads/impl/jn$a;->a:J

    cmp-long v5, v3, p1

    const-wide/16 v6, -0x1

    if-gtz v5, :cond_0

    .line 5
    iget-wide v8, v2, Lcom/yandex/mobile/ads/impl/jn$a;->b:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    add-long/2addr v3, v8

    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_0
    cmp-long v2, p3, v6

    if-eqz v2, :cond_2

    add-long v5, p1, p3

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jn$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/jn$a;-><init>(JJ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/impl/jn;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/jn;

    iget v2, p0, Lcom/yandex/mobile/ads/impl/jn;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/jn;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jn;->c:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/nz;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/jn;->a:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jn;->b:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/v3;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jn;->e:Lcom/yandex/mobile/ads/impl/nz;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/nz;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
