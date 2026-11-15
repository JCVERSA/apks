.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;
.super Lujd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->H()Lujd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-direct {p0}, Lujd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/U0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public b(IZ)V
    .locals 11

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v3

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v4

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v5

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v6

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v10

    :goto_0
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v10

    :goto_1
    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    move v10, v2

    :cond_3
    :goto_2
    invoke-static {v1, p1, v9, v10, p2}, Lcom/cloud/hisavana/sdk/U0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    :cond_4
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    const-string p1, "_click"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/cloud/hisavana/sdk/J;->d(Lcom/cloud/hisavana/sdk/J;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "template webview load error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    const-string v1, "_error"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->x(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)V

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->G()V

    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    return-void
.end method

.method public i()V
    .locals 10

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v3

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v4

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v5

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)F

    move-result v6

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v7

    :goto_1
    move-object v2, v9

    move v7, v8

    move v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    invoke-virtual {v0, v1, v9}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method
