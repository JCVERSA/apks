.class public Lfs7;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/Long;

.field public final synthetic m:LOppOOO0/OppOp0;


# direct methods
.method public constructor <init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lfs7;->m:LOppOOO0/OppOp0;

    iput-object p4, p0, Lfs7;->k:Ljava/lang/String;

    iput-object p5, p0, Lfs7;->l:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/AvatarRes;

    iget-object p0, p0, Lfs7;->m:LOppOOO0/OppOp0;

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/AvatarRes;->avatarUrl:Ljava/lang/String;

    iput-object p1, p0, LOppOOO0/OppOp0;->f:Ljava/lang/String;

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/AvatarRes;->uploadUrl:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lqq7;

    invoke-interface {p2}, Lqq7;->v()Ljava/io/File;

    move-result-object p2

    new-instance p3, Lokhttp3/OkHttpClient;

    invoke-direct {p3}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, LOppOOO0/OppOp0$OppO0Op;

    invoke-direct {p2, p0}, LOppOOO0/OppOp0$OppO0Op;-><init>(LOppOOO0/OppOp0;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lfs7;->m:LOppOOO0/OppOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfs7;->m:LOppOOO0/OppOp0;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast v0, Lqq7;

    invoke-interface {v0}, Lqq7;->u()V

    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 10

    iget-object v0, p0, Lfs7;->m:LOppOOO0/OppOp0;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lfs7;->m:LOppOOO0/OppOp0;

    iget-object v0, p0, Lfs7;->k:Ljava/lang/String;

    iget-object p0, p0, Lfs7;->l:Ljava/lang/Long;

    iget-object v7, v2, LOppOOO0/OppOp0;->c:Lvk7;

    invoke-virtual {v2}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v8

    new-instance v9, Lfs7;

    invoke-virtual {v2}, LOppOOO0/OppOp0;->e()Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/AvatarRes;

    move-object v1, v9

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lfs7;-><init>(LOppOOO0/OppOp0;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v7, v8, v0, p0, v9}, Lvk7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LOppOOp0/OppO0O0;)V

    return-void
.end method
