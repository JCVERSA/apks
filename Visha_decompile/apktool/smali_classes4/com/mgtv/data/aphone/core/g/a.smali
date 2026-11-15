.class public Lcom/mgtv/data/aphone/core/g/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()F
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/g/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 44
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/g/a;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mgtv/data/aphone/core/j/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mgtv/data/aphone/core/db/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/mgtv/data/aphone/core/db/a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mgtv/data/aphone/core/g/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/mgtv/data/aphone/core/db/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/mgtv/data/aphone/core/db/a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/mgtv/data/aphone/core/g/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/g/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgtv/data/aphone/core/bean/EventBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/g/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/g/a;->c:Ljava/util/List;

    .line 9
    new-instance v0, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 10
    new-instance v0, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 12
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgtv/data/aphone/core/bean/EventBean;

    add-int/lit8 v1, v1, 0x1

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 14
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/data/aphone/core/bean/EventBean;

    goto :goto_1

    .line 15
    :cond_1
    new-instance v3, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {v3}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 16
    :goto_1
    iget-object v4, v2, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    invoke-static {v4}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    invoke-static {v4}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, v2, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    iget-object v2, v2, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    invoke-static {p1, p3, v3, v2}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 18
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/data/aphone/core/bean/EventBean;

    iget-object v4, v4, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 21
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ","

    const-string v8, "]"

    const-string v9, ""

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mgtv/data/aphone/core/bean/EventBean;

    .line 23
    iget-object v6, v6, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 26
    invoke-virtual {v3, v4, v5, v9}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 27
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/data/aphone/core/bean/EventBean;

    iget-object v4, v4, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    :goto_3
    iget-object v4, p0, Lcom/mgtv/data/aphone/core/g/a;->c:Ljava/util/List;

    new-instance v5, Lcom/mgtv/data/aphone/core/g/a$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/mgtv/data/aphone/core/g/a$1;-><init>(Lcom/mgtv/data/aphone/core/g/a;Ljava/util/List;Ljava/lang/StringBuffer;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/data/aphone/core/bean/EventBean;

    iget-object v3, v3, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgtv/data/aphone/core/bean/EventBean;

    .line 31
    iget-object v4, p0, Lcom/mgtv/data/aphone/core/g/a;->c:Ljava/util/List;

    new-instance v5, Lcom/mgtv/data/aphone/core/g/a$2;

    invoke-direct {v5, p0, v3}, Lcom/mgtv/data/aphone/core/g/a$2;-><init>(Lcom/mgtv/data/aphone/core/g/a;Lcom/mgtv/data/aphone/core/bean/EventBean;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 32
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mgtv/data/aphone/core/g/a;->d:Ljava/util/List;

    .line 33
    iget-object p2, p0, Lcom/mgtv/data/aphone/core/g/a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 34
    iget-object v2, p0, Lcom/mgtv/data/aphone/core/g/a;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/mgtv/data/aphone/core/g/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 35
    :cond_7
    iget-object p2, p0, Lcom/mgtv/data/aphone/core/g/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/mgtv/data/aphone/core/g/a;->e:I

    .line 36
    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/g/a;->a()F

    move-result p2

    float-to-int p2, p2

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "################### \u6570\u636e\u5e93\u8868\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u603b\u4efb\u52a1\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/data/aphone/core/g/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   \u5269\u4f59\u4efb\u52a1\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u5b8c\u6210\u4efb\u52a1\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/data/aphone/core/g/a;->e:I

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "big_data_sdk"

    invoke-static {v1, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget p0, p0, Lcom/mgtv/data/aphone/core/g/a;->e:I

    if-lez p0, :cond_8

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "##################### \u6e05\u7a7a \u6570\u636e\u5e93\u8868\uff1a "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1, p3, v0}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "big_data_sdk"

    const-string v1, "mgtv_data_oflhb_reporter"

    :try_start_0
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v4}, Lcom/mgtv/data/aphone/core/db/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/mgtv/data/aphone/core/g/a$3;

    invoke-direct {v6, p0, v4, v5}, Lcom/mgtv/data/aphone/core/g/a$3;-><init>(Lcom/mgtv/data/aphone/core/g/a;Ljava/util/List;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Callable;

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "################### \u79bb\u7ebf\u6570\u636e\u5e93\u8868\uff1a mgtv_data_oflhb_reporter  \u79bb\u7ebf\u603b\u4efb\u52a1\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   \u79bb\u7ebf\u5269\u4f59\u4efb\u52a1\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u79bb\u7ebf\u5b8c\u6210\u4efb\u52a1\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int p0, v2, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_5

    const-string p0, "##################### \u6e05\u7a7a\u79bb\u7ebf\u6570\u636e\u5e93\u8868\uff1a mgtv_data_oflhb_reporter"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, v1, p0}, Lcom/mgtv/data/aphone/core/db/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/g/a;->a(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "##################### NetStatusBroadcastReceiver onReceive isWifi:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/mgtv/data/aphone/core/e/c;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "big_data_sdk"

    invoke-static {v0, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/mgtv/data/aphone/core/e/c;->a:Z

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/mgtv/data/aphone/core/e/e;->b:Z

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/e/c;->a(Landroid/content/Context;)Lcom/mgtv/data/aphone/core/e/c;

    move-result-object p2

    sget-boolean v1, Lcom/mgtv/data/aphone/core/e/c;->a:Z

    invoke-virtual {p2, v1}, Lcom/mgtv/data/aphone/core/e/c;->a(Z)V

    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/g/a;->b(Landroid/content/Context;)V

    const-string p0, "##################### NetStatusBroadcastReceiver offlineHbDataReporter() if"

    invoke-static {v0, p0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
