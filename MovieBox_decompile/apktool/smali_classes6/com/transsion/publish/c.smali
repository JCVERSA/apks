.class public final Lcom/transsion/publish/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/publish/c$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/c;->a:Lcom/transsion/publish/c$a;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/publish/b;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/transsion/publish/b;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/transsion/publish/c;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/transsion/publish/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/publish/c;->c()Lcom/transsion/publish/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/publish/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/c;->h(Lcom/transsion/publish/c;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c()Lcom/transsion/publish/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/publish/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/publish/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/publish/c;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private final e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/publish/p;->b:Lcom/transsion/publish/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/publish/p$a;->a()Lcom/transsion/publish/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/transsion/publish/p;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/api/LinkEntity;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/publish/api/LinkEntity;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/LinkEntity;->setTitle(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/transsion/publish/api/LinkEntity;->setCover(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lcom/transsion/publish/api/LinkEntity;->setUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    invoke-virtual {v0, p1}, Lrm/a;->setType(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p4}, Lcom/transsion/publish/api/LinkEntity;->setLoading(Z)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Ljo/b;

    .line 23
    .line 24
    invoke-direct {p2}, Ljo/b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljo/b;->p(Lcom/transsion/publish/api/LinkEntity;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 46
    .line 47
    const-class p3, Lcom/transsnet/flow/event/FlowEventBus;

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 54
    .line 55
    const-class p3, Ljo/b;

    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    const-string p4, "getName(...)"

    .line 62
    .line 63
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v0, 0x0

    .line 67
    .line 68
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final h(Lcom/transsion/publish/c;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    :goto_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    move-object v2, p1

    .line 13
    :goto_1
    const/4 v3, 0x0

    .line 14
    :try_start_0
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/publish/c;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_3

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v3, "LinkParseManager"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_5

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move-object v1, p1

    .line 51
    :goto_2
    if-nez p1, :cond_4

    .line 52
    .line 53
    move-object p1, v0

    .line 54
    :cond_4
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_3
    return-void
.end method

.method private final i(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lrz/a;->a(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lorg/jsoup/Connection;->a(Z)Lorg/jsoup/Connection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "get(...)"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->j1()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "title(...)"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "title:"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v7, 0x4

    .line 48
    const/4 v8, 0x0

    .line 49
    const-string v4, "LinkParseManager"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/transsion/publish/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
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
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 8
    .line 9
    const-string v0, "Not a valid link"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/transsion/publish/a;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Lcom/transsion/publish/a;-><init>(Lcom/transsion/publish/c;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/transsion/publish/c;->e(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
