.class public final Lcom/transsion/push/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/utils/NotificationUtil$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/push/utils/NotificationUtil;

.field private static b:Lcom/transsion/baselib/db/notification/MsgConfig;

.field private static c:Lcom/transsion/push/worker/a;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/utils/NotificationUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/utils/NotificationUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/push/utils/b0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/push/utils/b0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/push/utils/NotificationUtil;->d:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/push/utils/c0;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/push/utils/c0;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/transsion/push/utils/NotificationUtil;->e:Lkotlin/Lazy;

    .line 29
    .line 30
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

.method public static synthetic A(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/transsion/push/bean/ShowOrder;->CURRENT:Lcom/transsion/push/bean/ShowOrder;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    const/4 p4, 0x0

    .line 17
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/push/utils/NotificationUtil;->z(Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final B(Ljava/util/List;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move v3, v1

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    if-gez v3, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 33
    .line 34
    .line 35
    :cond_1
    check-cast v4, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    add-int/2addr v3, p2

    .line 54
    sub-int/2addr v3, v2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    rem-int/2addr v3, p1

    .line 60
    return v3

    .line 61
    :cond_2
    move v3, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v1
.end method

.method private final D(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "NotificationUtil"

    .line 6
    .line 7
    const-string v2, "get local notification begin"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v3, Lcom/transsion/push/utils/NotificationUtil$getLocalNotifications$1;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-direct {v3, p1, p2}, Lcom/transsion/push/utils/NotificationUtil$getLocalNotifications$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final E()Lto/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lto/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F(ILjava/util/List;)Lcom/transsion/baselib/db/notification/MsgBean;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgConfig;->getPushGap()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x2

    .line 25
    :goto_0
    sget-object v2, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getStartTime()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v2, 0x7

    .line 41
    :goto_1
    sub-int/2addr p1, v2

    .line 42
    div-int/2addr p1, v0

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    rem-int/2addr p1, v0

    .line 48
    if-ltz p1, :cond_3

    .line 49
    .line 50
    move-object v0, p2

    .line 51
    check-cast v0, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ge p1, v0, :cond_3

    .line 58
    .line 59
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_3
    return-object v1
.end method

.method private final H(Ljava/util/List;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    move-object v0, p1

    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move v3, v1

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    add-int/lit8 v5, v3, 0x1

    .line 29
    .line 30
    if-gez v3, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 33
    .line 34
    .line 35
    :cond_1
    check-cast v4, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    add-int/2addr v3, p2

    .line 54
    add-int/2addr v3, v2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    rem-int/2addr v3, p1

    .line 60
    return v3

    .line 61
    :cond_2
    move v3, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v1
.end method

.method public static synthetic K(Lcom/transsion/push/utils/NotificationUtil;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/transsion/push/helper/e;->d()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->J(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic Q(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/transsion/pushapi/TriggerSource;->APP_INNER:Lcom/transsion/pushapi/TriggerSource;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final R(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V
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
    new-instance v4, Lcom/transsion/push/utils/NotificationUtil$loadSeekSubjectMsg$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p1, p2, v0}, Lcom/transsion/push/utils/NotificationUtil$loadSeekSubjectMsg$1;-><init>(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;Lkotlin/coroutines/Continuation;)V

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

.method private static final S()Lto/b;
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
    const-class v1, Lto/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lto/b;

    .line 14
    .line 15
    return-object v0
.end method

.method private final U(Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgBean;->getBuiltIn()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Lcom/transsion/push/helper/NotificationShowHelper;->a:Lcom/transsion/push/helper/NotificationShowHelper;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/transsion/push/helper/NotificationShowHelper;->i(Lcom/transsion/baselib/db/notification/MsgBean;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Ljava/util/Collection;

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v1, p1, v0}, Lcom/transsion/push/utils/NotificationUtil;->V(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method private final V(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, p2, v2, v0, v1}, Lcom/transsion/push/utils/NotificationUtil;->K(Lcom/transsion/push/utils/NotificationUtil;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 23
    .line 24
    new-instance p2, Lcom/transsion/push/utils/NotificationUtil$d;

    .line 25
    .line 26
    invoke-direct {p2}, Lcom/transsion/push/utils/NotificationUtil$d;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic Z(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/push/utils/NotificationUtil;->Y(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lto/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/utils/NotificationUtil;->S()Lto/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final a0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;Lcom/transsion/pushapi/TriggerSource;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getConfig()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgConfig;->getEnable()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->SCREEN_ON:Lcom/transsion/pushapi/TriggerSource;

    .line 24
    .line 25
    if-ne p3, v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getConfig()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgConfig;->getBrightScreen()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v0, v1

    .line 45
    :goto_1
    if-nez v0, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->UNLOCK:Lcom/transsion/pushapi/TriggerSource;

    .line 49
    .line 50
    if-ne p3, v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getConfig()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/baselib/db/notification/MsgConfig;->getUnlock()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :cond_4
    if-nez v1, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0xb

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-direct {p0, v0}, Lcom/transsion/push/utils/NotificationUtil;->p(I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_d

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getItems()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_d

    .line 92
    .line 93
    move-object v2, v1

    .line 94
    check-cast v2, Ljava/lang/Iterable;

    .line 95
    .line 96
    new-instance v3, Ljava/util/ArrayList;

    .line 97
    .line 98
    const/16 v4, 0xa

    .line 99
    .line 100
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_7

    .line 116
    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/transsion/baselib/db/notification/MsgBean;->getMessageId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    const/4 v4, 0x0

    .line 131
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/PullMsgResp;->getConfig()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v6, "local push, list:"

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v4, "-ids:"

    .line 159
    .line 160
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, ", \n config:"

    .line 167
    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const/4 v3, 0x1

    .line 179
    const-string v4, "PUSH_SHOW"

    .line 180
    .line 181
    invoke-virtual {v2, v4, p2, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    .line 183
    .line 184
    sget-object p2, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 185
    .line 186
    invoke-direct {p2, v0, v1}, Lcom/transsion/push/utils/NotificationUtil;->F(ILjava/util/List;)Lcom/transsion/baselib/db/notification/MsgBean;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_d

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getForceShow()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_8

    .line 197
    .line 198
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->UNLOCK:Lcom/transsion/pushapi/TriggerSource;

    .line 199
    .line 200
    if-ne p3, v0, :cond_8

    .line 201
    .line 202
    return-void

    .line 203
    :cond_8
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getHasScreenOn()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->SCREEN_ON:Lcom/transsion/pushapi/TriggerSource;

    .line 210
    .line 211
    if-ne p3, v0, :cond_9

    .line 212
    .line 213
    return-void

    .line 214
    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMsgStatus()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    sget-object v1, Lcom/transsion/push/bean/MsgStatus;->CLICKED:Lcom/transsion/push/bean/MsgStatus;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-ne v0, v1, :cond_a

    .line 225
    .line 226
    return-void

    .line 227
    :cond_a
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->APP_INNER:Lcom/transsion/pushapi/TriggerSource;

    .line 228
    .line 229
    if-ne p3, v0, :cond_b

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMsgStatus()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    sget-object v1, Lcom/transsion/push/bean/MsgStatus;->SHOWED:Lcom/transsion/push/bean/MsgStatus;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-ne v0, v1, :cond_b

    .line 242
    .line 243
    return-void

    .line 244
    :cond_b
    sget-object v0, Lcom/transsion/pushapi/TriggerSource;->NETWORK_CONNECTED:Lcom/transsion/pushapi/TriggerSource;

    .line 245
    .line 246
    if-ne p3, v0, :cond_c

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgBean;->getMsgStatus()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    sget-object v1, Lcom/transsion/push/bean/MsgStatus;->SHOWED:Lcom/transsion/push/bean/MsgStatus;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-ne v0, v1, :cond_c

    .line 259
    .line 260
    return-void

    .line 261
    :cond_c
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    invoke-virtual {p2, p3}, Lcom/transsion/baselib/db/notification/MsgBean;->setTriggerSource(I)V

    .line 266
    .line 267
    .line 268
    sget-object p3, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 269
    .line 270
    invoke-virtual {p3, p1, p2}, Lcom/transsion/push/helper/e;->j(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 271
    .line 272
    .line 273
    :cond_d
    return-void
.end method

.method public static synthetic b()Lcom/transsion/push/utils/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/utils/NotificationUtil;->n()Lcom/transsion/push/utils/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Lcom/transsion/baselib/db/notification/MsgBean;->setPermanent(Z)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/transsion/push/helper/e;->i(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/push/utils/NotificationUtil;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/utils/NotificationUtil;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c0(Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    move-object v0, p2

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-gt v0, v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    sget-object v0, Lcom/transsion/push/bean/PushConfigHelper;->INSTANCE:Lcom/transsion/push/bean/PushConfigHelper;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/transsion/push/bean/PushConfigHelper;->isAbType()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/List;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {v1}, Lcom/transsion/baselib/db/notification/MsgBean;->getPermanentMsgStatus()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sget-object v3, Lcom/transsion/push/bean/MsgStatus;->CLICKED:Lcom/transsion/push/bean/MsgStatus;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eq v2, v3, :cond_3

    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_b

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const/4 v1, 0x0

    .line 85
    move v2, v1

    .line 86
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    add-int/lit8 v4, v2, 0x1

    .line 97
    .line 98
    if-gez v2, :cond_6

    .line 99
    .line 100
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 101
    .line 102
    .line 103
    :cond_6
    check-cast v3, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 104
    .line 105
    sget-object v2, Lcom/transsion/push/bean/MsgType;->PERMANENT:Lcom/transsion/push/bean/MsgType;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v3, v2}, Lcom/transsion/baselib/db/notification/MsgBean;->setType(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/db/notification/MsgBean;->setPermanentMsgPosition(I)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v3, v2}, Lcom/transsion/baselib/db/notification/MsgBean;->setPermanentMsgSize(I)V

    .line 122
    .line 123
    .line 124
    move v2, v4

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    if-nez p4, :cond_8

    .line 127
    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 133
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->b0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    sget-object p2, Lcom/transsion/push/utils/NotificationUtil$a;->a:[I

    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    aget p2, p2, p3

    .line 145
    .line 146
    const/4 p3, 0x1

    .line 147
    if-eq p2, p3, :cond_a

    .line 148
    .line 149
    const/4 p3, 0x2

    .line 150
    if-eq p2, p3, :cond_9

    .line 151
    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 157
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->b0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_9
    invoke-direct {p0, v0, p4}, Lcom/transsion/push/utils/NotificationUtil;->H(Ljava/util/List;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-ltz p2, :cond_c

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-ge p2, p3, :cond_c

    .line 173
    .line 174
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 179
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->b0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_a
    invoke-direct {p0, v0, p4}, Lcom/transsion/push/utils/NotificationUtil;->B(Ljava/util/List;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-ltz p2, :cond_c

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    if-ge p2, p3, :cond_c

    .line 195
    .line 196
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    check-cast p2, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 201
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->b0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_b
    const-string p2, "oneroom.group.tag.permanent"

    .line 207
    .line 208
    const/16 p3, 0x6f

    .line 209
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/push/utils/NotificationUtil;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    :cond_c
    :goto_2
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/push/utils/NotificationUtil;)Lcom/transsion/push/utils/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/utils/NotificationUtil;->w()Lcom/transsion/push/utils/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic d0(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p3, Lcom/transsion/push/bean/ShowOrder;->CURRENT:Lcom/transsion/push/bean/ShowOrder;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/push/utils/NotificationUtil;->c0(Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic e()Lcom/transsion/baselib/db/notification/MsgConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->D(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/push/utils/NotificationUtil;)Lto/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/utils/NotificationUtil;->E()Lto/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->U(Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/baselib/db/notification/MsgConfig;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;Lcom/transsion/pushapi/TriggerSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/push/utils/NotificationUtil;->a0(Landroid/content/Context;Lcom/transsion/baselib/db/notification/PullMsgResp;Lcom/transsion/pushapi/TriggerSource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/push/utils/NotificationUtil;->c0(Landroid/content/Context;Ljava/util/List;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(Landroid/content/Context;)V
    .locals 6

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "key_report_request_off"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v3, v4, v1, v2}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    :cond_0
    if-eqz v4, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v0, Landroidx/work/b$a;

    .line 38
    .line 39
    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/work/b$a;->b(Landroidx/work/NetworkType;)Landroidx/work/b$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    new-instance v2, Landroidx/work/m$a;

    .line 55
    .line 56
    const-class v3, Lcom/transsion/push/worker/ReportWorker;

    .line 57
    .line 58
    const-wide/16 v4, 0xf

    .line 59
    .line 60
    invoke-direct {v2, v3, v4, v5, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroidx/work/r$a;->i(Landroidx/work/b;)Landroidx/work/r$a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroidx/work/m$a;

    .line 68
    .line 69
    const-string v1, "report"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/work/r$a;->a(Ljava/lang/String;)Landroidx/work/r$a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroidx/work/m$a;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/work/r$a;->b()Landroidx/work/r;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/work/m;

    .line 82
    .line 83
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 84
    .line 85
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v2, 0x18

    .line 88
    .line 89
    if-lt v1, v2, :cond_2

    .line 90
    .line 91
    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    invoke-static {p1}, Landroidx/work/WorkManager;->f(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v1, "unique_report"

    .line 103
    .line 104
    sget-object v2, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 105
    .line 106
    invoke-virtual {p1, v1, v2, v0}, Landroidx/work/WorkManager;->e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/l;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method private final m(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    const-string v3, "sa_notification_refresh"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v0, v3, v1, v2, v4}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_0
    const-string v0, "false"

    .line 29
    .line 30
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/transsion/push/utils/NotificationUtil$b;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/transsion/push/utils/NotificationUtil$b;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/content/Intent;

    .line 42
    .line 43
    const-class v2, Lcom/transsion/push/helper/NotificationRefreshService;

    .line 44
    .line 45
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private static final n()Lcom/transsion/push/utils/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/utils/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/utils/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final o()Z
    .locals 5

    .line 1
    sget-object v0, Lcm/f;->c:Lcm/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcm/f$a;->a()Lcm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "permanent_notification_switch"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v3, v4, v1, v2}, Lcm/f;->d(Lcm/f;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/mb/config/manager/ConfigBean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v4

    .line 36
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v2, 0xb

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    if-lt v1, v0, :cond_1

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    :cond_1
    return v4
.end method

.method private final p(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getStartTime()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object v2, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getEndTime()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_2
    const/4 v2, 0x0

    .line 41
    if-gt v0, p1, :cond_2

    .line 42
    .line 43
    if-ge p1, v1, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    :cond_2
    return v2
.end method

.method private final t(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/media3/common/util/g0;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p3, p4}, Lm/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-static {p2, p7}, Lcom/transsion/push/utils/w;->a(Landroid/app/NotificationChannel;Z)V

    .line 9
    .line 10
    .line 11
    if-nez p5, :cond_0

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-static {p2, p3, p3}, Lcom/transsion/player/mediasession/g;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p2, p6}, Lcom/transsion/push/utils/x;->a(Landroid/app/NotificationChannel;Z)V

    .line 18
    .line 19
    .line 20
    if-eqz p6, :cond_1

    .line 21
    .line 22
    const/4 p3, 0x4

    .line 23
    new-array p3, p3, [J

    .line 24
    .line 25
    fill-array-data p3, :array_0

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p3}, Lcom/transsion/push/utils/y;->a(Landroid/app/NotificationChannel;[J)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {p2, p8}, Lcom/transsion/push/utils/z;->a(Landroid/app/NotificationChannel;Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p8, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    invoke-static {p2, p3}, Lcom/transsion/push/utils/a0;->a(Landroid/app/NotificationChannel;I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x0
        0x12c
        0x64
        0x12c
    .end array-data
.end method

.method private final w()Lcom/transsion/push/utils/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/push/utils/c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final C(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const-class v1, Lto/a;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lto/a;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lto/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "android.intent.action.VIEW"

    .line 24
    .line 25
    if-eqz p8, :cond_2

    .line 26
    .line 27
    invoke-interface {p8}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p8

    .line 38
    if-eqz p8, :cond_2

    .line 39
    .line 40
    invoke-virtual {p8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const-string v2, "com.community.oneroom"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-ne v1, v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 57
    .line 58
    invoke-direct {p1, v0, p8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    const-string p8, "extra_notification_id"

    .line 62
    .line 63
    invoke-virtual {p1, p8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string p3, "extra_source"

    .line 67
    .line 68
    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string p3, "MESSAGE_TYPE"

    .line 72
    .line 73
    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string p3, "extra_message_id"

    .line 77
    .line 78
    invoke-virtual {p1, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    const-string p3, "extra_channel_id"

    .line 82
    .line 83
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string p2, "extra_message_style"

    .line 87
    .line 88
    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    sget-object p2, Lij/v;->a:Lij/v;

    .line 92
    .line 93
    invoke-virtual {p2}, Lij/v;->a()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string p3, "extra_screen_status"

    .line 102
    .line 103
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const/high16 p2, 0x24000000

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_3
    const/4 p1, 0x0

    .line 116
    return-object p1
.end method

.method public final G()Lcom/transsion/baselib/db/notification/MsgConfig;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/push/utils/u;->a:Lcom/transsion/push/utils/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/utils/u;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "push_config"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-class v1, Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "oneroom_notice_Permanent"

    .line 2
    .line 3
    return-object v0
.end method

.method public final J(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lni/f;->a:Lni/f$a;

    .line 7
    .line 8
    const/16 v6, 0x8

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v2, p1

    .line 14
    move v3, p2

    .line 15
    invoke-static/range {v1 .. v7}, Lni/f$a;->e(Lni/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final L(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroidx/work/b$a;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/work/b$a;->b(Landroidx/work/NetworkType;)Landroidx/work/b$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 22
    .line 23
    const-wide/16 v2, 0xf

    .line 24
    .line 25
    const-wide/16 v4, 0x1e

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, v4, v5}, Lkotlin/random/Random$Default;->nextLong(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    new-instance v4, Landroidx/work/m$a;

    .line 34
    .line 35
    const-class v5, Lcom/transsion/push/worker/PullWorker;

    .line 36
    .line 37
    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Landroidx/work/r$a;->i(Landroidx/work/b;)Landroidx/work/r$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/work/m$a;

    .line 45
    .line 46
    const-string v1, "pull"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/work/r$a;->a(Ljava/lang/String;)Landroidx/work/r$a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/work/m$a;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/work/r$a;->b()Landroidx/work/r;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/work/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 61
    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v2, 0x18

    .line 65
    .line 66
    if-lt v1, v2, :cond_0

    .line 67
    .line 68
    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    move-object v1, p1

    .line 76
    :goto_0
    invoke-static {v1}, Landroidx/work/WorkManager;->f(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "unique_pull"

    .line 81
    .line 82
    sget-object v3, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkManager;->e(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/m;)Landroidx/work/l;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/push/utils/NotificationUtil;->G()Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    sget-object v1, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 108
    .line 109
    invoke-virtual {v1, p1, v0}, Lcom/transsion/push/utils/NotificationUtil;->u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgConfig;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_0
    move-exception p1

    .line 114
    goto :goto_4

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_3
    sput-object v0, Lcom/transsion/push/utils/NotificationUtil;->b:Lcom/transsion/baselib/db/notification/MsgConfig;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/transsion/push/utils/NotificationUtil;->M(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/push/utils/NotificationUtil;->l(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/transsion/push/notification/ToolbarNotificationUtils;->a:Lcom/transsion/push/notification/ToolbarNotificationUtils;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/transsion/push/notification/ToolbarNotificationUtils;->i()V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/push/utils/NotificationUtil;->m(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :goto_5
    return-void
.end method

.method public final M(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "NotificationUtil"

    .line 11
    .line 12
    const-string v3, "NotificationUtil initListener "

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/push/utils/NotificationUtil$c;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Lcom/transsion/push/utils/NotificationUtil$c;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lyg/l;->l(Lyg/m;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "com.community.oneroom.notification_delete"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v2, 0x18

    .line 66
    .line 67
    if-lt v1, v2, :cond_0

    .line 68
    .line 69
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const/16 v2, 0x21

    .line 75
    .line 76
    if-lt v1, v2, :cond_1

    .line 77
    .line 78
    new-instance v1, Lcom/transsion/lib/push/Receiver/NotificationReceiver;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/transsion/lib/push/Receiver/NotificationReceiver;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lcom/transsion/lib/push/Receiver/NotificationReceiver;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/transsion/lib/push/Receiver/NotificationReceiver;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    :goto_0
    sget-object p1, Lcom/transsion/push/utils/l;->a:Lcom/transsion/push/utils/l;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/push/utils/l;->b()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final N()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final O()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "triggerSource"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/utils/NotificationUtil;->R(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsion/push/helper/PushPermanentManager;->a:Lcom/transsion/push/helper/PushPermanentManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/push/helper/PushPermanentManager;->o()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v4, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v4, p2, p1, v0}, Lcom/transsion/push/utils/NotificationUtil$loadNotificationMsg$1;-><init>(Lcom/transsion/pushapi/TriggerSource;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "deeplink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paramKey"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v2, "%%"

    .line 12
    .line 13
    const-string v3, "%25%25"

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    :cond_0
    :goto_0
    return-object p1
.end method

.method public final W(Lcom/transsion/push/worker/a;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/transsion/push/utils/NotificationUtil;->c:Lcom/transsion/push/worker/a;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "currentMsgId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v3, Lcom/transsion/push/bean/ShowOrder;->LAST:Lcom/transsion/push/bean/ShowOrder;

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v4, p2

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/transsion/push/utils/NotificationUtil;->A(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Y(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/push/bean/ShowOrder;->NEXT:Lcom/transsion/push/bean/ShowOrder;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/push/utils/NotificationUtil;->z(Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM/dd HH:mm"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "GMT+8"

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    new-instance p1, Ljava/util/Date;

    .line 32
    .line 33
    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_0
    const-string p1, "00/00 00:00"

    .line 45
    .line 46
    return-object p1
.end method

.method public final q(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 4
    .line 5
    const/4 v4, 0x4

    .line 6
    const/4 v5, 0x0

    .line 7
    const-string v1, "NotificationUtil"

    .line 8
    .line 9
    const-string v2, "bad parameter."

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p2, "notification"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p2, p1, Landroid/app/NotificationManager;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    check-cast p1, Landroid/app/NotificationManager;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-nez p1, :cond_2

    .line 31
    .line 32
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v1, "NotificationUtil"

    .line 37
    .line 38
    const-string v2, "NotificationManager is not available"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/util/Random;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p1, v0

    .line 32
    :goto_0
    mul-int/lit8 p1, p1, 0x1f

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :cond_2
    add-int/2addr p1, v0

    .line 41
    return p1
.end method

.method public final s(Landroid/graphics/Bitmap;IFI)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const-string v0, "sourceBitmap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/graphics/Canvas;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Landroid/graphics/RectF;

    .line 37
    .line 38
    int-to-float p2, p2

    .line 39
    sub-float/2addr p2, p3

    .line 40
    invoke-direct {v4, p3, p3, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    .line 47
    .line 48
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    .line 55
    .line 56
    new-instance v5, Landroid/graphics/Rect;

    .line 57
    .line 58
    float-to-int v6, p3

    .line 59
    float-to-int p2, p2

    .line 60
    invoke-direct {v5, v6, v6, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, v5, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    cmpl-float p2, p3, p2

    .line 68
    .line 69
    if-lez p2, :cond_0

    .line 70
    .line 71
    new-instance p2, Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    .line 81
    .line 82
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 83
    .line 84
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-nez p2, :cond_1

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-object v1
.end method

.method public final u(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgConfig;)V
    .locals 12

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "notification"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/app/NotificationManager;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/app/NotificationManager;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/transsion/lib/push/R$string;->importance_foreground:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-string v11, "getString(...)"

    .line 39
    .line 40
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getFloatingWindow()Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_1
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    :goto_2
    move v5, v1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v1, 0x3

    .line 63
    goto :goto_2

    .line 64
    :goto_3
    const/4 v8, 0x1

    .line 65
    const/4 v9, 0x1

    .line 66
    const-string v3, "oneroom_notice_Foreground"

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v1, p0

    .line 71
    move-object v2, v10

    .line 72
    invoke-direct/range {v1 .. v9}, Lcom/transsion/push/utils/NotificationUtil;->t(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 73
    .line 74
    .line 75
    sget v1, Lcom/transsion/lib/push/R$string;->importance_background:I

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getRing()Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    move v6, v2

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    move v6, v1

    .line 100
    :goto_4
    if-eqz p2, :cond_5

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/transsion/baselib/db/notification/MsgConfig;->getShock()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    move v7, p2

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    move v7, v1

    .line 115
    :goto_5
    const/4 v8, 0x1

    .line 116
    const/4 v9, 0x1

    .line 117
    const-string v3, "oneroom_notice_Background"

    .line 118
    .line 119
    const/4 v5, 0x4

    .line 120
    move-object v1, p0

    .line 121
    move-object v2, v10

    .line 122
    invoke-direct/range {v1 .. v9}, Lcom/transsion/push/utils/NotificationUtil;->t(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 123
    .line 124
    .line 125
    sget p2, Lcom/transsion/lib/push/R$string;->permanent:I

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v9, 0x0

    .line 136
    const-string v3, "oneroom_notice_Permanent"

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    invoke-direct/range {v1 .. v9}, Lcom/transsion/push/utils/NotificationUtil;->t(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 141
    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    invoke-static {v0, v10}, Lcom/transsion/push/utils/v;->a(Landroid/app/NotificationManager;Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    :cond_6
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->c:Lcom/transsion/push/worker/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/push/worker/a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final x(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "oneroom_notice_Foreground"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "oneroom_notice_Background"

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method public final y()F
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v1, v1

    .line 18
    int-to-float v0, v0

    .line 19
    const/high16 v2, 0x42700000    # 60.0f

    .line 20
    .line 21
    div-float/2addr v0, v2

    .line 22
    add-float/2addr v1, v0

    .line 23
    return v1
.end method

.method public final z(Landroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "showOrder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/push/utils/NotificationUtil;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v0, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v0

    .line 30
    move v3, p4

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/transsion/push/utils/NotificationUtil$getLast3MsgForPermanent$1;-><init>(ZLandroid/content/Context;Lcom/transsion/push/bean/ShowOrder;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v4, v0

    .line 42
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 43
    .line 44
    .line 45
    return-void
.end method
