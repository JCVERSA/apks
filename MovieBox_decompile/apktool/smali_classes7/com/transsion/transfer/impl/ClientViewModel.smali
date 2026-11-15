.class public final Lcom/transsion/transfer/impl/ClientViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lau/b;

.field private final e:Lau/b;

.field private final f:Lau/b;

.field private final g:Lau/b;

.field private h:Ljava/lang/String;

.field private final i:Lcom/transsion/transfer/impl/ClientViewModel$a;

.field private final j:Lcom/transsion/transfer/impl/ClientViewModel$b;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->b:Landroid/app/Application;

    .line 10
    .line 11
    new-instance p1, Landroidx/lifecycle/b0;

    .line 12
    .line 13
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    .line 17
    .line 18
    new-instance p1, Lau/b;

    .line 19
    .line 20
    invoke-direct {p1}, Lau/b;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Lau/b;

    .line 24
    .line 25
    new-instance p1, Lau/b;

    .line 26
    .line 27
    invoke-direct {p1}, Lau/b;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Lau/b;

    .line 31
    .line 32
    new-instance p1, Lau/b;

    .line 33
    .line 34
    invoke-direct {p1}, Lau/b;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Lau/b;

    .line 38
    .line 39
    new-instance p1, Lau/b;

    .line 40
    .line 41
    invoke-direct {p1}, Lau/b;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->g:Lau/b;

    .line 45
    .line 46
    new-instance p1, Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/ClientViewModel$a;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 52
    .line 53
    new-instance p1, Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/ClientViewModel$b;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 59
    .line 60
    return-void
.end method

.method private static final A(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "sendServerCreateNotify:  "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private static final D(Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, p0, v1}, Lcu/b;->m(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/ClientViewModel;->t(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/ClientViewModel;->l(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->D(Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->A(Lkotlin/jvm/functions/Function1;Ljava/lang/Exception;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Lau/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/ClientViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/ClientViewModel;)Lau/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Lau/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final l(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/transsion/transfer/impl/ClientViewModel$connect$2$1;

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-direct {v5, p1, p2, p3, p0}, Lcom/transsion/transfer/impl/ClientViewModel$connect$2$1;-><init>(Lkotlin/jvm/functions/Function2;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private final m()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "transfer"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private static final t(Lcom/transsion/transfer/impl/ClientViewModel;Ljava/util/List;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "getTransferList: "

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Lau/b;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lau/b;->n(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p2, "getTransferList error: "

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " "

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final B(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/transsion/transfer/impl/e;->c(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final C(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "files"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/util/Collection;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->m()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "getAbsolutePath(...)"

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/transsion/transfer/impl/a;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/transsion/transfer/impl/a;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, p1, v2}, Lcom/transsion/transfer/impl/e;->i(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "no connect info"

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/transsion/transfer/impl/c;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/transsion/transfer/impl/c;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;Lkotlin/jvm/functions/Function2;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->d(Lkotlin/jvm/functions/Function2;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->e:Lau/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/t0;->onCleared()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->g(Lcom/transsion/transfer/impl/f;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lcom/transsion/transfer/impl/e;->j()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->h:Ljava/lang/String;

    .line 33
    .line 34
    :cond_1
    return-object v0
.end method

.method public final q()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->g:Lau/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()I
    .locals 1

    .line 1
    sget-object v0, Leu/a;->a:Leu/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/a;->e()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    sget-object v0, Leu/a;->a:Leu/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/a;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Lau/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Leu/a;->d()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lau/b;->n(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object v0, Lcu/b;->a:Lcu/b;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->k()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcu/b;->i(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsion/transfer/impl/ClientViewModel;->m()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "getAbsolutePath(...)"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/transsion/transfer/impl/b;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/b;-><init>(Lcom/transsion/transfer/impl/ClientViewModel;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0, v1}, Lcom/transsion/transfer/impl/e;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->d:Lau/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/ClientViewModel;->f:Lau/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()I
    .locals 2

    .line 1
    sget-object v0, Leu/a;->a:Leu/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Leu/a;->f()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Leu/a;->g()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/2addr v1, v0

    .line 20
    return v1
.end method

.method public final x()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/transsion/transfer/impl/e;->h()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public final y(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 2

    .line 1
    const-string v0, "fileData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/transsion/transfer/impl/e;->f(Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final z(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->i()Lcom/transsion/transfer/impl/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->j:Lcom/transsion/transfer/impl/ClientViewModel$b;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->k(Lcom/transsion/transfer/impl/f;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/transfer/impl/ClientViewModel;->i:Lcom/transsion/transfer/impl/ClientViewModel$a;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->b(Lkotlin/jvm/functions/Function3;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/transsion/transfer/impl/d;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/transsion/transfer/impl/d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/transsion/transfer/impl/e;->a(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
