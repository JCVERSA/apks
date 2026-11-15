.class public final Lcom/danikula/videocache/HttpProxyCacheServer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/io/File;

.field public b:Lrq3;

.field public c:Lhc2;

.field public d:Lbu9;

.field public e:Lpo4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcu9;->b(Landroid/content/Context;)Lbu9;

    move-result-object v0

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->d:Lbu9;

    invoke-static {p1}, Lby9;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->a:Ljava/io/File;

    new-instance p1, Lpua;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lpua;-><init>(J)V

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->c:Lhc2;

    new-instance p1, Lw96;

    invoke-direct {p1}, Lw96;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->b:Lrq3;

    new-instance p1, Lp93;

    invoke-direct {p1}, Lp93;-><init>()V

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->e:Lpo4;

    return-void
.end method


# virtual methods
.method public a()Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCacheServer$b;->b()Loe1;

    move-result-object p0

    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer;-><init>(Loe1;Lcom/danikula/videocache/HttpProxyCacheServer$a;)V

    return-object v0
.end method

.method public final b()Loe1;
    .locals 7

    new-instance v6, Loe1;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->b:Lrq3;

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->c:Lhc2;

    iget-object v4, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->d:Lbu9;

    iget-object v5, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->e:Lpo4;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Loe1;-><init>(Ljava/io/File;Lrq3;Lhc2;Lbu9;Lpo4;)V

    return-object v6
.end method

.method public c(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$b;
    .locals 0

    invoke-static {p1}, Lae8;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->a:Ljava/io/File;

    return-object p0
.end method

.method public d(J)Lcom/danikula/videocache/HttpProxyCacheServer$b;
    .locals 1

    new-instance v0, Lpua;

    invoke-direct {v0, p1, p2}, Lpua;-><init>(J)V

    iput-object v0, p0, Lcom/danikula/videocache/HttpProxyCacheServer$b;->c:Lhc2;

    return-object p0
.end method
