.class public Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Lnf8;

.field public c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

.field public final synthetic d:Lcom/lzy/okserver/task/PriorityBlockingQueue;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->d:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Z

    invoke-virtual {p0, p2}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lnf8;

    iget p0, p0, Lnf8;->priority:I

    return p0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lnf8;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Z

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, v0, Lnf8;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lnf8;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lnf8;

    if-eqz v0, :cond_1

    check-cast p1, Lnf8;

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lnf8;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->a:Z

    goto :goto_0

    :cond_1
    new-instance v0, Lnf8;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lnf8;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b:Lnf8;

    :goto_0
    return-void
.end method
