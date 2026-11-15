.class public final Lcom/cloud/tmc/miniapp/task/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final OooO00o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cloud/tmc/miniapp/task/OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 1

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/task/OooO00o;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO0O0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/task/OooO00o;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "queue.listIterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/task/OooO00o;

    .line 4
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/task/OooO00o;->OooO00o:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/task/OooO0O0;->OooO00o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
