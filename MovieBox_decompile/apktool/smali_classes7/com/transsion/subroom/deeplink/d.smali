.class public final Lcom/transsion/subroom/deeplink/d;
.super Landroidx/lifecycle/b;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subroom/deeplink/d$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/subroom/deeplink/d$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subroom/deeplink/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subroom/deeplink/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subroom/deeplink/d;->d:Lcom/transsion/subroom/deeplink/d$a;

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
    new-instance p1, Lcom/transsion/subroom/deeplink/c;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/subroom/deeplink/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/subroom/deeplink/d;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c()Lcom/transsion/subroom/deeplink/ILaunchApi;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/subroom/deeplink/d;->j()Lcom/transsion/subroom/deeplink/ILaunchApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/subroom/deeplink/d;->l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/subroom/deeplink/d;->f()Lcom/transsion/subroom/deeplink/ILaunchApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "toString(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v0, v1, v2, v3, v2}, Lcom/transsion/subroom/deeplink/ILaunchApi$a;->a(Lcom/transsion/subroom/deeplink/ILaunchApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 21
    .line 22
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/transsion/subroom/deeplink/d$b;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/subroom/deeplink/d$b;-><init>(Lcom/transsion/subroom/deeplink/d;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final f()Lcom/transsion/subroom/deeplink/ILaunchApi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/deeplink/d;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/subroom/deeplink/ILaunchApi;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const-string v2, "miniapp_deeplink"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    sget-object v2, Ldj/a;->a:Ldj/a;

    .line 26
    .line 27
    invoke-virtual {v2, p1, v1}, Ldj/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    :cond_2
    :goto_1
    sget-object v1, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/transsion/baselib/helper/b;->e(Landroid/net/Uri;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/subroom/deeplink/d;->e(Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    .line 50
    .line 51
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/subroom/deeplink/d;->l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/transsion/subroom/deeplink/d;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final j()Lcom/transsion/subroom/deeplink/ILaunchApi;
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
    const-class v1, Lcom/transsion/subroom/deeplink/ILaunchApi;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/subroom/deeplink/ILaunchApi;

    .line 14
    .line 15
    return-object v0
.end method

.method private final k()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/k;->m()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/Activity;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/transsion/subroom/activity/SplashActivity;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    instance-of v1, v1, Lcom/transsion/subroom/activity/MainActivity;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_2
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method private final l(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 6

    .line 1
    const-string v0, "show_enter_home"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    :goto_0
    move-object p1, v1

    .line 17
    :cond_1
    if-eqz p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move-object v1, v2

    .line 27
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "toLandingPage short url: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " whole url "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    :try_start_1
    const-string v3, "inviteCode"

    .line 52
    .line 53
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    const-class v4, Lkk/a;

    .line 60
    .line 61
    new-array v5, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {v4, v5}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Lkk/a;

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    invoke-interface {v4, v3}, Lkk/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception v3

    .line 76
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_2
    sget-object v3, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 80
    .line 81
    invoke-virtual {v3, p1, v1}, Lcom/transsion/baselib/report/h;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {p1}, Lij/k;->m(Landroid/net/Uri;)Lcom/therouter/router/Navigator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Lcom/transsion/subroom/deeplink/d$c;

    .line 105
    .line 106
    invoke-direct {p2, p4}, Lcom/transsion/subroom/deeplink/d$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3, p2}, Lcom/therouter/router/Navigator;->u(Landroid/content/Context;Lmf/c;)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    if-eqz p4, :cond_6

    .line 114
    .line 115
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_4
    return-void
.end method

.method private final m(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/transsion/subroom/activity/SplashActivity;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "from"

    .line 9
    .line 10
    const-string v2, "deeplink"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "without_ad"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    instance-of p2, p1, Landroid/app/Activity;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/high16 p2, 0x10000000

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Landroid/net/Uri;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uri"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onArrival"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "withoutMain"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v2, "withoutAd"

    .line 24
    .line 25
    invoke-virtual {p2, v2, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget-object v3, Lcom/transsion/subroom/deeplink/b;->a:Lcom/transsion/subroom/deeplink/b;

    .line 30
    .line 31
    const-string v4, "skipTwiceBack"

    .line 32
    .line 33
    invoke-virtual {p2, v4, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v3, v1}, Lcom/transsion/subroom/deeplink/b;->b(Z)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    .line 41
    .line 42
    invoke-virtual {v1, p2}, Lcom/transsion/baselib/report/h;->j(Landroid/net/Uri;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/transsion/subroom/deeplink/d;->c:Landroid/net/Uri;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    sget-object p2, Lrh/b;->a:Lrh/b;

    .line 50
    .line 51
    invoke-virtual {p2}, Lrh/b;->b()V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subroom/deeplink/d;->k()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-direct {p0, p1, p3}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v2}, Lcom/transsion/subroom/deeplink/d;->m(Landroid/content/Context;Z)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/transsion/subroom/deeplink/d;->g(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "p0"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    instance-of v0, p1, Lcom/transsion/subroom/activity/MainActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/lifecycle/b;->b()Landroid/app/Application;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p0, p1, v1, v0, v1}, Lcom/transsion/subroom/deeplink/d;->h(Lcom/transsion/subroom/deeplink/d;Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "p1"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
