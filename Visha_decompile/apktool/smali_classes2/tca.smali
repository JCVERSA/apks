.class public Ltca;
.super Lr17;
.source "SourceFile"


# instance fields
.field public n:Z

.field public o:I

.field public p:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lr17;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Ltca;->n:Z

    return-void
.end method

.method public B(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lr6;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ltca;->p:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->E(Lied;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->I(Lied;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "NativeApi"

    const-string v0, "infos is empty, return"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public r()I
    .locals 0

    iget-boolean p0, p0, Ltca;->n:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    instance-of p0, p0, Lcom/cloud/hisavana/sdk/b0;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/b0;->G(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "NativeApi"

    const-string v0, "getAdChoicesView"

    invoke-virtual {p1, p2, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public t(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 1

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    instance-of v0, p0, Lcom/cloud/hisavana/sdk/b0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/b0;->H(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    instance-of p0, p0, Lcom/cloud/hisavana/sdk/b0;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/b0;->V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x45c

    return p0
.end method

.method public v()V
    .locals 2

    invoke-virtual {p0}, Lr17;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lied$b;

    invoke-direct {v0}, Lied$b;-><init>()V

    invoke-virtual {p0}, Ltca;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lied$b;->i(I)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->c:Z

    invoke-virtual {v0, v1}, Lied$b;->s(Z)Lied$b;

    move-result-object v0

    iget v1, p0, Lr17;->d:I

    invoke-virtual {v0, v1}, Lied$b;->m(I)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->e:Z

    invoke-virtual {v0, v1}, Lied$b;->k(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->j:Ld29;

    invoke-virtual {v0, v1}, Lied$b;->c(Ld29;)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->j(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget v1, p0, Ltca;->o:I

    invoke-virtual {v0, v1}, Lied$b;->a(I)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->g:Z

    invoke-virtual {v0, v1}, Lied$b;->p(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lr17;->h:Z

    invoke-virtual {v0, v1}, Lied$b;->w(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Ltca;->p:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-virtual {v0, v1}, Lied$b;->d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lr17;->i:Lw6;

    invoke-virtual {v0, v1}, Lied$b;->b(Lw6;)Lied$b;

    move-result-object v0

    invoke-virtual {v0}, Lied$b;->g()Lied;

    move-result-object v0

    invoke-virtual {p0}, Ltca;->y()V

    new-instance v1, Lcom/cloud/hisavana/sdk/b0;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/b0;-><init>(Lied;)V

    new-instance v0, Lr17$a;

    invoke-direct {v0, p0}, Lr17$a;-><init>(Lr17;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public final w(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/Q0;

    move-result-object p0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-static {p0, p2, p1, p3}, Lcom/cloud/hisavana/sdk/m;->a(Lcom/cloud/hisavana/sdk/Q0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "NativeApi"

    const-string p3, "onOmidRegister"

    invoke-virtual {p1, p2, p3, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public x(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/hisavana/sdk/b0;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr17;->m:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setSceneId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr17;->l:Landroidx/collection/ArraySet;

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lqpd;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/b0;->Q(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->getMarkViews(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Ltca;->w(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method

.method public final y()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltca;->p:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-void
.end method

.method public z(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ltca;->o:I

    return-void
.end method
