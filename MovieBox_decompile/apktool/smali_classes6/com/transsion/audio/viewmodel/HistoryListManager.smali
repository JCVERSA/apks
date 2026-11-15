.class public final Lcom/transsion/audio/viewmodel/HistoryListManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/viewmodel/HistoryListManager$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

.field private static final f:Lkotlin/Lazy;

.field private static g:Z


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/audio/viewmodel/e;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/audio/viewmodel/e;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->f:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/audio/viewmodel/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/audio/viewmodel/b;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/audio/viewmodel/c;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->c:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/audio/viewmodel/d;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/d;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->d:Lkotlin/Lazy;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a()Lcom/transsion/audio/viewmodel/HistoryListManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->x()Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lli/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->y()Lli/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->l()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->z()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->m()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lsi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->q()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic h()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lli/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->u()Lli/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final m()Lsi/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->n1()Lsi/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method private final q()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic t(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/16 p3, 0xa

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/viewmodel/HistoryListManager;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final u()Lli/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lli/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final x()Lcom/transsion/audio/viewmodel/HistoryListManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final y()Lli/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lli/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lli/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final z()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final k(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 5

    .line 1
    const-string v0, "audioBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, "audio insert name "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v0, v1, v2, v3, v4}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0, v4}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-static {v4, v0, p1, v4}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final n()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteAll$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteAll$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 7

    .line 1
    const-string v0, "audioItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteItem$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteItem$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final r()V
    .locals 7

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "postId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v2, v0

    .line 23
    move-object v3, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move v6, p3

    .line 27
    invoke-direct/range {v2 .. v7}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v4, v0

    .line 35
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 7

    .line 1
    const-string v0, "audioBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$insert$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$insert$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method
