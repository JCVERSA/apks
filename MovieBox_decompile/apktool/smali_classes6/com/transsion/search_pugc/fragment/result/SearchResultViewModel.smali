.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private f:Ljava/lang/String;

.field private final g:Landroidx/lifecycle/b0;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->i:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;

    .line 8
    .line 9
    return-void
.end method

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
    new-instance p1, Lcom/transsion/search_pugc/fragment/result/o;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/o;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/b0;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->c:Landroidx/lifecycle/b0;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/b0;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d:Landroidx/lifecycle/b0;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/b0;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e:Landroidx/lifecycle/b0;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/b0;

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g:Landroidx/lifecycle/b0;

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic c()Ljq/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->o()Ljq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)Ljq/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->j()Ljq/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    .line 2
    .line 3
    return-void
.end method

.method private final j()Ljq/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljq/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p2

    .line 9
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/4 p4, 0x0

    .line 14
    :cond_1
    move v5, p4

    .line 15
    and-int/lit8 p2, p6, 0x10

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v6, p5

    .line 22
    :goto_1
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-object v4, p3

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final o()Ljq/a;
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
    const-class v1, Ljq/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljq/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 10

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageFrom"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v2, v0

    .line 19
    move-object v3, p0

    .line 20
    move-object v4, p1

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p2

    .line 23
    move-object v7, p5

    .line 24
    move v8, p4

    .line 25
    invoke-direct/range {v2 .. v9}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;-><init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v4, v0

    .line 33
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    .line 2
    .line 3
    return-void
.end method
