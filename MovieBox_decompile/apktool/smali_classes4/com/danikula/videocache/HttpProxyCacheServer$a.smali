.class public final Lcom/danikula/videocache/HttpProxyCacheServer$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lr7/b;

.field private c:Lcom/danikula/videocache/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/danikula/videocache/p;->b(Landroid/content/Context;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    .line 9
    .line 10
    new-instance p1, Lr7/a;

    .line 11
    .line 12
    invoke-direct {p1}, Lr7/a;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b:Lr7/b;

    .line 16
    .line 17
    return-void
.end method

.method private b()Lcom/danikula/videocache/c;
    .locals 4

    .line 1
    new-instance v0, Lcom/danikula/videocache/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b:Lr7/b;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->c:Lcom/danikula/videocache/a;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/danikula/videocache/c;-><init>(Ljava/io/File;Lr7/b;Lcom/danikula/videocache/a;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public a()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/HttpProxyCacheServer$a;->b()Lcom/danikula/videocache/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/danikula/videocache/HttpProxyCacheServer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Lcom/danikula/videocache/c;Lcom/danikula/videocache/f;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public c(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/danikula/videocache/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/io/File;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->a:Ljava/io/File;

    .line 8
    .line 9
    return-object p0
.end method

.method public d(Lcom/danikula/videocache/a;)Lcom/danikula/videocache/HttpProxyCacheServer$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$a;->c:Lcom/danikula/videocache/a;

    .line 2
    .line 3
    return-object p0
.end method
