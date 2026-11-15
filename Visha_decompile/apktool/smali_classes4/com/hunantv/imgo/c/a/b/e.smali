.class public Lcom/hunantv/imgo/c/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/hunantv/imgo/c/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private d:Lcom/hunantv/imgo/c/a/b/b$b;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/c/a/b/b$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    iget v0, p1, Lcom/hunantv/imgo/c/a/b/b$b;->a:I

    iget-object v1, p1, Lcom/hunantv/imgo/c/a/b/b$b;->c:Ljava/lang/String;

    iget v2, p1, Lcom/hunantv/imgo/c/a/b/b$b;->b:I

    iget-object v3, p1, Lcom/hunantv/imgo/c/a/b/b$b;->d:Lcom/hunantv/imgo/c/a;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/hunantv/imgo/c/a/b/e;->a(ILjava/lang/String;ILcom/hunantv/imgo/c/a;)V

    iput-object p1, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget p1, p1, Lcom/hunantv/imgo/c/a/b/b$b;->a:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/e;->b:I

    return-void
.end method

.method private declared-synchronized a()Lcom/hunantv/imgo/c/a/a/d;
    .locals 6

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/b/e;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 35
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/c/a/a/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 38
    monitor-exit p0

    return-object v1

    .line 39
    :cond_1
    :try_start_2
    new-instance v1, Lcom/hunantv/imgo/c/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget-object v3, v3, Lcom/hunantv/imgo/c/a/b/b$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget v3, v3, Lcom/hunantv/imgo/c/a/b/b$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget v4, v3, Lcom/hunantv/imgo/c/a/b/b$b;->b:I

    iget-object v3, v3, Lcom/hunantv/imgo/c/a/b/b$b;->d:Lcom/hunantv/imgo/c/a;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/hunantv/imgo/c/a/a/d;-><init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V

    .line 40
    iget-object v2, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget v2, v2, Lcom/hunantv/imgo/c/a/b/b$b;->e:I

    invoke-virtual {v1, v2}, Lcom/hunantv/imgo/c/a/a/d;->a(I)V

    .line 41
    iget-object v2, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;ILcom/hunantv/imgo/c/a;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/hunantv/imgo/c/a/a/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p3, p4}, Lcom/hunantv/imgo/c/a/a/d;-><init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget p0, p0, Lcom/hunantv/imgo/c/a/b/e;->b:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;Ljava/lang/String;II)V
    .locals 7

    monitor-enter p0

    .line 4
    :try_start_0
    iget v0, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/e;->b:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 5
    iput v2, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/c/a/a/d;

    if-nez v0, :cond_1

    .line 7
    iget v1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 8
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 9
    :try_start_1
    iput v2, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/a/d;->b()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    iget v1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget v0, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget v1, v1, Lcom/hunantv/imgo/c/a/b/b$b;->a:I

    if-ge v0, v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/hunantv/imgo/c/a/a/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget-object v6, v6, Lcom/hunantv/imgo/c/a/b/b$b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hunantv/imgo/c/a/b/e;->d:Lcom/hunantv/imgo/c/a/b/b$b;

    iget-object v6, v6, Lcom/hunantv/imgo/c/a/b/b$b;->d:Lcom/hunantv/imgo/c/a;

    invoke-direct {v4, v5, p4, v6, v3}, Lcom/hunantv/imgo/c/a/a/d;-><init>(Ljava/lang/String;ILcom/hunantv/imgo/c/a;Z)V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_3
    iput v2, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/hunantv/imgo/c/a/a/d;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/hunantv/imgo/c/a/b/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/b/e;->b()Z

    move-result v1

    if-nez v1, :cond_6

    .line 20
    invoke-direct {p0}, Lcom/hunantv/imgo/c/a/b/e;->a()Lcom/hunantv/imgo/c/a/a/d;

    move-result-object v0

    if-nez v0, :cond_5

    .line 21
    iput v2, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/b/e;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/a/d;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    .line 24
    iget p1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :goto_1
    monitor-exit p0

    return-void

    .line 26
    :cond_6
    :try_start_4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hunantv/imgo/c/a/a/d;->a(Ljava/lang/Runnable;Ljava/lang/String;II)V

    .line 27
    iget p1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/hunantv/imgo/c/a/b/e;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/hunantv/imgo/c/a/b/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/c/a/a/d;

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v1, p1}, Lcom/hunantv/imgo/c/a/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
