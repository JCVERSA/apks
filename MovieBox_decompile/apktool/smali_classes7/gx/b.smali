.class public final Lgx/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgx/b$a;
    }
.end annotation


# static fields
.field public static final a:Lgx/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgx/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgx/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgx/b;->a:Lgx/b$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lgx/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lgx/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lgx/b;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lgx/b;
    .locals 1

    .line 1
    invoke-static {}, Lgx/b;->b()Lgx/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lgx/b;
    .locals 1

    .line 1
    new-instance v0, Lgx/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgx/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lgx/b;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "commentId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "commentNum"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    new-instance p1, Lcom/transsion/user/action/sync/event/CommentEvent;

    .line 16
    .line 17
    invoke-direct {p1, v0, p2, p3, p4}, Lcom/transsion/user/action/sync/event/CommentEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 21
    .line 22
    const-class p3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 29
    .line 30
    const-class p3, Lcom/transsion/user/action/sync/event/CommentEvent;

    .line 31
    .line 32
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const-string p4, "getName(...)"

    .line 37
    .line 38
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    invoke-virtual {p2, p3, p1, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "postId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhx/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lhx/b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 12
    .line 13
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 20
    .line 21
    const-class v1, Lhx/b;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getName(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final f(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "groupId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    .line 15
    .line 16
    invoke-direct {p1, v0, p2}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;-><init>(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 20
    .line 21
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 28
    .line 29
    const-class v0, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "getName(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final g(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    :goto_0
    new-instance v0, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/transsnet/flow/event/sync/event/LikeEvent;-><init>(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 17
    .line 18
    const-class p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 25
    .line 26
    const-class p2, Lcom/transsnet/flow/event/sync/event/LikeEvent;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v1, "getName(...)"

    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "getName(...)"

    .line 2
    .line 3
    const-class v1, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    .line 4
    .line 5
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 6
    .line 7
    const-string v3, "postId"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    :try_start_0
    new-instance v5, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    .line 15
    .line 16
    invoke-direct {v5, p1, p2, p3}, Lcom/transsnet/flow/event/sync/event/PublishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v6, v5, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    new-instance p2, Lcom/transsnet/flow/event/sync/event/PublishEvent;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-direct {p2, p1, v5, p3}, Lcom/transsnet/flow/event/sync/event/PublishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3, p2, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :cond_1
    :goto_0
    new-instance p1, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;

    .line 15
    .line 16
    invoke-direct {p1, v0, p2}, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;-><init>(ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 20
    .line 21
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 28
    .line 29
    const-class v0, Lcom/transsnet/flow/event/sync/event/WatchLaterEvent;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "getName(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
