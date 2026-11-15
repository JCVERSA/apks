.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;
.super Lujd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->H()Lujd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-direct {p0}, Lujd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/U0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public b(IZ)V
    .locals 9

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    new-instance p2, Lkotlin/Pair;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    new-instance v8, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v4

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v5

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v6

    :goto_1
    move-object v1, v8

    move v6, v7

    move v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    invoke-direct {p2, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "_click"

    invoke-virtual {p1, p0, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    const-string v1, "_error"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->x(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)V

    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->G()V

    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v2

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerShowSpend()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "_rewarded"

    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->h(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i()V
    .locals 10

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->B(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v3

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v4

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v5

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->F(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)F

    move-result v6

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

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
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$b;->a:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;)Lcom/cloud/hisavana/sdk/common/widget/TemplateAdWebView;

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
