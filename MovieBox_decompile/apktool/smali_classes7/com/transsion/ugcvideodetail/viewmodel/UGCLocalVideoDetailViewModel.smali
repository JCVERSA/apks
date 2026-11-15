.class public final Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->g:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;

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
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/viewmodel/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Landroidx/lifecycle/b0;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 21
    .line 22
    new-instance v0, Landroidx/lifecycle/b0;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 28
    .line 29
    new-instance v0, Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    new-instance v0, Landroidx/lifecycle/b0;

    .line 37
    .line 38
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->f:Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->g()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final g()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "resourceId"

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
    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "resourceId"

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
    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayList$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayList$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->f:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method
