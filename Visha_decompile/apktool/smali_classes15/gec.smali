.class public Lgec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgec$e;,
        Lgec$d;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/transsion/dbdata/beans/VishaOauthData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d3

    .line 3
    iput v0, p0, Lgec;->a:I

    const/16 v0, -0x191

    .line 4
    iput v0, p0, Lgec;->b:I

    const/16 v0, -0x192

    .line 5
    iput v0, p0, Lgec;->c:I

    const/16 v0, -0x194

    .line 6
    iput v0, p0, Lgec;->d:I

    const/16 v0, 0x7d1

    .line 7
    iput v0, p0, Lgec;->e:I

    const/16 v0, 0xfa1

    .line 8
    iput v0, p0, Lgec;->f:I

    const/16 v0, 0xfa2

    .line 9
    iput v0, p0, Lgec;->g:I

    const/16 v0, 0xfa3

    .line 10
    iput v0, p0, Lgec;->h:I

    .line 11
    const-string v0, "visha_token"

    iput-object v0, p0, Lgec;->i:Ljava/lang/String;

    .line 12
    const-string v0, "visha_refresh_token"

    iput-object v0, p0, Lgec;->j:Ljava/lang/String;

    .line 13
    const-string v0, "visha_token_type"

    iput-object v0, p0, Lgec;->k:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;-><init>()V

    iput-object v0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    .line 15
    invoke-virtual {p0}, Lgec;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setAccessToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lgec;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/VishaOauthData;->setRefreshToken(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lgec;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/VishaOauthData;->setTokenType(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->u(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->w(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzdc;->v(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lhec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgec;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lgec;)Lcom/transsion/dbdata/beans/VishaOauthData;
    .locals 0

    iget-object p0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    return-object p0
.end method

.method public static c()Lgec;
    .locals 1

    invoke-static {}, Lgec$e;->a()Lgec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 0

    iget-object p0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaOauthData;->clear()V

    :cond_0
    const-string p0, ""

    invoke-static {p0}, Lzdc;->u(Ljava/lang/String;)V

    invoke-static {p0}, Lzdc;->w(Ljava/lang/String;)V

    invoke-static {p0}, Lzdc;->v(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_refresh_token"

    invoke-static {p0, v0}, Lw6c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Lgec$d;)V
    .locals 3

    const-string v0, "start get visha token"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_VishaOauthManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lzdc;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "before get visha token from server,please login palm"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVishaTokenFromServer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lzdc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getVishaToken()Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgec$a;

    invoke-direct {v1, p0, p1}, Lgec$a;-><init>(Lgec;Lgec$d;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_token"

    invoke-static {p0, v0}, Lw6c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getTokenType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_token_type"

    invoke-static {p0, v0}, Lw6c;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "visha token is required"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_VishaOauthManager"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgec;->m(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgec;->l(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgec;->n(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->logout()Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgec$c;

    invoke-direct {v1, p0}, Lgec$c;-><init>(Lgec;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public k(Lgec$d;)V
    .locals 2

    iget-object v0, p0, Lgec;->l:Lcom/transsion/dbdata/beans/VishaOauthData;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/VishaOauthData;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "visha_VishaOauthManager"

    if-eqz v0, :cond_0

    const-string v0, "Refresh token is required"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lgec;->f(Lgec$d;)V

    return-void

    :cond_0
    const-string v0, "Refresh visha token"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-interface {v0}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->refreshVishaToken()Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$ServerResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;

    invoke-direct {v1}, Lcom/transsion/retrofit/exception/ResponseExceptionHandler$HttpResultFunc;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->O(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgec$b;

    invoke-direct {v1, p0, p1}, Lgec$b;-><init>(Lgec;Lgec$d;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_refresh_token"

    invoke-static {p0, v0, p1}, Lw6c;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_token"

    invoke-static {p0, v0, p1}, Lw6c;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v0, "visha_token_type"

    invoke-static {p0, v0, p1}, Lw6c;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(I)Z
    .locals 0

    const/16 p0, 0x7d3

    if-eq p1, p0, :cond_1

    const/16 p0, -0x191

    if-eq p1, p0, :cond_1

    const/16 p0, -0x192

    if-eq p1, p0, :cond_1

    const/16 p0, -0x194

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
