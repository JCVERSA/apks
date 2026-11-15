.class public Lnl7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v1

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v0

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v1

    invoke-static {v1}, Lsq7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tech.palm.id"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "palmId"

    goto :goto_0

    :cond_0
    const-string v2, "sdk"

    :goto_0
    new-instance v9, Lnl7$a;

    invoke-virtual {p0}, Lnl7;->c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    move-result-object v5

    const-class v7, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lnl7$a;-><init>(Lnl7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\\+"

    const-string v2, "-"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljr7;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v1, "/app/policy/get"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0, v9}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcr7;->b(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lsk7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/help/view/PrivacyCenterActivity;

    return-object p0
.end method
