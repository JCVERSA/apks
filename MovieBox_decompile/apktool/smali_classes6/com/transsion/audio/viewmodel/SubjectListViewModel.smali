.class public final Lcom/transsion/audio/viewmodel/SubjectListViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->c:Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/audio/viewmodel/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/f;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/audio/viewmodel/g;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/g;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic b()Lcx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->j()Lcx/a;

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
    invoke-static {}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->e()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/audio/viewmodel/SubjectListViewModel;)Lcx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->i()Lcx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e()Landroidx/lifecycle/b0;
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

.method public static synthetic h(Lcom/transsion/audio/viewmodel/SubjectListViewModel;ZLjava/lang/String;Ljava/lang/String;IIIIILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "1"

    .line 6
    .line 7
    move-object v4, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v4, p3

    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move v5, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v5, p4

    .line 19
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    move v6, v0

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v6, p5

    .line 27
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    move v7, v1

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v7, p6

    .line 34
    :goto_3
    and-int/lit8 v0, p8, 0x40

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    move v8, v0

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move/from16 v8, p7

    .line 42
    .line 43
    :goto_4
    move-object v1, p0

    .line 44
    move v2, p1

    .line 45
    move-object v3, p2

    .line 46
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->g(ZLjava/lang/String;Ljava/lang/String;IIII)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final i()Lcx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Lcx/a;
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
    const-class v1, Lcx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcx/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->b:Lkotlin/Lazy;

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

.method public final g(ZLjava/lang/String;Ljava/lang/String;IIII)V
    .locals 12

    .line 1
    const-string v0, "nextPage"

    .line 2
    .line 3
    move-object v4, p3

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v11, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1;

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    move-object v1, v11

    .line 15
    move-object v2, p0

    .line 16
    move-object v3, p2

    .line 17
    move/from16 v5, p4

    .line 18
    .line 19
    move/from16 v6, p5

    .line 20
    .line 21
    move/from16 v7, p6

    .line 22
    .line 23
    move/from16 v8, p7

    .line 24
    .line 25
    move v9, p1

    .line 26
    invoke-direct/range {v1 .. v10}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1;-><init>(Lcom/transsion/audio/viewmodel/SubjectListViewModel;Ljava/lang/String;Ljava/lang/String;IIIIZLkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object p1, v0

    .line 34
    move-object p2, v3

    .line 35
    move-object p3, v4

    .line 36
    move-object/from16 p4, v11

    .line 37
    .line 38
    move/from16 p5, v1

    .line 39
    .line 40
    move-object/from16 p6, v2

    .line 41
    .line 42
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    return-void
.end method
