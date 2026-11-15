.class public Lcom/cloud/hisavana/sdk/v2;
.super Lcom/cloud/hisavana/sdk/F;
.source "source.java"


# instance fields
.field private i:Lcom/cloud/hisavana/sdk/d4;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/F;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    return-void
.end method

.method private L()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/d4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/d4;-><init>(Lcom/cloud/hisavana/sdk/v2;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->i:Lcom/cloud/hisavana/sdk/d4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/F;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/v2;->L()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->i:Lcom/cloud/hisavana/sdk/d4;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d4;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->m()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method K()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->f()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/F;->k(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/F;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->s()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public M()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/v2;->L()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    const-string v1, "ssp"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/v2;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "adBean = null"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->r()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/F;->z()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->i:Lcom/cloud/hisavana/sdk/d4;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/d4;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INNER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/v2;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "ad not condition to use"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->j:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 19
    .line 20
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/F;->d(Ljava/util/List;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/F;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v2;->i:Lcom/cloud/hisavana/sdk/d4;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/d4;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
