.class public Lcom/mgtv/task/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/task/h$b;,
        Lcom/mgtv/task/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mgtv/task/g;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/task/a<",
            "**>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mgtv/task/g;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/task/a<",
            "**>;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/h;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/task/h;->b:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/mgtv/task/h;->c:Ljava/util/concurrent/Executor;

    .line 6
    instance-of v0, p1, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 8
    :cond_0
    iput-boolean p2, p0, Lcom/mgtv/task/h;->d:Z

    return-void
.end method

.method public static a(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/ref/Reference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference<",
            "TT;>;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private a(Lcom/mgtv/task/f;Lcom/mgtv/task/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;",
            "Lcom/mgtv/task/g;",
            "Z)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/mgtv/task/h$a;

    invoke-direct {v0, p0, p2}, Lcom/mgtv/task/h$a;-><init>(Lcom/mgtv/task/h;Lcom/mgtv/task/g;)V

    .line 36
    invoke-virtual {v0, p1, p3}, Lcom/mgtv/task/h$a;->a(Lcom/mgtv/task/f;Z)V

    return-void
.end method

.method private a(Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;",
            "Lcom/mgtv/task/i;",
            "Lcom/mgtv/task/g;",
            "Z)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/mgtv/task/h$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/mgtv/task/h$b;-><init>(Lcom/mgtv/task/h;Lcom/mgtv/task/i;Lcom/mgtv/task/g;)V

    .line 38
    invoke-virtual {v0, p1, p4}, Lcom/mgtv/task/h$b;->a(Lcom/mgtv/task/f;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/task/h;Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;Z)V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/Executor;Lcom/mgtv/task/a;Lcom/mgtv/task/f;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/mgtv/task/h;->b(Ljava/util/concurrent/Executor;Lcom/mgtv/task/a;Lcom/mgtv/task/f;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/task/h;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/mgtv/task/h;->d:Z

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/task/h;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/task/h;->b:Ljava/util/Map;

    return-object p0
.end method

.method private static b(Ljava/util/concurrent/Executor;Lcom/mgtv/task/a;Lcom/mgtv/task/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/mgtv/task/a<",
            "TParam;TResultType;>;",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    iget-object p0, p2, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/task/a;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p2, p2, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/task/h;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/h;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/task/h;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/task/h;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/mgtv/task/i;)Lcom/mgtv/task/g;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mgtv/task/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Param:",
            "Ljava/lang/Object;",
            "ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/mgtv/task/f<",
            "TParam;TResultType;>;>;",
            "Lcom/mgtv/task/i;",
            ")",
            "Lcom/mgtv/task/g;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 4
    new-instance v9, Lcom/mgtv/task/g;

    invoke-direct {v9}, Lcom/mgtv/task/g;-><init>()V

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v9

    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p1

    .line 6
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/mgtv/task/f;

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v10

    move-object v2, v11

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/task/f;

    if-eq v4, v2, :cond_1

    .line 8
    iput-object v4, v2, Lcom/mgtv/task/f;->g:Lcom/mgtv/task/f;

    .line 9
    :cond_1
    iget v2, v4, Lcom/mgtv/task/f;->f:I

    add-int/2addr v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    .line 10
    invoke-interface {v8, v10}, Lcom/mgtv/task/i;->setProgress(I)V

    .line 11
    invoke-interface {v8, v3}, Lcom/mgtv/task/i;->a(I)V

    .line 12
    invoke-interface/range {p2 .. p2}, Lcom/mgtv/task/i;->show()V

    .line 13
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    move-object v14, v0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/mgtv/task/f;

    .line 15
    iget-object v0, v2, Lcom/mgtv/task/f;->d:Lcom/mgtv/task/c;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz v0, :cond_5

    .line 16
    new-instance v15, Lcom/mgtv/task/f;

    invoke-direct {v15}, Lcom/mgtv/task/f;-><init>()V

    .line 17
    iget-object v0, v2, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    iput-object v0, v15, Lcom/mgtv/task/f;->b:Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/mgtv/task/h$1;

    invoke-direct {v0, v7, v2}, Lcom/mgtv/task/h$1;-><init>(Lcom/mgtv/task/h;Lcom/mgtv/task/f;)V

    iput-object v0, v15, Lcom/mgtv/task/f;->a:Lcom/mgtv/task/n;

    .line 19
    new-instance v6, Lcom/mgtv/task/h$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v4, v11

    move-object/from16 v5, p2

    move-object v10, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/task/h$2;-><init>(Lcom/mgtv/task/h;Lcom/mgtv/task/f;Lcom/mgtv/task/f;Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;)V

    iput-object v10, v15, Lcom/mgtv/task/f;->c:Lcom/mgtv/task/d;

    if-eqz v14, :cond_4

    .line 20
    iput-object v15, v14, Lcom/mgtv/task/f;->g:Lcom/mgtv/task/f;

    .line 21
    :cond_4
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v14, v15

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 22
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 23
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/task/f;

    iget-boolean v1, v7, Lcom/mgtv/task/h;->d:Z

    invoke-direct {v7, v0, v9, v1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/f;Lcom/mgtv/task/g;Z)V

    goto :goto_2

    .line 24
    :cond_7
    iget-boolean v0, v7, Lcom/mgtv/task/h;->d:Z

    invoke-direct {v7, v11, v8, v9, v0}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/f;Lcom/mgtv/task/i;Lcom/mgtv/task/g;Z)V

    :goto_2
    return-object v9
.end method

.method public a(Lcom/mgtv/task/g;)V
    .locals 2
    .param p1    # Lcom/mgtv/task/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/mgtv/task/h;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/mgtv/task/h;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/task/a;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/mgtv/task/h;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    invoke-static {p1}, Lcom/mgtv/task/h;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/task/a;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_1

    :cond_3
    return-void

    .line 31
    :cond_4
    iget-object v1, p0, Lcom/mgtv/task/h;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-static {v1}, Lcom/mgtv/task/h;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgtv/task/a;

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 33
    :cond_5
    iget-object p0, p0, Lcom/mgtv/task/h;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    invoke-static {p0}, Lcom/mgtv/task/h;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/task/a;

    if-eqz p0, :cond_6

    .line 34
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_6
    return-void
.end method
