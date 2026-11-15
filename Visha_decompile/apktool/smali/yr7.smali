.class public Lyr7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public c:Lmo7;

.field public d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lmo7;

    invoke-direct {v0}, Lmo7;-><init>()V

    iput-object v0, p0, Lyr7;->c:Lmo7;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lkq7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public d()V
    .locals 6

    sget-object v0, Lcr7$b;->a:Lcr7;

    invoke-virtual {p0}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object v1

    invoke-virtual {p0}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v1, p0, Lyr7;->c:Lmo7;

    invoke-virtual {p0}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object v2

    new-instance v3, Lyr7$a;

    invoke-virtual {p0}, Lyr7;->b()Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes;

    invoke-direct {v3, p0, v4, v5}, Lyr7$a;-><init>(Lyr7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcr7;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lzn7;

    invoke-direct {p0}, Lzn7;-><init>()V

    const-string v0, "/app/contact/list"

    invoke-static {v0}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcr7;->b(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
