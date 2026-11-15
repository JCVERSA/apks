.class public final Lcom/transsnet/login/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqx/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/q$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsnet/login/q$a;

.field private static final g:Lkotlin/Lazy;


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Lcom/transsnet/loginapi/bean/UserInfo;

.field private c:Ljava/util/List;

.field private final d:Lkotlin/Lazy;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/login/q$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/login/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/login/q;->f:Lcom/transsnet/login/q$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/login/o;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/login/o;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsnet/login/q;->g:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/login/l;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsnet/login/l;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsnet/login/q;->d:Lkotlin/Lazy;

    .line 21
    .line 22
    const-string v0, "X-User"

    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsnet/login/q;->e:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic A(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->L(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B(Lqx/b;)Ljava/lang/ref/WeakReference;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lqx/b;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    if-ne v2, p1, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method private final C()Lnx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/q;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final D()Lnx/a;
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
    const-class v1, Lnx/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lnx/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final E()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final G()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 3
    .line 4
    sget-object v0, Lix/d;->a:Lix/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "login_user"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lmg/a$a;->h(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/transsnet/login/n;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/transsnet/login/n;-><init>(Lcom/transsnet/login/q;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final H(Lcom/transsnet/login/q;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lqx/b;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lqx/b;->onLogout()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private final I(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/login/q;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/login/m;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/m;-><init>(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final J(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lqx/b;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lqx/b;->onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private final L(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    new-instance v0, Lcom/transsnet/login/p;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/p;-><init>(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->j(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final M(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lqx/b;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lqx/b;->onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic q(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/q;->J(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/login/q;->E()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lcom/transsnet/login/q;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/q;->H(Lcom/transsnet/login/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t()Lnx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/login/q;->D()Lnx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic u(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/q;->M(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/transsnet/login/q;)Lnx/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/q;->C()Lnx/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/login/q;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic x(Lcom/transsnet/login/q;)Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/transsnet/login/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/q;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/transsnet/login/q;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->I(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final F()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsnet/login/q$e;->a:Lcom/transsnet/login/q$e;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/transsnet/login/q$f;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsnet/login/q$f;-><init>(Lcom/transsnet/login/q;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Ldg/d;->a:Ldg/d;

    .line 23
    .line 24
    invoke-virtual {v1}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/transsnet/login/q$g;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/transsnet/login/q$g;-><init>(Lcom/transsnet/login/q;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public K()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/q;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsnet/login/R$string;->login_success:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public declared-synchronized c(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const-string v1, "login"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "saveUserInfo "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/Throwable;

    .line 36
    .line 37
    const-string v4, "info"

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v0 .. v6}, Lwf/a$a;->e(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    sget-object v1, Lmg/a;->a:Lmg/a$a;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lmg/a$a;->h(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object v0, Lix/d;->a:Lix/d;

    .line 63
    .line 64
    invoke-virtual {v0}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "login_user"

    .line 69
    .line 70
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/login/q;->G()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/login/q;->F()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Lqx/b;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->B(Lqx/b;)Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public f()Lcom/transsnet/loginapi/bean/Country;
    .locals 1

    .line 1
    sget-object v0, Llx/a;->a:Llx/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Llx/a;->b()Lcom/transsnet/loginapi/bean/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/q;->C()Lnx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, p1, v2, v1, v2}, Lnx/a$a;->c(Lnx/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/transsnet/login/q$b;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/transsnet/login/q$b;-><init>(Lcom/transsnet/login/q;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/transsnet/login/q$c;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/transsnet/login/q$c;-><init>(Lcom/transsnet/login/q;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->h(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Ldg/d;->a:Ldg/d;

    .line 42
    .line 43
    invoke-virtual {v0}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Lcom/transsnet/login/q$d;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/transsnet/login/q$d;-><init>(Lcom/transsnet/login/q;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public h(Lokhttp3/Response;)V
    .locals 2

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0xc8

    .line 11
    .line 12
    if-ne v0, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/transsnet/login/q;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-class v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->I(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getToken()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setToken(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p1, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/transsnet/login/q;->c(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/16 v0, 0x191

    .line 94
    .line 95
    if-ne p1, v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/transsnet/login/q;->K()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_2
    return-void
.end method

.method public i()Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Lqx/b;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/login/q;->c:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->B(Lqx/b;)Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/login/LoginLikeActivity;

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsnet/login/q;->a:Landroid/content/Context;

    .line 7
    .line 8
    sget-object p1, Lix/d;->a:Lix/d;

    .line 9
    .line 10
    invoke-virtual {p1}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "login_user"

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, p1

    .line 26
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    const-class p1, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    check-cast v0, Lcom/transsnet/loginapi/bean/UserInfo;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/transsnet/login/q;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    sget-object v0, Lmg/a;->a:Lmg/a$a;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lmg/a$a;->h(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public m(Lcom/transsnet/loginapi/bean/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/q;->I(Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/transsnet/login/q;->g(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p1
.end method

.method public n(J)V
    .locals 2

    .line 1
    sget-object v0, Lix/d;->a:Lix/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "login_launch_first_state"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public o()J
    .locals 4

    .line 1
    sget-object v0, Lix/d;->a:Lix/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lix/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "login_launch_first_state"

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public p(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/login/LoginLikeActivity;

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
