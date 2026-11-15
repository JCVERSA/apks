.class public final Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private final e:Lpp/b;

.field private final f:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->g:Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$a;

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
    const/16 p1, 0x8

    .line 10
    .line 11
    iput p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->c:I

    .line 12
    .line 13
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-class v0, Lpp/b;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lpp/b;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->e:Lpp/b;

    .line 28
    .line 29
    new-instance p1, Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->f:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;)Lpp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->e:Lpp/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$getSubscriptionFollowingsData$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v3, p0, p1, v2}, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel$getSubscriptionFollowingsData$1;-><init>(Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const-string v1, "SubFollowingsViewModel"

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "loadMore: load nextCursor="

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v1, v3, v0}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 43
    .line 44
    const-string v2, "loadMore: nextPage is null or empty, cannot load more"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2, v0}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->f:Landroidx/lifecycle/b0;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const-string v1, "SubFollowingsViewModel"

    .line 4
    .line 5
    const-string v2, "refresh: reset page to 1 and load first page"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean v3, p0, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->d:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
