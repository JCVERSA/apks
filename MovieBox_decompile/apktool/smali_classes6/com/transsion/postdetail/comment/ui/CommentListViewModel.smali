.class public final Lcom/transsion/postdetail/comment/ui/CommentListViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


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
    new-instance p1, Lcom/transsion/postdetail/comment/ui/c;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/postdetail/comment/ui/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/b0;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->c:Landroidx/lifecycle/b0;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    .line 33
    .line 34
    const-string p1, "1"

    .line 35
    .line 36
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    .line 37
    .line 38
    const/16 p1, 0x14

    .line 39
    .line 40
    iput p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->f:I

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic c()Lao/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->j()Lao/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Lao/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->l()Lao/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final j()Lao/a;
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
    const-class v1, Lao/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lao/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final l()Lao/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lao/a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final k(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "1"

    .line 4
    .line 5
    iput-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v3, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-direct {v3, p0, p1}, Lcom/transsion/postdetail/comment/ui/CommentListViewModel$getCommentList$1;-><init>(Lcom/transsion/postdetail/comment/ui/CommentListViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/ui/CommentListViewModel;->g:Z

    .line 2
    .line 3
    return v0
.end method
