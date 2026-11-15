.class public Ljl7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Ljava/util/ArrayList;

.field public final d:Lvk7;

.field public final e:Lyo7;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljl7;->g:Z

    new-instance v0, Lvk7;

    invoke-direct {v0}, Lvk7;-><init>()V

    iput-object v0, p0, Ljl7;->d:Lvk7;

    new-instance v0, Lyo7;

    invoke-direct {v0}, Lyo7;-><init>()V

    iput-object v0, p0, Ljl7;->e:Lyo7;

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading_verify_account:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;

    invoke-direct {v7}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setPkgName(Ljava/lang/String;)V

    invoke-static {v0}, Lvl7;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setSign(Ljava/lang/String;)V

    invoke-static {v0}, Lmp7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->setApplyTime(J)V

    :try_start_0
    iget-object v8, p0, Ljl7;->e:Lyo7;

    new-instance v9, Ljl7$c;

    const-class v4, Lcom/transsion/xuanniao/account/model/data/ApplyTokenRes;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljl7$c;-><init>(Ljl7;Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Context;)V

    invoke-virtual {v8, v0, v7, v9}, Lyo7;->b(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p1

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lek7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    return-object p0
.end method

.method public d(I)V
    .locals 9

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Ljl7;->d:Lvk7;

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v1

    new-instance v8, Ljl7$b;

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    move-object v2, v8

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Ljl7$b;-><init>(Ljl7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "thirdType"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v0, "/app/account/third-unbind"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p0, v8}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 5

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Ljl7;->d:Lvk7;

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v1

    new-instance v2, Ljl7$a;

    invoke-virtual {p0}, Ljl7;->c()Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes;

    invoke-direct {v2, p0, v3, v4}, Ljl7$a;-><init>(Ljl7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v0, "/app/account/third-list"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Ljl7;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget v2, v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Ljl7;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget v2, v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    const/4 v3, 0x7

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Ljl7;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget v2, v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i()Z
    .locals 4

    iget-object v0, p0, Ljl7;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Ljl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;

    iget v2, v2, Lcom/transsion/xuanniao/account/model/data/TripartiteListRes$Tripartite;->thirdType:I

    const/16 v3, 0x8

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
