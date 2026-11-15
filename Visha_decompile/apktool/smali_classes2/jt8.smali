.class public abstract Ljt8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/chromium/net/CronetEngine;

.field public b:I

.field public c:Lkp8;

.field public final d:Ljt8;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ljt8;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljt8;->c:Lkp8;

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/CronetEngine;

    iput-object p1, p0, Ljt8;->a:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lxd8;->d(Z)V

    iput-object p0, p0, Ljt8;->d:Ljt8;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ljt8;->c:Lkp8;

    if-nez v0, :cond_0

    invoke-static {}, Lkp8;->a()Lkp8;

    move-result-object v0

    iput-object v0, p0, Ljt8;->c:Lkp8;

    :cond_0
    new-instance v0, Lit8;

    iget-object v2, p0, Ljt8;->a:Lorg/chromium/net/CronetEngine;

    iget v1, p0, Ljt8;->b:I

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/protocol/okhttptransport/a;->b(Ljava/util/concurrent/ExecutorService;)Lcom/cloud/hisavana/protocol/okhttptransport/a;

    move-result-object v4

    new-instance v5, Liu8;

    invoke-direct {v5}, Liu8;-><init>()V

    iget-object v6, p0, Ljt8;->c:Lkp8;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lit8;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;Lys8;Liu8;Lkp8;)V

    invoke-virtual {p0, v0}, Ljt8;->b(Lit8;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Lit8;)Ljava/lang/Object;
.end method
