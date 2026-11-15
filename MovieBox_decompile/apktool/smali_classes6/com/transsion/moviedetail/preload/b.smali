.class public final Lcom/transsion/moviedetail/preload/b;
.super Lam/b;
.source "source.java"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Z

.field private final i:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lam/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    .line 2
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/transsion/moviedetail/preload/a;

    invoke-direct {p2}, Lcom/transsion/moviedetail/preload/a;-><init>()V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->i:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/moviedetail/preload/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static synthetic k()Lom/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/moviedetail/preload/b;->n()Lom/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final l()Lom/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/preload/b;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lom/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final n()Lom/a;
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
    const-class v1, Lom/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lom/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public h(Landroidx/lifecycle/b0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/preload/b;->l()Lom/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lgg/a;->a:Lgg/a$a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lgg/a$a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, v2}, Lom/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/j;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/transsion/moviedetail/preload/b$a;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/preload/b$a;-><init>(Lcom/transsion/moviedetail/preload/b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final p(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
