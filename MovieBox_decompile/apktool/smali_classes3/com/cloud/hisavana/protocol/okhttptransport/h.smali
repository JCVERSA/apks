.class abstract Lcom/cloud/hisavana/protocol/okhttptransport/h;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lorg/chromium/net/CronetEngine;

.field private b:I

.field private c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

.field private final d:Lcom/cloud/hisavana/protocol/okhttptransport/h;


# direct methods
.method constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/chromium/net/CronetEngine;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->a:Lorg/chromium/net/CronetEngine;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p1}, Lcom/google/common/base/m;->d(Z)V

    .line 27
    .line 28
    .line 29
    iput-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->d:Lcom/cloud/hisavana/protocol/okhttptransport/h;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/hisavana/protocol/okhttptransport/c;->a()Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/protocol/okhttptransport/g;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->a:Lorg/chromium/net/CronetEngine;

    .line 14
    .line 15
    iget v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/e;->b(Ljava/util/concurrent/ExecutorService;)Lcom/cloud/hisavana/protocol/okhttptransport/e;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Lcom/cloud/hisavana/protocol/okhttptransport/i;

    .line 30
    .line 31
    invoke-direct {v5}, Lcom/cloud/hisavana/protocol/okhttptransport/i;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v6, p0, Lcom/cloud/hisavana/protocol/okhttptransport/h;->c:Lcom/cloud/hisavana/protocol/okhttptransport/c;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/protocol/okhttptransport/g;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lcom/cloud/hisavana/protocol/okhttptransport/d;Lcom/cloud/hisavana/protocol/okhttptransport/i;Lcom/cloud/hisavana/protocol/okhttptransport/c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/protocol/okhttptransport/h;->b(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method abstract b(Lcom/cloud/hisavana/protocol/okhttptransport/g;)Ljava/lang/Object;
.end method
