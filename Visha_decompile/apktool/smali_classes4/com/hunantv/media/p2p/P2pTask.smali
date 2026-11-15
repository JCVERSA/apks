.class Lcom/hunantv/media/p2p/P2pTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/p2p/IP2pTask;


# instance fields
.field private task:Lcom/mgtv/a/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/p2p/P2pTask;->task:Lcom/mgtv/a/c;

    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/hunantv/media/p2p/P2pTask;
    .locals 1

    new-instance v0, Lcom/hunantv/media/p2p/P2pTask;

    check-cast p0, Lcom/mgtv/a/c;

    invoke-direct {v0, p0}, Lcom/hunantv/media/p2p/P2pTask;-><init>(Lcom/mgtv/a/c;)V

    return-object v0
.end method


# virtual methods
.method public getImgoTask()Lcom/mgtv/a/c;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/p2p/P2pTask;->task:Lcom/mgtv/a/c;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/p2p/P2pTask;->task:Lcom/mgtv/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c;->b()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getStrHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/p2p/P2pTask;->task:Lcom/mgtv/a/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
