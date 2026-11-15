.class public Lll7;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;
.source "SourceFile"


# instance fields
.field public b:Lcom/transsion/xuanniao/account/model/data/CountryData;

.field public c:Luk7;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;-><init>()V

    new-instance v0, Lon7;

    invoke-direct {v0}, Lon7;-><init>()V

    iput-object v0, p0, Lll7;->c:Luk7;

    return-void
.end method


# virtual methods
.method public final b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lqm7;

    invoke-interface {p0}, Ljk7;->J()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    return-object p0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lll7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lll7;->c:Luk7;

    invoke-virtual {p0}, Lll7;->b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    move-result-object v1

    new-instance v2, Lll7$a;

    invoke-virtual {p0}, Lll7;->b()Lcom/transsion/xuanniao/account/login/view/CountrySelectActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p0, v3, v4}, Lll7$a;-><init>(Lll7;Landroid/content/Context;Ljava/lang/Class;)V

    check-cast v0, Lon7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/transsion/xuanniao/account/model/data/CountryListReq;

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/model/data/CountryListReq;-><init>()V

    sget-object v0, Lgo7$a;->a:Lgo7;

    iget-object v0, v0, Lgo7;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/xuanniao/account/model/data/CountryListReq;->appId:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_language:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/model/data/CountryListReq;->language:Ljava/lang/String;

    sget-object v0, Lcr7$b;->a:Lcr7;

    invoke-virtual {v0, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lzn7;

    invoke-direct {v0}, Lzn7;-><init>()V

    const-string v3, "/app/country/list"

    invoke-static {v3}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, p0, v2}, Lzn7;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Lokhttp3/Callback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {v0, v1}, Lcr7;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
