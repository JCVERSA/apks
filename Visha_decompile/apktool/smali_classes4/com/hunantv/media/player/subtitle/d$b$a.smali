.class Lcom/hunantv/media/player/subtitle/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Lcom/hunantv/media/player/subtitle/d$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/subtitle/d$b;

.field private b:J

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/d$b;Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->a:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CueList"

    invoke-static {v0, p1}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->f:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/d$b$a;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->b:J

    iget-object v3, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->c:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    iget-wide v2, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->d:Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->d:Z

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->e:Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->c:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->c:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/d$b$a;->b()V

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d$b$a;->a()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->f:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/hunantv/media/player/subtitle/d$a;

    iget-wide v1, v1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->f:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->a:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$b;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->a:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-static {v0}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$b;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/hunantv/media/player/subtitle/d$a;

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->a:Lcom/hunantv/media/player/subtitle/d$b;

    iget-wide v2, v0, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    invoke-static {v1, v0, v2, v3}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$b;Lcom/hunantv/media/player/subtitle/d$a;J)V

    iget-object v1, v0, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v1, v3

    iget-object v6, p0, Lcom/hunantv/media/player/subtitle/d$b$a;->a:Lcom/hunantv/media/player/subtitle/d$b;

    invoke-static {v6, v0, v4, v5}, Lcom/hunantv/media/player/subtitle/d$b;->a(Lcom/hunantv/media/player/subtitle/d$b;Lcom/hunantv/media/player/subtitle/d$a;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
