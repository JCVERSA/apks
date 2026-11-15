.class public final Ljjj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lbnj;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Ljjj;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljjj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput p1, p0, Ljjj;->a:I

    iput-object p3, p0, Ljjj;->b:Lbnj;

    return-void
.end method


# virtual methods
.method public final a(ILbnj;)Ljjj;
    .locals 1

    new-instance p1, Ljjj;

    iget-object p0, p0, Ljjj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Ljjj;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V

    return-object p1
.end method

.method public final b(Landroid/os/Handler;Lkjj;)V
    .locals 1

    new-instance v0, Lijj;

    invoke-direct {v0, p1, p2}, Lijj;-><init>(Landroid/os/Handler;Lkjj;)V

    iget-object p0, p0, Ljjj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lkjj;)V
    .locals 3

    iget-object p0, p0, Ljjj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lijj;

    iget-object v2, v1, Lijj;->a:Lkjj;

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
