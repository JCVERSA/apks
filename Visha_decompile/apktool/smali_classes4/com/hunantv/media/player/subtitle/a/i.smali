.class Lcom/hunantv/media/player/subtitle/a/i;
.super Lcom/hunantv/media/player/subtitle/d;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/a/g;


# instance fields
.field private final h:Lcom/hunantv/media/player/subtitle/a/h;

.field private final i:Lcom/hunantv/media/player/subtitle/a/f;

.field private final j:Lcom/hunantv/media/player/subtitle/a/e;

.field private final k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/hunantv/media/player/subtitle/d$c;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hunantv/media/player/subtitle/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/subtitle/d;-><init>(Lcom/hunantv/media/player/subtitle/MediaFormat;)V

    new-instance p2, Lcom/hunantv/media/player/subtitle/a/h;

    invoke-direct {p2, p0}, Lcom/hunantv/media/player/subtitle/a/h;-><init>(Lcom/hunantv/media/player/subtitle/a/g;)V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    new-instance p2, Lcom/hunantv/media/player/subtitle/a/f;

    invoke-direct {p2}, Lcom/hunantv/media/player/subtitle/a/f;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->i:Lcom/hunantv/media/player/subtitle/a/f;

    new-instance v0, Lcom/hunantv/media/player/subtitle/a/e;

    invoke-direct {v0, p2}, Lcom/hunantv/media/player/subtitle/a/e;-><init>(Lcom/hunantv/media/player/subtitle/a/e$b;)V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/a/i;->j:Lcom/hunantv/media/player/subtitle/a/e;

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->m:Ljava/util/Map;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/a/i;->l:Lcom/hunantv/media/player/subtitle/d$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/subtitle/a/b;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->m:Ljava/util/Map;

    iget-object v2, p1, Lcom/hunantv/media/player/subtitle/a/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/subtitle/a/d;

    iput-object v1, p1, Lcom/hunantv/media/player/subtitle/a/b;->r:Lcom/hunantv/media/player/subtitle/a/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding cue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->j:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-virtual {v1}, Lcom/hunantv/media/player/subtitle/a/e;->a()V

    iget-object v1, p1, Lcom/hunantv/media/player/subtitle/a/b;->p:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/hunantv/media/player/subtitle/a/i;->j:Lcom/hunantv/media/player/subtitle/a/e;

    invoke-virtual {v6, v5}, Lcom/hunantv/media/player/subtitle/a/e;->a(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->i:Lcom/hunantv/media/player/subtitle/a/f;

    invoke-virtual {v1}, Lcom/hunantv/media/player/subtitle/a/f;->b()[[Lcom/hunantv/media/player/subtitle/a/c;

    move-result-object v1

    iput-object v1, p1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    const-string v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/subtitle/a/b;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " simplified to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/hunantv/media/player/subtitle/a/b;->b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/subtitle/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/hunantv/media/player/subtitle/a/b;->q:[[Lcom/hunantv/media/player/subtitle/a/c;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    iget-wide v9, v8, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    iget-wide v11, p1, Lcom/hunantv/media/player/subtitle/d$a;->a:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_2

    iget-wide v11, p1, Lcom/hunantv/media/player/subtitle/d$a;->b:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_2

    iget-object v11, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    iget-wide v10, v8, Lcom/hunantv/media/player/subtitle/a/c;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    :goto_4
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    iget-object v1, p1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->k:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/hunantv/media/player/subtitle/d$a;->c:[J

    :goto_5
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/a/i;->n:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/hunantv/media/player/subtitle/d$a;->d:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/subtitle/d;->a(Lcom/hunantv/media/player/subtitle/d$a;)Z

    return-void

    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/player/subtitle/a/d;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/i;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/hunantv/media/player/subtitle/a/d;->a:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/hunantv/media/player/subtitle/d$a;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/i;->l:Lcom/hunantv/media/player/subtitle/d$c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/hunantv/media/player/subtitle/d$c;->setActiveCues(Ljava/util/Vector;)V

    :cond_1
    return-void
.end method

.method public a([BZJLjava/lang/String;)V
    .locals 3

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p5, p0, Lcom/hunantv/media/player/subtitle/a/i;->n:Ljava/lang/Long;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p5, p3, v1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Run #"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/i;->n:Ljava/lang/Long;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in progress.  Cannot process run #"

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iput-object p5, p0, Lcom/hunantv/media/player/subtitle/a/i;->n:Ljava/lang/Long;

    iget-object p5, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-virtual {p5, v0}, Lcom/hunantv/media/player/subtitle/a/h;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/hunantv/media/player/subtitle/d;->c(J)V

    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->h:Lcom/hunantv/media/player/subtitle/a/h;

    invoke-virtual {p2}, Lcom/hunantv/media/player/subtitle/a/h;->a()V

    iget-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/a/i;->n:Ljava/lang/Long;

    :cond_2
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "WebVttTrack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "subtitle data is not support encoded: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public c()Lcom/hunantv/media/player/subtitle/d$c;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/a/i;->l:Lcom/hunantv/media/player/subtitle/d$c;

    return-object p0
.end method
