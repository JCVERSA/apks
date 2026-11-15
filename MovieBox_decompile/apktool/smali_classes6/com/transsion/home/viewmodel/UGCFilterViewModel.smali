.class public final Lcom/transsion/home/viewmodel/UGCFilterViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

.field public static final g:I


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lyk/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->f:Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->g:I

    .line 12
    .line 13
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
    new-instance p1, Lcom/transsion/home/viewmodel/z;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/z;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/home/viewmodel/a0;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/a0;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance p1, Lcom/transsion/home/viewmodel/b0;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/transsion/home/viewmodel/b0;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->d:Lkotlin/Lazy;

    .line 41
    .line 42
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-class v0, Lyk/c;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lyk/c;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->e:Lyk/c;

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->q()Landroidx/lifecycle/b0;

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
    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->p()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->g()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/UGCFilterViewModel;)Lyk/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->e:Lyk/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final g()Landroidx/lifecycle/b0;
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

.method private static final p()Landroidx/lifecycle/b0;
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

.method private static final q()Landroidx/lifecycle/b0;
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
.method public final h(Ljava/lang/String;)Lcom/transsion/home/bean/ugc/UGCFilterItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->k()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/transsion/home/bean/ugc/UGCFilterResponse;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/home/bean/ugc/UGCFilterResponse;->getItems()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    .line 30
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v3, v2

    .line 47
    check-cast v3, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getCategoryId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    move-object v1, v2

    .line 60
    :cond_2
    check-cast v1, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    .line 61
    .line 62
    :cond_3
    return-object v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "category"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getFilterItems$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getFilterItems$1;-><init>(Ljava/lang/String;Lcom/transsion/home/viewmodel/UGCFilterViewModel;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->k()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->b:Lkotlin/Lazy;

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

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->d:Lkotlin/Lazy;

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

.method public final m(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    const-string v0, "category"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "Education"

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v2, v1

    .line 19
    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 24
    .line 25
    .line 26
    move-result-object v13

    .line 27
    new-instance v14, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    move-object v1, v14

    .line 31
    move/from16 v3, p2

    .line 32
    .line 33
    move-object/from16 v4, p4

    .line 34
    .line 35
    move-object/from16 v5, p5

    .line 36
    .line 37
    move-object/from16 v6, p6

    .line 38
    .line 39
    move-object/from16 v7, p7

    .line 40
    .line 41
    move/from16 v8, p9

    .line 42
    .line 43
    move-object v9, p0

    .line 44
    move/from16 v10, p3

    .line 45
    .line 46
    move-object/from16 v11, p8

    .line 47
    .line 48
    invoke-direct/range {v1 .. v12}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    move-object/from16 p1, v0

    .line 55
    .line 56
    move-object/from16 p2, v13

    .line 57
    .line 58
    move-object/from16 p3, v3

    .line 59
    .line 60
    move-object/from16 p4, v14

    .line 61
    .line 62
    move/from16 p5, v1

    .line 63
    .line 64
    move-object/from16 p6, v2

    .line 65
    .line 66
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->c:Lkotlin/Lazy;

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
