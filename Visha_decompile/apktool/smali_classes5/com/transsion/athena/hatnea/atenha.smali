.class public Lcom/transsion/athena/hatnea/atenha;
.super Lcom/transsion/athena/hatnea/anateh;
.source "SourceFile"


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/enatha;

.field private final d:Ly3d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/transsion/athena/config/data/model/enatha;Ly3d;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    iput-object p3, p0, Lcom/transsion/athena/hatnea/atenha;->d:Ly3d;

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/athena/hatnea/atenha;->d:Ly3d;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Ly3d;->a(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/atenha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/hatnea/atenha;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/enatha;->i()J

    move-result-wide v1

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/transsion/athena/hatnea/b;->d(Ljava/lang/String;Ljava/lang/String;J)Lrbd;

    move-result-object v0

    iget v1, v0, Lrbd;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const/16 v2, 0x12a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    iget v1, v0, Lrbd;->a:I

    const-string v2, "<-- globalConfig:%s"

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    iget-object p0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/enatha;->d()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/transsion/athena/config/data/model/enatha;->c(I)V

    goto :goto_0

    :cond_1
    const-string v0, "NOT_MODIFIED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v1

    invoke-virtual {v1, v0}, Le5d;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    new-instance v1, Lz4d;

    invoke-direct {v1, p0}, Lz4d;-><init>(Lcom/transsion/athena/hatnea/atenha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-static {}, Le5d;->o()Le5d;

    move-result-object p0

    invoke-virtual {p0}, Le5d;->x()V

    :goto_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "Retrieve-Global-Config"

    return-object p0
.end method
