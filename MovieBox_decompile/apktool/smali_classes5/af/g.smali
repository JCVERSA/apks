.class public Laf/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/zxing/l;


# instance fields
.field private a:Lcom/google/zxing/i;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/zxing/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Laf/g;->b:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Laf/g;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Lcom/google/zxing/b;)Lcom/google/zxing/j;
    .locals 2

    .line 1
    iget-object v0, p0, Laf/g;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/google/zxing/f;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/google/zxing/f;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/zxing/f;->d(Lcom/google/zxing/b;)Lcom/google/zxing/j;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/google/zxing/i;->reset()V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/zxing/i;->b(Lcom/google/zxing/b;)Lcom/google/zxing/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    iget-object v0, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/google/zxing/i;->reset()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :goto_0
    iget-object v0, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/zxing/i;->reset()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :catch_0
    iget-object p1, p0, Laf/g;->a:Lcom/google/zxing/i;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/google/zxing/i;->reset()V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public c(Lcom/google/zxing/e;)Lcom/google/zxing/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Laf/g;->e(Lcom/google/zxing/e;)Lcom/google/zxing/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Laf/g;->b(Lcom/google/zxing/b;)Lcom/google/zxing/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Laf/g;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected e(Lcom/google/zxing/e;)Lcom/google/zxing/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/zxing/b;

    .line 2
    .line 3
    new-instance v1, Lkd/l;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lkd/l;-><init>(Lcom/google/zxing/e;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
