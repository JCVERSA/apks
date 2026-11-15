.class public final Lrpd;
.super Lcom/cloud/hisavana/sdk/G;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/String;

.field public volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public k:Lebd;


# direct methods
.method public constructor <init>(Lied;)V
    .locals 1

    const-string v0, "adFetchInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lied;)V

    const-string p1, "Rewarded"

    iput-object p1, p0, Lrpd;->i:Ljava/lang/String;

    return-void
.end method

.method private final K()V
    .locals 1

    new-instance v0, Lebd;

    invoke-direct {v0, p0}, Lebd;-><init>(Lrpd;)V

    iput-object v0, p0, Lrpd;->k:Lebd;

    return-void
.end method


# virtual methods
.method public final F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->f()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->k(Z)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->A()V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0}, Lrpd;->K()V

    iget-object v0, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lied;

    invoke-virtual {v1}, Lied;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mSceneId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->r()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/G;->z()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lrpd;->k:Lebd;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lebd;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lrpd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lrpd;->i:Ljava/lang/String;

    const-string v2, "ad not condition to use"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object p0, p0, Lrpd;->i:Ljava/lang/String;

    const-string v1, "adBean = null"

    invoke-virtual {v0, p0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "athenaTrackBundle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lrpd;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public m()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    iget-object p0, p0, Lrpd;->k:Lebd;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lebd;->b()V

    :cond_0
    return-void
.end method
